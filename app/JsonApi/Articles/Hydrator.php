<?php

namespace App\JsonApi\Articles;

use CloudCreativity\LaravelJsonApi\Hydrator\EloquentHydrator;

class Hydrator extends EloquentHydrator
{
    /**
     * @var array
     */
    protected $attributes = [
        'title',
        'description',
        'text',
    ];

    /**
     * @var array
     */
    protected $relationships = [
        'user', 'comments'
    ];
}
