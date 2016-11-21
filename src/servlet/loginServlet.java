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
 * Created by feifei on 16/7/8.
 */
@WebServlet(name = "loginServlet")
public class loginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session=request.getSession();
        PrintWriter out=response.getWriter();
        DB db=new DB();
        Person person=new Person();

        String username=request.getParameter("username");
        String password=request.getParameter("password");
        //建立数据库连接


        if(db.isLogin(username,password)){
            person=db.readPerson(username);
            String label=person.getLabel();
            if (label==null||label.equals("")||label==""){
                    session.setAttribute("person",person);
                    response.sendRedirect(request.getContextPath()+"survey.jsp");
                }
            else {
                    session.setAttribute("person",person);
                    response.sendRedirect(request.getContextPath()+"index.jsp");
                }

        }
        else{
            response.sendRedirect(request.getContextPath()+"login.jsp");
        }
        db.close();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doPost(request,response);
    }
}
