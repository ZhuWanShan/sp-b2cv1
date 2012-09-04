package com.spshop.web;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spshop.cache.SCacheFacade;
import com.spshop.model.Category;
import com.spshop.model.Product;
import com.spshop.service.factory.ServiceFactory;
import com.spshop.service.intf.ProductService;
import com.spshop.utils.Constants;
import com.spshop.utils.Utils;
import com.spshop.web.view.PageView;

@Controller
public class PageController extends BaseController {
    
    private PageView pageView;
    
    private static final String MARKET_ONLY_UI = "market";
    private static final String CATEGORIES_UI = "categories";

    
    
    @RequestMapping(value="/{categoryName}")
    public String categoryMapping(Model model, HttpServletRequest request, @PathVariable String categoryName){
        String current = request.getParameter(Constants.PAGE_NUM);
        
        Integer pageSize = 36;
        Integer pageNum = 1;
        
        if (current != null && !"".equals(current)) {
            pageNum = Integer.valueOf(current);
        }
        
        if (getPageView().getCategory().isDisplayMarketOnly()) {
            return MARKET_ONLY_UI;
        }
        
        if (getPageView().getCategory().getSubCategories().size() == 0) {
            populateProductsByCategory(getPageView(), pageSize * (pageNum - 1) + 1, pageSize, pageNum, request);
        } else {
            populateContentByCategory(getPageView(), request);
        }
        
        return CATEGORIES_UI;
    }
    
    private void populateProductsByCategory(PageView page, int startIndex, int pageSize, int pageNum, HttpServletRequest request) {
        List<Product> products = searchProductsByCategory(page.getCategory(), startIndex - 1, startIndex + pageSize - 1);
        List<Float> imageSize = Utils.figureOutProductsSize(products);
        page.addPageProperty(Constants.PROD_IN_CATEGORY_PAGE, products);
        page.addPageProperty(Constants.IMAGE_SIZE_INFO_KEY, imageSize);
        
        if(page.getPageProperties().get(Constants.PROD_IN_CATEGORY_PAGE) != null){
            List<Product> tempProds = (ArrayList<Product>) page.getPageProperties().get(Constants.PROD_IN_CATEGORY_PAGE);
            Long count = ServiceFactory.getService(ProductService.class).queryCountByCategory(page.getCategory());
            List<Integer> pageIndexes = new ArrayList<Integer>();
            for (int i = 1; i <= (count-1)/pageSize+1; i++) {
                pageIndexes.add(i);
            }
            
            request.setAttribute(Constants.PAGE_INDEX, pageIndexes);
            request.setAttribute(Constants.PROD_COUNT, count);
            request.setAttribute(Constants.START_INDEX, pageSize * (pageNum - 1) + 1);
            request.setAttribute(Constants.END_INDEX, pageSize * (pageNum - 1) + tempProds.size());
            request.setAttribute(Constants.PAGE_NUM, pageNum);
        }
    }
    
    private List<Product> searchProductsByCategory(Category category, int start, int end){
        List<Product> products = new ArrayList<Product>();
        List<String> productNames = SCacheFacade.getCategoryProductNames(category, start, end);
        for (String name : productNames) {
            products.add(SCacheFacade.getProduct(name));
        }
        return products;
    }
    
    private void populateContentByCategory(PageView page, HttpServletRequest request) {
        List<Category> categories4Search = new ArrayList<Category>(page.getCategory().getSubCategories());
        Map<String, List<Product>> content = new LinkedHashMap<String, List<Product>>();
        Map<String, Category> categoryData = new LinkedHashMap<String, Category>();
        Map<String, List<Float>> categoryImageSizeInfo = new LinkedHashMap<String, List<Float>>();
        List<Product> restProducts = new ArrayList<Product>();
        List<Product> tempProducts = null;
        
        for (Category category : categories4Search) {
            tempProducts = searchProductsByCategory(category, 0, 6);
            content.put(category.getName().toString(), tempProducts);
            categoryData.put(category.getName().toString(), category);
            categoryImageSizeInfo.put(category.getName().toString(), Utils.figureOutProductsSize(tempProducts));
        }
        if (content.size() < 6) {
            restProducts = searchProductsByCategory(page.getCategory(), 0, (6-content.size()) * 6 - 1);
            categoryImageSizeInfo.put(Constants.ADDITIONAL_PRODUCTS_IMAGE_SIZE_INFO, Utils.figureOutProductsSize(restProducts));
            page.addPageProperty(Constants.ADDITIONAL_PRODUCTS_KEY, restProducts);
        }
        page.addPageProperty(Constants.SUB_CATEGORY_PRODUCTS_KEY, content);
        page.addPageProperty(Constants.CATEGORY_DATA_KEY, categoryData);
        page.addPageProperty(Constants.CATEGORY_IMAGE_SIZE_INFO_KEY, categoryImageSizeInfo);
    }
    
   
    
    public void setPageView(PageView pageView) {
        this.pageView = pageView;
    }

    public PageView getPageView() {
        return pageView;
    }
}
