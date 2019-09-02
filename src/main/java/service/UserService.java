package service;

import pojo.User;

import java.util.List;

public interface UserService {
    int deleteByPrimaryKey(Integer userid);

    int insert(User record);

    User selectByPrimaryKey(Integer userid);

    User selectByUsername(String username);

    List<User> selectAll();

    int updateByPrimaryKey(User record);

    List<User> select1();
}
