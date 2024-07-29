<%-- 
    Document   : forgot_Password
    Created on : 18-Mar-2024, 2:38:08 AM
    Author     : integral
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>forgot password</title>
    </head>
    <body>
                <div class="row justify-content-md-center">
    <div class="col-md-4">
        <div class="card border-primary">
            <div class="card-header bg-primary text-white">
                <h5 class="card-title">Forget password</h5>
            </div>
            <div class="card-body">
                <form  action="forgotPassword" method="post">
                    <fieldset>
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-lock" aria-hidden="true"></i></span>
                                <input type="number" placeholder="Current Employee Id" name="id" class="form-control" value="" required="">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-lock text-danger" aria-hidden="true"></i></span>
                                <input type="test" placeholder="New Password" name="passwordOne" class="form-control" value="" required="">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-lock text-danger" aria-hidden="true"></i></span>
                                <input type="text" placeholder="Confirm New Password" name="passwordTwo" class="form-control" value="" required="">
                            </div>                        
                        </div>                        
                        <div class="row">
                            <div class="col">
                                <input class="btn btn-lg btn-dark btn-block" type="submit" value="Reset Password">
                            </div>
                            <div class="col">
                                <a href="#" class="btn btn-lg btn-light btn-block">Cancel</a>
                            </div>
                        </div>                        
                    </fieldset>
                </form>                         
            </div>
        </div>
    </div>
</div>
    </body>
</html>
