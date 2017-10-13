package org.dimigo.servlet;

import org.dimigo.vo.UserVO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/bloglogin")
public class BlogLoginServlet extends HttpServlet {

    /**
     * @see HttpServlet#HttpServlet()
     */
    public BlogLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        String id = request.getParameter("id");
        String password = request.getParameter("password");
        System.out.printf("id : %s, password : %s\n", id, password);

        if("test@naver.com".equals(id)) {
            HttpSession session = request.getSession();
            UserVO user = new UserVO();
            user.setId(id);
            user.setName("최찬환");
            session.setAttribute("user", user);
            RequestDispatcher rd = request.getRequestDispatcher("blog/index.jsp");
            rd.forward(request, response);
        } else {
            request.setAttribute("msg", "error");
            RequestDispatcher rd = request.getRequestDispatcher("blog/sign.jsp");
            rd.forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
