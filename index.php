<?php

// Require composer autoloader
require __DIR__ . '/vendor/autoload.php';

require_once __DIR__ . '/app/Models/CoreModel.php';
require_once __DIR__ . '/app/Models/TaskModel.php';

// Create Router instance
$router = new \Bramus\Router\Router();

$router->setNamespace('Controllers');

// Define routes
$router->get('/', 'TaskController@index');
$router->get('/tasks', 'TaskController@index');

// Run it!
$router->run();