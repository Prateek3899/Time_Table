
package com.edu.login;


import com.edu.database.connectToMysql;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        try {
            String[] s={"hu503","it501","it502","it503","it504a","it591","it592","it593","it594a","mc501","pr591"};
            int i=0;
            Connection con = connectToMysql.initializeDatabase();
            Statement st = con.createStatement();
            HttpSession session=request.getSession();
            Calendar cal = Calendar.getInstance();
            int h=cal.get(Calendar.HOUR_OF_DAY);
            if(h==1){
                for (String value : s) {
                        String sq = "DROP TABLE `edu`." + value + "";
                        st.execute(sq);
                    }
                    for (String value : s) {
                        String sql = "CREATE TABLE `edu`." + value + " (`roll` INT NOT NULL,`name` VARCHAR(45) NULL,PRIMARY KEY (`roll`));";
                        st.execute(sql);
                    }
            }
            String username=request.getParameter("uname");
            String password=request.getParameter("psw");
            String sql="SELECT * FROM edu.logins where username='"+username+"' && password= '"+password+"' ;";
            ResultSet rs=st.executeQuery(sql);
            if(rs.next()){
                session.setAttribute("user",username);
                session.setAttribute("pass",password);
                response.sendRedirect("getTable.jsp");
                i++;
            }
            String sq="SELECT * FROM edu.logint where username='"+username+"' && password= '"+password+"' ;";
            ResultSet r=st.executeQuery(sq);
            if(r.next()){
                session.setAttribute("tuser",username);
                response.sendRedirect("setTable.jsp");
                i++;
            }
            else if(i==0)
                response.sendRedirect("login.jsp");
        } catch (SQLException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
