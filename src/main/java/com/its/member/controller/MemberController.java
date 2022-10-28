package com.its.member.controller;

import com.its.member.dto.MemberDTO;
import com.its.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class MemberController {
@Autowired
    MemberService memberService;


    @GetMapping("/save")
    public String saveForm(){

        return "memberSave";
    }
    @PostMapping("/save")
    public String save(@ModelAttribute MemberDTO memberDTO){
        memberService.save(memberDTO);
        return "memberLogin";
//        boolean saveResult = memberService.save(memberDTO);
//        if(saveResult){
//            return "memberLogin";
//        }else{
//            return "index";
//        }
    }

    @GetMapping("/login")
    public String loginForm(){
        return "memberLogin";
    }

    @PostMapping("/login")
    public String login(@ModelAttribute MemberDTO memberDTO, Model model, HttpSession session){
        boolean memberDTOReturn = memberService.login(memberDTO);

        if(memberDTOReturn){
            //세션에 로그인한 사용자의 이메일 저장
            session.setAttribute("loginEmail", memberDTO.getMemberEmail());
            return "memberMain";

        }else{
            return "memberLogin";
        }
    }

    @GetMapping("/members")
    public String findAll(Model model) {
        List<MemberDTO> memberList = memberService.findAll();
        model.addAttribute("memberList", memberList);
        return "memberList";
    }

    @GetMapping("/member")
    public String findById(@RequestParam("id") Long id,Model model){
        MemberDTO memberDTO = memberService.findById(id);
        model.addAttribute("member", memberDTO);
        return"memberDetail";
    }


    /*update 로그인을 하고 나서 update 와 delete를 할 수 있게 하겠다.
    * 해당 id 를 타고넘어가서*/


/*전체정보 갖고 간다.*/

    /*
    * 메서드 이름 : delete()
    * 매개변수 : Long id
    * 리턴 : boolean */
    @GetMapping("/delete")
    public String delete(@RequestParam("id") Long id, Model model){
        boolean deleteResult = memberService.delete(id);
        //1. 삭제 후 목록을 DB에서 가져오고 memberList.jsp로 간다.
        /*List<MemberDTO> memberDTOList = memberService.findAll();
        model.addAttribute("memberList", memberDTOList);*/
        //2. redirect 방식을 이용하여 /members 주소 요청
        /*return"redirect:/members";*/

        if(deleteResult){
            return "redirect:/members";
        }else{

            return "index";
        }
    }
    /*update()
    * 매개변수 없이
    * 리턴을 DTO로 받아와서 뿌려준다. 그리고 세션을 이용한다.*/
    @GetMapping("/update")
    public String updateForm(HttpSession session ,Model model){
        //session값 가져오기  //session.getAttribute 의 리턴은 object고 우리가 원하는 변수는 String이므로
                            //String으로 강제형변환을 시켜준다.
        String memberEmail = (String) session.getAttribute("loginEmail");
        // memberEmail로 DB에서 해당 회원의 전체 정보 조회
    MemberDTO member = memberService.updateInfo(memberEmail);
    model.addAttribute("member", member);


        return "memberUpdate";
    }
    @PostMapping("/update")
    public String update(@ModelAttribute MemberDTO memberDTO){
        boolean result = memberService.update(memberDTO);

        if(result){
            return "redirect:/member?id="+memberDTO.getId();
        }else{
            return "index";
        }
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        //세션을 없애는 명령어.

        return "index";
    }

    @GetMapping("/ajax-ex")
    public String ajaxEx(){
        return"ajaxEx";
    }

    @GetMapping("/ajax1")
    public @ResponseBody String ajax1(){
        System.out.println("MemberController.ajax1");
        return "ok";
    }
    @PostMapping("/ajax2")
    public @ResponseBody String ajax2(){
        System.out.println("MemberController.ajax2");
        return "ok";
    }
    @GetMapping("/ajax3")
    public @ResponseBody String ajax3(@RequestParam("value1")String value1,
                                      @RequestParam("value2") String value2){
        System.out.println("MemberController.ajax3");
        System.out.println("value1 = " + value1 + ", value2 = " + value2);
        return "ok";
    }
    @PostMapping("/ajax4")
    public @ResponseBody String ajax4(@RequestParam("value1")String value1,
                                      @RequestParam("value2") String value2){
        System.out.println("MemberController.ajax4");
        System.out.println("value1 = " + value1 + ", value2 = " + value2);
        String value3 = "리턴입니다.";
        return value3;
    }
    @PostMapping("/ajax5")
    public @ResponseBody MemberDTO ajax5(@RequestParam("value1")String value1,
                                         @RequestParam("value2") String value2){
        System.out.println("MemberController.ajax5");
        System.out.println("value1 = " + value1 + ", value2 = " + value2);
        String value3 = "i am return.";
        MemberDTO memberDTO = memberService.findById(1L);
        return memberDTO;
    }
    @PostMapping("/ajax6")
    public @ResponseBody List<MemberDTO> ajax6(@RequestParam("value1")String value1,
                                         @RequestParam("value2") String value2){
        System.out.println("MemberController.ajax6");
        System.out.println("value1 = " + value1 + ", value2 = " + value2);
        String value3 = "i am return.";
        List<MemberDTO> memberDTOList = memberService.findAll();
        return memberDTOList;
    }
}
