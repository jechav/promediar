@extends('layouts.base')

@section('cabecera')
        <title>Saca Promedios</title>
        {{ HTML::style('css/promedios.css') }}
@stop

@section('cuerpo')
	     <div class="container">
            <div class="header">
                <ul class="nav nav-pills pull-right">
                    <li class="active"><a href="#">Inicio</a></li>
                    <li><a data-toggle="modal" href="#myModal"> Accede </a></li>
                    <li><a href="#">Contactanos</a></li>
                    <li><a href="#">Conócenos</a></li>
                </ul>
                
                <h3 class="text-muted">{{ HTML::image('ico/logotipo.png', "Imagen no encontrada", array('id' => 'principito', 'title' => 'El principito', 'height'=>'30px', 'style'=>'padding-right: 12px')) }}Unimag</h3>
                <hr>
            </div>
            
            <div class="jumbotron">
                <h1>Hola!</h1>
                <p class="lead">Hemos traido esta herramienta que te ayudará a llevar el control de tus notas y promedios en la unimag, estamos en versión de prueba asi que te agradecemos cualquier aporte, en el menu de contactanos esperamos cualquier comentario.</p>
                <p><a class="btn btn-lg btn-success" href=" {{ url('calculadora', ''); }}" role="button">Pruébalo ya</a></p>
            </div>

            <hr> 
            <div class="footer">
                <p>&copy; The3ballsoft 2014</p>

        </div>
        <!-- Modal de registro-->
        <div class="modal fade" id="myModal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Saca Promedios Unimag</h4>
                    </div>
                    <div class="modal-body">
                        <div class="container">
                            <form class="form-signin" role="form" action="controller/login.php" method="post">
                            <h2 class="form-signin-heading">Ingresa tus datos</h2>
                            <div class="input-group">
							  <span class="input-group-addon"></span>
							  <input type="text" class="form-control" placeholder="Codigo" required autofocus>
							</div>
                           <div class="input-group">
							  <span class="input-group-addon"></span>
							  <input type="password" class="form-control" placeholder="Contraseña" required >
							</div>
                            <label class="checkbox">
                              <input type="checkbox" value="remember-me"> Recuerdame
                            </label>
                            <button id="btsubmit" type="submit" class="btn btn-primary" >Ahi vamos</button>
                          </form>
                        </div>
                    </div>
                    <div class="modal-footer">
                        
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                    </div>
                </div>
            </div>
        </div>


	@parent
@stop