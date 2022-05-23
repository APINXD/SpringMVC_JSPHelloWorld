<!-- обратите внимание на spring тэги -->
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<html>

<head>
  <title>Index Page</title>
</head>

<body>
<%--@elvariable id="userJSP" type="com.searchdishes.springMVC.model.User"--%>
<spring:form method="post"  modelAttribute="userJSP" action="check-user">

  Name: <spring:input path="firstName"/> (path="" - указывает путь, используемый в modelAttribute=''. в нашем случае User.name)  <br/>
  Password: <spring:input path="password"/>   <br/>
  <spring:button>Next Page</spring:button>
</spring:form>
<div>
<form action="search-page" method="get">
  <input type = "submit">Генератор /input>
</form>
  <form action="generate-recipe" method="get">
    <input type = "submit">Рецепт /input>
  </form>
  <form action="all-recipes" method="get">
    <input type = "submit">Рецепы /input>
  </form>
  <form action="sign-in" method="get">
    <input type = "submit">Вход /input>
  </form>
  <form action="sign-up" method="get">
    <input type = "submit">Регистрация /input>
  </form>
  <form action="my-profile" method="get">
    <input type = "submit">Мой профиль /input>
  </form>
  <form action="new-recipe" method="get">
    <input type = "submit">Новый рецепт /input>
  </form>
</div>



</body>

</html>
