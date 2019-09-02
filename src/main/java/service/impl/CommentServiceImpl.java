package service.impl;

import mapper.CommentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.Comment;
import service.CommentService;

import java.util.List;
@Service
public class CommentServiceImpl implements CommentService {
    @Autowired
    CommentMapper commentMapper;
    @Override
    public int deleteByPrimaryKey(Integer cmid) {
        return commentMapper.deleteByPrimaryKey(cmid);
    }

    @Override
    public int insert(Comment record) {
        return commentMapper.insert(record) ;
    }

    @Override
    public Comment selectByPrimaryKey(Integer cmid) {
        return commentMapper.selectByPrimaryKey(cmid);
    }

    @Override
    public List<Comment> selectAll() {
        return commentMapper.selectAll();
    }

    @Override
    public int updateByPrimaryKey(Comment record) {
        return commentMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<Comment> select1(Integer movieid) {
        return commentMapper.select1(movieid);
    }

    @Override
    public List<Comment> selectByUser(int userid) {
        return commentMapper.selectByUser(userid);
    }
}
