package com.taiso.review.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ReviewDAO {
	
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private String sql = "";

	// 디비 연결해주는 메서드 (커넥션 풀)
	private Connection getConnection() throws Exception {

		// 1. 드라이버 로드 & 2. 디비 연결

		// Context 객체 생성 (JNDI API)
		Context intiCTX = new InitialContext();

		// 디비 연동 정보 불러오기 (context.xml 파일 정보)
		DataSource ds = (DataSource) intiCTX.lookup("java:comp/env/jdbc/project_taiso");

		// 디비 정보(연결) 불러오기
		con = ds.getConnection();

		System.out.println("DAO : 디비 연결 성공(커넥션 풀)");
		System.out.println("DAO : con : " + con);

		return con;
	}
	// 디비 연결해주는 메서드 (커넥션 풀) - 끝
	
	// 자원해제 메서드 - closeDB ()
	public void closeDB() {
		System.out.println("DAO : 디비 연결 자원 해제 ..");

		try {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	// 자원해제 메서드 - closeDB ()
	
	// 리뷰 글쓰기 메서드 - insertReview(ReviewDTO dto)
	public void insertReview(ReviewDTO dto) {
		
		try {
			// 디비 연결
			con = getConnection();
			
			// 쿼리 작성 및 객체 생성
			sql = "insert into car_review(rev_subject,rev_content,rev_image,rev_star) values(?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dto.getRev_subject());
			pstmt.setString(2, dto.getRev_content());
			pstmt.setString(3, dto.getRev_image());
			pstmt.setInt(4, dto.getRev_star());
			
			pstmt.executeUpdate();
			
			System.out.println("DAO : 리뷰 글쓰기 완료!");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeDB();
		}
	}
}
