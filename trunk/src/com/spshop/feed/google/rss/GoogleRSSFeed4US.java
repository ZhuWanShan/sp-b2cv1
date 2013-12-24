package com.spshop.feed.google.rss;

import java.util.List;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.Namespace;

import com.spshop.model.Category;
import com.spshop.model.Product;
import com.spshop.utils.Utils;

public class GoogleRSSFeed4US extends AbstractGoogleRSSFeed {
    private static final Namespace namespace = Namespace.getNamespace("g", "http://base.google.com/ns/1.0");
    
    public static Document buildRSSXMLByProducts(List<Product> products, String cc, String originalCategory, String category, String host, String imageHost, HttpServletRequest request) {
        Element root = new Element("rss", namespace);
        root.setAttribute("version", "2.0");
        
        Element channel = new Element("channel");
        Element title = createElementByName("title", "Honeybuy " + category);
        Element link = createElementByName("link", host + request.getServletPath());
        Element description = createElementByName("description", category + " products for " + cc.toUpperCase());
        channel.addContent(title);
        channel.addContent(link);
        channel.addContent(description);
        root.addContent(channel);

        for (Product product : products) {
            Element e = new Element("item");
            e.setAttribute("id", String.valueOf(product.getId()));
            e.addContent(new Element("id", namespace).setText(String.valueOf(product.getId()) + cc.toLowerCase()));
            e.addContent(new Element("title").setText(product.getTitle()));
            if (StringUtils.isNotBlank(product.getAbstractText())) {
            	e.addContent(new Element("description").setText(product.getAbstractText()));
			} else {
				continue;
			}
            e.addContent(new Element("google_product_category", namespace).setText(category));
            Category c = Utils.getSecondaryLayerCategory(originalCategory);
            e.addContent(new Element("product_type", namespace).setText(c.getDisplayName()));
            e.addContent(new Element("link", namespace).setText(host + "/" + product.getName()));
            String img1 = product.getImages().get(0).getLargerUrl();
            String img2 = product.getImages().get(1).getLargerUrl();
            e.addContent(new Element("image_link", namespace).setText(imageHost + "/feedImg" + getFeedImage(img1)));
            if (product.getImages().size()>1) {
            	e.addContent(new Element("additional_image_link", namespace).setText(imageHost + "/feedImg" + getFeedImage(img2)));
			}
            //
            //‘全新' [new]
            //‘二手' [used]
            //‘翻新' [refurbished]
            e.addContent(new Element("condition", namespace).setText("new"));
            
            /**
             * 
                '有库存' [in stock]
                ‘接受预订' [available for order]
                ‘无库存' [out of stock]
                '预订单' [preorder]
             */
            e.addContent(new Element("availability", namespace).setText("in stock"));
            e.addContent(new Element("price", namespace).setText(String.valueOf(formater.format(product.getPrice()*Double.valueOf(getCurrency(getProperty(cc).toUpperCase()))))+" "+getProperty(cc).toUpperCase()));
            e.addContent(new Element("sale_price", namespace).setText(String.valueOf(formater.format(product.getActualPrice()*Double.valueOf(getCurrency(getProperty(cc).toUpperCase()))))+" "+getProperty(cc).toUpperCase()));
            
            e.addContent(new Element("sale_price_effective_date", namespace).setText("2013-12-24T13:00-0800/2016-03-11T15:30-0800"));
            
            e.addContent(new Element("brand", namespace).setText("HoneyBuy"));
            e.addContent(new Element("gender", namespace).setText("female"));
            e.addContent(new Element("age_group", namespace).setText("adult"));
            Category adGroup = Utils.getCategoryByName(originalCategory);
            e.addContent(new Element("adwords_grouping", namespace).setText(adGroup.getDisplayName()));
            e.addContent(new Element("color", namespace).setText("Black/Blue/Red"));
            e.addContent(new Element("size", namespace).setText("02-04-06-08-10-12-14-16"));
            
            e.addContent(new Element("tax", namespace).setContent(new Element("rate", namespace).setText("0")));
            Element shippingInfo = new Element("shipping", namespace);
            shippingInfo.addContent(new Element("price", namespace).setText("0 " + getProperty(cc).toUpperCase()));
            shippingInfo.addContent(new Element("country", namespace).setText(cc.toUpperCase()));
            e.addContent(shippingInfo);
            
            channel.addContent(e);
        }
        Document doc = new Document(root);

        return doc;
    }
    
    private static Element createElementByName(String name, String text){
        return new Element(name).setText(text);
    }
    
    public static String getFeedImage(String img) {
		String s = img.substring(img.lastIndexOf("."));
		String n = img.substring(img.lastIndexOf("/"), img.lastIndexOf("__")+2);
		n = Pattern.compile("__").matcher(n).replaceFirst(" (");
		n = Pattern.compile("__").matcher(n).replaceFirst(")");
		n = Pattern.compile("_").matcher(n).replaceAll(" ");
		n = n + s;
		return n;
	}
    
    public static void main(String[] args) {
		String img = "/image/2013_Prom_Dresses_In_The_Uk_With_Straps_Handmade_Beading__1__67492455214210_690X500.jpg";
		
		
		System.out.println(getFeedImage(img));
	}
}
