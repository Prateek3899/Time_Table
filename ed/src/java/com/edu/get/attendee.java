package com.edu.get;

import com.edu.database.connectToMysql;
import java.io.IOException;
import java.sql.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "attendee", urlPatterns = {"/attendee"})
public class attendee extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        HttpSession session=request.getSession();
        try {
            Connection con = connectToMysql.initializeDatabase();
            String d=request.getParameter("sub");
            try {
                Statement st = con.createStatement();
                int r=Integer.parseInt(session.getAttribute("pass").toString());
                String n= (String) session.getAttribute("user");
                String sub= "";
                for(int i=0;i<d.length();i++){
                    if(d.charAt(i)=='_')
                        break;
                        sub=sub+d.charAt(i);
                    }
                String sql="select * from `edu`."+sub+" where roll="+r+";";
                ResultSet rs=st.executeQuery(sql);
                if(rs.next()){
                    System.out.println(rs.getInt(1)+" "+rs.getString(2));
                }
                else {
                    String k="insert into `edu`."+sub+" values("+r+",'"+n+"')";
                    int i=st.executeUpdate(k);
                }
            } catch (SQLException ex) {
                Logger.getLogger(attendee.class.getName()).log(Level.SEVERE, null, ex);
            }
            try {
                PreparedStatement st = con.prepareStatement("SELECT link FROM edu.link where sub=?");
                st.setString(1,d);
                session.setAttribute("sub",d );
                ResultSet rs=st.executeQuery();
                if(rs.next()){
                   response.sendRedirect(rs.getString("link"));
                }
            } catch (SQLException ex) {
                Logger.getLogger(attendee.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (SQLException ex) {
            Logger.getLogger(attendee.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(attendee.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}