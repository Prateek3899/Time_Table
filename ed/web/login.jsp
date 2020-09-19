<%-- 
    Document   : login
    Created on : 16-Sep-2020, 1:49:26 pm
    Author     : rakes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login edu</title>
        <style>
        body {
          background: #eee;
        }
        #frm {
          border: solid gray 1px;
          width: 20%;
          border-radius: 5px;
          margin: 100px auto;
          background: white;
          padding: 50px;
        }
        #btn {
          color: #fff;
          background: #337ab7;
          padding: 5px;
          margin-left: 66%;
        }
        img {
          display: block;
          margin-left: auto;
          margin-right: auto;
        }
        </style>
    </head>
    <body>
        <div id="frm">
            <img src="img_paris4.jpg" alt="Paris" style="width:50%;"><br>
            <form  action="login " method="post">
                <label for="uname"><b>Username</b></label>
                <input type="text" placeholder="Username" name="uname" required><br><br>
                <label for="psw"><b>Password</b></label>
                <input type="password" placeholder="Password" name="psw" required><br><br>
                <button type="submit" id="btn" value="login">Login</button>
            </form>
        </div>
    </body>
</html>
