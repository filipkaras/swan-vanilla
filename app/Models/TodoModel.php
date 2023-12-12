<?php

namespace Models;

class TodoModel extends CoreModel
{
    public function getTodos($count = false, $search = '', $limit = 10, $offset = 0, $sortRow = 'todo', $sortDir = 'DESC')
    {
        if ($search) {
            $filter = [
                ['LOWER(todo) LIKE %~like~', strtolower($search)]
            ];
        }

        $query = ($count)
            ? $this->database->select('COUNT(0)')
            : $this->database->select('*');

        if (!empty($filter)) $query->where($filter);

        $query
            ->from('todos');
            //->leftJoin('app_device_rent')->on('device_rent_id_device = terminal_id_device')

        if ($count) {
            return ($cnt = $query->fetchSingle()) ? $cnt : '0';
        } else {
            $query->orderBy($sortRow . ' ' . $sortDir);
            $query->limit($limit);
            $query->offset($offset);

            return $query->execute()->fetchAll();
        }
    }

    public function completeTodo($id)
    {
        return $this->database->query('UPDATE todos SET', ['completed' => 1], 'WHERE id = %i', $id);
    }

    public function reopenTodo($id)
    {
        return $this->database->query('UPDATE todos SET', ['completed' => 0], 'WHERE id = %i', $id);
    }
}