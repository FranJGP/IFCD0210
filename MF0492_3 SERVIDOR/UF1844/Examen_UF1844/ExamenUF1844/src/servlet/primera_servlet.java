package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class primera_servlet
 */
@WebServlet("/primera_servlet")
public class primera_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public primera_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String nameper = request.getParameter("nameper");
		String namereal = request.getParameter("namereal");
		String buenomalo = request.getParameter("buenomalo");
		String Fuerza = request.getParameter("Fuerza");
		String Inteligencia = request.getParameter("Inteligencia");
		String Rayos = request.getParameter("Rayos");
		String Volar = request.getParameter("Volar");
		String Teletransporte = request.getParameter("Teletransporte");
		String Rapidez = request.getParameter("Rapidez");
		
		if (Fuerza==null) {
			Fuerza = "";
		}
		if (Inteligencia==null) {
			Inteligencia = "";
		}
		if (Rayos==null) {
			Rayos = "";
		}
		if (Volar==null) {
			Volar = "";
		}
		if (Teletransporte==null) {
			Teletransporte = "";
		}
		if (Rapidez==null) {
			Rapidez = "";
		}
		
		request.setAttribute("nameper", nameper);
		request.setAttribute("namereal", namereal);
		request.setAttribute("buenomalo", buenomalo);
		request.setAttribute("Fuerza", Fuerza);
		request.setAttribute("Inteligencia", Inteligencia);
		request.setAttribute("Rayos", Rayos);
		request.setAttribute("Volar", Volar);
		request.setAttribute("Teletransporte", Teletransporte);
		request.setAttribute("Rapidez", Rapidez);
		
		request.getRequestDispatcher("segunda.jsp").forward(request, response);
	}

}
