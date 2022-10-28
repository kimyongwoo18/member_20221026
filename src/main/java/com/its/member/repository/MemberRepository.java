package com.its.member.repository;

import com.its.member.dto.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository

public class MemberRepository {
    @Autowired
    SqlSessionTemplate sql;
    public void save(MemberDTO memberDTO) {
        sql.insert("member.save", memberDTO);
    }

    public MemberDTO login(MemberDTO memberDTO) {

        return sql.selectOne("member.login", memberDTO);
    }

    public List<MemberDTO> findAll() {
        return sql.selectList("member.findAll");
    }

    public MemberDTO findById(Long id) {
        return sql.selectOne("member.findById", id);
    }

    public MemberDTO updatePassword(MemberDTO memberDTO) {
        sql.update("member.updatePassword",memberDTO);

        return sql.selectOne("member.findById", memberDTO);
    }


    public int delete(Long id) {
        return sql.delete("member.delete", id);
    }


    public void update(MemberDTO memberDTO) {
        sql.update("member.update", memberDTO);
    }

    public MemberDTO updateInfo(String memberEmail) {
        return sql.selectOne("member.updateInfo", memberEmail);
    }
}
