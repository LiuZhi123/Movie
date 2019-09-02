package pojo;

public class Tvplay {
    private Integer tvid;

    private String tvname;

    private String tvpic;

    private String tvinfo;

    private String tvyear;

    private String tvcountry;

    private String infopic;

    private String genre;

    public Integer getTvid() {
        return tvid;
    }

    public void setTvid(Integer tvid) {
        this.tvid = tvid;
    }

    public String getTvname() {
        return tvname;
    }

    public void setTvname(String tvname) {
        this.tvname = tvname == null ? null : tvname.trim();
    }

    public String getTvpic() {
        return tvpic;
    }

    public void setTvpic(String tvpic) {
        this.tvpic = tvpic == null ? null : tvpic.trim();
    }

    public String getTvinfo() {
        return tvinfo;
    }

    public void setTvinfo(String tvinfo) {
        this.tvinfo = tvinfo == null ? null : tvinfo.trim();
    }

    public String getTvyear() {
        return tvyear;
    }

    public void setTvyear(String tvyear) {
        this.tvyear = tvyear == null ? null : tvyear.trim();
    }

    public String getTvcountry() {
        return tvcountry;
    }

    public void setTvcountry(String tvcountry) {
        this.tvcountry = tvcountry == null ? null : tvcountry.trim();
    }

    public String getInfopic() {
        return infopic;
    }

    public void setInfopic(String infopic) {
        this.infopic = infopic == null ? null : infopic.trim();
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre == null ? null : genre.trim();
    }
}