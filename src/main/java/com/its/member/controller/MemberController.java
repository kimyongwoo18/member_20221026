package com.its.member.controller;

import com.its.member.dto.MemberDTO;
import com.its.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.lang.reflect.Member;
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
            model.addAttribute("modelEmail", memberDTO.getMemberEmail());
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

    @PostMapping("/update")
    public String update(@RequestParam("id") MemberDTO memberDTO, Model model){
    MemberDTO member = memberService.updatePassword(memberDTO);
    model.addAttribute("member", member);
        return "memberDetail";
    }



}
