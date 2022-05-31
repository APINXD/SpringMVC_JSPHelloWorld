<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<html>
<head>
    <title>Рецепты</title>
</head>

<body class="d-flex h-100 text-center text-white bg-dark">

<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column ">
    <header class="mb-auto">
        <div>
            <h3 class="float-md-start mb-0">Cover</h3>
            <nav class="nav nav-masthead justify-content-center float-md-end">
                <a class="nav-link text-white" aria-current="page" href="${pageContext.request.contextPath}/search-page" >Генератор</a>
                <a class="nav-link active text-secondary" href="${pageContext.request.contextPath}/all-recipes">Рецепты</a>

                <%--                <button type="button" class="btn btn-outline-light me-2">Login</button>--%>
                <a href="${pageContext.request.contextPath}/my-profile" class="btn btn-outline-warning" role="button">Мой профиль</a>
            </nav>
        </div>
    </header>



<main class="p-5">
    <spring:form class="container" action="searchRecipes" method="post" modelAttribute="Recipe">
        <div class="row justify-content-md-center">
            <div class="row">
                <div class="input-group mb-3 ">
                    <span class="input-group-text">Введите название</span>
                    <spring:input class="form-control" aria-label="With textarea" placeholder="Яичница/Борщ" path="name"/>
                </div>
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
                                        <option value="Американская">Итальянская</option>
                                        <option value="Французская">Итальянская</option>
                                        <option value="Татарская">Итальянская</option>
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
                                <spring:button class="btn btn-primary btn-lg btn-warning" href="${pageContext.request.contextPath}/searchRecipes" role="button">Поиск</spring:button>
                            </div>
                        </div>
        </div>
                </spring:form>
    <spring:form modelAttribute="Recipes" action="recipe">

    <div class="album py-5 bg-dark ">
        <div class="container">

            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
                <div class="col">
                    <div class="card shadow-sm">
                        <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text><image height="225" width="100%"  href="${Recipes.get(0).imageLink}"></image></svg>
                        <div class="card-body text-dark">
                            <h5>${Recipes.get(0).name}</h5>
                            <p >${Recipes.get(0).ingredients}</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <button type="button" class="btn btn-sm btn-outline-secondary">♥ В избранное</button>
                                <a class="btn btn-sm btn-outline-secondary" id="1" href="${pageContext.request.contextPath}/recipe" >Подробнее</a>
