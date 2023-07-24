package com.ict.db;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

// DB처리하는 메서드들을 가지고 있는 클래스
public class DAO {
   // 실제 사용하는 클래스 : SqlSession
   private static SqlSession ss;
   
   // 싱글턴 패턴 (동기화처리) : 프로그램이 종료될 때 까지 한번 만들어진 객체를 재 사용한다.
   private synchronized  static SqlSession getSession() {
      if(ss == null) {
         ss = DBService.getFactory().openSession();
      }
      return ss;
   }
   
   public static List<VO> getList(){
	   List<VO> list = getSession().selectList("member.list");
	   return list;
   }
   
   public static List<MVO> membersList() {
	   	List<MVO> list = getSession().selectList("members.list");
	   	return list;
   }
   
   public static int membersDelete(String m_idx){
	   int result = getSession().delete("members.delete", m_idx);
	   ss.commit();
	   return result;
   }
   
   public static int getIdChk(String m_id) {
	   // select 쓰면 보통 vo나 list인데 여기선 selectone이지만 갯수를 세는거라
	   // int로 함.
	   int result = getSession().selectOne("members.idchk", m_id);
	   return result;
   }
   
   public static int membersInsert(MVO mvo) {
	   int result = getSession().insert("members.insert", mvo);
	   ss.commit();
	   return result;
   }
}