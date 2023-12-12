<?php

namespace Models;

class TaskModel extends CoreModel
{
    public function getTasks()
    {
        return $this->database->select('*')->from('tasks')->fetchAll();
    }
}