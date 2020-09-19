package com.edu.get;

import com.edu.database.connectToMysql;
import java.io.IOException;
import java.sql.Connection;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author rakes
 */
@WebServlet(name = "pdf", urlPatterns = {"/pdf"})
public class pdf extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        try {
            int i=0;
            Connection con = connectToMysql.initializeDatabase();
            Statement st = con.createStatement();
            HttpSession session=request.getSession();
            String s=request.getParameter("sub");
            String sql="select * from `edu`."+s+";";
            String u="                                                   Narula Institute Of Technology\n                                                        Information Technology\n                                                                     "+s+"\n\n\n                                                           Attendance List\n\n";
            u=u+"                   Roll NO                                                                                     Name\n";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next()){
                u =u+"                      "+rs.getString(1)+"                                                                                           " +rs.getString(2)+"\n";
                i++;
            }
            if(i==0)
                 session.setAttribute("check_desktop","no data");
            else{
                Date date = new Date();  
                SimpleDateFormat formatter = new SimpleDateFormat("dd");  
                String str= formatter.format(date);
                String f="C:\\atte\\"+str+"_"+s+".pdf";
                Document document =new Document();
                PdfWriter.getInstance(document,new FileOutputStream(f));
                document.open();Paragraph p=new Paragraph(u);
                document.add(p);
                document.close();
                session.setAttribute("check_desktop","check out your c drive");
            }
            response.sendRedirect("setTable.jsp");
        } catch (SQLException ex) {
            Logger.getLogger(pdf.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(pdf.class.getName()).log(Level.SEVERE, null, ex);
        } catch (DocumentException ex) {
            Logger.getLogger(pdf.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
