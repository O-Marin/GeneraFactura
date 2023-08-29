import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;



@WebServlet("/primerServlet")
public class PrimerServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;

	
	
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		// Postprocess request: gather and validate submitted data and display the result in the same JSP.
		
		
		//Variables que albergaran los datos del cliente
		String requestNombre="";
		String requestEmpresa="";
		String requestDireccion="";
		String requestCiudad="";
		String requestPais="";
		
		//Variables que almacenaran las cantidades de los objetos
		String cantidadValvulas="";
		String cantidadTurbo="";
		String cantidadKitFreno="";
		String cantidadRefrigeracion="";
		String cantidadPlumillas="";
		
		
		//Datos del cliente
		requestNombre = request.getParameter("nombre");
		requestEmpresa = request.getParameter("empresa");
		requestDireccion = request.getParameter("direccion");
		requestCiudad = request.getParameter("ciudad");
		requestPais = request.getParameter("pais");
		
		//seteando attributos del cliente para enviarlos a los servlet
		request.setAttribute("nombreCompleto", requestNombre);
		request.setAttribute("empresa", requestEmpresa);
		request.setAttribute("direccion", requestDireccion);
		request.setAttribute("ciudad", requestCiudad);
		request.setAttribute("pais", requestPais);
		
		//capturando cantidades desde el archivo .jsp
		
		cantidadValvulas = request.getParameter("valvulas");
		cantidadTurbo = request.getParameter("turbo");
		cantidadKitFreno = request.getParameter("kitFreno");
		cantidadRefrigeracion = request.getParameter("refrigeracion");
		cantidadPlumillas = request.getParameter("plumillas");
		
		//seteando attributos de las cantidades
		request.setAttribute("valvulas", cantidadValvulas);
		request.setAttribute("turbo", cantidadTurbo);
		request.setAttribute("kitFreno", cantidadKitFreno);
		request.setAttribute("refrigeracion", cantidadRefrigeracion);
		request.setAttribute("plumillas", cantidadPlumillas);
		
		RequestDispatcher rd = request.getRequestDispatcher("/segundoServlet");
		rd.forward(request, response);
		
	}	
	
	
}
