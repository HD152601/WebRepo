package org.dimigo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.vo.UserVO;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    RequestDispatcher rd = request.getRequestDispatcher("jsp/login.jsp");
    rd.forward(request, response);
    //세션에 사용자 정보가 없음ㄴ login.jsp로 포워딩
    //만약에 이으면 sessionInfo.jsp로 응답
    //sessionInfo.jsp에서는 세션에 담시 사용자 정보 (id, name, nickname)출력
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		boolean result = true;
		
		if(result){
			// 세션에 사용자 생성 생성
			HttpSession session =request.getSession();
			UserVO user = new UserVO();
			user.setId(id);
			user.setName("홍길동");
			user.setNickname("의적");
			
			session.setAttribute("user", user);
			
			  RequestDispatcher rd = request.getRequestDispatcher("jsp/home.jsp");
			  rd.forward(request, response);
		}
		System.out.printf("id : %s, pwd : %s\n", id, pwd);
		
		/*
		 * {
		 *   "id" : "test"
		 *   }
		 */
		
		//out.println("{");
		//out.println("\"id\" : " + "\"" + id + "\"");
		//out.println("}");
		
		// JSON Simple Library 사용
		Gson gson = new Gson();
		   JsonObject json = new JsonObject();
		   json.addProperty("id", id);
		   String j = gson.toJson(json);
		   System.out.println(j);
		   out.write(j);
		   out.close();
	}
	
	
	protected void doPost2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		boolean result = true;
		
		if(result){
			// 세션 생성
		}
		System.out.printf("id : %s, pwd : %s\n", id, pwd);
		
		/*
		 * {
		 *   "id" : "test"
		 *   }
		 */
		
		//out.println("{");
		//out.println("\"id\" : " + "\"" + id + "\"");
		//out.println("}");
		
		// JSON Simple Library 사용
		Gson gson = new Gson();
		   JsonObject json = new JsonObject();
		   json.addProperty("id", id);
		   String j = gson.toJson(json);
		   System.out.println(j);
		   out.write(j);
		   out.close();
	}

}
