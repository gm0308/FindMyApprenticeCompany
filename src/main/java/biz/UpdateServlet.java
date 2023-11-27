package biz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDAO;

@WebServlet("/update")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public UpdateServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		String id,pwd,name;
    	MemberDAO dao = new MemberDAO();
    	int n = 0;
    	
    	id = request.getParameter("id");
    	pwd = request.getParameter("pwd");
    	name = request.getParameter("name");
    	
    	n = dao.updateMember(id,pwd,name);
    	
    	if(n>0) 
    		response.sendRedirect("/InsideMind/member/memberList.jsp");
    	else

    		out.print("<script> alert('회원 수정에 실패하셨습니다.'); history.back(); </script>");
    	
		
    		out.print("<script> history.back() </script>");

	}

}