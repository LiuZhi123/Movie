package pojo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class Comment {
    private Integer cmid;

    private String cminfo;

    private Integer cmscore;

    private Integer userid;

    private Integer movieid;

    private String username;

    public Integer getCmid() {
        return cmid;
    }

    public void setCmid(Integer cmid) {
        this.cmid = cmid;
    }

    public String getCminfo() {
        return cminfo;
    }

    public void setCminfo(String cminfo) {
        this.cminfo = cminfo == null ? null : cminfo.trim();
    }

    public Integer getCmscore() {
        return cmscore;
    }

    public void setCmscore(Integer cmscore) {
        this.cmscore = cmscore;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getMovieid() {
        return movieid;
    }

    public void setMovieid(Integer movieid) {
        this.movieid = movieid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }
}