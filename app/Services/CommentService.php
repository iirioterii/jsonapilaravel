<?php

namespace App\Services;

use Auth;

class CommentService
{
    /**
     * @return bool|array
     */
    public function checkAccess()
    {
        $userCommentsIds = Auth::guard('api')->user()->comments()->pluck('id')->toArray();
        $commentsId = request()->route('record')->getAttributes()['id'];

        if (!in_array($commentsId, $userCommentsIds)) {
            $err['forbidden'] = 'You don\'t have permission to access this resource.';
            $err['sources'][] = ['pointer' => '/data/id'];

            return $err;
        }

        return true;
    }

}