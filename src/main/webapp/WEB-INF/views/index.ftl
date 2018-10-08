<#ftl encoding="UTF-8"/>
<#import "/spring.ftl" as spring/>

<html>
<head>
    <title>Person List</title>
    <#assign path = rc.getContextPath()>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
          integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>

</head>
<body>
<div class="uui-main-container">
    <main>
        <div class="signup-form">
            <form action="${path}/index/" modelAttribute="user" method="post">
                <h2>Register</h2>
                <p class="hint-text">Please, fill all fields.</p>
                <div class="form-group">
                    <div class="row">
                    <@spring.bind 'userForm.name'/>
                        <div class="col-xs-6"><input type="text" class="form-control" name="name"
                                                     placeholder="First Name" required="required">
                        <#list spring.status.errorMessages as error>
                        <span>${error}</span>
                        </#list></div>
                        <@spring.bind 'userForm.surname'/>
                        <div class="col-xs-6"><input type="text" class="form-control" name="surname"
                                                     placeholder="Last Name" required="required">
                        <#list spring.status.errorMessages as error>
                        <span>${error}</span>
                        </#list></div>
                    </div>
                </div>
                <div class="form-group">
                    <@spring.bind 'userForm.login'/>
                    <input type="text" class="form-control" name="login" placeholder="Login" required="required">
                    <#list spring.status.errorMessages as error>
                        <span>${error}</span>
                    </#list>
                </div>
                <div class="form-group">
                    <@spring.bind 'userForm.password'/>
                    <input type="password" class="form-control" name="password" placeholder="Password"
                           required="required">
                    <#list spring.status.errorMessages as error>
                        <span>${error}</span>
                    </#list>
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" name="confirm_password" placeholder="Confirm Password"
                           required="required">
                </div>
                <div class="form-group">
                    <label class="checkbox-inline"><input type="checkbox" name="accept" required="required"> I accept
                        the <a href="#">Terms of Use</a> &amp; <a href="#">Privacy Policy</a></label>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-success btn-lg btn-block">Register Now</button>
                </div>
            </form>
        </div>
    </main>
</div>
</body>
</html>