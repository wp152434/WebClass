package org.dimigo.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.vo.UserVO;

@WebServlet(description = "로그인 서블릿", urlPatterns = { "/login" })
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
		//response.setContentType("text/html;charset=utf-8");
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/login.jsp");
	    rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
	    
	    String id = request.getParameter("id");
	    String pwd = request.getParameter("pwd");
	    System.out.printf("id : %s, pwd : %s\n", id, pwd);

	    boolean isValid = true;
	    if(isValid) {
	    	HttpSession session = request.getSession();
	    	UserVO user = new UserVO();
	    	user.setId(id);
	    	user.setName("홍길동");
	    	user.setNickName("의적");
	    	session.setAttribute("user", user);
	    	
	    	RequestDispatcher rd = request.getRequestDispatcher("jsp/home.jsp");
		    rd.forward(request, response);
	    } else {
	    	request.setAttribute("msg", "error");
	    	RequestDispatcher rd = request.getRequestDispatcher("jsp/login.jsp");
		    rd.forward(request, response);
	    }
	    
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doPost2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("application/json;charset=utf-8");
	    
	    PrintWriter out = response.getWriter();
	    
	    String id = request.getParameter("id");
	    String pwd = request.getParameter("pwd");
	    System.out.printf("id : %s, pwd : %s\n", id, pwd);
	      
	    out.println("{");
	    out.println("\"id\":" + "\"" + id + "\"");
	    out.println("}");
        out.close();
	    
	}

}
