<?php

namespace App\Services;

use Auth;

class ArticleService
{

    const ADMIN_ID = 1;

    /**
     * @return bool|array
     */
    public function checkAccess()
    {
        $userRoles = Auth::user()->roles()->pluck('id')->toArray();

        if (in_array(self::ADMIN_ID, $userRoles)) {
            return true;
        }

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