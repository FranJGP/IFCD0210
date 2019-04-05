<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html">
<head>
<title>Your Hero!</title>
    <meta charset="utf-8">
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
</head>
<body background="images\\wall1.jpg">
<div class="row">
<div class="col-sm-6 col-sm-offset-3">
    <div class="well" style="margin-top: 10%;">
    <center><h3>¡Crea tu personaje!</h3></center>
    <form role="form" id="contactForm"class="shake"  action="primera_servlet" method="post">
        <div class="row">
            <div class="form-group col-sm-6">
                <label for="name" class="h4">Nombre del personaje:</label>
                <input type="text" class="form-control" name="nameper" id="name" placeholder="Enter name" required data-error="Debes rellenarlo">
                <div class="help-block with-errors"></div>
            </div>
            <div class="form-group col-sm-6">
                <label for="name" class="h4">Nombre real:</label>
                <input type="name" class="form-control" name="namereal" id="name" placeholder="Enter realname" required data-error="Debes rellenarlo">
                <div class="help-block with-errors"></div>
            </div>
        </div>
        <div>
            	<center>
            		<label for="name" class="h4">¿A qué bando pertenece?</label><br>
            		<label><input name="buenomalo" type="radio" id="cbox1" value="villano"> Villano</label><br>            			
            		<label><input name="buenomalo" type="radio" id="cbox2" value="heroe" checked="checked"> Heroe</label>
            	</center>
            	<br>
         </div>
         <div>
            	<center>
            		<label for="name" class="h4">¿Qué cualidades posee?</label><br>
            		<label><input name="Fuerza" type="checkbox" id="cbox1" value="fuerza"> Fuerza</label><br>
            		<label><input name="Inteligencia" type="checkbox" id="cbox2" value="inteligencia"> Inteligencia</label><br>
            		<label><input name="Rayos" type="checkbox" id="cbox3" value="rayos x"> Rayos X</label><br>
            		<label><input name="Volar" type="checkbox" id="cbox4" value="volar" checked="checked"> Volar</label><br>
            		<label><input name="Teletransporte" type="checkbox" id="cbox5" value="teletransportarse"> Teletransporte</label><br>        			
            		<label><input name="Rapidez" type="checkbox" id="cbox6" value="rapidez" > Rápidez</label>
            	</center>
            	<br>
         </div>
        <input type="submit" id="form-submit" class="btn btn-success btn-lg pull-right" value="¡Crear su historia!">
        <div id="msgSubmit" class="h3 text-center hidden"></div>
        <div class="clearfix"></div>
    </form>
    </div>
</div>
</div>
</body>
</html>