package pojo;

public class Movie {
    private String movieid;

    private String moviename;

    private String movieinfo;

    private String moviepic;

    private String movieyear;

    private String moviecountry;

    private String status;

    private String infopic;

    private String genre;

    private Integer score;

    public String getMovieid() {
        return movieid;
    }

    public void setMovieid(String movieid) {
        this.movieid = movieid == null ? null : movieid.trim();
    }

    public String getMoviename() {
        return moviename;
    }

    public void setMoviename(String moviename) {
        this.moviename = moviename == null ? null : moviename.trim();
    }

    public String getMovieinfo() {
        return movieinfo;
    }

    public void setMovieinfo(String movieinfo) {
        this.movieinfo = movieinfo == null ? null : movieinfo.trim();
    }

    public String getMoviepic() {
        return moviepic;
    }

    public void setMoviepic(String moviepic) {
        this.moviepic = moviepic == null ? null : moviepic.trim();
    }

    public String getMovieyear() {
        return movieyear;
    }

    public void setMovieyear(String movieyear) {
        this.movieyear = movieyear == null ? null : movieyear.trim();
    }

    public String getMoviecountry() {
        return moviecountry;
    }

    public void setMoviecountry(String moviecountry) {
        this.moviecountry = moviecountry == null ? null : moviecountry.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
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

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }
}