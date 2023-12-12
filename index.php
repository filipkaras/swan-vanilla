<?php

define('MSG_SUCCESS', 1);
define('MSG_ERROR', 2);

// Require composer autoloader
require __DIR__ . '/vendor/autoload.php';

require __DIR__ . '/app/Helpers/GeneralHelper.php';
require __DIR__ . '/app/Renderers/BootstrapFormRenderer.php';

require_once __DIR__ . '/app/Models/CoreModel.php';
require_once __DIR__ . '/app/Models/TodoModel.php';

// Create Router instance
$router = new \Bramus\Router\Router();

$router->setNamespace('Controllers');

// Define routes
$router->get('/', 'TodoController@index');
$router->get('/todos', 'TodoController@index');
$router->get('/todo/ajaxData', 'TodoController@ajaxData');
$router->get('/todo/reopen/(\d+)', 'TodoController@reopen');
$router->get('/todo/complete/(\d+)', 'TodoController@complete');
$router->get('/todo/create', 'TodoController@create');
$router->post('/todo/create', 'TodoController@create');
$router->get('/todo/update/(\d+)', 'TodoController@update');
$router->post('/todo/update/(\d+)', 'TodoController@update');

// Run it!
$router->run();