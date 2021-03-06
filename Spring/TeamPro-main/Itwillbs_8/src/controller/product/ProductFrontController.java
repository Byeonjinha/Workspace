package controller.product;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.product.ControlProductListAction;
import action.product.OptionDeleteAction;
import action.product.ProdGetCountAction;
import action.product.ProductCartLikeAction;
import action.product.ProductDeleteAction;
import action.product.ProductDetailAction;
import action.product.ProductLikeAction;
import action.product.ProductMylikeListAction;
import action.product.ProductSearchAction;
import action.product.ProductSelectAction;
import action.product.ProductUnLikeAction;
import action.product.ProductUploadProAction;
import action.product.qna.ProdQnaDeleteAction;
import action.product.qna.ProdQnaModifyFormAction;
import action.product.qna.ProdQnaModifyProAction;
import action.product.qna.ProdQnaReplyFormAction;
import action.product.qna.ProdQnaReplyProAction;
import action.product.qna.ProdQnaUpReadcountAction;
import action.product.qna.ProdQnaWriteFormAction;
import action.product.qna.ProdQnaWriteProAction;
import action.product.qna.ProductMyqnaListAction;
import action.product.review.ProdReviewDeleteAction;
import action.product.review.ProdReviewListAction;
import action.product.review.ProdReviewModifyAction;
import action.product.review.ProdReviewRecAction;
import action.product.review.ProdReviewRecCountAction;
import action.product.review.ProdReviewReplyAction;
import action.product.review.ProdReviewStarAction;
import action.product.review.ProdReviewWriteAction;
import action.product.review.ProductMyreviewListAction;
import vo.ActionForward;

@WebServlet("*.po")
public class ProductFrontController extends HttpServlet {

	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		ActionForward forward = null;
		Action action = null;
		String command = request.getServletPath();

