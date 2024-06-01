package com.demo.movie.bean;
/**
 * 影剧场次类型枚举
 * @author Administrator
 *
 */
public enum CinemaSessionType {

	_Opera("歌剧"),
	_Concert("音乐会"),
	_Dance("舞蹈"),
	_Drama("戏剧"),
	_Other("其他"),
	;
	
	private String name;
	
	private CinemaSessionType(String name){
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
}
