package cn.fc.mapper;

import java.util.List;

import cn.fc.annotation.MyBatisRepository;
import cn.fc.entity.Sys_category;
@MyBatisRepository
public interface Sys_categoryMapper {
	public List<Sys_category> findSc();
	
	public void updateSc(Sys_category sc);
	
	public void addSc(Sys_category sc);

	public void delSc(Sys_category sc);
}
