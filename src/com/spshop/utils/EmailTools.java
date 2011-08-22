package com.spshop.utils;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;

public class EmailTools {
	public static void send(String emailAddress, String title, String content) {
		SimpleEmail email = new SimpleEmail();
		email.setTLS(true);
		email.setHostName(AllConstants.SMTP);
		email.setAuthentication(AllConstants.MAIL_USER_NAME,
				AllConstants.MAIL_PASSWORD);
		try {
			email.addTo(emailAddress);
			email.setFrom(AllConstants.MAIL_DISPLAY_NAME); // 我方
			email.setSubject(title); // 标题
			email.setCharset(AllConstants.MAIL_CHAR_SET); // 设置Charset
			email.setMsg(content); // 内容
			email.send();

		} catch (EmailException e) {
			e.printStackTrace();
		}
	}
}
