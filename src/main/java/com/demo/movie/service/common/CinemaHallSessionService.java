package com.demo.movie.service.common;

import java.util.List;

import com.demo.movie.bean.PageBean;
import com.demo.movie.dao.common.CinemaHallSessionDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.ExampleMatcher;
import org.springframework.data.domain.ExampleMatcher.GenericPropertyMatchers;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.demo.movie.entity.common.CinemaHallSession;

/**
 * 排剧场次信息service层
 * @author Administrator
 *
 */
@Service
public class CinemaHallSessionService {
	
	@Autowired
	private CinemaHallSessionDao cinemaHallSessionDao;
	
	/**
	 * 当cinemaHallSession的id不为空时进行编辑，当id为空时则进行添加
	 * @param cinemaHallSession
	 * @return
	 */
	public CinemaHallSession save(CinemaHallSession cinemaHallSession){
		return cinemaHallSessionDao.save(cinemaHallSession);
	}
	
	
	/**
	 * 根据id查询
	 * @param id
	 * @return
	 */
	public CinemaHallSession findById(Long id){
		return cinemaHallSessionDao.getOne(id);
	}
	
	/**
	 * 根据id删除
	 * @param id
	 */
	public void delete(Long id){
		cinemaHallSessionDao.deleteById(id);
	}
	
	/**
	 * 分页查找排剧场次列表信息
	 * @param cinemaHallSession
	 * @param pageBean
	 * @return
	 */
	public PageBean<CinemaHallSession> findPage(CinemaHallSession cinemaHallSession, PageBean<CinemaHallSession> pageBean){
		ExampleMatcher withMatcher = ExampleMatcher.matching().withMatcher("showDate", GenericPropertyMatchers.contains());
		//withMatcher = withMatcher.withIgnorePaths("status","sex");
		Example<CinemaHallSession> example = Example.of(cinemaHallSession, withMatcher);
		Pageable pageable = PageRequest.of(pageBean.getCurrentPage()-1, pageBean.getPageSize());
		Page<CinemaHallSession> findAll = cinemaHallSessionDao.findAll(example, pageable);
		pageBean.setContent(findAll.getContent());
		pageBean.setTotal(findAll.getTotalElements());
		pageBean.setTotalPage(findAll.getTotalPages());
		return pageBean;
	}
	
	/**
	 * 获取所有的场次列表
	 * @return
	 */
	public List<CinemaHallSession> findAll(){
		return cinemaHallSessionDao.findAll();
	}
	
	/**
	 * 统计影剧上映场次
	 * @param movieId
	 * @return
	 */
	public List<Integer> getShowTotal(Long movieId){
		return cinemaHallSessionDao.getShowTotal(movieId);
	}
	
	/**
	 * 统计指定剧院的放映场次
	 * @param cinemaId
	 * @return
	 */
	public List<Integer> getCinemaShowTotal(Long cinemaId){
		return cinemaHallSessionDao.getCinemaShowTotal(cinemaId);
	}
	
	/**
	 * 根据影剧查询去重剧院场次
	 * @param movieId
	 * @return
	 */
	public List<CinemaHallSession> findDistinctCinemaByMovieId(Long movieId){
		return cinemaHallSessionDao.findDistinctCinemaList(movieId);
	}
	
	/**
	 * 根据影剧查询去重剧院时间场次
	 * @param movieId
	 * @return
	 */
	public List<CinemaHallSession> findDistinctShowDateByMovieId(Long movieId){
		return cinemaHallSessionDao.findDistinctShowDateList(movieId);
	}
	
	/**
	 * 根据剧院id查询去重上映日期
	 * @param cinemaId
	 * @return
	 */
	public List<CinemaHallSession> findDistinctShowDateByCinemaList(Long cinemaId){
		return cinemaHallSessionDao.findDistinctShowDateByCinemaList(cinemaId);
	}
	
	/**
	 * 根据剧院id，上映日期，查找去重的影剧
	 * @param cinemaId
	 * @param showDate
	 * @return
	 */
	public List<CinemaHallSession> findDistinctMovieByCinemaList(Long cinemaId,String showDate){
		return cinemaHallSessionDao.findDistinctMovieByCinemaList(cinemaId,showDate);
	}
	
	/**
	 * 获取指定影剧、剧院、时间段的场次
	 * @param movieId
	 * @param cinemaId
	 * @param showDate
	 * @return
	 */
	public List<CinemaHallSession> findByMovieIdAndCinemaIdAndShowDate(Long movieId,Long cinemaId,String showDate){
		return cinemaHallSessionDao.findByMovieIdAndCinemaIdAndShowDate(movieId, cinemaId, showDate);
	}
	
	/**
	 * 检查在指定的时间是否已经排剧
	 * @param cinemaHallId
	 * @param showDate
	 * @param startTime
	 * @return
	 */
	public boolean isExistHall(Long id,Long cinemaHallId,String showDate,String startTime,String endTime){
		return cinemaHallSessionDao.getHallCount(id == null ? 0l : id,cinemaHallId, showDate, startTime,endTime) > 0;
	}
	
	/**
	 * 返回总数
	 * @return
	 */
	public long count(){
		return cinemaHallSessionDao.count();
	}
}
