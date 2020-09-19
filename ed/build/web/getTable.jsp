<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <style>
        body {
          background: #eee;
        }
        #btn {
          color: #fff;
          background: #337ab7;
          padding: 5px;
        }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Table</title>
    </head>
    <body>
        <%
            response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
            if(session.getAttribute("user")==null)
            response.sendRedirect("login.jsp");
        %>
        
        <h1>Welcome,${user}</h1>
        <form align="right" action="logout">
            <input id="btn" type="submit" value="logout">
        </form>
        <form action="attendee" method="POST" > 
        <table border="5" cellspacing="0" align="center" > 
        <tr> 
            <td align="center" height="50" 
                width="100"><br> 
                <b>Day/Period</b></br> 
            </td> 
            <td align="center" height="50" width="100"> 
                <b>I<br>10:00-10:50</b> 
            </td> 
            <td align="center" height="50" width="50"></td> 
            <td align="center" height="50" width="100"> 
                <b>II<br>11:00-11:50</b> 
            </td> 
            <td align="center" height="50" width="50"> 
                
            </td>
            
            <td align="center" height="50" 
                width="100"> 
                <b>III<br>12:00-12:50</b> 
            </td> 
            <td align="center" height="50" 
                width="100"> 
                <b>12:50-1:30</b> 
            </td> 
            <td align="center" height="50" 
                width="100"> 
                <b>IV<br>1:30-2:20</b> 
            </td> 
            <td align="center" height="50" width="50"></td> 
            <td align="center" height="50" 
                width="100"> 
                <b>V<br>2:30-3:20</b> 
            </td> 
            <td align="center" height="50" width="50"></td> 
            <td align="center" height="50" 
                width="100"> 
                <b>VI<br>3:30-4:20</b> 
            </td> 
            <td align="center" height="50" width="50"></td>  
            <td align="center" height="50" 
                width="100"> 
                <b>VII<br>4:30-5:20</b> 
            </td>  
            <td align="center" height="50" width="50"></td> 
            <td align="center" height="50" 
                width="100"> 
                <b>VIII<br>5:30-6:20</b> 
            </td> 
        </tr> 
        <tr> 
            <td align="center" height="80"> 
                <b>Monday</b>
            </td>
            <td colspan="3" align="center" 
                height="80">APTI Training<br><button type="submit" name="sub" id="apti_mon"  value="apti_mon">Join</button></td> 
            <td align="center" height="80">Break</td> 
            <td align="center" height="80">IT502(SMB)<br><button type="submit" name="sub" id="it502_mon" value="it502_mon">Join</button></td> 
            <td rowspan="6" align="center" height="80"> 
                <h2>L<br>U<br>N<br>C<br>H</h2> 
            <td align="center" height="80">MC501(GF)<br><button type="submit" name="sub" id="mc501_mon" value="mc501_mon">Join</button></td> 
            <td align="center" height="80">Break</td> 
            <td align="center" height="80">IT503(TSB)<br><button type="submit" name="sub" id="it503_mon" value="it503_mon">Join</button></td> 
            <td colspan="3" align="center" 
                height="80">Break</td>
            <td colspan="3" align="center" 
                height="80">IT594A(SPC)<br><button type="submit" name="sub" id="it594a_mon" value="it594a_mon">Join</button></td>
        </tr> 
        <tr> 
            <td align="center" height="80"> 
                <b>Tuesday</b> 
            </td> 
            <td align="center" height="80">HU503(GF)<br><button type="submit" name="sub" id="hu503_tue" value="hu503_tue">Join</button></td> 
            <td align="center" height="80">Break</td> 
            <td align="center" height="80">IT501(SCM)<br><button type="submit" name="sub" id="it501_tue" value="it501_tue">Join</button></td> 
            <td align="center" height="80">Break</td> 
            <td align="center" height="80">MC501(GF)<br><button type="submit" name="sub" id="mc501_tue" value="mc501_tue">Join</button></td>
            <td colspan="3" align="center" 
                height="80">Technical Training<br><button type="submit" name="sub" id="technicalt_tue" value="technicalt_tue">Join</button></td>
            <td align="center" height="80">Break</td> 
            <td align="center" height="80">IT504A(SPC)<br><button type="submit" name="sub" id="it504a_tue" value="it504a_tue">Join</button></td> 
            <td align="center" height="80">Break</td>
            <td colspan="3" align="center" 
                height="80">IT591(SCM)<br><button type="submit" name="sub" id="it591_tue" value="it591_tue">Join</button></td>
        </tr> 
        <tr> 
            <td align="center" height="80"> 
                <b>Wednesday</b> 
            </td>
            <td colspan="3" align="center" 
                height="80">APTI Training<br><button type="submit" name="sub" id="apti_wed" value="apti_wed">Join</button></td> 
            <td align="center" height="80">Break</td> 
            <td align="center" height="80">IT503(TSB)<br><button type="submit" name="sub" id="it503_wed" value="it503_wed">Join</button></td>
            <td align="center" height="80">MC501(GF)<br><button type="submit" name="sub" id="mc501_wed" value="mc501_wed">Join</button></td>
            <td align="center" height="80">Break</td> 
            <td colspan="3" align="center" 
                height="80">IT593(TSB)<br><button type="submit" name="sub" id="it593_wed" value="it593_wed">Join</button></td>
            <td align="center" height="80">Break</td> 
            <td align="center" height="80">IT502(SMB)<br><button type="submit" name="sub" id="it502_wed" value="it502_wed">Join</button></td> 
            <td align="center" height="80">Break</td>
            <td align="center" height="80">IT504A-T<br><button type="submit" name="sub" id="it504a-t_wed" value="it504a-t">Join</button></td>
            
        </tr> 
        <tr> 
            <td align="center" height="80"> 
                <b>Thursday</b> 
            </td>
            <td colspan="2" align="center" 
                height="80"></td>
            <td align="center" height="80">IT503(TSB)<br><button type="submit" name="sub" id="it503_thu" value="it503_thu">Join</button></td>
            <td align="center" height="80">Break</td> 
            <td align="center" height="80">IT501(SCM)<br><button type="submit" name="sub" id="it501_thu" value="it501_thu">Join</button></td>
            <td align="center" height="80">IT504A(SPC)<br><button type="submit" name="sub" id="it504a_thu" value="it504a_thu">Join</button></td> 
            <td align="center" height="80">Break</td>
            <td colspan="3" align="center" 
                height="80">IT592(SMB)<br><button type="submit" name="sub" id="it592_thu" value="it592_thu">Join</button></td>
            <td colspan="3" align="center" 
                height="80">Break</td>
            <td align="center" height="80">IT502-T <br><button type="submit" name="sub" id="it502-t_thu" value="it502-t_thu">Join</button></td> 
            
        </tr> 
        <tr> 
            <td align="center" height="80"> 
                <b>Friday</b> 
            </td> 
            <td colspan="3" align="center" 
                height="80">APTI Training <br><button type="submit" name="sub" id="apti_fri" value="apti_fri">Join</button></td> 
            <td align="center" height="80">Break</td> 
            <td align="center" height="80">IT504A(SPC)<br><button type="submit" name="sub" id="it504a_fri" value="it504a_fri">Join</button></td>
            <td align="center" height="80">HU503(GF)<br><button type="submit" name="sub" id="hu503_fri" value="hu503_fri">Join</button></td> 
            <td align="center" height="80">Break</td> 
            <td align="center" height="80">IT501(SCM)<br><button type="submit" name="sub" id="it501_fri" value="it501_fri">Join</button></td>
            <td align="center" height="80">Break</td>
            <td align="center" height="80">IT502(SMB)<br><button type="submit" name="sub" id="it502_fri" value="it502_fri">Join</button></td> 
            <td colspan="3" align="center" 
                height="80">Break</td>
            <td align="center" height="80">IT503-T<br><button type="submit" name="sub" id="it503-t_fri" value="it503-t_fri">Join</button></td> 
            
        </tr> 
        <tr> 
            <td align="center" height="80"> 
                <b>Saturday</b> 
            </td> 
            <td align="center" height="80">HU503-T<br><button type="submit" name="sub" id="hu503-t_sat" value="hu503-t_sat">Join</button></td> 
            <td align="center" height="80">Break</td> 
            <td align="center" height="80">MC501-T<br><button type="submit" name="sub" id="mc501-t_sat" value="mc501-t_sat">Join</button></td>
            <td align="center" height="80">Break</td> 
            <td align="center" height="80">PR591<br><button type="submit" name="sub" id="pr591_sat" value="pr591_sat">Join</button></td>
            <td align="center" height="80">IT501-T<br><button type="submit" name="sub" id="it501-t_sat" value="it501-t_sat">Join</button></td> 
            <td colspan="8" align="center" 
                height="80"></td> 
        </tr> 
    </table> 
    </form>
    <script>
        d = new Date();
        var h =d.getHours();
        var m =d.getMinutes();
        if(!((h==10&&m>=0)||(h==11&&m<50)))//if(!(h>=10&&h<=11&&(m>=0||m<=50)))
            document.getElementById("apti_mon").disabled = true;
        if(!((h==12)&&(m>=0&&m<50)))
            document.getElementById("it502_mon").disabled = true;
        if(!((h==13&&m>=30)||(h==14&&m<20)))
            document.getElementById("mc501_mon").disabled = true;
        if(!((h==14&&m>=30)||(h==15&&m<20)))
            document.getElementById("it503_mon").disabled = true;
        if(!((h==16&&m>=30)||(h==17&&m>=0)||(h==18&&m<20)))
            document.getElementById("it594a_mon").disabled = true;
        
        if(!((h==10)&&(m>=0&&m<50)))
            document.getElementById("hu503_tue").disabled = true;
        if(!((h==11)&&(m>=0&&m<50)))
            document.getElementById("it501_tue").disabled = true;
        if(!((h==12)&&(m>=0&&m<50)))
            document.getElementById("mc501_tue").disabled = true;
        if(!((h==13&&m>=30)||(h==14&&m>=0)||(h==15&&m<20)))
            document.getElementById("technicalt_tue").disabled = true;
        if(!((h==15&&m>=30)||(h==16&&m<20)))
            document.getElementById("it504a_tue").disabled = true;
        if(!((h==16&&m>=30)||(h==17&&m>=0)||(h==18&&m<20)))
            document.getElementById("it591_tue").disabled = true;
        
        if(!((h==10&&m>=0)||(h==11&&m<50)))
            document.getElementById("apti_wed").disabled = true;
        if(!((h==12)&&(m>=0&&m<50)))
            document.getElementById("it503_wed").disabled = true;
        if(!((h==13&&m>=30)||(h==14&&m<20)))
            document.getElementById("mc501_wed").disabled = true;
        if(!((h==14&&m>=30)||(h==15&&m>=0)||(h==16&&m<20)))//if(!((h>=14&&m>=30)||(h<=16&&m<20)))
            document.getElementById("it593_wed").disabled = true;
        if(!((h==16&&m>=30)||(h==17&&m<20)))
            document.getElementById("it502_wed").disabled = true;
        if(!((h==17&&m>=30)||(h==18&&m<20)))
            document.getElementById("it504a-t_wed").disabled = true;
        
        if(!((h==11)&&(m>=0&&m<50)))
            document.getElementById("it503_thu").disabled = true;
        if(!((h==12)&&(m>=0&&m<50)))
            document.getElementById("it501_thu").disabled = true;
        if(!((h==13&&m>=30)||(h==14&&m<20)))
            document.getElementById("it504a_thu").disabled = true;
        if(!((h==14&&m>=30)||(h==15&&m>=0)||(h==16&&m<20)))
            document.getElementById("it592_thu").disabled = true;
        if(!((h==17&&m>=30)||(h==18&&m<20)))
            document.getElementById("it502-t_thu").disabled = true;
        
        if(!((h==10&&m>=0)||(h==11&&m<50)))
            document.getElementById("apti_fri").disabled = true;
        if(!((h==12)&&(m>=0&&m<50)))
            document.getElementById("it504a_fri").disabled = true;
        if(!((h==13&&m>=30)||(h==14&&m<20)))
            document.getElementById("hu503_fri").disabled = true;
        if(!((h==14&&m>=30)||(h==15&&m<20)))
            document.getElementById("it501_fri").disabled = true;
        if(!((h==15&&m>=30)||(h==16&&m<20)))
            document.getElementById("it502_fri").disabled = true;
        if(!((h==17||h==18)&&(m>=30||m<20)))
            document.getElementById("it503-t_fri").disabled = true;
        
        if(!((h==10)&&(m>=0&&m<50)))
            document.getElementById("hu503-t_sat").disabled = true;
        if(!((h==11)&&(m>=0&&m<50)))
            document.getElementById("mc501-t_sat").disabled = true;
        if(!((h==12)&&(m>=0&&m<50)))
            document.getElementById("pr591_sat").disabled = true;
        if(!((h==13&&m>=30)||(h==14&&m<20)))
            document.getElementById("it501-t_sat").disabled = true;
    </script>
    </body>
</html>
