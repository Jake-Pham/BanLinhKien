package KDA.controller.seller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import KDA.model.CategoryModel;
import KDA.service.CategoryService;
import KDA.service.impl.CategoryServiceImpl;

@WebServlet(urlPatterns = { "/seller/category/list" })
public class CategoryListController extends HttpServlet {
	

	private static final long serialVersionUID = 1L;
	CategoryService cateService = new CategoryServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<CategoryModel> cateList = cateService.getAllcategory();
		req.setAttribute("cateList", cateList);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/views/seller/list-category.jsp");
		dispatcher.forward(req, resp);
	}

}
