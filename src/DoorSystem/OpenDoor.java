package DoorSystem;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class OpenDoor
 */
@WebServlet("/OpenDoor")
public class OpenDoor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OpenDoor() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		if(request.getHeader("User-Agent").indexOf("Mobile") != -1) {
			    //you're in mobile land
			request.setAttribute("device","mobile");
			  } else {
			    //nope, this is probably a desktop
			request.setAttribute("device","desktop");
			  }
	   	boolean authorized=false;
		String ipAddress = request.getHeader("X-FORWARDED-FOR");  
		   if (ipAddress == null) {  
			   ipAddress = request.getRemoteAddr();  
		   } 

		ValidUser valid = new ValidUser() ;
		int user = valid.CheckIP(ipAddress);
		String authoValue="IP not authorized - ";
		request.setAttribute("authorized","no");
		if (user>0)
		{
			authorized=true;
			request.setAttribute("authorized","yes");
		}
		if(authorized)			
		{
			authoValue="IP authorized - ";
		}

			String door=request.getParameter("door");
			request.setAttribute("door",door);
			String doorKey=request.getParameter("doorKey");
	//		String Authorized="";
			authorized=false;
			Cookie[] cookies = request.getCookies();
			if(cookies != null)
			{
				for(Cookie cookie : cookies){
					if(cookie.getName().equals("doorKey")){
						authorized=ValidUser.CheckRight("door",cookie.getValue());
					}
				}
			}
			if(authorized)			
			{
				authoValue=authoValue+" user authorized:";
				request.setAttribute("authorized","yes");
			}
			else
			{
				authoValue=authoValue+" user not authorized";

			}
			request.setAttribute("autho",authoValue);
			if(authorized)			
			{			
				try {
					SendFrame.SendCommand(door,"open","","");
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		request.getRequestDispatcher("/Home.jsp").forward(request,response);
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
