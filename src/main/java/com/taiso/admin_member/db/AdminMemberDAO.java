package com.taiso.admin_member.db;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;



public class AdminMemberDAO {
	
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private String sql = "";

	
	// 디비 연결해주는 메서드(커넥션풀)
	private Connection getConnection() throws Exception {
		// 1. 드라이버 로드	// 2. 디비연결
		
		// Context 객체 생성 (JNDI API)
		Context initCTX = new InitialContext();
		// 디비연동정보 불러오기 (context.xml 파일정보)
		DataSource ds 
		      = (DataSource)initCTX.lookup("java:comp/env/jdbc/TAISO");
		// 디비정보(연결)  불러오기
		con = ds.getConnection();
		
		System.out.println(" DAO : 디비연결 성공(커넥션풀) ");
		System.out.println(" DAO : con : " + con);
		
		return con;
	}
	

	// 자원해제 메서드-closeDB()
	public void closeDB() {
		System.out.println(" DAO : 디비연결자원 해제 ");

		try {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	// 자원해제 메서드-closeDB()
	
	// 글 전체 개수 확인 - getMemberCount()
	public int getMemberCount() {
		int cnt = 0;
		
		try {
			// 1.2. 디비연결
			con = getConnection();
			
			// 3. sql 작성 & pstmt 객체 생성
			sql = "select count(*) from member";
			pstmt = con.prepareStatement(sql);
			
			// 4. sql 실행
			rs = pstmt.executeQuery();
			
			// 5. 데이터 처리
			if(rs.next()) {
				//cnt = rs.getInt(1);
				cnt = rs.getInt("count(*)");
			}
			
			System.out.println(" DAO : 전체 글 개수 : " + cnt + "개");
		
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		return cnt;
	}
	// 글 전체 개수 확인 - getMemberCount()
	
	// 글정보 가져오기 - getMemberList(int startRow,int pageSize)
	public ArrayList getNoticeList(int startRow,int pageSize) {
		System.out.println(" DAO : getMemberList() 호출 ");
		// 글정보 모두 저장하는 배열
		ArrayList MemberList = new ArrayList();
		
		try {
			// 1.2. 디비연결
			con = getConnection();
			
			// 3. sql 작성 & pstmt 객체 생성
			sql = "select * from member "
					+ "order by bo_re_ref desc,bo_re_seq asc limit ?,?";
			pstmt = con.prepareStatement(sql);
			
			//?????
			pstmt.setInt(1, startRow-1); // 시작행 - 1
			pstmt.setInt(2, pageSize); // 개수
			
			// 4. sql 실행
			rs = pstmt.executeQuery();
			// 5. 데이터 처리(DB->DTO->List)
			while(rs.next()) {
				
				// DB -> boDTO
				MemberDTO amDTO = new MemberDTO();
				amDTO.setMem_num(rs.getInt("mem_num"));
				amDTO.setMem_id(rs.getString("mem_id"));
				amDTO.setMem_pw(rs.getString("mem_pw"));
				amDTO.setMem_name(rs.getString("mem_name"));
				amDTO.setMem_nickName(rs.getString("mem_nickName"));
				amDTO.setMem_phone(rs.getString("mem_phone"));
				amDTO.setMem_email(rs.getString("mem_email"));
				amDTO.setMem_accept_sns(rs.getInt("mem_accept_sns"));
				amDTO.setMem_registDate(rs.getTimestamp("mem_registDate"));
				amDTO.setLicense_num(rs.getString("license_num"));
				amDTO.setMem_birthday(rs.getString("mem_birthday"));
				amDTO.setMem_blacklist(rs.getInt("mem_blacklist"));
				
				// amDTO -> List
				MemberList.add(amDTO);
				
			}
			
			System.out.println(" DAO : 게시판 목록 저장완료! ");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		
		return MemberList;
		}
		// 글정보 가져오기 - getMemberList(int startRow,int pageSize)
	
		
}
