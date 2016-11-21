package entity;

/**
 * Created by feifei on 16/7/12.
 */
public class Guestbook {
    private int id;
    private int vid;
    private String username;
    private String text;
    private String time;

    public Guestbook(){
        id=0;
        vid=0;
        username="";
        text="";
        time="";
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getVid() {
        return vid;
    }

    public void setVid(int vid) {
        this.vid = vid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
}
