package icnet.user.controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import icnet.common.common.CommandMap;
import icnet.user.service.UserService;

@Controller
public class UserController {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="userService")
	private UserService userService;
	
	@RequestMapping(value="/user/openSignUp.do")
	public ModelAndView openSignUp(CommandMap commandMap)throws Exception{
		ModelAndView mav = new ModelAndView("/user/signUp");
	
	return mav;
}
	
	@RequestMapping(value="/user/checkUserID.do")
	@ResponseBody
	public int checkUserID(CommandMap commandMap) throws Exception {
		int checkResult = userService.selectUserID(commandMap.getMap());
				return checkResult;
	}
}
