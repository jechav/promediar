<?php

// Nos mostrará el formulario de login.
//Route::get('login', 'AuthController@showLogin');
// Validamos los datos de inicio de sesión.
//Route::post('login', 'AuthController@postLogin');
//Route::get('logout', 'AuthController@logOut');
// Nos indica que las rutas que están dentro de él sólo serán mostradas si antes el usuario se ha autenticado.
/*
  Route::group(array('before' => 'auth'), function()
  {
  // Esta será nuestra ruta de bienvenida.
  Route::get('/', function()
  {
  return View::make('hello');
  });
  // Esta ruta nos servirá para cerrar sesión.
  Route::get('logout', 'AuthController@logOut');
  });
 */

Route::get('/', function() {
    return View::make('inicio');
});

Route::get('/index', function() {
    return View::make('inicio');
});

Route::get('/materias', function() {
    $materias = Materia::all();
    foreach ($materias as $materia) {
        echo $materia->nombre_materia;
        echo ' -> ';
        echo $materia->creditos;
        echo '<br>';
    }
});

Route::get('/calculadora', 'calculadoraController@mostrarInicio');
