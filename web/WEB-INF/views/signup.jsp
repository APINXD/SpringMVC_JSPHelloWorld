<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 04.05.2022
  Time: 0:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<html>
<head>
    <title>Sign Up</title>
</head>
<body class="d-flex h-100 text-center text-white bg-dark justify-content-md-center">
<section >

    <div class="card  shadow-5-strong text-white justify-content-md-center align-items-center" style="
        padding: 50px;
        background: hsla(0, 0%, 100%, 0.1);
        backdrop-filter: blur(30px);
        ">
        <div class="card-body py-5 px-md-5">

            <div class="row d-flex justify-content-md-center">
                <div class="col-lg-8">
                    <h2 class="fw-bold mb-5">Sign up now</h2>
                    <%--@elvariable id="userJSP" type="com.searchdishes.springMVC.model.User"--%>
                    <spring:form modelAttribute="userJSP" method="post" action="signUp">
                        <!-- 2 column grid layout with text inputs for the first and last names -->
                        <div class="row">
                            <div class="col-md-6 mb-4">
                                <div class="form-outline">
                                    <spring:input type="text" id="firstNameText" class="form-control"  path="firstName"/>
                                    <label class="form-label" for="firstNameText">First name</label>
                                </div>
                            </div>
                            <div class="col-md-6 mb-4">
                                <div class="form-outline">
                                        <spring:input type="text" id="lastNameText" class="form-control"  path="lastName"/>
                                        <label class="form-label" for="lastNameText">Last name</label>
                                </div>
                            </div>
                        </div>

                        <!-- Email input -->
                        <div class="form-outline mb-4">
                            <spring:input type="email" id="emailText" class="form-control" path="email"/>
                            <label class="form-label" for="emailText">Email address</label>
                        </div>

                        <!-- Password input -->
                        <div class="form-outline mb-4">
                            <spring:input type="password" id="passwordText" class="form-control"  path="password"/>
                            <label class="form-label" for="passwordText">Password</label>
                        </div>

                        <!-- Checkbox -->
                        <div class="form-check d-flex justify-content-center mb-4">
                            <input class="form-check-input me-2" type="checkbox" value="" id="form2Example33" checked />
                            <label class="form-check-label" for="form2Example33">
                                Subscribe to our newsletter
                            </label>
                        </div>

                        <!-- Submit button -->
                        <spring:button href="${pageContext.request.contextPath}/signUp" class="btn btn-primary btn-warning fw-bold mx-auto mb-4" role="button">Sign up</spring:button>
                        <%--<button type="submit" class="btn btn-primary btn-warning fw-bold mx-auto mb-4">
                            Sign up
                        </button>--%>


                        <!-- Register buttons -->
<%--                        <div class="text-center">--%>
<%--                            <p>or sign up with:</p>--%>
<%--                            <button type="button" class="btn btn-link btn-floating mx-1">--%>
<%--                                <i class="fab fa-facebook-f"></i>--%>
<%--                            </button>--%>

<%--                            <button type="button" class="btn btn-link btn-floating mx-1">--%>
<%--                                <i class="fab fa-google"></i>--%>
<%--                            </button>--%>

<%--                            <button type="button" class="btn btn-link btn-floating mx-1">--%>
<%--                                <i class="fab fa-twitter"></i>--%>
<%--                            </button>--%>

<%--                            <button type="button" class="btn btn-link btn-floating mx-1">--%>
<%--                                <i class="fab fa-github"></i>--%>
<%--                            </button>--%>
                        </div>
                </spring:form>
                </div>
            </div>
        </div>
</section>

</body>
</html>
