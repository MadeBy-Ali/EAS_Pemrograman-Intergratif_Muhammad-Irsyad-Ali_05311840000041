<?php

require_once dirname(__DIR__) .'/vendor/autoload.php';
/**
 * Autoloader
 */
spl_autoload_register(function ($class) {
    $root = dirname(__DIR__);   // get the parent directory
    $file = $root . '/' . str_replace('\\', '/', $class) . '.php';
    if (is_readable($file)) {
        require $root . '/' . str_replace('\\', '/', $class) . '.php';
    }
});

$router = new Core\Router();

// Add the routes
$router->add('', ['controller' => 'Home', 'action' => 'index']);
$router->add('posts', ['controller' => 'Posts', 'action' => 'index']);
$router->add('{controller}/{action}');
$router->add('{controller}/{id:\d+}/{action}');
$router->add('lingkaran', ['controller' => 'lingkaran', 'action' => 'index']);
$router->add('hitung', ['controller' => 'lingkaran', 'action' => 'hitung']);
$router->add('tests1/index', ['controller' => 'tests1', 'action' => 'index']);
$router->add('things/index', ['controller' => 'things', 'action' => 'index']);
$router->add('datas/index', ['controller' => 'datas', 'action' => 'index']);
$router->add('foods/index', ['controller' => 'foods', 'action' => 'index']);

$router->add('inputdata', ['controller' => 'Home', 'action' => 'inputdata']);
$router->add('Jenis', ['controller' => 'Jenis', 'action' => 'Index']);
$router->add('filter', ['controller' => 'Jenis', 'action' => 'filter']);



$router->dispatch($_SERVER['QUERY_STRING']);

