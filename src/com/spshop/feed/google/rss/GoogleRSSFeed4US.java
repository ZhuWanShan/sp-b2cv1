package com.spshop.feed.google.rss;

import java.util.List;
import java.util.Map;
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
    
    public static Document buildRSSXMLByProducts(boolean include2Image, boolean feedImage, List<Product> products, String cc, String originalCategory, String category, String host, String imageHost, HttpServletRequest request, Map<String, String> properties) {
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
            if (feedImage) {
            	e.addContent(new Element("image_link", namespace).setText(getFeedImage(imageHost, img1)));
			} else {
				e.addContent(new Element("image_link", namespace).setText(imageHost+img1));
			}
            if (product.getImages().size()>1&&include2Image) {
            	String img2 = product.getImages().get(1).getLargerUrl();
            	if (feedImage) {
                	e.addContent(new Element("additional_image_link", namespace).setText(getFeedImage(imageHost, img2)));
    			} else {
    				e.addContent(new Element("additional_image_link", namespace).setText(imageHost+img2));
    			}
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
            e.addContent(new Element("gender", namespace).setText(properties.get("gender")!=null?properties.get("gender"):"female"));
            e.addContent(new Element("age_group", namespace).setText(properties.get("ageGroup")!=null?properties.get("ageGroup"):"adult"));
            Category adGroup = Utils.getCategoryByName(originalCategory);
            e.addContent(new Element("adwords_grouping", namespace).setText(adGroup.getDisplayName()));
            e.addContent(new Element("color", namespace).setText(properties.get("colorType")!=null?AbstractGoogleRSSFeed.getProperty(properties.get("colorType")):"Black/Blue/Red"));
            e.addContent(new Element("size", namespace).setText(properties.get("sizeType")!=null?AbstractGoogleRSSFeed.getProperty(properties.get("sizeType")):"02-04-06-08-10-12-14-16"));
            
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
    
    public static String getFeedImage(String host, String img) {
    	String regx = "^\\/image/[a-zA-Z0-9]+[\\_a-zA-Z0-9]+\\_{2}[0-9]+\\_{2}[\\_a-zA-Z0-9]+\\.[a-zA-Z0-9]+";
    	if (img!= null && img.matches(regx)) {
    		String s = img.substring(img.lastIndexOf("."));
    		String n = img.substring(img.lastIndexOf("/"), img.lastIndexOf("__")+2);
    		n = Pattern.compile("__").matcher(n).replaceFirst(" (");
    		n = Pattern.compile("__").matcher(n).replaceFirst(")");
    		n = Pattern.compile("_").matcher(n).replaceAll(" ");
    		n = n + s;
    		return host + "/feedImg"+ n;
		} else {
			return host + img;
		}
	}
    
    public static void main(String[] args) {
		String img = "/image/12332674695_Cool_Style_One_Shoulder_A_Line_Wedding_Dresses__1__5861063196976148_690X500.jpg";
		String r = "^\\/image/[a-zA-Z0-9]+[\\_a-zA-Z0-9]+\\_{2}[0-9]+\\_{2}[\\_a-zA-Z0-9]+\\.[a-zA-Z0-9]+";
		img.matches(r);
		
		String s = getFeedImage("www.honeybuy.com", img);
		System.out.println(s);
	}
}