<%--                                <div class="btn-group">--%>
<%--                                    <button type="button" class="btn btn-sm btn-outline-secondary">View</button>--%>
<%--                                    <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>--%>
<%--                                </div>--%>
                                <small class="text-muted" id="time">${Recipes.get(0).time}</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card shadow-sm">
                        <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text><image height="225" width="100%"  href="${Recipes.get(1).imageLink}"></image></svg>
                        <div class="card-body text-dark">
                            <h5>${Recipes.get(1).name}</h5>
                            <p >${Recipes.get(1).ingredients}</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <button type="button" class="btn btn-sm btn-outline-secondary">♥ В избранное</button>
                                <a class="btn btn-sm btn-outline-secondary" id="1" href="${pageContext.request.contextPath}/recipe" >Подробнее</a>
                                    <%--                                <div class="btn-group">--%>
                                    <%--                                    <button type="button" class="btn btn-sm btn-outline-secondary">View</button>--%>
                                    <%--                                    <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>--%>
                                    <%--                                </div>--%>
                                <small class="text-muted" id="time">${Recipes.get(1).time}</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card shadow-sm">
                        <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text><image height="225" width="100%"  href="${Recipes.get(2).imageLink}"></image></svg>
                        <div class="card-body text-dark">
                            <h5>${Recipes.get(2).name}</h5>
                            <p >${Recipes.get(2).ingredients}</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <button type="button" class="btn btn-sm btn-outline-secondary">♥ В избранное</button>
                                <a class="btn btn-sm btn-outline-secondary" id="1" href="${pageContext.request.contextPath}/recipe" >Подробнее</a>
                                    <%--                                <div class="btn-group">--%>
                                    <%--                                    <button type="button" class="btn btn-sm btn-outline-secondary">View</button>--%>
                                    <%--                                    <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>--%>
                                    <%--                                </div>--%>
                                <small class="text-muted" id="time">${Recipes.get(2).time}</small>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="card shadow-sm">
                        <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text><image height="225" width="100%"  href="${Recipes.get(3).imageLink}"></image></svg>
                        <div class="card-body text-dark">
                            <h5>${Recipes.get(3).name}</h5>
                            <p >${Recipes.get(3).ingredients}</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <button type="button" class="btn btn-sm btn-outline-secondary">♥ В избранное</button>
                                <a class="btn btn-sm btn-outline-secondary" id="1" href="${pageContext.request.contextPath}/recipe" >Подробнее</a>
                                    <%--                                <div class="btn-group">--%>
                                    <%--                                    <button type="button" class="btn btn-sm btn-outline-secondary">View</button>--%>
                                    <%--                                    <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>--%>
                                    <%--                                </div>--%>
                                <small class="text-muted" id="time">${Recipes.get(3).time}</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card shadow-sm">
                        <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text><image height="225" width="100%"  href="${Recipes.get(4).imageLink}"></image></svg>
                        <div class="card-body text-dark">
                            <h5>${Recipes.get(4).name}</h5>
                            <p >${Recipes.get(4).ingredients}</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <button type="button" class="btn btn-sm btn-outline-secondary">♥ В избранное</button>
                                <a class="btn btn-sm btn-outline-secondary" id="1" href="${pageContext.request.contextPath}/recipe" >Подробнее</a>
                                    <%--                                <div class="btn-group">--%>
                                    <%--                                    <button type="button" class="btn btn-sm btn-outline-secondary">View</button>--%>
                                    <%--                                    <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>--%>
                                    <%--                                </div>--%>
                                <small class="text-muted" id="time">${Recipes.get(4).time}</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card shadow-sm">
                        <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text><image height="225" width="100%"  href="${Recipes.get(5).imageLink}"></image></svg>
                        <div class="card-body text-dark">
                            <h5>${Recipes.get(5).name}</h5>
                            <p >${Recipes.get(5).ingredients}</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <button type="button" class="btn btn-sm btn-outline-secondary">♥ В избранное</button>
                                <a class="btn btn-sm btn-outline-secondary" id="1" href="${pageContext.request.contextPath}/recipe" >Подробнее</a>
                                    <%--                                <div class="btn-group">--%>
                                    <%--                                    <button type="button" class="btn btn-sm btn-outline-secondary">View</button>--%>
                                    <%--                                    <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>--%>
                                    <%--                                </div>--%>
                                <small class="text-muted" id="time">${Recipes.get(5).time}</small>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="card shadow-sm">
                        <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text><image height="225" width="100%"  href="${Recipes.get(6).imageLink}"></image></svg>
                        <div class="card-body text-dark">
                            <h5>${Recipes.get(6).name}</h5>
                            <p >${Recipes.get(6).ingredients}</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <button type="button" class="btn btn-sm btn-outline-secondary">♥ В избранное</button>
                                <a class="btn btn-sm btn-outline-secondary" id="1" href="${pageContext.request.contextPath}/recipe" >Подробнее</a>
                                    <%--                                <div class="btn-group">--%>
                                    <%--                                    <button type="button" class="btn btn-sm btn-outline-secondary">View</button>--%>
                                    <%--                                    <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>--%>
                                    <%--                                </div>--%>
                                <small class="text-muted" id="time">${Recipes.get(6).time}</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card shadow-sm">
                        <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

                        <div class="card-body text-dark">
                            <h5>Название</h5>
                            <p >This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <button type="button" class="btn btn-sm btn-outline-secondary">♥ В избранное</button>
                                <button type="button" class="btn btn-sm btn-outline-secondary">Подробнее</button>
                                <%--                                <div class="btn-group">--%>
                                <%--                                    <button type="button" class="btn btn-sm btn-outline-secondary">View</button>--%>
                                <%--                                    <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>--%>
                                <%--                                </div>--%>
                                <small class="text-muted">до 15 минут</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card shadow-sm">
                        <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

                        <div class="card-body text-dark">
                            <h5>Название</h5>
                            <p >This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <button type="button" class="btn btn-sm btn-outline-secondary">♥ В избранное</button>
                                <button type="button" class="btn btn-sm btn-outline-secondary">Подробнее</button>
                                <%--                                <div class="btn-group">--%>
                                <%--                                    <button type="button" class="btn btn-sm btn-outline-secondary">View</button>--%>
                                <%--                                    <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>--%>
                                <%--                                </div>--%>
                                <small class="text-muted">до 15 минут</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </spring:form>

</main></div>
</body>
</html>