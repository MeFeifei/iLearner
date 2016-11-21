package DatabaseHelper;

import entity.Guestbook;
import entity.Person;
import entity.Video;

import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;

/**
 * Created by feifei on 16/6/25.
 */
public class DB {
    public String url="jdbc:mysql://127.0.0.1:3306/iLearner";
    public String name="com.mysql.jdbc.Driver";
    public String user="root";
    public String password="zzy";

    public Connection connection=null;
    public ResultSet resultSet=null;
    public Statement statement=null;
    public PreparedStatement preparedStatement=null;

    public DB(){
        try{
            Class.forName(name);//指定连接类型
            connection= DriverManager.getConnection(url,user,password);//获取连接
            statement=connection.createStatement();//准备执行语句
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public void close(){
        try {
            connection.close();
            statement.close();
        }catch (SQLException e){
            e.printStackTrace();
        }
    }

    public boolean isLogin(String username,String password){
        boolean isLogin=false;

        String sql="select * from student where username='"+username+"'and password='"+password+"'";
        try{
            resultSet=statement.executeQuery(sql);
            while(resultSet.next()){
                //String name=resultSet.getString("username");
                //String code=resultSet.getString("password");
                isLogin=true;

            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return isLogin;
    }
    public boolean saveForSign(Person person){
        boolean save=false;
        //String identity=person.getIdentity();
        String name=person.getName();
        String psd=person.getPassword();
        String nick=person.getNickname();
        String label=person.getLabel();
        String image=person.getImage();
        String process=person.getProcess();
        String email=person.getEmail();
        String sql="Insert into student(username,password,nickname,label,image,process,email) values(?,?,?,?,?,?,?)";
        try {
            connection.setAutoCommit(false);
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setString(1,name);
            preparedStatement.setString(2,psd);
            preparedStatement.setString(3,nick);
            preparedStatement.setString(4,label);
            preparedStatement.setString(5,image);
            preparedStatement.setString(6,process);
            preparedStatement.setString(7,email);
            preparedStatement.addBatch();
            int[] count= preparedStatement.executeBatch();
            connection.commit();
            if (count.length>0){
                save=true;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return save;
    }
    public Person readPerson(String username){
        Person person=new Person();
        String sql="select * from student where username='"+username+"'";
        try{
            resultSet=statement.executeQuery(sql);
            while(resultSet.next()){
                person.setName(resultSet.getString("username"));
                person.setPassword(resultSet.getString("password"));
                person.setNickname(resultSet.getString("nickname"));
                person.setLabel(resultSet.getString("label"));
                person.setImage(resultSet.getString("image"));
                person.setProcess(resultSet.getString("process"));
                person.setEmail(resultSet.getString("email"));
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return person;
    }
    public boolean savePerson(Person person){
        boolean save=false;
        String name=person.getName();
        String nick=person.getNickname();
        String label=person.getLabel();
        String image=person.getImage();
        String process=person.getProcess();
        String email=person.getEmail();
        String sql="update student set nickname='"+nick+"',label='"+label+"',image='"+image+"',process='"+process+"',email='"+email+"'where username='"+name+"'";
        try {
            statement.execute(sql);
            save=true;

        }catch (Exception e){
            e.printStackTrace();
        }

        return save;

    }

    public ArrayList<Video> readVideo(String sql){
        ArrayList<Video> videos=new ArrayList<>();
        try {
            resultSet=statement.executeQuery(sql);
            while (resultSet.next()) {
                Video v = new Video();
                v.setId(resultSet.getInt("id"));
                v.setName(resultSet.getString("name"));
                v.setAddress(resultSet.getString("address"));
                v.setTime(resultSet.getString("time"));
                v.setLabel(resultSet.getString("label"));
                videos.add(v);
            }

        }catch (Exception e){
            e.printStackTrace();
        }
        return videos;
    }
    public ArrayList<Guestbook> readReply(int pageNum){
        ArrayList<Guestbook> guestbooks=new ArrayList<>();
        String sql="select * from guestbook where vid='"+pageNum+"'";
        try {
            resultSet=statement.executeQuery(sql);
            while (resultSet.next()){
                Guestbook guestbook = new Guestbook();
                guestbook.setId(resultSet.getInt("id"));
                guestbook.setUsername(resultSet.getString("name"));
                guestbook.setText(resultSet.getString("text"));
                guestbook.setVid(resultSet.getInt("vid"));
                guestbook.setTime(resultSet.getString("time"));
                guestbooks.add(guestbook);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return guestbooks;
    }
    public String getVideoUrl(int pageNum){
        String url=null;
        String sql = "select * from video where id ='"+pageNum+"'";
        try {
            resultSet=statement.executeQuery(sql);
            if (resultSet.next()){
                url=resultSet.getString("address");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return url;
    }
    public boolean saveGuestbook(Guestbook guestbook){
        boolean save=false;
        String name=guestbook.getUsername();
        int vid=guestbook.getVid();
        String text=guestbook.getText();
        String time=guestbook.getTime();
        String sql="insert into guestbook(name,vid,text,time) values(?,?,?,?)";

        try {
            connection.setAutoCommit(false);
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setString(1,name);
            preparedStatement.setInt(2,vid);
            preparedStatement.setString(3,text);
            preparedStatement.setString(4,time);
            preparedStatement.addBatch();
            int[] count= preparedStatement.executeBatch();
            connection.commit();
            if (count.length>0) {
                save = true;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return save;
    }
}
