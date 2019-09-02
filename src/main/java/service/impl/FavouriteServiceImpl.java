package service.impl;

import mapper.FavouriteMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.Favourite;
import service.FavouriteService;

import java.util.List;
@Service
public class FavouriteServiceImpl implements FavouriteService {
    @Autowired
    FavouriteMapper favouriteMapper;

    @Override
    public int deleteByPrimaryKey(Integer favouriteid) {
        return favouriteMapper.deleteByPrimaryKey(favouriteid);
    }

    @Override
    public int insert(Favourite record) {
        return favouriteMapper.insert(record);
    }

    @Override
    public Favourite selectByPrimaryKey(Integer favouriteid) {
        return favouriteMapper.selectByPrimaryKey(favouriteid);
    }

    @Override
    public int update(Favourite record) {
        return favouriteMapper.update(record);
    }

    @Override
    public Favourite select1(Favourite record) {
        return favouriteMapper.select1(record);
    }

    @Override
    public int delete1(Favourite record) {
        return favouriteMapper.delete1(record);
    }

    @Override
    public List<Favourite> selectAll() {
        return favouriteMapper.selectAll();
    }

    @Override
    public int updateByPrimaryKey(Favourite record) {
        return favouriteMapper.updateByPrimaryKey(record);
    }
}
