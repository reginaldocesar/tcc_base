<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
</style><title>Cadasto de Usuario</title>
</head>
<body> 
	<form:form method="POST" commandName="usuario" servletRelativeAction="/usuario/novo">
   		<label for="nome">Nome</label><input type="text" name="nome" id="nome"/>
		<label for="email">E-mail</label><input type="text" name="email" id="email"/>
		<label for="senha">Senha</label><input type="password" name="senha" id="senha"/>
        <button type="submit" >Enviar</button>
	</form:form>			
</body>
</html>