package mapper;

import java.util.List;
import pojo.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer userid);

    int insert(User record);

    User selectByPrimaryKey(Integer userid);

    List<User> selectAll();

    User selectByUsername(String username);

    int updateByPrimaryKey(User record);

    List<User> select1();
}