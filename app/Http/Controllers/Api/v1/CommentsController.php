<?php

namespace App\Http\Controllers\Api\v1;

use App\Models\Comment;
use App\Services\CommentService;
use CloudCreativity\LaravelJsonApi\Http\Controllers\EloquentController;
use App\Helpers\Interfaces\ResponseCodesInterface;
use CloudCreativity\JsonApi\Contracts\Http\Requests\RequestInterface as JsonApiRequest;
use App\JsonApi\Comments\Hydrator;
use App\Helpers\JsonApiResponseHelper;
use Illuminate\Support\Facades\Auth;

class CommentsController extends EloquentController
{
    use JsonApiResponseHelper;

    /**
     * @var CommentService $service
     */
    protected $service;

    /**
     * @var Comment $model
     */
    protected $model;

    /**
     * @param CommentService $service
     * @param Comment $comment
     * @param Hydrator $hydrator
     */
    public function __construct(CommentService $service, Comment $comment, Hydrator $hydrator)
    {
        $this->service = $service;
        $this->model = $comment;

        parent::__construct($comment, $hydrator);
    }

    /**
     * Display a listing of the resource.
     *
     * @SWG\Get(
     *   path="/comments",
     *   tags={"Comments"},
     *   summary="Get all comments",
     *   description="Get all comments",
     *   produces={"application/vnd.api+json"},
     *   consumes={"application/vnd.api+json"},
     *   @SWG\Response(response="200", description="Return comments")
     * )
     *
     * @param JsonApiRequest $request
     * @return mixed
     */

    /**
     * @SWG\Get(
     *     path="/comments/{id}",
     *     tags={"Comments"},
     *     summary="Get comment by id",
     *     description="Get comment by id",
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
     *     @SWG\Response(response="200", description="Return comment"),
     *     @SWG\Response(response="404", description="error, comment not found"),
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
     * @SWG\Post(path="/comments?include=article",
     *   tags={"Comments"},
     *   summary="Create comment",
     *   description="Create new comment",
     *   produces={"application/vnd.api+json"},
     *   consumes={"application/vnd.api+json"},
     *   @SWG\Parameter(
     *     name="Create comment",
     *     in="body",
     *     description="JSON Object which create comment",
     *     required=true,
     *     @SWG\Schema(
     *       @SWG\Property(
     *         property="data",
     *         type="object",
     *         @SWG\Property(property="type", type="string", default="comments", example="comments"),
     *         @SWG\Property(
     *           property="attributes",
     *           type="object",
     *           @SWG\Property(property="text", type="string", default="It's a really good product", description="required"),
     *       ),
     *       @SWG\Property(
     *           property="relationships",
     *           type="object",
     *           @SWG\Property(
     *             property="article",
     *             type="object",
     *             description="required",
     *             @SWG\Property(
     *               property="data",
     *               type="object",
     *               @SWG\Property(property="type", type="string", default="articles", example="articles"),
     *               @SWG\Property(property="id", type="string", default="1", example="1"),
     *             )
     *           )
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
        $user = Auth::guard('api')->user();
        $this->model->user_id = $user->id;


        return parent::create($request);
    }

    /**
     * @SWG\Patch(path="/comments/{id}?include=article",
     *   tags={"Comments"},
     *   summary="Update comment",
     *   description="Update comment",
     *   produces={"application/vnd.api+json"},
     *   consumes={"application/vnd.api+json"},
     *   @SWG\Parameter(
     *     in="path",
     *     name="id",
     *     description="Comment Id",
     *     required=true,
     *     default="1",
     *     type="integer"
     *   ),
     *   @SWG\Parameter(
     *     name="JSON",
     *     in="body",
     *     description="JSON Object which update cat by id",
     *     required=true,
     *     @SWG\Schema(
     *       @SWG\Property(
     *         property="data",
     *         type="object",
     *         @SWG\Property(property="type", type="string", default="comments", example="comments"),
     *         @SWG\Property(property="id", type="string", default="1", example="1"),
     *         @SWG\Property(
     *           property="attributes",
     *           type="object",
     *           @SWG\Property(
     *             property="text",
     *             type="string",
     *             example="Some updated comment's text",
     *             description="required"),
     *         ),
     *         @SWG\Property(
     *           property="relationships",
     *           type="object",
     *           @SWG\Property(
     *             property="article",
     *             type="object",
     *             description="required",
     *             @SWG\Property(
     *               property="data",
     *               type="object",
     *               @SWG\Property(property="type", type="string", default="articles", example="articles"),
     *               @SWG\Property(property="id", type="string", default="1", example="1"),
     *             )
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

        return parent::update($request);
    }

    /**
     * @SWG\Delete(
     *     path="/comments/{id}",
     *     tags={"Comments"},
     *     summary="Delete comment by id",
     *     description="Delete comment by id",
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
     *     @SWG\Response(response="404", description="error, comment not found"),
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
