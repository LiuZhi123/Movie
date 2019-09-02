package service;

import pojo.Tvplay;

import java.util.List;

public interface TvService {
    int deleteByPrimaryKey(Integer tvid);

    int insert(Tvplay record);

    Tvplay selectByPrimaryKey(Integer tvid);

    List<Tvplay> selectAll();

    int updateByPrimaryKey(Tvplay record);
}
