<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (file_exists(SYSTEMPATH . 'Config/Routes.php'))
{
	require SYSTEMPATH . 'Config/Routes.php';
}

/**
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('dashboard');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
$routes->setAutoRoute(true);


/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.
$routes->get('/login', 'login::index');

$routes->group('', ['filter'=>'AdminCheck'], function($routes){
	$routes->get('/admin/dashboard', 'admin::dashboard');
	$routes->get('/admin/(:segment)', 'admin::view/$1');
	$routes->get('/admin/(:alpha)/profile/(:alphanum)', 'admin::display/$1/$2');
});
$routes->group('', ['filter'=>'StudentCheck'], function($routes){
	$routes->get('/student/dashboard', 'student::dashboard');
	$routes->get('/student/(:segment)', 'student::view/$1');
});

$routes->group('', ['filter'=>'TeacherCheck'], function($routes){
	$routes->get('/teacher/dashboard', 'teacher::dashboard');
	$routes->get('/teacher/(:segment)', 'teacher::view/$1');
});







/*
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (file_exists(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php'))
{
	require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
