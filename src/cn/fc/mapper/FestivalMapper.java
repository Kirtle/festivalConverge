package cn.fc.mapper;

import java.util.List;

import cn.fc.annotation.MyBatisRepository;
import cn.fc.entity.Festival;

@MyBatisRepository
public interface FestivalMapper {

	public Festival findFestival(Integer fid) ;
}
