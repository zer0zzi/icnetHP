package icnet.sample.controller;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import icnet.common.common.CommandMap;
import icnet.sample.service.SampleService;

@Controller
public class SampleController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="sampleService")
	private SampleService sampleService;
	

	@RequestMapping(value="/home/mainPage.do")
	public ModelAndView mainPage(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/home/main");
		
		return mv;
	}
	
	@RequestMapping(value="/sample/openBoardList.do")
    public ModelAndView openSampleBoardList(Map<String,Object> commandMap) throws Exception{
    	ModelAndView mv = new ModelAndView("/sample/boardList");
    	
    	List<Map<String,Object>> list = sampleService.selectBoardList(commandMap);
    	mv.addObject("list", list);
    	
    	return mv;
    }
	
	@RequestMapping(value="/sample/testMapArgumentResolver.do")
	public ModelAndView testMapArgumentResolver(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("");
		
		if(commandMap.isEmpty() == false){
			Iterator<Entry<String,Object>> iterator = commandMap.getMap().entrySet().iterator();
			Entry<String,Object> entry = null;
			while(iterator.hasNext()){
				entry = iterator.next();
				log.debug("key : "+entry.getKey()+", value : "+entry.getValue());
			}
		}
		return mv;
	}


	@RequestMapping(value="/sample/openBoardWrite.do")
	public ModelAndView openBoardWrite(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/sample/boardWrite");
		
		return mv;
	}

	@RequestMapping(value="/sample/insertBoard.do")
	public ModelAndView insertBoard(CommandMap commandMap, HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/sample/openBoardList.do");
		
		sampleService.insertBoard(commandMap.getMap());
		
		return mv;
	}

	@RequestMapping(value="/sample/openBoardDetail.do")
	public ModelAndView openBoardDetail(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/sample/boardDetail");
		
		Map<String,Object> map = sampleService.selectBoardDetail(commandMap.getMap());
		mv.addObject("map", map);
		
		return mv;
	}

	@RequestMapping(value="/sample/openBoardUpdate.do")
	public ModelAndView openBoardUpdate(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/sample/boardUpdate");
		
		Map<String,Object> map = sampleService.selectBoardDetail(commandMap.getMap());
		mv.addObject("map", map);
		
		return mv;
	}

	@RequestMapping(value="/sample/updateBoard.do")
	public ModelAndView updateBoard(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/sample/openBoardDetail.do");
		
		sampleService.updateBoard(commandMap.getMap());
		
		mv.addObject("IDX", commandMap.get("IDX"));
		return mv;
	}

	@RequestMapping(value="/sample/deleteBoard.do")
	public ModelAndView deleteBoard(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/sample/openBoardList.do");
		
		sampleService.deleteBoard(commandMap.getMap());
		
		return mv;
	}
	
	@RequestMapping(value="/user/openLogin.do")
	public ModelAndView openLogin(HttpServletRequest request, HttpServletResponse response, CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView();
		if(request.getSession().getAttribute("loginInfo") != null)
		{
			String msg = "이미 로그인된 상태입니다.";
			mv.addObject("msg", msg);
			mv.setViewName("/user/loginSuccess");
		}
		else
		{
			mv.setViewName("/user/login");
		}
		return mv;
	}
	
	@RequestMapping(value="/user/loginTry.do")
	public ModelAndView login(HttpServletRequest request, CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/user/loginSuccess");
		Map<String, Object> map = sampleService.selectUserInfo(commandMap.getMap());
		 
		 if(map == null)
		 {
			 mv.addObject("msg","로그인에 실패하였습니다.");
		 }
		 else
		 {
			 request.getSession().setAttribute("loginInfo", map);
			 request.getSession().setMaxInactiveInterval(60*30);
			 
			 mv.addObject("msg", "로그인에 성공하였습니다.");
		 }
		 return mv;
	}
	
	@RequestMapping(value="/user/logoutTry.do")
	public ModelAndView logout(HttpServletRequest request) throws Exception {
		request.getSession().removeAttribute("loginInfo");
		
		ModelAndView mv = new ModelAndView("/user/logout");
		mv.addObject("msg","로그아웃되었습니다.");
		return mv;
	}
	
	@RequestMapping(value="/user/needLogin.do")
	public ModelAndView needLogin() throws Exception {
		ModelAndView mv = new ModelAndView("/user/loginWarning");
		mv.addObject("msg", "로그인 후 이용해주시기 바랍니다.");
		return mv;
	}

	@RequestMapping(value="/sample/signUp.do")
	public ModelAndView signUp(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/sample/signUp");
	
		return mv;
	}
}