package service.impl;

import mapper.MovieMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.Movie;
import service.MovieService;

import java.util.List;
@Service
public class MovieServiceImpl implements MovieService {
    @Autowired
    MovieMapper movieMapper;
    @Override
    public int deleteByPrimaryKey(String movieid) {
        return movieMapper.deleteByPrimaryKey(movieid);
    }
    @Override
    public int insert(Movie record) {
        return movieMapper.insert(record);
    }
    @Override
    public Movie selectByPrimaryKey(String movieid) {
        return movieMapper.selectByPrimaryKey(movieid);
    }
    @Override
    public List<Movie> selectAll() {
        return movieMapper.selectAll();
    }
    @Override
    public int updateByPrimaryKey(Movie record) {
        return movieMapper.updateByPrimaryKey(record);
    }
    @Override
    public List<Movie> search(String moviename) {
        return movieMapper.search(moviename);
    }
    @Override
    public List<Movie> select1(int value1,int value2) {
        return movieMapper.select1(value1,value2);
    }
    @Override
    public List<Movie> selectGenre(String genre) {
        return movieMapper.selectGenre(genre);
    }

    @Override
    public List<Movie> select2(int userid) {
        return movieMapper.select2(userid);
    }

    @Override
    public List<Movie> select3(int userid) {
        return movieMapper.select3(userid);
    }

    @Override
    public List<Movie> select4(String moviecountry) {
        return movieMapper.select4(moviecountry);
    }
}
