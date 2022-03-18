package controler;

import dal.StoreProductDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.StoreProduct;

/**
 *
 * @author Hoang Quang
 */
public class StoreProductControler extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //chuyền cái gì đó
        StoreProductDBContext storeDBContext = new StoreProductDBContext();
        ArrayList<StoreProduct> listStoreProduct = storeDBContext.getAllStoreProduct();
        request.setAttribute("listStoreProduct", listStoreProduct);
        request.getRequestDispatcher("../view/store.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
