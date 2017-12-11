<?php

namespace App\JsonApi\Comments;

use CloudCreativity\LaravelJsonApi\Hydrator\EloquentHydrator;

class Hydrator extends EloquentHydrator
{
    /**
     * @var array
     */
    protected $attributes = [
        'text'
    ];

    /**
     * @var array
     */
    protected $relationships = [
        'user',
        'article',
    ];
}
