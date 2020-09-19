<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <style>
        body {
          background: #eee;
        }
        #frm {
          border: solid gray 1px;
          width: 30%;
          border-radius: 10px;
          margin-left: 10%;
          background: white;
          padding: 40px;
        }
        #frmm {
          border: solid gray 1px;
          width: 30%;
          border-radius: 10px;
          margin-left: 60%;
          background: white;
          padding: 30px;
        }
        #btn {
          color: #fff;
          background: #337ab7;
          padding: 5px;
        }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Set Table</title>
    </head>
    <body>
        <%
            response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
            if(session.getAttribute("tuser")==null)
            response.sendRedirect("login.jsp");
        %>
        <h1>WELCOME,${tuser}</h1>
        <form  align="right" action="logout">
            <input id="btn" type="submit" value="logout">
        </form>
        <div id="frm">
        <h3>Set Link</h3>
        <form method="POST" action="save">
            <label >Subject</label>
            <select name="sub">
              <option value="it502">SOFTWARE ENGINEERING</option>
              <option value="it503">OPERATING SYSTEM</option>
              <option value="it501">DESIGN & ANALYSIS OF ALGORITHM</option>
              <option value="it504a">PROGRAMMING PRACTICES USING C++</option>
              <option value="it591">ALGORITHM LAB</option>
              <option value="it592">SOFTWARE ENGINEERING LAB</option>
              <option value="it593">OPERATING SYSTEM LAB</option>
              <option value="it594a">PROGRAMMING PRACTICES WITH C++ LAB</option>
              <option value="hu503">Industrial & Financial Management </option>
              <option value="mc501">Constitution of India</option>
              <option value="pr591">Project-V</option>
              <option value="apti">APTI TRAINING</option>	
              <option value="technicalt">TECHNICAL TRAINING</option>
              <option value="it504a-t">PROGRAMMING PRACTICES USING C++ EXTRA CLASS</option>
              <option value="it502-t">SOFTWARE ENGINEERING EXTRA CLASS</option>
              <option value="it503-t">OPERATING SYSTEM EXTRA CLASS</option>
              <option value="it501-t">DESIGN & ANALYSIS OF ALGORITHM EXTRA CLASS</option>
              <option value="mc501-t">Constitution of India Extra Class</option>
            </select>
            <br><br>
            <label>Day</label>
            <select name="day">
              <option value="mon">MON</option>
              <option value="tue">TUE</option>
              <option value="wed">WED</option>
              <option value="thu">THU</option>
              <option value="fri">FRI</option>
              <option value="sat">SAT</option>					
            </select><br><br>
            <label>Room link:</label>
            <input type="url" name="roomlink" required>
            <input id="btn" type="submit" name="submit" value="Save Link"/>
        </form>
        <h4 id="mydiv">${inset}</h4>
        </div>  
        <div id="frmm" >
        <h3>Attendees List</h3>
        <form method="POST" action="pdf">
            <label >Subject</label>
            <select name="sub">
              <option value="it502">SOFTWARE ENGINEERING</option>
              <option value="it503">OPERATING SYSTEM</option>
              <option value="it501">DESIGN & ANALYSIS OF ALGORITHM</option>
              <option value="it504a">PROGRAMMING PRACTICES USING C++</option>
              <option value="it591">ALGORITHM LAB</option>
              <option value="it592">SOFTWARE ENGINEERING LAB</option>
              <option value="it593">OPERATING SYSTEM LAB</option>
              <option value="it594a">PROGRAMMING PRACTICES WITH C++ LAB</option>
              <option value="hu503">Industrial & Financial Management </option>
              <option value="mc501">Constitution of India</option>
              <option value="pr591">Project-V</option>	
              <option value="apti">APTI TRAINING</option>	
              <option value="technicalt">TECHNICAL TRAINING</option>
            </select>
            <input id="btn" type="submit" name="submit" value="Get List"/>
        </form>
        <h4 id="my">${check_desktop}</h4> 
        </div>
    </body>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script>
        setTimeout(function() {
        $('#my').fadeOut('fast');
        }, 1000);        
    </script>
</html>
