package pojo;

public class Favourite {
    private Integer favouriteid;

    private Integer userid;

    private String movieid;

    private Integer status;

    private Integer tvid;

    public Integer getFavouriteid() {
        return favouriteid;
    }

    public void setFavouriteid(Integer favouriteid) {
        this.favouriteid = favouriteid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getMovieid() {
        return movieid;
    }

    public void setMovieid(String movieid) {
        this.movieid = movieid == null ? null : movieid.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getTvid() {
        return tvid;
    }

    public void setTvid(Integer tvid) {
        this.tvid = tvid;
    }
}