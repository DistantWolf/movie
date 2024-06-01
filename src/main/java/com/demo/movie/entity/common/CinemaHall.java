package com.demo.movie.entity.common;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.data.jpa.domain.support.AuditingEntityListener;

/**
 * 剧厅实体
 * @author Administrator
 *
 */
@Entity
@Table(name="movie_cinema_hall")
@EntityListeners(AuditingEntityListener.class)
public class CinemaHall extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@ManyToOne
	@JoinColumn(name="cinema_id")
	private Cinema cinema;//所属影剧院
	
	@Column(name="name",nullable=false,length=64)
	private String name;//剧厅名称
	
	@Column(name="max_x",nullable=false,length=4)
	private Integer maxX;//剧厅最大长度座位数
	
	@Column(name="max_y",nullable=false,length=4)
	private Integer maxY;//剧厅最大宽度座位数

	public Cinema getCinema() {
		return cinema;
	}

	public void setCinema(Cinema cinema) {
		this.cinema = cinema;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getMaxX() {
		return maxX;
	}

	public void setMaxX(Integer maxX) {
		this.maxX = maxX;
	}

	public Integer getMaxY() {
		return maxY;
	}

	public void setMaxY(Integer maxY) {
		this.maxY = maxY;
	}

	@Override
	public String toString() {
		return "CinemaHall [cinema=" + cinema + ", name=" + name + ", maxX="
				+ maxX + ", maxY=" + maxY + "]";
	}
	
	

	

	
	
}
