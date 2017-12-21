<?php

class LoginControllerCest
{
    private $email = 'user@mail.com';
    private $password = 'password';
    private $loginCreds;

    public function _before(ApiTester $I)
    {
        $this->loginCreds = [
            'email' => $this->email,
            'password' => $this->password,
        ];
    }

    public function _after(ApiTester $I)
    {

    }

    public function successLogin(ApiTester $I)
    {
        $I->sendPOST('/login', $this->loginCreds);
        $I->canSeeResponseCodeIs(200);
        $I->seeResponseIsJson();
        $I->canSeeResponseJsonMatchesJsonPath('data.type');
        $I->canSeeResponseJsonMatchesJsonPath('data.attributes.access_token');
        $I->canSeeResponseJsonMatchesJsonPath('data.attributes.token_type');
        $I->canSeeResponseJsonMatchesJsonPath('data.attributes.email');
        $I->canSeeResponseJsonMatchesJsonPath('data.attributes.id');
        $I->canSeeResponseJsonMatchesJsonPath('data.attributes.token');
    }

    public function failedLogin(ApiTester $I)
    {
        $I->sendPOST('/login');
        $I->canSeeResponseCodeIs(401);
        $I->seeResponseIsJson();
        $I->dontSeeResponseJsonMatchesJsonPath('data.type');
    }
}