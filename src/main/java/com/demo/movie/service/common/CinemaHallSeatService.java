package com.demo.movie.service.common;

import java.util.List;

import com.demo.movie.dao.common.CinemaHallSeatDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.movie.entity.common.CinemaHallSeat;

/**
 * 剧厅座位信息service层
 * @author Administrator
 *
 */
@Service
public class CinemaHallSeatService {
	
	@Autowired
	private CinemaHallSeatDao cinemaHallSeatDao;
	
	/**
	 * 当cinemaHallSeat的id不为空时进行编辑，当id为空时则进行添加
	 * @param cinemaHallSeat
	 * @return
	 */
	public CinemaHallSeat save(CinemaHallSeat cinemaHallSeat){
		return cinemaHallSeatDao.save(cinemaHallSeat);
	}
	
	/**
	 * 批量编辑或保存数据
	 * @param cinemaHallSeats
	 */
	public void saveAll(List<CinemaHallSeat> cinemaHallSeats){
		cinemaHallSeatDao.saveAll(cinemaHallSeats);
	}
	
	
	/**
	 * 根据id查询
	 * @param id
	 * @return
	 */
	public CinemaHallSeat findById(Long id){
		return cinemaHallSeatDao.getOne(id);
	}
	
	
	
	/**
	 * 获取指定剧厅的所有座位列表
	 * @return
	 */
	public List<CinemaHallSeat> findAll(Long cinemaHallId){
		return cinemaHallSeatDao.findByCinemaHallId(cinemaHallId);
	}
}
