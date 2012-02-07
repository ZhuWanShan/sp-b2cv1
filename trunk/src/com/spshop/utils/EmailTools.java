package com.spshop.utils;

import java.io.IOException;
import java.util.Map;
import java.util.Properties;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;
import org.apache.log4j.Logger;

public class EmailTools {
    private final static Properties emailProperties = new Properties();
    private static Logger logger = Logger.getLogger(EmailTools.class);
    static {
        try {
            emailProperties.load(EmailTools.class.getResourceAsStream("/emailConfig.properties"));
        } catch (IOException e) {
        	logger.error(e.getMessage(), e);
            //e.printStackTrace();
        }
    }

    public static void sendRegisterEmail(String sendTo) {
        SimpleEmail email = parseRegisterEmail();
        try {
            email.addTo(sendTo);
            email.setCharset(AllConstants.DEFAULT_MAIL_CHARSET);
            email.send();
        } catch (EmailException e) {
            //e.printStackTrace();
        	logger.error(e.getMessage(), e);
        }
    }
    
    public static void sendRecoveryEmail(String sendTo){
        SimpleEmail email = parseRecoveryEmail();
        try {
            email.addTo(sendTo);
            email.setCharset(AllConstants.DEFAULT_MAIL_CHARSET);
            email.send();
        } catch (EmailException e) {
            //e.printStackTrace();
        	logger.error(e.getMessage(), e);
        }
    }

    private static SimpleEmail parseRegisterEmail() {
        SimpleEmail email = new SimpleEmail();
        try {
            if (emailProperties.containsKey(AllConstants.REGISTER_MAIL_HOST_NAME)) {
                email.setHostName(emailProperties.getProperty(AllConstants.REGISTER_MAIL_HOST_NAME));
            } else {
                email.setHostName(AllConstants.DEFAULT_MAIL_HOST_NAME);
            }
            if (emailProperties.containsKey(AllConstants.REGISTER_MAIL_FROM_ACCOUNT)
                && emailProperties.containsKey(AllConstants.REGISTER_MAIL_FROM_PASSWORD)) {
                email.setAuthentication(emailProperties.getProperty(AllConstants.REGISTER_MAIL_FROM_ACCOUNT),
                                        emailProperties.getProperty(AllConstants.REGISTER_MAIL_FROM_PASSWORD));
                email.setFrom(emailProperties.getProperty(AllConstants.REGISTER_MAIL_FROM_ACCOUNT));
            } else {
                email.setAuthentication(AllConstants.DEFAULT_MAIL_FROM_ACCOUNT, AllConstants.DEFAULT_MAIL_FROM_PASSWORD);
            }
            if (emailProperties.containsKey(AllConstants.REGISTER_MAIL_TITLE)) {
                email.setSubject(emailProperties.getProperty(AllConstants.REGISTER_MAIL_TITLE));
            } else {
                email.setSubject(AllConstants.DEFAULT_REGISTER_MAIL_TITLE);
            }
            if (emailProperties.containsKey(AllConstants.REGISTER_MAIL_CONTENT)) {
                email.setMsg(emailProperties.getProperty(AllConstants.REGISTER_MAIL_CONTENT));
            } else {
                email.setMsg(AllConstants.DEFAULT_REGISTER_MAIL_CONTENT);
            }
        } catch (EmailException e) {
        	logger.error(e.getMessage(), e);
           // e.printStackTrace();
        }

        email.setTLS(true);
        return email;
    }
    
    private static SimpleEmail parseRecoveryEmail() {
        SimpleEmail email = new SimpleEmail();
        try {
            if (emailProperties.containsKey(AllConstants.RECOVERY_MAIL_HOST_NAME)) {
                email.setHostName(emailProperties.getProperty(AllConstants.RECOVERY_MAIL_HOST_NAME));
            } else {
                email.setHostName(AllConstants.DEFAULT_MAIL_HOST_NAME);
            }
            if (emailProperties.containsKey(AllConstants.RECOVERY_MAIL_FROM_ACCOUNT)
                && emailProperties.containsKey(AllConstants.RECOVERY_MAIL_FROM_PASSWORD)) {
                email.setAuthentication(emailProperties.getProperty(AllConstants.RECOVERY_MAIL_FROM_ACCOUNT),
                                        emailProperties.getProperty(AllConstants.RECOVERY_MAIL_FROM_PASSWORD));
                email.setFrom(emailProperties.getProperty(AllConstants.RECOVERY_MAIL_FROM_ACCOUNT));
            } else {
                email.setAuthentication(AllConstants.DEFAULT_MAIL_FROM_ACCOUNT, AllConstants.DEFAULT_MAIL_FROM_PASSWORD);
            }
            if (emailProperties.containsKey(AllConstants.RECOVERY_MAIL_TITLE)) {
                email.setSubject(emailProperties.getProperty(AllConstants.RECOVERY_MAIL_TITLE));
            } else {
                email.setSubject(AllConstants.DEFAULT_RECOVERY_MAIL_TITLE);
            }
            if (emailProperties.containsKey(AllConstants.RECOVERY_MAIL_CONTENT)) {
                email.setMsg(emailProperties.getProperty(AllConstants.RECOVERY_MAIL_CONTENT));
            } else {
                email.setMsg(AllConstants.DEFAULT_RECOVERY_MAIL_CONTENT);
            }
        } catch (EmailException e) {
        	logger.error(e.getMessage(), e);
        	// e.printStackTrace();
        }

        email.setTLS(true);
        return email;
    }
    
    /**
     * 
     * @param mailType email type from configuration prop
     * @param subject email subject
     * @param variable variable for freeMarker to format mail content
     */
    public static void sendMail(String mailType, String subject, Map<String,Object> variable){
    	String templateType = "";
    	String mailContent = TempleteParser.parseMailContent(templateType, variable);
    }
}
