<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html">
<head>
<title>Your Hero Story!</title>
    <meta charset="utf-8">
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
</head>
<body background="images\\wall1.jpg">
<div class="row">
<div class="col-sm-6 col-sm-offset-3">
    <div class="well" style="margin-top: 10%;">
    <center><h3>¡Escribe la historia de <%= request.getAttribute("nameper")%>!</h3></center>
    <form role="form" id="contactForm"class="shake"  action="segunda_servlet" method="post"> 
        <div class="form-group">
            <textarea name="message" id="message" class="form-control" rows="5"  required>Hace unas semanas <%= request.getAttribute("namereal")%> sufrió un accidente. 
Después de un largo sueño, había despertado como un <%= request.getAttribute("buenomalo")%> y habilidades como <%= request.getAttribute("Fuerza")%> <%= request.getAttribute("Inteligencia")%> <%= request.getAttribute("Rayos")%> <%= request.getAttribute("Volar")%> <%= request.getAttribute("Teletransporte")%> <%= request.getAttribute("Rapidez")%>.  
Ahora le llaman ¡<%= request.getAttribute("nameper")%>!
		
            </textarea>
            <input type="text" name="nameper" value="<%= request.getAttribute("nameper")%>" style="visibility:hidden">
            <div class="help-block with-errors"></div>
        </div>
        <input type="submit" id="form-submit" class="btn btn-success btn-lg pull-right" value="¡Terminar y Guardar!">
        <div id="msgSubmit" class="h3 text-center hidden"></div>
        <div class="clearfix"></div>
    </form>
    </div>
</div>
</div>
</body>
</html>