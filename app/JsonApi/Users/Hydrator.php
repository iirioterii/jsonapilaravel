<?php

namespace App\JsonApi\Users;

use CloudCreativity\LaravelJsonApi\Hydrator\EloquentHydrator;

class Hydrator extends EloquentHydrator
{
    /**
     * @var array
     */
    protected $attributes = [
        'name',
        'email',
        'password',
        'activated',
        'firstname',
        'lastname',
        'middlename',
        'gender',
        'birthday',
    ];

    /**
     * @var array
     */
    protected $relationships = [
        'roles',
    ];
}
