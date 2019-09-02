package mapper;

import java.util.List;

import org.springframework.stereotype.Repository;
import pojo.Comment;
@Repository
public interface CommentMapper {
    int deleteByPrimaryKey(Integer cmid);

    int insert(Comment record);

    Comment selectByPrimaryKey(Integer cmid);

    List<Comment> selectAll();

    int updateByPrimaryKey(Comment record);

    List<Comment> select1(Integer moiveid);

    List<Comment> selectByUser(int userid);
}