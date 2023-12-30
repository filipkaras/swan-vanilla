<?php

namespace App\Repositories;

interface RepositoryInterface
{
    public function generateForm(): void;

    public function processFormSubmit($values, ?int $id = null): bool;

    public function getDefaults($id): array;
}