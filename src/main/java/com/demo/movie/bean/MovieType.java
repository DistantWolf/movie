package com.demo.movie.bean;
/**
 * 影剧类型枚举
 * @author Administrator
 *
 */
public enum MovieType {

	Love("爱情"),
	Comedy("历史"),
	Action("传说"),
	Plot("剧情"),
	Science("民族"),
	Terror("革命"),
	Cartoon("战争"),
	Horror("文学"),
	Crime("古典"),
	Fantasy("流行"),
	Adventure("现代"),
	Other("传统"),
	;
	
	private String name;
	
	private MovieType(String name){
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
}
