package service.impl;

import mapper.TvplayMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.Tvplay;
import service.TvService;

import java.util.List;
@Service
public class TvServiceImpl implements TvService {
    @Autowired
    TvplayMapper tvplayMapper;
    @Override
    public int deleteByPrimaryKey(Integer tvid) {
        return tvplayMapper.deleteByPrimaryKey(tvid);
    }

    @Override
    public int insert(Tvplay record) {
        return tvplayMapper.insert(record);
    }

    @Override
    public Tvplay selectByPrimaryKey(Integer tvid) {
        return tvplayMapper.selectByPrimaryKey(tvid);
    }

    @Override
    public List<Tvplay> selectAll() {
        return tvplayMapper.selectAll();
    }

    @Override
    public int updateByPrimaryKey(Tvplay record) {
        return tvplayMapper.updateByPrimaryKey(record);
    }
}
