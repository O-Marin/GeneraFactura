import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/segundoServlet")
public class SegundoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		Object nombreCompleto = request.getAttribute("nombreCompleto");
		Object empresa = request.getAttribute("empresa");
		Object direccion = request.getAttribute("direccion");
		Object ciudad = request.getAttribute("ciudad");
		Object pais = request.getAttribute("pais");
		
		Object valvulas = request.getAttribute("valvulas");
		Object turbo = request.getAttribute("turbo");
		Object kitFreno = request.getAttribute("kitFreno");
		Object refrigeracion = request.getAttribute("refrigeracion");
		Object plumillas = request.getAttribute("plumillas");
		
		Integer precioValvulas = 120000;
		Integer precioTurbo = 1700000;
		Integer precioKitFreno = 760000;
		Integer precioRefrigeracion = 2300000;
		Integer precioPlumillas = 10000;
		
		Integer totalValvulas = Integer.valueOf((String) valvulas) * precioValvulas ;
		Integer totalTurbo = Integer.valueOf((String) turbo) * precioTurbo;
		Integer totalKitFreno = Integer.valueOf((String) kitFreno) * precioKitFreno;
		Integer totalRefrigeracion = Integer.valueOf((String) refrigeracion) * precioRefrigeracion;
		Integer totalPlumillas = Integer.valueOf((String) plumillas) * precioPlumillas;
		
		request.setAttribute("nombreCompleto", nombreCompleto);
		request.setAttribute("empresa", empresa);
		request.setAttribute("direccion", direccion);
		request.setAttribute("ciudad", ciudad);
		request.setAttribute("pais", pais);
		
		request.setAttribute("valvulas", valvulas);
		request.setAttribute("turbo", turbo);
		request.setAttribute("kitFreno", kitFreno);
		request.setAttribute("refrigeracion", refrigeracion);
		request.setAttribute("plumillas", plumillas);
			
		request.setAttribute("totalValvulas", totalValvulas);
		request.setAttribute("totalTurbo", totalTurbo);
		request.setAttribute("totalKitFreno", totalKitFreno);
		request.setAttribute("totalRefrigeracion", totalRefrigeracion);
		request.setAttribute("totalPlumillas", totalPlumillas);
		
		Integer totalDeTotales = totalValvulas + totalTurbo + totalKitFreno + totalRefrigeracion + totalPlumillas;
		request.setAttribute("totalDeTotales", totalDeTotales);
		
		
		request.getServletContext().getRequestDispatcher("/EntregaFactura.jsp").forward(request, response);
		
		
		
		
		return;
	}	
}
