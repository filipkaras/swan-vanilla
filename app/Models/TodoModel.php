<?php

namespace App\Models;

use Dibi\Result;
use Dibi\Row;

class TodoModel extends CoreModel
{
    public function getTodo($id): array|Row|null
    {
        return (array)$this->database->select('*')->from('todos')->where('id = %i', $id)->fetch();
    }

    public function getTodos($idUser, $count = false, $search = '', $limit = 10, $offset = 0, $sortRow = 'todo', $sortDir = 'DESC')
    {
        if ($search) {
            $filter = [
                ['LOWER(todo) LIKE %~like~', strtolower($search)]
            ];
        }

        $query = ($count)
            ? $this->database->select('COUNT(0)')
            : $this->database->select('*');

        $query->where('user_id = %i', $idUser);
        if (!empty($filter)) $query->where($filter);

        $query
            ->from('todos');

        if ($count) {
            return ($cnt = $query->fetchSingle()) ? $cnt : '0';
        } else {
            $query->orderBy($sortRow . ' ' . $sortDir);
            $query->limit($limit);
            $query->offset($offset);

            return $query->execute()->setFormat(\Dibi\Type::DATE, 'Y-m-d')->setFormat(\Dibi\Type::DATETIME, 'Y-m-d H:i:s')->fetchAll();
        }
    }

    public function complete($id, $complete = true): Result
    {
        return $this->database->query('UPDATE todos SET', ['completed' => (int)$complete], 'WHERE id = %i', $id);
    }

    public function createTodo($values): Result
    {
        return $this->database->query('INSERT INTO todos', $values);
    }

    public function updateTodo($id, $values): Result
    {
        return $this->database->query('UPDATE todos SET', $values, 'WHERE id = %i', $id);
    }

    public function canUpdateTask($id, $userId)
    {
        return $this->database->select('COUNT(0)')->from('todos')->where('id = %i', $id)->where('user_id = %i', $userId)->fetchSingle();
    }
}