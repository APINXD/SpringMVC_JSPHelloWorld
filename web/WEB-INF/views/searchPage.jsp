<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 27.04.2022
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<html>
<head>
    <title>Генератор блюд</title>
</head>

<body class="d-flex h-100 text-center text-white bg-dark">

    <div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
        <header class="mb-auto">
            <div>
                <h3 class="float-md-start mb-0">Cover</h3>
                <nav class="nav nav-masthead justify-content-center float-md-end">
                    <a class="nav-link active text-secondary" aria-current="page" href="${pageContext.request.contextPath}/search-page" >Генератор</a>
                    <a class="nav-link  text-white" href="${pageContext.request.contextPath}/all-recipes">Рецепты</a>

<%--                <button type="button" class="btn btn-outline-light me-2">Login</button>--%>
<%--                <button type="button" class="btn btn-outline-warning">Мой профиль</button>--%>
                    <a href="${pageContext.request.contextPath}/my-profile" class="btn btn-outline-warning" role="button">Мой профиль</a>
                </nav>
            </div>
        </header>


    <main class="px-3">
        <%--@elvariable id="Recipe" type="com.searchdishes.springMVC.model.Recipe"--%>
        <spring:form class="container" action="generate-recipe" method="post" modelAttribute="Recipe">
            <div class="row justify-content-md-center">
            <div class="row">
                <div class="input-group mb-3 ">
                    <span class="input-group-text">Введите продукты</span>
                    <spring:input class="form-control" aria-label="With textarea" placeholder="яйца ,молоко, сыр..." path="ingredients"/>
                </div>
            </div>

            <div class="row">
                <div class="col-md-auto">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <label class="input-group-text" for="inputGroupSelect01">Кухня</label>
                        </div>
                        <spring:select class="custom-select" id="inputGroupSelect01" path="kitchen">
                            <option selected>Выберите...</option>
                            <option value="Русская">Русская</option>
                            <option value="Японская">Японская</option>
                            <option value="Итальянская">Итальянская</option>
                        </spring:select>
                    </div>
                </div>
                <div class="col-md-auto">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <label class="input-group-text" for="inputGroupSelect02">Время</label>
                        </div>
                        <spring:select class="custom-select" id="inputGroupSelect02" path="time">
                            <option selected>Выберите...</option>
                            <option value="до 15 мин.">до 15 мин.</option>
                            <option value="до 30 мин.">до 30 мин.</option>
                            <option value="до 45 мин.">до 45 мин.</option>
                            <option value="до 60 мин.">до 60 мин.</option>
                        </spring:select>
                    </div>
                </div>
                <div class="col-md-auto">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <label class="input-group-text" for="inputGroupSelect03">Сложность</label>
                        </div>
                        <spring:select class="custom-select" id="inputGroupSelect03" path="difficulty">
                            <option selected>Выберите...</option>
                            <option value="Легкая">Легкая</option>
                            <option value="Средняя">Средняя</option>
                            <option value="Сложная">Сложная</option>
                        </spring:select>
                    </div>
                </div>
                <div class="col-md-auto">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <label class="input-group-text" for="inputGroupSelect04">Тип блюда</label>
                        </div>
                        <spring:select class="custom-select" id="inputGroupSelect04" path="type">
                            <option selected>Выберите...</option>
                            <option value="Десерт">Десерт</option>
                            <option value="Завтрак">Завтрак</option>
                            <option value="Первое">Первое</option>
                            <option value="Второе">Второе</option>
                            <option value="Закуска">Закуска</option>
                            <option value="Напиток">Напиток</option>
                        </spring:select>
                    </div>
                </div>
                <div class="col-md-auto">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="autoSizingCheck">
                        <label class="form-check-label" for="autoSizingCheck">
                            Доп. продукты
                        </label>
                    </div>
                </div>
            </div>
                <div class="row">
                    <div class="d-grid gap-2 col-6 mx-auto">
                        <spring:button class="btn btn-primary btn-lg btn-warning" href="${pageContext.request.contextPath}/generate-recipe" role ="button">Сгенерировать блюдо</spring:button>
                    </div>
                </div>
            </div>
        </spring:form>
    </main>

    <footer class="mt-auto text-white-50">
<%--        <p>Cover template for <a href="https://getbootstrap.com/" class="text-white">Bootstrap</a>, by <a href="https://twitter.com/mdo" class="text-white">@mdo</a>.</p>--%>
<%--    </footer>--%>
</div>

<%--<script src="/docs/5.1/dist/js/bootstrap.bundle.min.js?v=513" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>--%>




</body>
</html>
