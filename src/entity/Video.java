package entity;

/**
 * Created by feifei on 16/7/9.
 */
public class Video {
    private int id;
    private String name;
    private  String address;
    private String time;
    private String label;

    public Video(){
        id=0;
        name="";
        address="";
        time="";
        label="";
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }
}
