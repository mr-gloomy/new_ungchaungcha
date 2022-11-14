package com.taiso.review.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
		DataSource ds = (DataSource) intiCTX.lookup("java:comp/env/jdbc/taiso2");

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
	public void insertReview(ReviewDTO rDTO) {
		
		try {
			// 디비 연결
			con = getConnection();
			
			
			
			// 쿼리 작성 및 객체 생성
			sql = "select car_code from rez_reservation where rez_uqNum=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, rDTO.getRez_uqNum());
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
			
				sql = "insert into car_review(rev_subject,rev_content,rev_image,rev_star,car_code,mem_id,rez_uqNum) values(?,?,?,?,?,?,?)";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, rDTO.getRev_subject());
				pstmt.setString(2, rDTO.getRev_content());
				pstmt.setString(3, rDTO.getRev_image());
				pstmt.setInt(4, rDTO.getRev_star());
				pstmt.setInt(5, rs.getInt("car_code"));
				pstmt.setString(6, rDTO.getMem_id());
				pstmt.setInt(7, rDTO.getRez_uqNum());
				
				pstmt.executeUpdate();
				
				System.out.println("DAO : 리뷰 글쓰기 완료!");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeDB();
		}
	}
	// 리뷰 글쓰기 메서드 - insertReview(ReviewDTO dto) - 끝
	
	// 한개의 글정보 담는 메서드 - getReview(int rev_num)
	public ReviewDTO getReview(int rev_num) {
		ReviewDTO rDTO = null;
		
		try {
			// 디비 연걸
			con = getConnection();
			
			// 쿼리 작성 및 객체 생성
			sql = "select * from car_review where rev_num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, rev_num);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				rDTO = new ReviewDTO();
				
				rDTO.setRev_content(rs.getString("rev_content"));
				rDTO.setRev_image(rs.getString("rev_image"));
				rDTO.setRev_num(rev_num);
				rDTO.setRev_star(rs.getInt("rev_star"));
				rDTO.setRev_subject(rs.getString("rev_subject"));
				
				System.out.println("글 담기 완료!");
			}
					
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeDB();
		}
		
		return rDTO;
	}
	
	// 한개의 글정보 담는 메서드 - getReview(int rev_num) - 끝
	
	// 리뷰 글수정 메서드 - updateReview(ReviewDTO dto)
	public void updateReview(ReviewDTO rDTO) {
		
		try {
			// 디비 연결
			con = getConnection();
			
			// 쿼리 작성 및 객체 생성
			sql = "update car_review set rev_subject=?,rev_content=?,rev_date=now(),rev_star=? where rev_num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, rDTO.getRev_subject());
			pstmt.setString(2, rDTO.getRev_content());
			pstmt.setInt(3, rDTO.getRev_star());
			pstmt.setInt(4, rDTO.getRev_num());
			pstmt.executeUpdate();
			
			System.out.println("글 수정 완료 !");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeDB();
		}
	}
	// 리뷰 글수정 메서드 - updateReview(ReviewDTO dto) - 끝
	
	// 리뷰 글삭제 메서드 - deleteReview(int rev_num)
	public void deleteReview(int rev_num) {
		
		try {
			// 디비 연결
			con = getConnection();
			
			// 쿼리 작성 및 객체 생성 
			sql = "delete from car_review where rev_num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, rev_num);

			pstmt.executeUpdate();
			
			System.out.println("글 삭제 완료 !");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeDB();
		}
	}
	// 리뷰 글삭제 메서드 - deleteReview(int rev_num) - 끝
	
	// 차량 코드에 해당하는 글 개수 계산하는 메서드 - getReviewCount()
	public int getReviewCount() {
		int cnt = 0;
		
		try {
			// 디비 연결
			con = getConnection();
			
			// 쿼리 작성 및 객체 생성
			sql = "select count(*) from car_review where car_code=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, 1);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				cnt = rs.getInt(1);
			}
			
			System.out.println("전체 글 개수 : " + cnt + "개");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeDB();
		}
		return cnt;
	}
	// 리뷰 전체 글 계산하는 메서드 - getReviewCount() - 끝
	
	// 차량 코드에 해당하는 리뷰 글 정보 저장하는 배열 - getReviewList()
	// 나중에 닉네임도 받기 !
	public List getReviewList() {
		List reviewList = new ArrayList<>();
		
		try {
			// 디비 연결
			con = getConnection();
			
			// 쿼리 작성 및 객체 생성
			sql = "select * from car_review where car_code = ? order by rev_num desc";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, 1);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ReviewDTO rDTO = new ReviewDTO();
				
				rDTO.setRev_content(rs.getString("rev_content"));
				rDTO.setRev_date(rs.getTimestamp("rev_date"));
				rDTO.setRev_image(rs.getString("rev_image"));
				rDTO.setRev_num(rs.getInt("rev_num"));
				rDTO.setRev_star(rs.getInt("rev_star"));
				rDTO.setRev_subject(rs.getString("rev_subject"));
				
				reviewList.add(rDTO);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeDB();
		}
		
		
		return reviewList;
	}
	
	
	
	
}
