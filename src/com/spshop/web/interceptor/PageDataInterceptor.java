package com.spshop.web.interceptor;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.spshop.cache.SCacheFacade;
import com.spshop.model.Category;
import com.spshop.model.TabProduct;
import com.spshop.service.factory.ServiceFactory;
import com.spshop.service.intf.CategoryService;
import com.spshop.utils.Constants;
import com.spshop.web.PageController;
import com.spshop.web.view.PageView;

public class PageDataInterceptor extends HandlerInterceptorAdapter{

    
    private Logger logger = Logger.getLogger(ViewDataInterceptor.class);
    protected Map<String, Float> currencies;
    
    @Override
    public boolean preHandle(HttpServletRequest request,
            HttpServletResponse response, Object handler) throws Exception {
        
        PageView pageView = new PageView();
        
        populateCategoryForCategoryPage(request.getPathInfo().substring(1), pageView);
        populateBreadcrumbForPage(pageView.getCategory(), pageView.getBreadcrumb());
        
        if(pageView.getCategory() == null) {
            Category category = ServiceFactory.getService(CategoryService.class).getCategoryByName(pageView.getCategory().getName());
            pageView.setCategory(category);
        }
        
        TabProduct topSelling = SCacheFacade.getTopSelling(0,false);
        pageView.setTopSellingProducts(topSelling);
        
        if(handler instanceof PageController){
            PageController controller = (PageController) handler;
            //Page View
            controller.setPageView(pageView);
        }
        
        return true;
    }
    
    @Override
    public void postHandle(HttpServletRequest request,
                           HttpServletResponse response,
                           Object handler,
                           ModelAndView modelAndView) throws Exception {
        if (modelAndView != null) {
            if(handler instanceof PageController){
                PageController controller = (PageController) handler;
                modelAndView.addObject(Constants.PAGE_VIEW, controller.getPageView());
            }
        }
    }
    
    /**
     * Find category from list in cache
     * 
     * @param categories
     *            The target list for finding
     * @param catName
     *            The category name
     * @return Searching result
     */
    private Category searchCategory(List<Category> categories, String catName) {
        Category result = null;
        
        for (Category category : categories) {
            if (category.getName().equals(catName)) {
                result = category;
                break;
            } else if (category.getSubCategories().size() != 0){
                result = searchCategory(category.getSubCategories(), catName);
                if (result != null)
                break;
            }
        }
        
        return result;
    }
    
    void populateCategoryForCategoryPage(String categoryName, PageView page) {
        List<Category> categories = SCacheFacade.getTopCategories();
        
        page.setCategory(searchCategory(categories, categoryName));
    }
    
    void populateBreadcrumbForPage(Category category, List<Category> breadcrumb) {
        while (category.getParent() != null) {
            populateBreadcrumbForPage(category.getParent(), breadcrumb);
            break;
        }
        breadcrumb.add(category);
    }
}
