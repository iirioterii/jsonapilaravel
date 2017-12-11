<?php

namespace App\JsonApi\Comments;

use CloudCreativity\JsonApi\Contracts\Validators\RelationshipsValidatorInterface;
use CloudCreativity\LaravelJsonApi\Validators\AbstractValidatorProvider;
use App\JsonApi\Articles\Schema as ArticlesSchema;


class Validators extends AbstractValidatorProvider
{
    /**
     * @var string
     */
    protected $resourceType = Schema::RESOURCE_TYPE;

    /**
     * @var array
     */
    protected $allowedFilteringParameters = [
        'id',
        'text',
        'created_at',
        'updated_at',
    ];

    /**
     * @var array
     */
    protected $allowedSortParameters = [
        'id',
        'text',
        'created_at',
        'updated_at',
    ];

    /**
     * @var array
     */
    protected $allowedIncludePaths = [
        'user', 'user.roles', 'article',
    ];

    /**
     * Get the validation rules for the resource attributes.
     *
     * @param object|null $record
     *      the record being updated, or null if it is a create request.
     *
     * @return array
     */
    protected function attributeRules($record = null)
    {
        return [
            'text' => 'required|min:20|max:500',
        ];
    }

    /**
     * Define the validation rules for the resource relationships.
     *
     * @param RelationshipsValidatorInterface $relationships
     * @param object|null $record
     *      the record being updated, or null if it is a create request.
     *
     * @return void
     */
    protected function relationshipRules(RelationshipsValidatorInterface $relationships, $record = null)
    {
        $relationships->hasOne('article', ArticlesSchema::RESOURCE_TYPE, is_null($record), false);
    }
}
