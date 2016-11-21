package servlet;

import DatabaseHelper.DB;
import entity.Person;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;


/**
 * Created by feifei on 16/7/8.
 */
public class surveyServlet extends javax.servlet.http.HttpServlet {
    private String [] answer;
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        PrintWriter out=response.getWriter();
        HttpSession session=request.getSession();
        DB db=new DB();
        String name=request.getParameter("name");
        Person person =db.readPerson(name);

        person.setLabel(request.getParameter("label"));
        //out.println(person.getName());
        if (!db.savePerson(person)){
            out.println("label="+person.getLabel());
        }
        else{
            session.setAttribute("person",person);
            response.sendRedirect(request.getContextPath()+"index.jsp");
        }
        db.close();
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        doPost(request,response);

    }
}
