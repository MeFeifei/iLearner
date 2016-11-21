package servlet;

import DatabaseHelper.DB;
import entity.Person;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by feifei on 16/7/11.
 */
@WebServlet(name = "signServlet")
public class signServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session=request.getSession();
        PrintWriter out=response.getWriter();
        Person person=new Person();
        DB db=new DB();

        person.setIdentity("student");
        person.setName(request.getParameter("username"));
        person.setPassword(request.getParameter("password"));
        person.setNickname(request.getParameter("nickname"));
        person.setEmail(request.getParameter("email"));

        if(db.saveForSign(person)){
            session.setAttribute("person",person);
            response.sendRedirect(request.getContextPath()+"login.jsp");
        }
        else {
            out.println("error");
        }
        db.close();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doPost(request,response);
    }
}
