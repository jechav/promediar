@extends('layouts.base')

@section('cabecera')
    <title>Calculadora</title>
  {{ HTML::style('css/calculadora.css') }}
  {{ HTML::style('css/bootstrap-editable.css') }}
@stop

@section('cuerpo')

    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
          </button>
          <a class="navbar-brand" href="#">Calculadora</a>
          {{ HTML::image('ico/logotipo.png', "Imagen no encontrada", array('id' => 'logo', 'title' => 'logo', 'height'=>'20px', 'style'=>'margin-top: 15px; display:block;')) }}
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">Inicio</a></li>
            <li><a href="#">Opciones</a></li>
            <li><a href="#">Mi perfil</a></li>
            <li><a href="#">Ayuda</a></li>
            <li><a href="#">Salir</a></li>
          </ul>
        </div>
      </div>
    </div>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li><h4 class="text-info " style="padding-left: 10px;">Acceso Rápido</h4></li>
            <li><a href="#">Semestre I</a></li>
            <li><a href="#">Semestre II</a></li>
            <li><a href="#">Semestre III</a></li>
            <li><a href="#">Semestre IV</a></li>
            <li><a href="#">Semestre V</a></li>
            <li><a href="#">Semestre VI</a></li>
            <li><a href="#">Semestre VII</a></li>
            <li><a href="#">Semestre VIII</a></li>
            <li><a href="#">Semestre IX</a></li>
            <li><a href="#">Semestre X</a></li>
            
          </ul>
          <ul class="nav nav-sidebar">
            <li><a href="">Mas Informacion</a></li>
            <li><a href="">Guardar</a></li>
          </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">Codigo: </h1>

          <div class="row placeholders">
            <div class="col-xs-6 col-sm-3 placeholder">
              <img data-src="holder.js/50x50/text: /sky" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Ganadas</h4>
              <span class="text-muted">??</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img data-src="holder.js/50x50/text: /industrial" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Pendientes</h4>
              <span class="text-muted">??</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img data-src="holder.js/50x50/text: /lava" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Perdidas</h4>
              <span class="text-muted">??</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img data-src="holder.js/50x50/text: /gray" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Con errores</h4>
              <span class="text-muted">??</span>
            </div>
          </div>

          
          <div class="table-responsive panel panel-primary">
            <div class="panel-heading">
              <h3 class="panel-title">Semestre 1</h3>
            </div>
            <table class="table table-striped table-hover table-condensed">
              <thead>
                <tr>
                  <th>Materia</th>
                  <th>Definitiva</th>
                  <th>Corte 1</th>
                  <th>Corte 2</th>
                  <th>Corte 3</th>
                  <th>Restante</th>
                  <th>Estado</th>
                  <th>Autocalcular</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>Materia 1</td>
                  <td><a href="#" id="username">??</a></td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td><span class="badge">??</span></td>
                  <td><span class="label label-danger">Perdida</span></td>
                  <td><button type="button"><span class="glyphicon glyphicon-cog"></span></button></td>
                </tr>
                <tr>
                  <td>Materia 2</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td><span class="badge">??</span></td>
                  <td><span class="label label-success">Ganada</span></td>
                  <td><button type="button"><span class="glyphicon glyphicon-cog"></span></button></td>
                </tr>
                <tr>
                  <td>Materia 3</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td><span class="badge">??</span></td>
                  <td><span class="label label-success">Ganada</span></td>
                  <td><button type="button"><span class="glyphicon glyphicon-cog"></span></button></td>
                </tr>
                <tr>
                  <td>Materia 4</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td><span class="badge">??</span></td>
                  <td><span class="label label-default">con errores</span></td>
                  <td><button type="button"><span class="glyphicon glyphicon-cog"></span></button></td>
                </tr>
                <tr>
                  <td>Materia 5</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td><span class="badge">??</span></td>
                  <td><span class="label label-warning">Pendiente</span></td>
                  <td><button type="button"><span class="glyphicon glyphicon-cog"></span></button></td>
                </tr>
                
              </tbody>
            </table>
          </div>

          <div class="table-responsive panel panel-primary">
            <div class="panel-heading">
              <h3 class="panel-title">Semestre 2</h3>
            </div>
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Materia</th>
                  <th>Definitiva</th>
                  <th>Corte 1</th>
                  <th>Corte 2</th>
                  <th>Corte 3</th>
                  <th>Restante</th>
                  <th>Estado</th>
                  <th>Autocalcular</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>Materia 1</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td><span class="badge">??</span></td>
                  <td><span class="label label-danger">Perdida</span></td>
                  <td><button type="button"><span class="glyphicon glyphicon-cog"></span></button></td>
                </tr>
                <tr>
                  <td>Materia 2</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td><span class="badge">??</span></td>
                  <td><span class="label label-success">Ganada</span></td>
                  <td><button type="button"><span class="glyphicon glyphicon-cog"></span></button></td>
                </tr>
                <tr>
                  <td>Materia 3</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td><span class="badge">??</span></td>
                  <td><span class="label label-success">Ganada</span></td>
                  <td><button type="button"><span class="glyphicon glyphicon-cog"></span></button></td>
                </tr>
                <tr>
                  <td>Materia 4</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td><span class="badge">??</span></td>
                  <td><span class="label label-default">con errores</span></td>
                  <td><button type="button"><span class="glyphicon glyphicon-cog"></span></button></td>
                </tr>
                <tr>
                  <td>Materia 5</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td><span class="badge">??</span></td>
                  <td><span class="label label-warning">Pendiente</span></td>
                  <td><button type="button"><span class="glyphicon glyphicon-cog"></span></button></td>
                </tr>
                
              </tbody>
            </table>
          </div>

          <div class="table-responsive panel panel-warning">
            <div class="panel-heading">
              <h3 class="panel-title">Semestre 3</h3>
            </div>
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Materia</th>
                  <th>Definitiva</th>
                  <th>Corte 1</th>
                  <th>Corte 2</th>
                  <th>Corte 3</th>
                  <th>Restante</th>
                  <th>Estado</th>
                  <th>Autocalcular</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>Materia 1</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td><span class="badge">??</span></td>
                  <td><span class="label label-danger">Perdida</span></td>
                  <td><button type="button"><span class="glyphicon glyphicon-cog"></span></button></td>
                </tr>
                <tr>
                  <td>Materia 2</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td><span class="badge">??</span></td>
                  <td><span class="label label-success">Ganada</span></td>
                  <td><button type="button"><span class="glyphicon glyphicon-cog"></span></button></td>
                </tr>
                <tr>
                  <td>Materia 3</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td><span class="badge">??</span></td>
                  <td><span class="label label-success">Ganada</span></td>
                  <td><button type="button"><span class="glyphicon glyphicon-cog"></span></button></td>
                </tr>
                <tr>
                  <td>Materia 4</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td><span class="badge">??</span></td>
                  <td><span class="label label-default">con errores</span></td>
                  <td><button type="button"><span class="glyphicon glyphicon-cog"></span></button></td>
                </tr>
                <tr>
                  <td>Materia 5</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td><span class="badge">??</span></td>
                  <td><span class="label label-warning">Pendiente</span></td>
                  <td><button type="button"><span class="glyphicon glyphicon-cog"></span></button></td>
                </tr>
                
              </tbody>
            </table>
          </div>

          <div class="table-responsive panel panel-primary">
            <div class="panel-heading">
              <h3 class="panel-title">Semestre 4</h3>
            </div>
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Materia</th>
                  <th>Definitiva</th>
                  <th>Corte 1</th>
                  <th>Corte 2</th>
                  <th>Corte 3</th>
                  <th>Restante</th>
                  <th>Estado</th>
                  <th>Autocalcular</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>Materia 1</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td><span class="badge">??</span></td>
                  <td><span class="label label-danger">Perdida</span></td>
                  <td><button type="button"><span class="glyphicon glyphicon-cog"></span></button></td>
                </tr>
                <tr>
                  <td>Materia 2</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td><span class="badge">??</span></td>
                  <td><span class="label label-success">Ganada</span></td>
                  <td><button type="button"><span class="glyphicon glyphicon-cog"></span></button></td>
                </tr>
                <tr>
                  <td>Materia 3</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td><span class="badge">??</span></td>
                  <td><span class="label label-success">Ganada</span></td>
                  <td><button type="button"><span class="glyphicon glyphicon-cog"></span></button></td>
                </tr>
                <tr>
                  <td>Materia 4</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td><span class="badge">??</span></td>
                  <td><span class="label label-default">con errores</span></td>
                  <td><button type="button"><span class="glyphicon glyphicon-cog"></span></button></td>
                </tr>
                <tr>
                  <td>Materia 5</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td>??</td>
                  <td><span class="badge">??</span></td>
                  <td><span class="label label-warning">Pendiente</span></td>
                  <td><button type="button"><span class="glyphicon glyphicon-cog"></span></button></td>
                </tr>
                
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  @parent
  {{ HTML::script('js/docs.min.js') }}
  {{ HTML::script('js/bootstrap-editable.js') }}
  <script type="text/javascript">
  $('#username').editable({
                           type:  'text',
                           pk:    1,
                           name:  'username',
                           url:   'post.php',  
                           title: 'Enter username'
                        });
  
</script>
@stop
