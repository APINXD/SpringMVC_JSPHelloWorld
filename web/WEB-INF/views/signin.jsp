<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 02.05.2022
  Time: 17:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<html lang="en">
<head>
    <title>Sign In</title>

</head>
<body class="text-center">
<section class="vh-100 gradient-custom">
    <div class="container  h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                <div class="card bg-dark text-white" style="border-radius: 1rem;">
                    <div class="card-body p-5 text-center">
                        <spring:form modelAttribute="userJSP" method="post" action="signingIn">
                            <div class="mb-md-5 mt-md-4 pb-5">

                              <h2 class="fw-bold mb-2 text-uppercase">Login</h2>
                              <p class="text-white-50 mb-5">Please enter your login and password!</p>

                              <div class="form-outline form-white mb-4">
                                    <spring:input type="email" id="typeEmailX" class="form-control form-control-lg"  path="email"/>
                                    <label class="form-label" for="typeEmailX">Email</label>
                              </div>

                              <div class="form-outline form-white mb-4">
                                  <spring:input type="password" id="typePasswordX" class="form-control form-control-lg"  path="password"/>
                                 <label class="form-label" for="typePasswordX">Password</label>
                              </div>

                                <p class="small mb-2 pb-lg-2"><a class="text-white-50" href="#!">Forgot password?</a></p>

                            <%--<button class="btn btn-outline-light btn-lg px-3" type="submit">Login</button>--%>
                            <spring:button href="${pageContext.request.contextPath}/signingIn" class="btn btn-outline-light btn-lg px-3" role="button">Login</spring:button>

                            <%--                            <div class="d-flex justify-content-center text-center mt-2 ">--%>
<%--                                <a href="#!" class="text-white"><i class="fab fa-facebook-f fa-lg"></i></a>--%>
<%--                                <a href="#!" class="text-white"><i class="fab fa-twitter fa-lg mx-4 px-2"></i></a>--%>
<%--                                <a href="#!" class="text-white"><i class="fab fa-google fa-lg"></i></a>--%>
<%--                            </div>--%>

                        </div>
                        </spring:form>
                        <div>
                            <p class="mb-0">Don't have an account? <a href="${pageContext.request.contextPath}/sign-upping" class="text-white-50 fw-bold">Sign Up</a>
                            </p>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>

