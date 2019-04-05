package servlet;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class segunda_servlet
 */
@WebServlet("/segunda_servlet")
public class segunda_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public segunda_servlet() {
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

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		String nameper = request.getParameter("nameper");
		String message = request.getParameter("message");
		
		Boolean exists = false;
		File tempFile = new File("C:\\Users\\aula1\\Desktop\\"+nameper+".txt");
		exists = tempFile.exists();

		if (exists) {
			PrintWriter out = response.getWriter();
			
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Ese personaje ya existe');");
			out.println("location='segunda.jsp';");
			out.println("</script>");
		}
		else {
			String contenido = nameper+"\r\n"+"\r\n"+message;
			response.setContentType("text/html");
			
			try {
				FileWriter writer = new FileWriter("C:\\Users\\aula1\\Desktop\\"+nameper+".txt");
				writer.write(contenido);
				writer.close();
				request.getRequestDispatcher("index.html").forward(request, response);
			}catch(Exception ex){
				ex.printStackTrace();
			}
		}
		
		
	}

}
