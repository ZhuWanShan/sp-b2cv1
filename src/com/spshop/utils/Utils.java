package com.spshop.utils;

import static com.spshop.utils.Constants.ENCRYPTION_TYPE;

import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

import org.apache.log4j.Logger;



public class Utils {

		private static Logger logger = Logger.getLogger(Utils.class);
		private static SecretKeySpec skeySpec = null;

	    static {
	        // Get the KeyGenerator
	        KeyGenerator kgen = null;
	        try {
	            kgen = KeyGenerator.getInstance(ENCRYPTION_TYPE);
	        } catch (NoSuchAlgorithmException e) {
	            logger.error("No suck Algorithm Exception", e);
	        }
	        kgen.init(128); // 192 and 256 bits may not be available

	        // Generate the secret key specs.
	        SecretKey skey = kgen.generateKey();
	        byte[] raw = skey.getEncoded();

	        skeySpec = new SecretKeySpec(raw, ENCRYPTION_TYPE);

	    }
	
	    public static String encrypt(String originalString) {
	        if (null == originalString) {
	            logger.debug("originalString is null, return...");
	            return null;
	        }

	        // convert String to byte[]
	        byte[] byteString = originalString.getBytes();

	        // Instantiate the cipher
	        Cipher cipher = null;
	        try {
	            cipher = Cipher.getInstance(ENCRYPTION_TYPE);
	        } catch (NoSuchAlgorithmException e) {
	            // exception caught, return original string
	            logger.error(e.toString());
	            return originalString;
	        } catch (NoSuchPaddingException e) {
	            // exception caught, return original string
	            logger.error(e.toString());
	            return originalString;
	        }
	        try {
	            cipher.init(Cipher.ENCRYPT_MODE, skeySpec);
	        } catch (InvalidKeyException e) {
	            // exception caught, return original string
	            logger.error(e.toString());
	            return originalString;
	        }

	        byte[] encrypted = null;
	        try {
	            encrypted = cipher.doFinal(byteString);
	        } catch (IllegalBlockSizeException e) {
	            // exception caught, return original string
	            logger.error(e.toString());
	            return originalString;
	        } catch (BadPaddingException e) {
	            // exception caught, return original string
	            logger.error(e.toString());
	            return originalString;
	        }
	        String encryptedString = parseByteToHexString(encrypted);

	        return encryptedString;
	    }

	    /**
	     * This method decrypts the given string by designated algorithm and global secret key.
	     * 
	     * @param encryptedString
	     *            String
	     * @return originalString String
	     */
	    public static String decrypt(String encryptedString) {
	        if (null == encryptedString) {
	            logger.error("encryptedString is null, return...");
	            return null;
	        }

	        // convert String to byte[]
	        byte[] byteString = parseHexStringToByte(encryptedString);

	        Cipher cipher = null;
	        try {
	            cipher = Cipher.getInstance(ENCRYPTION_TYPE);
	        } catch (NoSuchAlgorithmException e) {
	            // exception caught, return encrypted string
	            logger.error(e.toString());
	            return encryptedString;
	        } catch (NoSuchPaddingException e) {
	            // exception caught, return encrypted string
	            logger.error(e.toString());
	            return encryptedString;
	        }

	        try {
	            cipher.init(Cipher.DECRYPT_MODE, skeySpec);
	        } catch (InvalidKeyException e) {
	            // exception caught, return encrypted string
	            logger.error(e.toString());
	            return encryptedString;
	        }

	        byte[] original = null;
	        try {
	            original = cipher.doFinal(byteString);
	        } catch (IllegalBlockSizeException e) {
	            // exception caught, return encrypted string
	            logger.error(e.toString());
	            return encryptedString;
	        } catch (BadPaddingException e) {
	            // exception caught, return encrypted string
	            logger.error(e.toString());
	            return encryptedString;
	        }
	        String originalString = new String(original);

	        return originalString;
	    }
	    
	    /**
	     * Convert byte to Hex
	     * 
	     * @param buf
	     * @return hexString String
	     */
	    private static String parseByteToHexString(byte buf[]) {
	        StringBuffer sb = new StringBuffer();
	        for (int i = 0; i < buf.length; i++) {
	            String hex = Integer.toHexString(buf[i] & 0xFF);
	            if (hex.length() == 1) {
	                hex = '0' + hex;
	            }
	            sb.append(hex.toUpperCase());
	        }

	        String hexString = sb.toString();
	        return hexString;
	    }

	    /**
	     * Convert Hex to byte
	     * 
	     * @param hexString
	     * @return
	     */
	    private static byte[] parseHexStringToByte(String hexString) {
	        if (hexString.length() < 1) {
	            return null;
	        }
	        byte[] result = new byte[hexString.length() / 2];
	        for (int i = 0; i < hexString.length() / 2; i++) {
	            int high = Integer.parseInt(hexString.substring(i * 2, i * 2 + 1), 16);
	            int low = Integer.parseInt(hexString.substring(i * 2 + 1, i * 2 + 2), 16);
	            result[i] = (byte)(high * 16 + low);
	        }
	        return result;
	    }
}
