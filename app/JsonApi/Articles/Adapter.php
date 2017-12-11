<?php

namespace App\JsonApi\Articles;

use App\Models\Article;
use CloudCreativity\LaravelJsonApi\Pagination\StandardStrategy;
use CloudCreativity\LaravelJsonApi\Store\EloquentAdapter;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Collection;

class Adapter extends EloquentAdapter
{
    /**
     * Adapter constructor.
     *
     * @param StandardStrategy $paging
     */
    public function __construct(StandardStrategy $paging)
    {
        parent::__construct(new Article(), $paging);
    }

    /**
     * @param Builder $builder
     * @param Collection $filters
     *
     */
    protected function filter(Builder $builder, Collection $filters)
    {
        //
    }

    /**
     * @param Collection $filters
     */
    protected function isSearchOne(Collection $filters)
    {
        //
    }
}
