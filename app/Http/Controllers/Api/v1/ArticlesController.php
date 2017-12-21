<?php

namespace App\Http\Controllers\Api\v1;

use App\Models\Article;
use App\Services\ArticleService;
use CloudCreativity\LaravelJsonApi\Http\Controllers\EloquentController;
use App\Helpers\Interfaces\ResponseCodesInterface;
use CloudCreativity\JsonApi\Contracts\Http\Requests\RequestInterface as JsonApiRequest;
use App\JsonApi\Articles\Hydrator;
use App\Helpers\JsonApiResponseHelper;
use Illuminate\Support\Facades\Auth;

class ArticlesController extends EloquentController
{
    use JsonApiResponseHelper;

    /**
     * @var ArticleService $service
     */
    protected $service;

    /**
     * @var Article $model
     */
    protected $model;

    /**
     * @param ArticleService $service
     * @param Article $article
     * @param Hydrator $hydrator
     */
    public function __construct(ArticleService $service, Article $article, Hydrator $hydrator)
    {
        $this->service = $service;
        $this->model = $article;

        parent::__construct($article, $hydrator);
    }

    /**
     * Display a listing of the resource.
     *
     * @SWG\Get(
     *   path="/articles",
     *   tags={"Articles"},
     *   summary="Get all articles",
     *   description="Get all articles",
     *   produces={"application/vnd.api+json"},
     *   consumes={"application/vnd.api+json"},
     *   @SWG\Response(response="200", description="Return articles")
     * )
     *
     * @param JsonApiRequest $request
     * @return mixed
     */

    /**
     * @SWG\Get(
     *     path="/articles/{id}",
     *     tags={"Articles"},
     *     summary="Get article by id",
     *     description="Get article by id",
     *     produces={"application/vnd.api+json"},
     *     consumes={"application/vnd.api+json"},
     *     @SWG\Parameter(
     *         in="path",
     *         name="id",
     *         description="",
     *         required=true,
     *         default="1",
     *         type="integer"
     *     ),
     *     @SWG\Response(response="200", description="Return article"),
     *     @SWG\Response(response="404", description="error, article not found"),
     * )
     *
     * @param JsonApiRequest $request
     * @return mixed
     */
    public function read(JsonApiRequest $request)
    {
        return parent::read($request);
    }

    /**
     * @SWG\Post(path="/articles",
     *   tags={"Articles"},
     *   summary="Create article",
     *   description="Create article",
     *   produces={"application/vnd.api+json"},
     *   consumes={"application/vnd.api+json"},
     *   @SWG\Parameter(
     *     name="Create article",
     *     in="body",
     *     description="JSON Object which create article",
     *     required=true,
     *     @SWG\Schema(
     *       @SWG\Property(
     *         property="data",
     *         type="object",
     *         @SWG\Property(property="type", type="string", default="articles", example="articles"),
     *         @SWG\Property(
     *           property="attributes",
     *           type="object",
     *           @SWG\Property(property="title", type="string", example="How to be a good programmer?", description="required"),
     *           @SWG\Property(property="description", type="string", example="This article discover you a secret method to be a prosperous...", description="required"),
     *           @SWG\Property(property="text", type="string", example="Some text", description="required"),
     *         )
     *       )
     *     )
     *   ),
     *   @SWG\Response(response="200", description="Return message")
     * )
     *
     * @param JsonApiRequest $request
     * @return mixed
     */
    public function create(JsonApiRequest $request)
    {
        $user = Auth::guard('api')->user(); // Get user
        $this->model->user_id = $user->id; // Set to model userId

        return parent::create($request);
    }

    /**
     * @SWG\Patch(path="/articles/{id}",
     *   tags={"Articles"},
     *   summary="Update article",
     *   description="Update article",
     *   produces={"application/vnd.api+json"},
     *   consumes={"application/vnd.api+json"},
     *   @SWG\Parameter(
     *     in="path",
     *     name="id",
     *     description="",
     *     required=true,
     *     default="1",
     *     type="integer"
     *   ),
     *   @SWG\Parameter(
     *     name="Update article by id",
     *     in="body",
     *     description="JSON Object which update article by id",
     *     required=true,
     *     @SWG\Schema(
     *       @SWG\Property(
     *         property="data",
     *         type="object",
     *         @SWG\Property(property="type", type="string", default="articles", example="articles"),
     *         @SWG\Property(property="id", type="string", default="1", example="1"),
     *         @SWG\Property(
     *           property="attributes",
     *           type="object",
     *           @SWG\Property(property="title", type="string", example="Some updated article", description="required"),
     *           @SWG\Property(property="description", type="string", example="Some new updated description", description="required"),
     *           @SWG\Property(property="text", type="string", example="Some new updated text", description="required"),
     *         )
     *       )
     *     )
     *   ),
     *   @SWG\Response(response="200", description="Return message")
     * )
     *
     * @param JsonApiRequest $request
     * @return mixed
     */
    public function update(JsonApiRequest $request)
    {
        if (is_array($result = $this->service->checkAccess())) {
            return $this->sendFailedResponse($result, ResponseCodesInterface::HTTP_CODE_FORBIDDEN);
        }

        return parent::update($request);
    }

    /**
     * @SWG\Delete(
     *     path="/articles/{id}",
     *     tags={"Articles"},
     *     summary="Delete article by id",
     *     description="Delete article by id",
     *     produces={"application/vnd.api+json"},
     *     consumes={"application/vnd.api+json"},
     *     @SWG\Parameter(
     *         in="path",
     *         name="id",
     *         description="",
     *         required=true,
     *         default="1",
     *         type="integer"
     *     ),
     *     @SWG\Response(response="200", description="success"),
     *     @SWG\Response(response="404", description="error, article not found"),
     * )
     *
     * @param JsonApiRequest $request
     * @return mixed
     */
    public function delete(JsonApiRequest $request)
    {
        if (is_array($result = $this->service->checkAccess())) {
            return $this->sendFailedResponse($result, ResponseCodesInterface::HTTP_CODE_FORBIDDEN);
        }

        return parent::delete($request);
    }
}
