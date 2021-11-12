package action.address;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.Action;
import svc.address.AddrService;
import vo.ActionForward;
import vo.AddrBean;

public class AddrAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("AddrAction!");
		ActionForward forward = new ActionForward();
		
		HttpSession session = request.getSession();
		String member_id = (String)session.getAttribute("member_id");
		
		if(member_id == null) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('로그인이 필요합니다.')");
			out.println("</script>");
			
			forward.setPath("MemberLoginForm.mo");
		} else {
			AddrService addrService = new AddrService();
			
			ArrayList<AddrBean> addrList = new ArrayList<AddrBean>();
			
			addrList = addrService.getAddrList(member_id);
			
			request.setAttribute("addrList", addrList);
			
			forward.setPath("/member/addr.jsp");
			
		}
		return forward;
	}
	

}
