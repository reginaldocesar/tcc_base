<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
</style><title>Home Financeiro</title>
</head>
<body>

	<form:form method="POST" commandName="/login" servletRelativeAction="login/form">
		<input type="text" name="email" id="email"/>
		<input type="password" name="senha" id="senha"/>
        <button type="submit" >Submit</button>
        <a href="usuario/cadastro">Cadastre-se</a>
	</form:form>			
</body>
</html>