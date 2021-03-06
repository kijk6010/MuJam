package com.sample.video.controller;

import com.sample.video.dto.SingerDto;
import com.sample.video.dto.UserDto;
import com.sample.video.password.SecurityUtil;
import com.sample.video.service.SingerService;
import com.sample.video.service.UserService;
import com.sample.video.service.VideoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    private UserService userService;
    private SingerService singerService;
    public LoginController(UserService userService, SingerService singerService){
        this.userService = userService;
        this.singerService = singerService;
    }

    @GetMapping("/login")
    public String login(Model model){
        return "login/login";
    }
    @GetMapping("/signUp")
    public String signUp(Model model){
        return "login/signUp";
    }
    @GetMapping("/userSignUp")
    public String userSignUp(Model model){
        return "login/userSignUp";
    }
    @GetMapping("/singerSignUp")
    public String singerSignUp(Model model){
        return "login/singerSignUp";
    }
    @GetMapping("/logout")
    public String logout(HttpServletRequest req){
        req.getSession().invalidate();
        return "redirect:/main";
    }
    @PostMapping("/submitSignUp")
    public String submitSignUp(UserDto user,
                               @RequestParam(value = "image", required = false) MultipartFile userProfileFile,
                               int imageCheck){
        SecurityUtil securityUtil = new SecurityUtil();
        String password = user.getPassword();
        password = securityUtil.encryptSHA256(password);
        user.setPassword(password);
        userService.createUser(user, userProfileFile, imageCheck);
        return "redirect:/main";
    }
    @PostMapping("/submitSingerSignUp")
    public String submitSingerSignUp(SingerDto singer,
                                     @RequestParam(value = "image", required = false) MultipartFile singerProfileFile,
                                     int imageCheck){
        System.out.println(singer);
        SecurityUtil securityUtil = new SecurityUtil();
        String password = singer.getPassword();
        password = securityUtil.encryptSHA256(password);
        singer.setPassword(password);
        System.out.println(singerProfileFile.getName());
        singerService.createSinger(singer, singerProfileFile, imageCheck);
        return "redirect:/main";
    }
    @PostMapping("/idCheck")
    @ResponseBody
    public int idCheck(String userId){
        System.out.println(userId);
        UserDto user = userService.getUserByUserId(userId);
        SingerDto singer = singerService.getSingerBySingerId(userId);
        if(user == null && singer == null){
            return 0;
        }
        else{
            return 1;
        }
    }

    @PostMapping("/nicknameCheck")
    @ResponseBody
    public int nicknameCheck(String nickname){
        System.out.println(nickname);
        UserDto user = userService.getUserByNickname(nickname);
        SingerDto singer =singerService.getSingerBySingerName(nickname);
        if(user == null && singer == null){
            return 0;
        }
        else{
            return 1;
        }
    }

    @PostMapping("/submitLogin")
    public String submitLogin(@RequestParam("userId") String userId,
                              @RequestParam("password") String password,
                              @RequestParam("userOrSinger") int userOrSinger,
                              HttpServletRequest req){
        System.out.println(userId+" "+password+" "+userOrSinger);
        req.getSession().invalidate();
        SecurityUtil securityUtil = new SecurityUtil();
        password = securityUtil.encryptSHA256(password);
        if(userOrSinger == 1) {
            UserDto user = userService.getUserByUserId(userId);
            HttpSession session = req.getSession();
            System.out.println(userOrSinger);
            //존재하지 않는 id
            if (user == null) {
                req.setAttribute("msg1", "아이디가 존재하지 않습니다.");
                return "login/login";
            }
            //id 존재
            else {
                //비밀번호 일치
                if (user.getPassword().equals(password)) {
                    session.setAttribute("user", user);
                    return "redirect:/main";
                }
                //불일치
                else {
                    req.setAttribute("msg2", "비밀번호가 일치하지 않습니다.");
                    return "login/login";
                }
            }
        }
        else{
            SingerDto singer = singerService.getSingerBySingerId(userId);
            HttpSession session = req.getSession();
            System.out.println(userOrSinger);
            //존재하지 않는 id
            if (singer == null) {
                req.setAttribute("msg1", "아이디가 존재하지 않습니다.");
                return "login/login";
            }
            //id 존재
            else {
                //비밀번호 일치
                if (singer.getPassword().equals(password)) {
                    session.setAttribute("singer", singer);
                    return "redirect:/main";
                }
                //불일치
                else {
                    req.setAttribute("msg2", "비밀번호가 일치하지 않습니다.");
                    return "login/login";
                }
            }
        }
    }
}

