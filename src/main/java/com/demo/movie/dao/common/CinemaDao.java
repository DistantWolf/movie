package com.demo.movie.dao.common;
/**
 * 影剧院信息管理数据库操作层
 */
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.demo.movie.entity.common.Cinema;
@Repository
public interface CinemaDao extends JpaRepository<Cinema, Long> {
	
	List<Cinema> findTop6ByOrderByRateDesc();
	
	List<Cinema> findByAreaCityId(Long cityId);
	
}
