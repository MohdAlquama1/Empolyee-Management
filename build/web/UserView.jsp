<%-- 
    Document   : UserView
    Created on : 02-Mar-2024, 10:18:10 PM
    Author     : integral
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language = "java" %>
<%@page  import= "java.text.ParseException" %>
<%@page  import= "java.text.SimpleDateFormat" %>
<%@page  import= "java.util.Date" %>

<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <title>JSP Page</title>
        <style>
            .ViewPage{
                position: absolute;
                height: 80%;
                width: 100%;

                top: 30%;
                left: 30%;
                background: blue;
            }
            .id{
                position: absolute;
                left: 30%;
                top: 20%;
                font-size: larger;
            }
            .email{
                position: absolute;
                left: 30%;
                top: 35%;
                font-size: larger;
            }
            .password{
                position: absolute;
                left: 30%;
                top: 50%;
            }



            .gradient-custom-2 {
                /* fallback for old browsers */
                background: #fccb90;

                /* Chrome 10-25, Safari 5.1-6 */
                background: -webkit-linear-gradient(to right, #ee7724, #d8363a, #dd3675, #b44593);

                /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
                background: linear-gradient(to right, #ee7724, #d8363a, #dd3675, #b44593);
            }

            @media (min-width: 768px) {
                .gradient-form {
                    height: 100vh !important;
                }
            }
            @media (min-width: 769px) {
                .gradient-custom-2 {
                    border-top-right-radius: .3rem;
                    border-bottom-right-radius: .3rem;
                }
            }
        </style>
    </head>
    <body>
        <%--
             String s = "12-08-2023";
        
        // Parsing the string into a java.util.Date object
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
        Date date;
        try {
            date = dateFormat.parse(s);
        } catch (ParseException e) {
            e.printStackTrace();
            return;
        }
        
        // Converting java.util.Date to java.sql.Date
        java.sql.Date sqlDate = new java.sql.Date(date.getTime());
        <%= sqlDate %>
        --%>
        
        <!-- old html code 
        <div class="ViewPage">
             <form action="UserView" method="post">
             <div class="id">
             <label>id :</label>
             <input type="text" name="id" placeholder="Enter your id" style="position: relative ; left: 38px;">
             
             </div>
             <br>
             <div class="email">
             <label>email :</label>
             <input type="text" name="email" placeholder="Enter your email"style="position: relative ; left: 11px;">
             </div>
             <br>
             <div class="password">
                 <label>password :</label>
                 <input type="text" name="password" placeholder="enter password">
             </div>
             <input type="submit"style="position: absolute; top: 70%; left: 45%;">
             </form>
         </div>
        --> 
        <!-- tempalte -->

        <section class="h-100 gradient-form" style="background-color: #eee;">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-xl-10">
                        <div class="card rounded-3 text-black">
                            <div class="row g-0">
                                <div class="col-lg-6">
                                    <div class="card-body p-md-5 mx-md-4">

                                        <div class="text-center">
                                            <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/lotus.webp"
                                                 style="width: 185px;" alt="logo">
                                            <h4 class="mt-1 mb-5 pb-1">We are The Lotus Team</h4>
                                        </div>

                                        <form action="UserView" method="post" name="loginform" onsubmit=" return validateForm(event)">
                                            <p>Please login to your account</p>

                                            <div class="form-outline mb-4">
                                                <label class="form-label" for="form2Example11">Enter employee id</label>
                                                <input type="text" id="form2Example11" class="form-control"
                                                       placeholder="eg.xzy" name="id" required />
                                            </div>

                                            <div class="form-outline mb-4">
                                                <label class="form-label" for="form2Example22">Enter email id</label>
                                                <input type="email" id="form2Example22" class="form-control" placeholder="eg.xyz@gmil.com" name="email" required />

                                            </div>

                                            <div class="form-outline mb-4">
                                                <label class="form-label" for="form2Example22">Enter password</label>
                                                <input type="password" id="form2Example22" class="form-control" placeholder="eg.***********"  name="password" required />
                                            </div>

                                            <div class="text-center pt-1 mb-5 pb-1">
                                                <button class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3" type="submit">Log
                                                    in</button> 
                                                <!--<input type="submit" value="Submit"> -->
                                                <a class="text-muted" href="forgot_Password.jsp">Forgot password?</a>
                                            </div>




                                            <!--                  <div class="d-flex align-items-center justify-content-center pb-4">
                                                                <p class="mb-0 me-2">Don't have an account?</p>
                                                                <button type="button" class="btn btn-outline-danger">Create new</button>
                                                              </div>-->

                                        </form>

                                    </div>
                                </div>
                                <div class="col-lg-6 d-flex align-items-center gradient-custom-2">
                                    <div class="text-white px-3 py-4 p-md-5 mx-md-4">
                                        <h4 class="mb-4">We are more than just a company</h4>
                                        <p class="small mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                            tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                                            exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
       
    </body>
</html>
