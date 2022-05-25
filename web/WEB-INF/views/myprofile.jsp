<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<html>
<head>
    <title>Мой профиль</title>
</head>
<body class="d-flex h-100 text-center text-white bg-dark">

<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column ">

    <header class="mb-auto">
        <div>
            <h3 class="float-md-start mb-0">Cover</h3>
            <nav class="nav nav-masthead justify-content-center float-md-end">
                <a class="nav-link  text-white" aria-current="page" href="${pageContext.request.contextPath}/search-page" >Генератор</a>
                <a class="nav-link  text-white" href="${pageContext.request.contextPath}/all-recipes">Рецепты</a>

                <%--                <button type="button" class="btn btn-outline-light me-2">Login</button>--%>
                <a href="${pageContext.request.contextPath}/my-profile" class="btn btn-outline-warning" role="button">Мой профиль</a>
            </nav>
        </div>
    </header>


        <form>
    <main class="p-5">
        <form class="container" action="all-recipes" method="get">
            <div class="row justify-content-center bg-white">
                <div class="row text-dark input-group">
                    <h3 class="mt-2">${userJSP.firstName}</h3>
                    <p>Email: ${userJSP.email}</p>
                    <p>Password: ${userJSP.password}</p>

                </div>
                <div class="row mb-2">
                    <div class="d-grid gap-2 col-6 mx-auto">
                        <a href="${pageContext.request.contextPath}/new-recipe" class="btn btn-primary btn-lg btn-warning" type="button">Создать свой рецепт</a>
                    </div>
                </div>
            </div>
                <div class="row justify-content-md-center">
                <div class="row mt-5">
                    <div class="input-group mb-3 ">
                        <span class="input-group-text">Введите название</span>
                        <input class="form-control" aria-label="With textarea" placeholder="Яичница/Борщ"/>
                    </div>
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
                                <option value="Русская">Русская</option>
                                <option value="Японская">Японская</option>
                                <option value="Итальянская">Итальянская</option>
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
                                <option value="до 15 мин.">до 15 мин.</option>
                                <option value="до 30 мин.">до 30 мин.</option>
                                <option value="до 45 мин.">до 45 мин.</option>
                                <option value="до 60 мин.">до 60 мин.</option>
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
                                <option value="Легкая">Легкая</option>
                                <option value="Средняя">Средняя</option>
                                <option value="Сложная">Сложная</option>
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
                                <option value="Десерт">Десерт</option>
                                <option value="Завтрак">Завтрак</option>
                                <option value="Первое">Первое</option>
                                <option value="Второе">Второе</option>
                                <option value="Закуска">Закуска</option>
                                <option value="Напиток">Напиток</option>
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
                        <div class="col-md-auto">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="autoSizingCheck2">
                                <label class="form-check-label" for="autoSizingCheck2">
                                    Мой рецепт
                                </label>
                            </div>
                    </div>
                </div>
                <div class="row">
                    <div class="d-grid gap-2 col-6 mx-auto">
                        <button class="btn btn-primary btn-lg btn-warning" type="button">Поиск из избанного</button>
                    </div>
                </div>
            </div>

        <div class="album py-5 bg-dark ">
            <div class="container">

                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
                    <div class="col">
                        <div class="card shadow-sm">
                            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

                            <div class="card-body text-dark">
                                <h5>Название</h5>
                                <p >This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <button type="button" class="btn btn-sm btn-outline-secondary">♥ Удалить</button>
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
                                    <button type="button" class="btn btn-sm btn-outline-secondary">♥ Удалить</button>
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
                                    <button type="button" class="btn btn-sm btn-outline-secondary">♥ Удалить</button>
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
                                    <button type="button" class="btn btn-sm btn-outline-secondary">♥ Удалить</button>
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
                                    <button type="button" class="btn btn-sm btn-outline-secondary">♥ Удалить</button>
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
                                    <button type="button" class="btn btn-sm btn-outline-secondary">♥ Удалить</button>
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
                                    <button type="button" class="btn btn-sm btn-outline-secondary">♥ Удалить</button>
                                    <button type="button" class="btn btn-sm btn-outline-secondary">Подробнее</button>
                                    <%--                                <div class="btn-group">--%>
                                    <%--                                    <button type="button" class="btn btn-sm btn-outline-secondary">View</button>--%>
                                    <%--                                    <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>--%>
                                    <%--                                </div>--%>
                                    <small class="text-muted">до 15 минут</small>
                                </div>
                            </div>                    </div>
                    </div>
                    <div class="col">
                        <div class="card shadow-sm">
                            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

                            <div class="card-body text-dark">
                                <h5>Название</h5>
                                <p >This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <button type="button" class="btn btn-sm btn-outline-secondary">♥ Удалить</button>
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
                                    <button type="button" class="btn btn-sm btn-outline-secondary">♥ Удалить</button>
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
        </form>
    </main>
        </form>
</div>
</body>
</html>