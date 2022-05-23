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
        <form class="container" action="generate-recipe" method="get">
            <div class="row justify-content-md-center">
            <div class="row">
                <div class="input-group mb-3 ">
                    <span class="input-group-text">Введите продукты</span>
                    <input class="form-control" aria-label="With textarea" placeholder="яйца ,молоко, сыр..."/>
                </div>
            </div>

            <div class="row">
                <div class="col-md-auto">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <label class="input-group-text" for="inputGroupSelect01">Кухня</label>
                        </div>
                        <select class="custom-select" id="inputGroupSelect01">
                            <option selected>Выберите...</option>
                            <option value="1">Русская</option>
                            <option value="2">Японская</option>
                            <option value="3">Итальянская</option>
                        </select>
                    </div>
                </div>
                <div class="col-md-auto">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <label class="input-group-text" for="inputGroupSelect02">Время</label>
                        </div>
                        <select class="custom-select" id="inputGroupSelect02">
                            <option selected>Выберите...</option>
                            <option value="1">до 15 мин.</option>
                            <option value="2">до 30 мин.</option>
                            <option value="3">до 45 мин.</option>
                            <option value="4">до 60 мин.</option>
                        </select>
                    </div>
                </div>
                <div class="col-md-auto">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <label class="input-group-text" for="inputGroupSelect03">Сложность</label>
                        </div>
                        <select class="custom-select" id="inputGroupSelect03">
                            <option selected>Выберите...</option>
                            <option value="1">Легкая</option>
                            <option value="2">Средняя</option>
                            <option value="3">Сложная</option>
                        </select>
                    </div>
                </div>
                <div class="col-md-auto">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <label class="input-group-text" for="inputGroupSelect04">Тип блюда</label>
                        </div>
                        <select class="custom-select" id="inputGroupSelect04">
                            <option selected>Выберите...</option>
                            <option value="1">Десерт</option>
                            <option value="2">Завтрак</option>
                            <option value="3">Первое</option>
                            <option value="4">Второе</option>
                            <option value="5">Закуска</option>
                            <option value="6">Напиток</option>
                        </select>
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
                        <button class="btn btn-primary btn-lg btn-warning" type="button">Сгенерировать блюдо</button>
                    </div>
                </div>
            </div>
        </form>
    </main>

    <footer class="mt-auto text-white-50">
<%--        <p>Cover template for <a href="https://getbootstrap.com/" class="text-white">Bootstrap</a>, by <a href="https://twitter.com/mdo" class="text-white">@mdo</a>.</p>--%>
<%--    </footer>--%>
</div>

<%--<script src="/docs/5.1/dist/js/bootstrap.bundle.min.js?v=513" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>--%>




</body>
</html>
