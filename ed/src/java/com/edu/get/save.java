
package com.edu.get;

import com.edu.database.connectToMysql;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "save", urlPatterns = {"/save"})
public class save extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        try {
            HttpSession session=request.getSession();
            Connection con = connectToMysql.initializeDatabase();
            PreparedStatement st = con.prepareStatement("update edu.link set link=? where sub=?");
            String s=request.getParameter("sub")+"_"+request.getParameter("day");
            String l=request.getParameter("roomlink");
            st.setString(1,l);
            st.setString(2,s);
            int i=st.executeUpdate();
            session.setAttribute("inset","link is updated successfully "+l);
            response.sendRedirect("setTable.jsp");
                    
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(attendee.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
