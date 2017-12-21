<?php

namespace App\JsonApi\Articles;

use CloudCreativity\JsonApi\Contracts\Validators\RelationshipsValidatorInterface;
use CloudCreativity\LaravelJsonApi\Validators\AbstractValidatorProvider;
use App\JsonApi\Comments\Schema as CommentsSchema;


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
        'title',
        'text',
        'description',
        'created_at',
        'updated_at',
    ];

    /**
     * @var array
     */
    protected $allowedSortParameters = [
        'id',
        'title',
        'text',
        'description',
        'created_at',
        'updated_at',
    ];

    /**
     * @var array
     */
    protected $allowedIncludePaths = [
        'users', 'users.roles',
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
        $title = 'required|max:255';
        $description = 'required|min:20|max:500';
        $text = 'required';

        return [
            'title' => $title,
            'description' => $description,
            'text' => $text,
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
    }
}
