package com.demo.movie.controller.home;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.movie.entity.common.News;
import com.demo.movie.service.common.MovieService;
import com.demo.movie.service.common.NewsCategoryService;
import com.demo.movie.service.common.NewsService;
/**
 * 前台影剧控制器
 * @author Administrator
 *
 */
@RequestMapping("/home/news")
@Controller
public class HomeNewsController {

	@Autowired
	private MovieService movieService;
	@Autowired
	private NewsService newsService;
	@Autowired
	private NewsCategoryService newsCategoryService;
	/**
	 * 影剧列表页面
	 * @param model
	 * @return
	 */
	@RequestMapping("/list")
	public String list(Model model,@RequestParam(name="cid",required=false) Long newsCategoryId){
		model.addAttribute("newsList", newsCategoryId == null ? newsService.findAll() : newsService.findAll(newsCategoryId));
		model.addAttribute("cid", newsCategoryId == null ? 0 : newsCategoryId);
		model.addAttribute("newsCategoryList", newsCategoryService.findAll());
		model.addAttribute("topMovieList", movieService.findTopList(5));
		return "home/news/list";
	}
	
	/**
	 * 新闻详情页面
	 * @param model
	 * @param newsId
	 * @return
	 */
	@RequestMapping("/detail")
	public String detail(Model model,@RequestParam(name="id",required=true) Long newsId){
		News news = newsService.find(newsId);
		model.addAttribute("news", news);
		model.addAttribute("topNewsList", newsService.findTop());
		news.setViewNumber(news.getViewNumber()+1);
		newsService.save(news);
		return "home/news/detail";
	}
	
	
}
