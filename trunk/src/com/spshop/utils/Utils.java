package com.spshop.utils;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.Security;

import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;

import org.apache.log4j.Logger;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

public class Utils {

	private static Logger log = Logger.getLogger(Utils.class);
	private static final String ALGORITHM = "DES";
	private KeyGenerator keyGen;
	private SecretKey desKey;
	private Cipher cip;
	private byte[] cipherByte;
	
	public static Utils OBJ = new Utils();

	private Utils() {
		init("XAdadajkxsfdfskldfhsdfhhhasfasfaasdaqwerqweqwasasdazxczxczxcfvhdfghdf");
	}
	
	public void init(String str) {
		Security.addProvider(new com.sun.crypto.provider.SunJCE());
		try {
			keyGen = KeyGenerator.getInstance(ALGORITHM);
			keyGen.init(new SecureRandom(str.getBytes()));
			desKey = keyGen.generateKey();
			cip = Cipher.getInstance(ALGORITHM);
		} catch (NoSuchAlgorithmException ex) {
			log.error(ex.getMessage());

		} catch (NoSuchPaddingException ex) {
			log.error(ex.getMessage());

		}
	}

	public String getEncryString(String expreStr) {
		byte[] cipByte = null;
		byte[] expreByte = null;
		String cipStr = "";
		BASE64Encoder base64en = new BASE64Encoder();
		try {
			expreByte = expreStr.getBytes("UTF8");
			cipByte = dataEncryptor(expreByte);
			cipStr = base64en.encode(cipByte);
		} catch (UnsupportedEncodingException e) {
			log.error(e.getMessage());
			throw new RuntimeException("des", e);
		} finally {
			cipByte = null;
			expreByte = null;
			base64en = null;
		}
		return cipStr;
	}

	public String getDecry(String cipStr) {
		byte[] cipByte = null;
		byte[] expreByte = null;
		String expreStr = "";
		BASE64Decoder base64De = new BASE64Decoder();
		try {
			cipByte = base64De.decodeBuffer(cipStr);
			expreByte = dataDecryptor(cipByte);
			expreStr = new String(expreByte, "UTF8");
		} catch (IOException e) {
			log.error(e.getMessage());
			throw new RuntimeException("des!", e);
		} finally {
			cipByte = null;
			expreByte = null;
			base64De = null;
		}
		return expreStr;
	}

	public byte[] dataEncryptor(byte[] expreByte) {
		try {
			cip.init(Cipher.ENCRYPT_MODE, desKey);
			cipherByte = cip.doFinal(expreByte);
		} catch (Exception ex) {
			log.error(ex.getMessage());
		}
		return cipherByte;
	}

	public byte[] dataDecryptor(byte[] buff) {
		try {
			cip.init(Cipher.DECRYPT_MODE, desKey);
			cipherByte = cip.doFinal(buff);
		} catch (Exception ex) {
			log.error(ex.getMessage());
		}
		return cipherByte;

	}

}
