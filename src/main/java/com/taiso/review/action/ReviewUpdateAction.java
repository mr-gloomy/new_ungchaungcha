package com.taiso.review.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ReviewUpdateAction implements Review {

	@Override
	public ReviewForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		System.out.println("ReviewUpdateAction_execute() 호출");
		
//		// 세션 제어 (id)
//		HttpSession session = request.getSession();
//		String id = (String) session.getAttribute("id");
//		
//		ReviewForward forward = new ReviewForward();
//		if(id == null) {
//			forward.setPath("로그인 안 했을 때 이동할 주소");
//			// 현재 페이지 가상주소에서 옮겨가야 하니까 리다이렉트로
//			forward.setRedirect(true);
//			return forward;
//		}
		
		
		return null;
	}

}