		if (command.equals("/ProductShop.po")) {
			action = new ProductSelectAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {

				e.printStackTrace();
			}
		} else if (command.equals("/ProductDetail.po")) {
			action = new ProductDetailAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if (command.equals("/ProductCartLike.po")) {
			
			action = new ProductCartLikeAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if (command.equals("/ProductLike.po")) {
			action = new ProductLikeAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/ProductUnLike.po")) {
			action = new ProductUnLikeAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/ProductSearch.po")) {
			action = new ProductSearchAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// ?????? ?????????
		else if (command.equals("/ProductUpload.po")) {
			forward = new ActionForward();
			forward.setPath("/product/product_upload.jsp");
		} else if (command.equals("/ProductUploadPro.po")) {
//			forward = new ActionForward();
			action = new ProductUploadProAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// -------------?????? ?????? ????????? ??????----------------
		else if (command.equals("/ControlProductList.po")) {
			forward = new ActionForward();

			action = new ControlProductListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// -------------?????? ??????----------------
		else if (command.equals("/ProductDelete.po")) {
			forward = new ActionForward();

			action = new ProductDeleteAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// -------------?????? ??????----------------
		else if (command.equals("/OptionDelete.po")) {
			forward = new ActionForward();

			action = new OptionDeleteAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// --------------------?????? ?????? ??????--------------------
		else if (command.equals("/ProdReviewWrite.po")) {
			System.out.println("ProdReviewWrite.po ?????????");
			action = new ProdReviewWriteAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// --------------------?????? ?????? ??????--------------------
		else if (command.equals("/ProdReviewList.po")) {
			System.out.println("ProdReviewList.po ?????????");
			action = new ProdReviewListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// --------------------?????? ?????? ??????--------------------
		else if (command.equals("/ProdReviewDelete.po")) {
			System.out.println("ProdReviewDelete.po ?????????");
			action = new ProdReviewDeleteAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// --------------------?????? ?????? ??????--------------------
		else if (command.equals("/ProdReviewModify.po")) {
			System.out.println("ProdReviewModify.po ?????????");
			action = new ProdReviewModifyAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// --------------------?????? ?????? ??????--------------------
		else if(command.equals("/ProdReviewRec.po")) {
			System.out.println("ProdReviewRec.po ?????????");
			action = new ProdReviewRecAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// --------------------?????? ?????? ?????? ??? ??????--------------------
		else if(command.equals("/ProdReviewRecCount.po")) {
			System.out.println("ProdReviewRecCount.po ?????????");
			action = new ProdReviewRecCountAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// --------------------?????? ?????? ??????--------------------
		else if(command.equals("/ProdReviewReply.po")) {
			System.out.println("ProdReviewReply.po ?????????");
			action = new ProdReviewReplyAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// --------------------?????? ?????? ?????? ?????????--------------------
		else if(command.equals("/ProdReviewStar.po")) {
			System.out.println("ProdReviewStar.po ?????????");
			action = new ProdReviewStarAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// --------------------?????? qna ??????--------------------
		else if (command.equals("/ProdQnaWriteForm.po")) {
			System.out.println("ProdQnaWriteForm.po ?????????");
			action = new ProdQnaWriteFormAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/ProdQnaWritePro.po")) {
			System.out.println("ProdQnaWritePro.po");
			action = new ProdQnaWriteProAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// --------------------?????? qna ?????? ???--------------------
		else if (command.equals("/ProdQnaDeleteForm.po")) {
			System.out.println("ProdQnaDeleteForm.po ?????????");
			forward = new ActionForward();
			forward.setPath("product/qnaDelete.jsp");
		}
		// --------------------?????? qna ??????--------------------
		else if (command.equals("/ProdQnaDelete.po")) {
			System.out.println("ProdQnaDelete.po ?????????");
			action = new ProdQnaDeleteAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// --------------------?????? qna ??????--------------------
		else if (command.equals("/ProdQnaModifyForm.po")) {
			System.out.println("ProdQnaModifyForm.po ?????????");
			action = new ProdQnaModifyFormAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/ProdQnaModifyPro.po")) {
			System.out.println("ProdQnaModifyPro.po ?????????");
			action = new ProdQnaModifyProAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// --------------------?????? qna ??????--------------------
		else if (command.equals("/ProdQnaReplyForm.po")) {
			System.out.println("ProdQnaReplyForm.po ?????????");
			action = new ProdQnaReplyFormAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/ProdQnaReplyPro.po")) {
			System.out.println("ProdQnaReplyPro.po ?????????");
			action = new ProdQnaReplyProAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// --------------------?????? qna ????????? ???????????? ????????????--------------------
		else if (command.equals("/ProdQnaUpReadcount.po")) {
			System.out.println("ProdQnaUpReadcount.po ?????????");
			action = new ProdQnaUpReadcountAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} 
		// --------------------?????? reveiw, qna ?????? ????????????--------------------
		else if (command.equals("/ProdGetCount.po")) {
			System.out.println("ProdGetCount.po ?????????");
			action = new ProdGetCountAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} 
		// -------------------??????????????? > ?????? ?????? ?????? ??????-------------
		else if (command.equals("/ProductMylikeList.po")) {
			System.out.println("ProductMylikeList.po ?????????");
			action = new ProductMylikeListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// -------------------??????????????? > ??? ?????? ?????? ??????-------------
		else if (command.equals("/ProductMyreviewList.po")) {
			System.out.println("ProductMyreviewList.po ?????????");
			action = new ProductMyreviewListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// -------------------??????????????? > ??? ?????? qna ??????-------------
		else if (command.equals("/ProductMyqnaList.po")) {
			System.out.println("ProductMyqnaList.po ?????????");
			action = new ProductMyqnaListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		// ------------??????????????? ????????? ????????? ??????----------------
		if (forward != null) {
			// 2.ActionForward ?????? ?????? ????????? ????????? ?????? ????????? ????????? ??????
			// =>Redirect ??????: isRedirect() == true,
//			    Dispatcher ??????: isRedirec() == false.
			if (forward.isRedirect()) {// Redirect ????????? ??????
				// 3.Redirect ????????? ??????
				// response ????????? sendRedirect() ???????????? ???????????? ?????????
				// =>????????????: ????????? ??? URL
				response.sendRedirect(forward.getPath());

			} else {// Dispatcher ????????? ??????
					// 1.request ????????? getRequestDispatcher() ???????????? ????????????
					// RequestDispatcher ????????? ????????????
					// =>???????????? : ????????? ??? URL
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				// 2.RequestDispatcher ????????? forward() ???????????? ????????????
				// ????????? ??????(????????????: request, response ??????)
				dispatcher.forward(request, response);
			}
		}
		// ------------??????????????? ????????? ????????? ??????----------------
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}

}
