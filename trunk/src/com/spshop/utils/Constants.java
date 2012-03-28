package com.spshop.utils;

import java.io.Serializable;


/**
 * author Delgado
 */
public class Constants {

	public static String JMAGICK_SYSTEM_PROPERTY = "jmagick.systemclassloader";
	public static String NO = "no";
	
	public static String ADMIN_LOGIN_INFO = "ADMIN_LOGIN_INFO";
	
	public static String HTTP_PROTOCOL = "http://";
	
	public static String SUCCESS_VALUE = "Success";
	public static String fAILURE_VALUE = "Failure";
	public static String SPECIAL_CATEGORY_VALUE = "Special";
	
	public static String URL_SEPERATOR = "/";
	public static String DOT = ".";
	public static String GREATER = "&gt;";
	public static String CATEGORY_URL = "c";
	public static String PRODUCT_URL = "product";
	public static String HOME_URL = "home";
	public static String KEYWORDS_URL = "keywords";
	public static String EMPTY_STR = "";
	
	//URL Parameters' name and Attributes' name
	public static String CATEGORY_ID = "categoryId";
	public static String START_INDEX = "startIndex";
	public static String PAGE_SIZE = "pageSize";
	public static String END_INDEX = "endIndex";
	public static String PAGE_NUM = "pageNum";
	public static String PROD_IN_CATEGORY_PAGE = "productsInCategoryPage";
	public static String PROD_COUNT = "productsCount";
	public static String ACTION = "action";
	public static String LOGIN_ACTION = "login";
	public static String LOGOUT_ACTION = "logout";
	public static String USER_INFO = "userInfo";
	public static String SUBSCRIBE_EMAL = "subscribeEmail";
	public static String PAGE_INDEX = "pageIndex";
	
	public static String CATEGORY_CACHE = "catetoryCache";
	public static String ORDER_CACHE = "orderCache";
	
	public static final String LOGIN_FAILURE = "username or password not correct, please check";
	
	public static final long DEFAULT_SITE_ID = 1L;
	public static final Serializable DEFAULT_SITE_CACHE = "DEFAULT_SITE_CACHE";
	public static final Serializable DEFAULT_TOPSELLING_CACHE = "DEFAULT_TOPSELLING_CACHE";
	public static final Serializable DEFAULT_TABSELLING_CACHE = "DEFAULT_TABSELLING_CACHE";
	
	//Email
	public static final String REGISTER_MAIL_HOST_NAME = "register.email.host.name";
	public static final String REGISTER_MAIL_FROM_ACCOUNT = "register.email.from.account";
	public static final String REGISTER_MAIL_FROM_PASSWORD = "register.email.from.password";
	public static final String REGISTER_MAIL_TITLE = "register.email.title";
	public static final String REGISTER_MAIL_CONTENT = "register.email.content";
	
	public static final String RECOVERY_MAIL_HOST_NAME = "recovery.email.host.name";
	public static final String RECOVERY_MAIL_FROM_ACCOUNT = "recovery.email.from.account";
	public static final String RECOVERY_MAIL_FROM_PASSWORD = "recovery.email.from.password";
	public static final String RECOVERY_MAIL_TITLE = "recovery.email.title";
	public static final String RECOVERY_MAIL_CONTENT = "recovery.email.content";
	
	public static final String DEFAULT_REGISTER_MAIL_TITLE = "Your account, in Honey-Buy, is created!";
	public static final String DEFAULT_REGISTER_MAIL_CONTENT = "Congratulations! You r the registered user of Honey-Buy!";
	public static final String DEFAULT_RECOVERY_MAIL_TITLE = "Your account, in Honey-Buy, is recoveried!";
	public static final String DEFAULT_RECOVERY_MAIL_CONTENT = "Congratulations! Your password is ...";
	
	public static final String DEFAULT_MAIL_CHARSET = "UTF-8";
    public static final String DEFAULT_MAIL_HOST_NAME = "smtpout.secureserver.net";
    public static final String DEFAULT_MAIL_FROM_ACCOUNT = "no-reply@honeybuy.com";
    public static final String DEFAULT_MAIL_FROM_PASSWORD = "20091125!@#A";
    
    public static final String MAIL_HOST_NAME = ".host.name";
    public static final String MAIL_FROM_ACCOUNT = ".from.account";
    public static final String MAIL_FROM_PASSWORD = ".from.password";
    public static final String MAIL_FROM_NAME = "HoneyBuy";
    
    //Gender
    public static final String GENDER_MALE = "male";
    public static final String GENDER_FEMALE = "female";
    public static final String GENDER_OTHERS = "unknown";
    
