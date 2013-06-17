package com.spshop.feed.google.rss;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.Namespace;

import com.spshop.model.Product;

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
            e.addContent(new Element("id", namespace).setText(String.valueOf(product.getId()) + cc));
            e.addContent(new Element("title").setText(product.getTitle()));
            if (StringUtils.isNotBlank(product.getAbstractText())) {
            	e.addContent(new Element("description").setText(product.getAbstractText()));
			} else {
				continue;
			}
            e.addContent(new Element("google_product_category", namespace).setText(category));
            e.addContent(new Element("product_type", namespace).setText(originalCategory));
            e.addContent(new Element("link", namespace).setText(host + "/" + product.getName()));
            e.addContent(new Element("image_link", namespace).setText(imageHost
                                                                      + product.getImages().get(0).getLargerUrl()));
            if (product.getImages().size()>1) {
            	e.addContent(new Element("additional_image_link", namespace).setText(imageHost
            			+ product.getImages().get(1).getLargerUrl()));
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
            e.addContent(new Element("price", namespace).setText(String.valueOf(product.getPrice())+" USD"));
            e.addContent(new Element("sale_price", namespace).setText(String.valueOf(product.getActualPrice())+" USD"));
            
            e.addContent(new Element("sale_price_effective_date", namespace).setText("2013-03-01T13:00-0800/2016-03-11T15:30-0800"));
            
            e.addContent(new Element("brand", namespace).setText("HoneyBuy"));
            e.addContent(new Element("gender", namespace).setText("female"));
            e.addContent(new Element("age_group", namespace).setText("adult"));
            e.addContent(new Element("color", namespace).setText("White,Black,Blue,Red,Purple,Gold,Green,Pink,Champagne,Yellow"));
            e.addContent(new Element("size", namespace).setText("US2,US4,US6,US8,US10,US12,US14,US16"));
            
            e.addContent(new Element("tax", namespace).setContent(new Element("rate", namespace).setText("0")));
            e.addContent(new Element("shipping", namespace).setContent(new Element("country", namespace).setText("US")).setContent(new Element("price", namespace).setText("0 USD")));
            
            channel.addContent(e);
        }
        Document doc = new Document(root);

        return doc;
    }
    
    private static Element createElementByName(String name, String text){
        return new Element(name).setText(text);
    }
}
