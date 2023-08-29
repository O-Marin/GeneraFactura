import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/procesaLogin")
public class ProcesaLogin extends HttpServlet{
	//los siguientes attributos corresponden al usuario y contrasenia guardados.
	private final String usuario = "UsuarioRegistrado";
	private final String password = "admin";
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException {
		String requestLogin= "";
		String requestPass= "";
		
		
		requestLogin = request.getParameter("login");
		requestPass = request.getParameter("pass");
		PrintWriter out = response.getWriter();
		
		//validacion usuario contrasenia, si el input del usuario hace match con el usuario que esta guardado se crea sesion
		if (!usuario.contentEquals(requestLogin) || !password.contentEquals(requestPass)){
			out.println("<script type=\"text/javaScript\">");
			out.println("alert('Usuario o Password incorrecto');");
			out.println("location='index.jsp';");
			out.println("</script>");
		}else {
			
			HttpSession usuarioSesion = request.getSession(true);
			usuarioSesion.setAttribute("Nombre", requestLogin);
			RequestDispatcher rd = request.getRequestDispatcher("ingresoValores.jsp");
			rd.forward(request, response);
		}
		
	}
	
	

}