    public static final String REQUEST_ERROR = "requestErrors";
    public static final String REQUEST_MSG = "requestMsg";
    public static final String DEFAULT_ORDER = "defaultOrder";
    
    public static final String SITE_VIEW = "siteView";
    public static final String USER_VIEW = "userView";
    
    public static final String LOGIN_LANDING_PAGE_PARAM = "landing_page";
    
    public static final String USER_ID_PARAM = "user_id";
    
    public static final String USER_PWD_PARAM = "user_pwd";
    
    public static final String REMEMBER_ID = "rememberID";
    
    public static final String ENCRYPTION_TYPE = "PBEWithMD5AndDES";
    
    public static final String COOKIE_ACCOUNT = "cooikeAccount";
    
    public static final String LOGIN_USER_NAME = "LoginEmail";
    
    public static final String LOGIN_PWD = "LoginPwd";
    
    public static final String REG_USER_NAME = "RegEmail";
    
    public static final String REG_PWD = "RegPwd";
    
    public static final String REG_PWD_RE = "RegPwdRe";
    
   public static final String REG_USER_NAME_ERR = "RegEmailErr";
    
    public static final String REG_PWD_ERR = "RegPwdErr";
    
    public static final String REG_PWD_RE_ERR = "RegPwdReErr";
    
    public static final String TRUE = "true";
    
    public static final String LOGIN_PAGE = "/uc/login";
    
    public static final String REG_PAGE = "/uc/createAccount";
    
    public static final String USER_NAME_PWD_SPLIT = "vvvvvxxxooovvvvvvv";
    
    public static final String USER_ACCOUNT_ERROR = "userAccountErr";
    
    public static final String RECOVER_SUCCESS = "recoverSuccess";
    
    public static final String REG_USER_NAME_SUC ="accountSuc";
    
    public static final String ACCEPT_LICENSE = "acceptLicense";
    
    public static final String ACCEPT_LICENSE_ERR = "acceptLicenseErr";
    
    public static final String REG_USER = "regUser";
    
    public static final String C_USER_FIRST_NAME = "c_user_first_name";
    
    public static final String C_USER_LAST_NAME = "c_user_last_name";
    
    public static final String FIRST_NAME_ERR = "firstNameErr";
    
    public static final String LAST_NAME_ERR = "lastNameErr";
    
    public static final String UPDATE_ACC_SUC = "updateAccountSuc";
    
    public static final String ADD_TYPE = "addType";
    
    public static final String ADD_TYPE_P = "primary";
    
    public static final String ADD_TYPE_B = "billing";
    
    public static final String USERNAME_ERR = "usernameErr";
    public static final String ADDRESS1_ERR = "address1Err";
    public static final String ADDRESS2_ERR = "address2Err";
    public static final String CITY_ERR = "cityErr";
    public static final String STATE_PROVINCE_ERR = "stateProvinceErr";
    public static final String COUNTRY_ERR = "countryErr";
    public static final String POSTAL_CODE_ERR = "postalCodeErr";
    public static final String TEL_NUM_ERR = "telNumErr";
    
    public static final String USERNAME = "username";
    public static final String ADDRESS1 = "address1";
    public static final String ADDRESS2 = "address2";
    public static final String CITY = "city";
    public static final String STATE_PROVINCE = "stateProvince";
    public static final String COUNTRY = "country";
    public static final String POASTAL_CODE = "postalCode";
    public static final String TEL_NUM = "telNum";
    
    
    public static final String UPDATE_ADDRESS_1_SUC = "updateAddress1SUC";
    public static final String UPDATE_ADDRESS_2_SUC = "updateAddress2SUC";
    
    
    public static final String PRIMARY_ADDRESS = "primaryAddress";
    public static final String BILLING_ADDRESS = "billingAddress";
    
    public static final String WRONG_PWD = "wrongPWD"; 
    
    public static final String TXT_PWD = "txtPwd"; 
    
    public static final String TXT_NEW_PWD1 = "txtNewPwd1"; 
    
    public static final String TXT_NEW_PWD2 = "txtNewPwd2"; 
    
    public static final String SHOPPINGCART = "shoppingcart";
    
    public static final String SPLITER_AT = "@";
    
    public static final String COLOR_PARAM_PRE = "color";
    public static final String QTY_PARAM = "qty";
    public static final String TEXT_PARAM_PRE = "text";
    public static final String TEXTS_PARAM_PRE = "texts";
    public static final String PRODUCT_ID_PARAM = "ProductId";
}
