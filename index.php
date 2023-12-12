<?php

// Require composer autoloader
require __DIR__ . '/vendor/autoload.php';

require_once __DIR__ . '/app/Models/CoreModel.php';
require_once __DIR__ . '/app/Models/TodoModel.php';

// Create Router instance
$router = new \Bramus\Router\Router();

$router->setNamespace('Controllers');

// Define routes
$router->get('/', 'TodoController@index');
$router->get('/todos', 'TodoController@index');
$router->get('/todo/ajaxData', 'TodoController@ajaxData');

// Run it!
$router->run();