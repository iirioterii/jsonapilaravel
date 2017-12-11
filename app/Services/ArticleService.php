<?php

namespace App\Services;

use Auth;

class ArticleService
{
    /**
     * @return bool|array
     */
    public function checkAccess()
    {
        $userArticlesIds = Auth::guard('api')->user()->articles()->pluck('id')->toArray();
        $articleId = request()->route('record')->getAttributes()['id'];

        if (!in_array($articleId, $userArticlesIds)) {
            $err['forbidden'] = 'You don\'t have permission to access this resource.';
            $err['sources'][] = ['pointer' => '/data/id'];

            return $err;
        }

        return true;
    }

}