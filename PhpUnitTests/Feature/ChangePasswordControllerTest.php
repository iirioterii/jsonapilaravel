<?php

namespace PhpUnitTests\Feature;

use PhpUnitTests\TestCase;
use Illuminate\Foundation\Testing\WithoutMiddleware;
use Illuminate\Foundation\Testing\DatabaseMigrations;
use Illuminate\Foundation\Testing\DatabaseTransactions;

use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Tymon\JWTAuth\Facades\JWTAuth;

class ChangePasswordControllerTest extends TestCase
{
    use DatabaseTransactions;

    /**
     * @dataProvider addDataProvider
     *
     * @param $userData
     */
    public function testChangePassword($userData)
    {
        $userData['password'] = Hash::make('password');

        $user = factory(User::class)->create($userData);

        $response = $this->actingAs($user, 'api')->json('POST', '/api/v1/password/change',
            [
                'current_password' => 'password',
                'password' => 'password-new',
                'password_confirmation' => 'password-new'
            ]);

        $response->assertStatus(200);
    }

    /**
     * @dataProvider addDataProvider
     *
     * @param $userData
     */
    public function testChangePasswordError($userData)
    {
        $user = factory(User::class)->create($userData);

        $response = $this->actingAs($user, 'api')->json('POST', '/api/v1/password/change',
            [
                'current_password' => 'password-wrong',
                'password' => 'password-new',
                'password_confirmation' => 'password-new'
            ]);

        $response->assertStatus(400);
    }

}
