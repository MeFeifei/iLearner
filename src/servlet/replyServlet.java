package servlet;

import DatabaseHelper.DB;
import entity.Guestbook;
import entity.Person;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

/**
 * Created by feifei on 16/7/13.
 */
@WebServlet(name = "replyServlet")
public class replyServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        HttpSession session=request.getSession();
        Guestbook guestbook=new Guestbook();
        DB db=new DB();
        Person person= (Person) session.getAttribute("person");
        String pageNo=request.getParameter("pageNo");
        if (person!=null){
            guestbook.setText(request.getParameter("idea_text"));
            guestbook.setTime(this.gettime());
            guestbook.setUsername(person.getName());
            int vid=0;
            if (pageNo!=null){
                vid=Integer.parseInt(pageNo);
                session.setAttribute("vid",vid);
                guestbook.setVid(vid);
            }
            if (db.saveGuestbook(guestbook)){
                response.sendRedirect(request.getContextPath()+"video.jsp");
            }
            else {
                out.print("<script type = 'text/javascript'>");
                out.print("alert('save guestbook fail');");
                out.print("window.location = 'video.jsp';");
                out.print("</script>");
            }
        }
        else {
            out.print("<script type = 'text/javascript'>");
            out.print("alert('Sign in Plz');");
            out.print("window.location = 'login.jsp';");
            out.print("</script>");

        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doPost(request,response);
    }
    public String gettime(){
        Calendar c = Calendar.getInstance();
        int year = c.get(Calendar.YEAR);
        int mount = c.get(Calendar.MONTH)+1;
        int day = c.get(Calendar.DAY_OF_MONTH);
        int hour = c.get(Calendar.HOUR_OF_DAY);
        int minute = c.get(Calendar.MINUTE);

        String time = year+"/"+mount+"/"+day+"   "+hour+":"+minute;
        return time;
    }
}
