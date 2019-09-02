package service.impl;

import mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.User;
import service.UserService;

import java.util.List;
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;

    @Override
    public int deleteByPrimaryKey(Integer userid) {
        return userMapper.deleteByPrimaryKey(userid);
    }

    @Override
    public int insert(User record) {
        return userMapper.insert(record);
    }

    @Override
    public User selectByPrimaryKey(Integer userid) {
        return userMapper.selectByPrimaryKey(userid);
    }

    @Override
    public User selectByUsername(String username) {
        return userMapper.selectByUsername(username);
    }

    @Override
    public List<User> selectAll() {
        return userMapper.selectAll();
    }

    @Override
    public int updateByPrimaryKey(User record) {
        return userMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<User> select1() {
        return userMapper.select1();
    }

}
