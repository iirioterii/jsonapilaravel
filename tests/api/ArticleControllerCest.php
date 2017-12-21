<?php

use App\Models\User;
use App\Models\Role;
use App\Models\Article;

class ArticleControllerCest
{
    private $user;
    private $userId;
    private $token;

    public function _before(ApiTester $I)
    {

        // Create user
        $this->user = factory(User::class)->create();

        // Get user role
        $roleUser = Role::where('name', 'user')->first();

        // Attach user to role
        $this->user->attachRole($roleUser);

        // Get JWT token
        $this->token = JWTAuth::fromUser($this->user);

        $this->userId = $this->user->toArray()['id'];
    }

    public function _after(ApiTester $I)
    {

    }

    public function getAllArticles(ApiTester $I)
    {
        $title = 'Article 1';
        $title2 = 'Article 1';
        $id = (string) $this->haveArticle($I, ['title' => $title]);
        $id2 = (string) $this->haveArticle($I, ['title' => $title2]);

        $I->amBearerAuthenticated($this->token);
        $I->haveHttpHeader('Content-Type', 'application/vnd.api+json');
        $I->haveHttpHeader('Accept', 'application/vnd.api+json');

        $I->sendGET('/articles');
        $I->canSeeResponseCodeIs(200);
        $I->seeResponseIsJson();

        $I->expect('articles table contain newly inserted articles');
        $I->canSeeResponseContainsJson(['id' => $id], ['id' => $id2]);
        $I->canSeeResponseContainsJson(['title' => $title], ['title' => $title2]);

    }

    public function getSingleArticle(ApiTester $I)
    {
        $articleModel = factory(Article::class)->make();

        $id = (string) $this->haveArticle($I, [
            'title' => $articleModel->title,
            'description' => $articleModel->description,
            'text' => $articleModel->text,
        ]);

        $I->amBearerAuthenticated($this->token);
        $I->haveHttpHeader('Content-Type', 'application/vnd.api+json');
        $I->haveHttpHeader('Accept', 'application/vnd.api+json');
        $I->sendGET("/articles/$id");

        $I->canSeeResponseCodeIs(200);
        $I->seeResponseIsJson();
        $I->canSeeResponseContainsJson(['id' => $id]);
        $I->canSeeResponseContainsJson([
            'title' => $articleModel->title,
            'description' => $articleModel->description,
            'text' => $articleModel->text,
        ]);
    }

    public function createArticle(ApiTester $I)
    {
        $articleModel = factory(Article::class)->make();

        $article = [
            'data' => [
                'type' => 'articles',
                'attributes' => [
                    'title' => $articleModel->title,
                    'description' => $articleModel->description,
                    'text' => $articleModel->text,
                ],
            ],
        ];

        $I->amBearerAuthenticated($this->token);
        $I->haveHttpHeader('Content-Type', 'application/vnd.api+json');
        $I->haveHttpHeader('Accept', 'application/vnd.api+json');
        $I->haveHttpHeader('content-length',1); // HotFix 400 response

        $I->sendPOST('/articles', $article);
        $I->seeResponseCodeIs(201);
        $I->seeResponseIsJson();
        $I->seeResponseContainsJson(['title' => $articleModel->title]);
        $I->seeResponseContainsJson(['description' => $articleModel->description]);
        $I->seeResponseContainsJson(['text' => $articleModel->text]);

        $id = $I->grabDataFromResponseByJsonPath('data.id')[0];
        $I->seeRecord('articles', ['id' => $id, 'title' => $articleModel->title]);
        $I->haveHttpHeader('content-length',0); // HotFix 400 response
        $I->sendGET("/articles/$id");
        $I->seeResponseCodeIs(200);
        $I->seeResponseIsJson();
        $I->seeResponseContainsJson(['title' => $articleModel->title]);
    }

    public function updateArticle(ApiTester $I)
    {
        $articleModel = factory(Article::class)->make();

        $id = (string) $this->haveArticle($I, [
            'title' => $articleModel->title,
            'description' => $articleModel->description,
            'text' => $articleModel->text,
        ]);

        $updatedArticle = [
            'data' => [
                'type' => 'articles',
                'id' => $id,
                'attributes' => [
                    'title' => $articleModel->title,
                    'description' => $articleModel->description,
                    'text' => $articleModel->text,
                ],
            ],
        ];

        $I->amBearerAuthenticated($this->token);
        $I->haveHttpHeader('Content-Type', 'application/vnd.api+json');
        $I->haveHttpHeader('Accept', 'application/vnd.api+json');
        $I->haveHttpHeader('content-length',1); // HotFix 400 response

        $I->sendPATCH("/articles/$id", $updatedArticle);
        $I->seeResponseCodeIs(200);
        $I->seeResponseIsJson();
    }

    public function deleteArticle(ApiTester $I)
    {
        $id = (string) $this->haveArticle($I, ['title' => 'Game of Thrones']);

        $I->amBearerAuthenticated($this->token);
        $I->sendDELETE("/articles/$id");
        $I->seeResponseCodeIs(204);
        $I->dontSeeRecord('articles', ['id' => $id]);
    }

    private function haveArticle(ApiTester $I, $data = [])
    {
        $data = array_merge([
            'title' => 'Article title',
            'description' => 'Description',
            'text' => 'Articles text',
            'user_id' => $this->userId,

        ], $data);

        return $I->haveRecord('articles', $data);
    }
}