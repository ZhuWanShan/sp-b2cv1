package com.spshop.utils;

import java.io.IOException;
import java.util.Properties;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;

import com.spshop.admin.server.LoginService;

public class EmailTools {
    private final static Properties emailProperties = new Properties();

    static {
        try {
            emailProperties.load(LoginService.class.getResourceAsStream("/emailConfig.properties"));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void sendRegisterEmail(String sendTo) {
        SimpleEmail email = parseRegisterEmail();
        try {
            email.addTo(sendTo);
            email.setCharset(AllConstants.DEFAULT_MAIL_CHARSET);
            email.send();
        } catch (EmailException e) {
            e.printStackTrace();
        }
    }
    
    public static void sendRecoveryEmail(String sendTo){
        SimpleEmail email = parseRecoveryEmail();
        try {
            email.addTo(sendTo);
            email.setCharset(AllConstants.DEFAULT_MAIL_CHARSET);
            email.send();
        } catch (EmailException e) {
            e.printStackTrace();
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
            e.printStackTrace();
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
            e.printStackTrace();
        }

        email.setTLS(true);
        return email;
    }
}
