package mapper;

import java.util.List;
import pojo.Tvplay;

public interface TvplayMapper {
    int deleteByPrimaryKey(Integer tvid);

    int insert(Tvplay record);

    Tvplay selectByPrimaryKey(Integer tvid);

    List<Tvplay> selectAll();

    int updateByPrimaryKey(Tvplay record);
}