package com.demo.movie.controller.admin;

import com.demo.movie.util.ValidateEntityUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.demo.movie.bean.CodeMsg;
import com.demo.movie.bean.MovieArea;
import com.demo.movie.bean.MovieLang;
import com.demo.movie.bean.MovieType;
import com.demo.movie.bean.PageBean;
import com.demo.movie.bean.Result;
import com.demo.movie.entity.common.Movie;
import com.demo.movie.entity.common.MovieComment;
import com.demo.movie.service.common.MovieCommentService;
import com.demo.movie.service.common.MovieService;

/**
 * 影剧管理控制器
 * @author Administrator
 *
 */
@RequestMapping("/admin/movie")
@Controller
public class MovieController {

	@Autowired
	private MovieService movieService;
	@Autowired
	private MovieCommentService movieCommentService;
	
	/**
	 * 影剧列表页面
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/list")
	public String list(Model model, Movie movie, PageBean<Movie> pageBean){
		model.addAttribute("pageBean", movieService.findPage(movie, pageBean));
		model.addAttribute("name",movie.getName());
		return "admin/movie/list";
	}
	
	/**
	 * 影剧添加页面
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String add(Model model){
		model.addAttribute("movieAreaList", MovieArea.values());
		model.addAttribute("movieTypeList", MovieType.values());
		model.addAttribute("movieLangList", MovieLang.values());
		return "admin/movie/add";
	}
	
	/**
	 * 影剧编辑页面
	 * @param model
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/edit",method=RequestMethod.GET)
	public String edit(Model model,@RequestParam(name="id",required=true)Long id){
		model.addAttribute("movie", movieService.findById(id));
		model.addAttribute("movieAreaList", MovieArea.values());
		model.addAttribute("movieTypeList", MovieType.values());
		model.addAttribute("movieLangList", MovieLang.values());
		return "admin/movie/edit";
	}
	
	/**
	 * 添加影剧表单提交
	 * @param movie
	 * @return
	 */
	@RequestMapping(value="/add",method=RequestMethod.POST)
	@ResponseBody
	public Result<Boolean> add(Movie movie){
		if(movie == null){
			return Result.error(CodeMsg.DATA_ERROR);
		}
		CodeMsg validate = ValidateEntityUtil.validate(movie);
		if(validate.getCode() != CodeMsg.SUCCESS.getCode()){
			return Result.error(validate);
		}
		//判断是否是编辑
		if(movie.getId() != null && movie.getId() > 0){
			Movie findById = movieService.findById(movie.getId());
			movie.setCreateTime(findById.getCreateTime());
			movie.setRate(findById.getRate());
			movie.setRateCount(findById.getRateCount());
			movie.setTotalMoney(findById.getTotalMoney());
		}
		//表示数据合法，可以保存到数据库
		if(movieService.save(movie) == null){
			return Result.error(CodeMsg.ADMIN_AREA_SAVE_ERROR);
		}
		return Result.success(true);
	}
	
	/**
	 * 删除
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/delete",method=RequestMethod.POST)
	@ResponseBody
	public Result<Boolean> delete(@RequestParam(name="id",required=true)Long id){
		try {
			movieService.delete(id);
		} catch (Exception e) {
			return Result.error(CodeMsg.ADMIN_MOVIE_DELETE_ERROR);
		}
		return Result.success(true);
	}
	
	
	/**
	 * ----------影剧评价管理-------------
	 */
	/**
	 * 影剧评价列表
	 * @param model
	 * @param movieComment
	 * @param pageBean
	 * @return
	 */
	@RequestMapping(value="/comment_list")
	public String list(Model model,MovieComment movieComment,PageBean<MovieComment> pageBean){
		model.addAttribute("pageBean", movieCommentService.findPage(movieComment, pageBean));
		model.addAttribute("content",movieComment.getContent());
		return "admin/movie/comment_list";
	}
	
	/**
	 * 删除评价
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/delete_comment",method=RequestMethod.POST)
	@ResponseBody
	public Result<Boolean> deleteComment(@RequestParam(name="id",required=true)Long id){
		movieCommentService.delete(id);
		return Result.success(true);
	}
}
