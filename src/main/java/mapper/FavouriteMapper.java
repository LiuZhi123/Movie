package mapper;

import java.util.List;
import pojo.Favourite;

public interface FavouriteMapper {
    int deleteByPrimaryKey(Integer favouriteid);

    int insert(Favourite record);

    Favourite selectByPrimaryKey(Integer favouriteid);

    List<Favourite> selectAll();

    int updateByPrimaryKey(Favourite record);
    int update(Favourite record);
    Favourite select1(Favourite record);
    int delete1(Favourite record);
}