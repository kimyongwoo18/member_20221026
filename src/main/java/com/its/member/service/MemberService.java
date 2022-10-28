package com.its.member.service;

import com.its.member.dto.MemberDTO;
import com.its.member.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberService {
@Autowired
    MemberRepository memberRepository;
    public void save(MemberDTO memberDTO) {
        memberRepository.save(memberDTO);
    }

    public boolean login(MemberDTO memberDTO) {
        MemberDTO result = memberRepository.login(memberDTO);
        if(result  != null){
            return true;
        }else{
            return false;
        }
    }


    public List<MemberDTO> findAll() {
        return memberRepository.findAll();
    }

    public MemberDTO findById(Long id) {
        return memberRepository.findById(id);
    }



    public boolean delete(Long id) {
        int deleteResult = memberRepository.delete(id);
        if(deleteResult != 0){
            return true;
        }else{
            return false;
        }
    }


    public MemberDTO update(MemberDTO memberDTO) {memberRepository.update(memberDTO);
        return memberDTO;
    }

    public MemberDTO updateInfo(String memberEmail) {
        return memberRepository.updateInfo(memberEmail);
    }
}
