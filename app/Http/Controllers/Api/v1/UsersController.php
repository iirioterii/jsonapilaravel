<?php

namespace App\Http\Controllers\Api\v1;

use App\Helpers\Interfaces\ResponseCodesInterface;
use App\Helpers\JsonApiResponseHelper;
use CloudCreativity\JsonApi\Contracts\Http\Requests\RequestInterface as JsonApiRequest;
use CloudCreativity\LaravelJsonApi\Http\Controllers\EloquentController;
use App\Models\User;
use App\JsonApi\Users\Hydrator;
use App\Services\UserService;
use Illuminate\Auth\Events\Registered;

class UsersController extends EloquentController
{
    use JsonApiResponseHelper;

    /**
     * @var UserService $service
     */
    protected $service;

    /**
     * @var User $model
     */
    protected $model;

    /**
     * @param UserService $service
     * @param User $user
     * @param Hydrator $hydrator
     */
    public function __construct(UserService $service, User $user, Hydrator $hydrator)
    {
        $this->service = $service;
        $this->model = $user;

        parent::__construct($user, $hydrator);
    }

    /**
     * Display a listing of the resource.
     *
     * @SWG\Get(
     *   path="/users",
     *   tags={"Users"},
     *   summary="Get current user",
     *   description="Get current user",
     *   produces={"application/vnd.api+json"},
     *   consumes={"application/vnd.api+json"},
     *   @SWG\Parameter(
     *     in="query",
     *     name="filter[user]",
     *     description="",
     *     required=true,
     *     default="me",
     *     type="string"
     *   ),
     *   @SWG\Response(response="200", description="Return user")
     * )
     *
     * @param JsonApiRequest $request
     * @return mixed
     */

    /**
     * @SWG\Get(
     *     path="/users/{id}",
     *     tags={"Users"},
     *     summary="Get user by id",
     *     description="Get user by id",
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
     *     @SWG\Response(response="200", description="Return user"),
     *     @SWG\Response(response="404", description="error, user not found"),
     * )
     *
     * @param JsonApiRequest $request
     * @return mixed
     */
    public function read(JsonApiRequest $request)
    {
        if (is_array($result = $this->service->checkAccess())) {
            return $this->sendFailedResponse($result, ResponseCodesInterface::HTTP_CODE_FORBIDDEN);
        }

        return parent::read($request);
    }

    /**
     * @SWG\Post(path="/users",
     *   tags={"Users"},
     *   summary="Register user",
     *   description="Register user",
     *   produces={"application/vnd.api+json"},
     *   consumes={"application/vnd.api+json"},
     *   @SWG\Parameter(
     *     name="Register user",
     *     in="body",
     *     description="JSON Object which create user",
     *     required=true,
     *     @SWG\Schema(
     *       @SWG\Property(
     *         property="data",
     *         type="object",
     *         @SWG\Property(property="type", type="string", default="users", example="users"),
     *         @SWG\Property(
     *           property="attributes",
     *           type="object",
     *           @SWG\Property(property="email", type="string", example="user@mail.com", description="required"),
     *           @SWG\Property(property="password", type="string", example="password", description="required"),
     *           @SWG\Property(property="name", type="string", example="Steven", description="required"),
     *           @SWG\Property(property="firstname", type="string", example="Serg"),
     *           @SWG\Property(property="middlename", type="string", example="Vitalievich"),
     *           @SWG\Property(property="lastname", type="string", example="Shpack"),
     *           @SWG\Property(property="gender", type="string", example="male"),
     *           @SWG\Property(property="birthday", type="string", example="1992-05-20"),
     *           @SWG\Property(
     *             property="activated",
     *             type="string",
     *             description="0 - deactivated, 1 - activated",
     *             default="1",
     *             example="1"
     *           ),
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
        /**
         * hydrate all data to User entity
         *
         * @var User $user
         */
        $user = $this->hydrate($request->getDocument()->getResource(), $this->model);

        $this->service->saveModel($user);

        $this->service->attachUserRole($user);

        event(new Registered($user));

        return $this->reply()->created($user);
    }

    /**
     * @SWG\Patch(path="/users/{id}",
     *   tags={"Users"},
     *   summary="Update user",
     *   description="Update user",
     *   produces={"application/vnd.api+json"},
     *   consumes={"application/vnd.api+json"},
     *   @SWG\Parameter(
     *     in="path",
     *     name="id",
     *     description="",
     *     required=true,
     *     default="2",
     *     type="integer"
     *   ),
     *   @SWG\Parameter(
     *     name="Update user by id",
     *     in="body",
     *     description="JSON Object which update user by id",
     *     required=true,
     *     @SWG\Schema(
     *       @SWG\Property(
     *         property="data",
     *         type="object",
     *         @SWG\Property(property="type", type="string", default="users", example="users"),
     *         @SWG\Property(property="id", type="string", default="2", example="2"),
     *         @SWG\Property(
     *           property="attributes",
     *           type="object",
     *           @SWG\Property(property="email", type="string", example="usernew@mail.com", description="required"),
     *           @SWG\Property(property="password", type="string", example="Password1", description="required"),
     *           @SWG\Property(property="name", type="string", example="Steven", description="required"),
     *           @SWG\Property(property="firstname", type="string", example="Serg"),
     *           @SWG\Property(property="middlename", type="string", example="Vitalievich"),
     *           @SWG\Property(property="lastname", type="string", example="Shpack"),
     *           @SWG\Property(property="gender", type="string", example="male"),
     *           @SWG\Property(property="birthday", type="string", example="1992-05-20"),
     *           @SWG\Property(
     *             property="activated",
     *             type="string",
     *             description="0 - deactivated, 1 - activated",
     *             default="1",
     *             example="1"
     *           ),
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

        $resource = $request->getDocument()->getResource();
        $record = $this->getRecord($request);

        // hydrate all data to User entity
        $user = $this->hydrate($resource, $record);

        $this->service->saveModel($user);

        return $this->reply()->content($user);
    }

    /**
     * @SWG\Delete(
     *     path="/users/{id}",
     *     tags={"Users"},
     *     summary="Delete user by id",
     *     description="Delete user by id",
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
     *     @SWG\Response(response="404", description="error, user not found"),
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
