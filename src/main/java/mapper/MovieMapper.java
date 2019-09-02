package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import pojo.Movie;

public interface MovieMapper {
    int deleteByPrimaryKey(String movieid);

    int insert(Movie record);

    Movie selectByPrimaryKey(String movieid);

    List<Movie> selectAll();

    int updateByPrimaryKey(Movie record);

    List<Movie> search(String moviename);

    List<Movie> select1(@Param("value1") int value1, @Param("value2")int value2);

    List<Movie> selectGenre(String genre);

    List<Movie> select2(int userid);

    List<Movie> select3(int userid);

    List<Movie> select4(String moviecountry);
}