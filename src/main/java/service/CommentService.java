package service;

import pojo.Comment;

import java.util.List;

public interface CommentService {
    int deleteByPrimaryKey(Integer cmid);

    int insert(Comment record);

    Comment selectByPrimaryKey(Integer cmid);

    List<Comment> selectAll();

    int updateByPrimaryKey(Comment record);

    List<Comment> select1(Integer movieid);

    List<Comment> selectByUser(int userid);
}
