package com.demo.movie.dao.common;
/**
 * 剧厅座位信息管理数据库操作层
 */
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.demo.movie.entity.common.CinemaHallSeat;
@Repository
public interface CinemaHallSeatDao extends JpaRepository<CinemaHallSeat, Long> {
	
	List<CinemaHallSeat> findByCinemaHallId(Long cinemaHallId);
}
