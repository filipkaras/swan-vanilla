<?php

namespace Models;

class TodoModel extends CoreModel
{
    public function getTodos()
    {
        return $this->database->select('*')->from('todos')->fetchAll();
    }
}