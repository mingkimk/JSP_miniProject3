package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.BoardDAO;
import db.BoardDTO;

/**
 * Servlet implementation class Writemod
 */
@WebServlet("/Writemod")
public class Writemod extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Writemod() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		
		String title = request.getParameter("title");
		String interest = request.getParameter("interest");
		String contents = request.getParameter("contents");		
		int no = Integer.parseInt( request.getParameter("no"));
		
		BoardDAO bDAO = BoardDAO.getInstance();
		BoardDTO o = new BoardDTO();
		o.setTitle(title);
		o.setInterest(interest);
		o.setContents(contents);
		o.setNo(no);
		
		bDAO.update(o);
		
		
		
		String view = "Main";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
