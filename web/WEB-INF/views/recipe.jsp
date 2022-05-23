<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 27.04.2022
  Time: 23:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<html>
<head>
    <title>Рецепт</title>
</head>
<body>
<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <header class="mb-auto">
        <div>
            <h3 class="float-md-start mb-0">Cover</h3>
            <nav class="nav nav-masthead justify-content-center float-md-end">
                <a class="nav-link text-black" href="${pageContext.request.contextPath}/search-page" >Генератор</a>
                <a class="nav-link active text-black" href="${pageContext.request.contextPath}/all-recipes">Рецепты</a>

                <%--                <button type="button" class="btn btn-outline-light me-2">Login</button>--%>
                <a href="${pageContext.request.contextPath}/my-profile" class="btn btn-outline-warning" role="button">Мой профиль</a>
            </nav>
        </div>
    </header>

    <main class="px-3">

        <div class="text-center"><img alt="Вариант подачи блюда" class="img-thumbnail" src="images/IMG_20170807_210458_987.jpg">
            <h1>${Recipe.name}</h1>
            <h1></h1>
            <h5>Продукты: ${Recipe.ingredients}</h5>
            <h5>Кухня:${Recipe.kitchen}</h5>
            <h5>Тип блюда:${Recipe.type}</h5>
            <h5> Время:${Recipe.time}</h5>
            <h5>Сложность:${Recipe.difficulty}</h5>
            <h1> </h1>
            <p class="lead"> ${Recipe.content}</p>
        </div>

    </main>
</div>


</body>
</html>
