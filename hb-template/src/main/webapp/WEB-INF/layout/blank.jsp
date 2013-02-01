<%@page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<div id="show-case-dialog">blank</div>
<p>
	RESTEasy JAX-RS 


RESTFul Web Services for Java 

2.3.5.Final 


Preface ............................................................................................................................. ix 


1. Overview ...................................................................................................................... 1 


2. License ........................................................................................................................ 3 


3. Installation/Configuration ............................................................................................ 5 


3.1. Standalone Resteasy .......................................................................................... 5 


3.2. Configuration Switches ........................................................................................ 6 


3.3. javax.ws.rs.core.Application ................................................................................. 8 


3.4. RESTEasy as a ServletContextListener ............................................................... 9 


3.5. RESTEasy as a servlet Filter ............................................................................. 10 


3.6. Patching JBoss AS 7 ........................................................................................ 11 


3.7. Configuring in JBoss AS 7 ................................................................................ 11 


3.8. RESTEasyLogging ............................................................................................ 12 


4. Using @Path and @GET, @POST, etc. ...................................................................... 15 


4.1. @Path and regular expression mappings ........................................................... 16 


5. @PathParam .............................................................................................................. 19 


5.1. Advanced @PathParam and Regular Expressions .............................................. 20 


5.2. @PathParam and PathSegment ........................................................................ 20 


6. @QueryParam ............................................................................................................ 23 


7. @HeaderParam .......................................................................................................... 25 


8. Linking resources ...................................................................................................... 27 


8.1. Link Headers .................................................................................................... 27 


8.2. Atom links in the resource representations ......................................................... 27 


8.2.1. Configuration .......................................................................................... 27 


8.2.2. Your first links injected ........................................................................... 27 


8.2.3. Customising how the Atom links are serialised ......................................... 30 


8.2.4. Specifying which JAX-RS methods are tied to which resources .................. 30 


8.2.5. Specifying path parameter values for URI templates ................................. 31 


8.2.6. Securing entities .................................................................................... 34 


8.2.7. Extending the UEL context ..................................................................... 34 


8.2.8. Resource facades .................................................................................. 36 


9. @MatrixParam ............................................................................................................ 39 


10. @CookieParam ........................................................................................................ 41 


11. @FormParam ........................................................................................................... 43 


12. @Form ..................................................................................................................... 45 


13. @DefaultValue .......................................................................................................... 49 


14. @Encoded and encoding ......................................................................................... 51 


15. @Context ................................................................................................................. 53 


16. JAX-RS Resource Locators and Sub Resources ..................................................... 55 


17. JAX-RS Content Negotiation .................................................................................... 59 


17.1. URL-based negotiation .................................................................................... 61 


17.2. Query String Parameter-based negotiation ........................................................ 62 


18. Content Marshalling/Providers ................................................................................. 63 


18.1. Default Providers and default JAX-RS Content Marshalling ................................ 63 


18.2. Content Marshalling with @Provider classes ..................................................... 63 



RESTEasy JAX-RS 

18.3. Providers Utility Class ..................................................................................... 64 


18.4. Configuring Document Marshalling ................................................................... 66 


19. JAXB providers ........................................................................................................ 69 


19.1. JAXB Decorators ............................................................................................ 70 


19.2. Pluggable JAXBContext's with ContextResolvers .............................................. 71 


19.3. JAXB + XML provider ...................................................................................... 72 


19.3.1. @XmlHeader and @Stylesheet ............................................................. 72 


19.4. JAXB + JSON provider .................................................................................... 74 


19.5. JAXB + FastinfoSet provider ............................................................................ 79 


19.6. Arrays and Collections of JAXB Objects ........................................................... 79 


19.6.1. JSON and JAXB Collections/arrays ....................................................... 82 


19.7. Maps of JAXB Objects .................................................................................... 83 


19.7.1. JSON and JAXB maps ......................................................................... 85 


19.7.2. Possible Problems with Jettison Provider ............................................... 86 


19.8. Interfaces, Abstract Classes, and JAXB ............................................................ 87 


19.9. Configurating JAXB Marshalling ....................................................................... 87 


20. Resteasy Atom Support ........................................................................................... 89 


20.1. Resteasy Atom API and Provider ..................................................................... 89 


20.2. Using JAXB with the Atom Provider ................................................................. 90 


21. JSON Support via Jackson ...................................................................................... 93 


21.1. Possible Conflict With JAXB Provider ............................................................... 95 


22. Multipart Providers .................................................................................................. 97 


22.1. Input with multipart/mixed ................................................................................ 97 


22.2. java.util.List with multipart data ........................................................................ 99 


22.3. Input with multipart/form-data ........................................................................... 99 


22.4. java.util.Map with multipart/form-data .............................................................. 100 


22.5. Input with multipart/related ............................................................................. 100 


22.6. Output with multipart ..................................................................................... 101 


22.7. Multipart Output with java.util.List ................................................................... 102 


22.8. Output with multipart/form-data ...................................................................... 103 


22.9. Multipart FormData Output with java.util.Map .................................................. 104 


22.10. Output with multipart/related ......................................................................... 104 


22.11. @MultipartForm and POJOs ........................................................................ 105 


22.12. XML-binary Optimized Packaging (Xop) ........................................................ 107 


22.13. Note about multipart parsing and working with other frameworks ..................... 109 


22.14. Overwriting the default fallback content type for multipart messages ................ 109 


22.15. Overwriting the content type for multipart messages ...................................... 110 


22.16. Overwriting the default fallback charset for multipart messages ....................... 110 


23. YAML Provider ....................................................................................................... 113 


24. String marshalling for String based @*Param ....................................................... 115 


24.1. StringConverter ............................................................................................. 115 


24.2. StringParamUnmarshaller .............................................................................. 117 


25. Responses using javax.ws.rs.core.Response ........................................................ 121 


26. Exception Handling ................................................................................................ 123 



26.1. Exception Mappers ........................................................................................ 123 


26.2. Resteasy Built-in Internally-Thrown Exceptions ................................................ 124 


26.3. Overriding Resteasy Builtin Exceptions ........................................................... 126 


27. Configuring Individual JAX-RS Resource Beans ................................................... 127 


28. GZIP Compression/Decompression ....................................................................... 129 


29. Resteasy Caching Features ................................................................................... 131 


29.1. @Cache and @NoCache Annotations ............................................................ 131 


29.2. Client "Browser" Cache ................................................................................. 132 


29.3. Local Server-Side Response Cache ............................................................... 133 


30. Interceptors ............................................................................................................ 137 


30.1. MessageBodyReader/Writer Interceptors ........................................................ 137 


30.2. PreProcessInterceptor ................................................................................... 140 


30.3. PostProcessInterceptors ................................................................................ 140 


30.4. ClientExecutionInterceptors ............................................................................ 141 


30.5. Binding Interceptors ....................................................................................... 141 


30.6. Registering Interceptors ................................................................................. 142 


30.7. Interceptor Ordering and Precedence ............................................................. 142 


30.7.1. Custom Precedence ........................................................................... 143 


31. Asynchronous HTTP Request Processing ............................................................. 147 


31.1. Tomcat 6 and JBoss 4.2.3 Support ................................................................ 148 


31.2. Servlet 3.0 Support ....................................................................................... 149 


31.3. JBossWeb, JBoss AS 5.0.x Support ............................................................... 150 


32. Asynchronous Job Service .................................................................................... 151 


32.1. Using Async Jobs ......................................................................................... 151 


32.2. Oneway: Fire and Forget ............................................................................... 152 


32.3. Setup and Configuration ................................................................................ 152 


33. Embedded Containers ............................................................................................ 155 


33.1. Sun JDK HTTP Server .................................................................................. 155 


33.2. TJWS Embeddable Servlet Container ............................................................. 155 


33.3. Netty ............................................................................................................ 157 


34. Server-side Mock Framework ................................................................................. 159 


35. Securing JAX-RS and RESTeasy ........................................................................... 161 


36. Authentication ........................................................................................................ 165 


36.1. OAuth core 1.0a ............................................................................................ 165 


36.1.1. Authenticating with OAuth ................................................................... 165 


36.1.2. Accessing protected resources ............................................................ 166 


36.1.3. Implementing an OAuthProvider .......................................................... 167 


37. Doseta Digital Signature Framework ...................................................................... 169 


37.1. Maven settings .............................................................................................. 171 


37.2. Signing API ................................................................................................... 171 


37.2.1. @Signed annotation ........................................................................... 172 


37.3. Signature Verification API .............................................................................. 173 


37.3.1. Annotation-based verification ............................................................... 174 


37.4. Managing Keys via a KeyRepository .............................................................. 175 



RESTEasy JAX-RS 

37.4.1. Create a KeyStore .............................................................................. 175 


37.4.2. Configure Restreasy to use the KeyRepository ..................................... 175 


37.4.3. Using DNS to Discover Public Keys ..................................................... 177 


38. Body Encryption and Signing via SMIME .............................................................. 179 


38.1. Maven settings .............................................................................................. 179 


38.2. Message Body Encryption ............................................................................. 179 


38.3. Message Body Signing .................................................................................. 181 


39. EJB Integration ...................................................................................................... 185 


40. Spring Integration .................................................................................................. 187 


41. CDI Integration ....................................................................................................... 191 


41.1. Using CDI beans as JAX-RS components ...................................................... 191 


41.2. Default scopes .............................................................................................. 191 


41.3. Configuration within JBoss 6 M4 and Higher ................................................... 192 


41.4. Configuration with different distributions .......................................................... 192 


42. Seam Integration .................................................................................................... 193 


43. Guice 2.0 Integration .............................................................................................. 195 


43.1. Configuring Stage ......................................................................................... 196 


44. Client Framework ................................................................................................... 199 


44.1. Abstract Responses ...................................................................................... 200 


44.2. Sharing an interface between client and server ............................................... 203 


44.3. Client Error Handling ..................................................................................... 204 


44.4. Manual ClientRequest API ............................................................................. 205 


44.5. Spring integration on client side ..................................................................... 206 


44.6. Transport Layer ............................................................................................. 206 


44.7. Transport Layer Exception Handling ............................................................... 210 


44.8. Transport Layer Entity Buffering ..................................................................... 211 


45. AJAX Client ............................................................................................................ 213 


45.1. Generated JavaScript API .............................................................................. 213 


45.1.1. JavaScript API servlet ......................................................................... 213 


45.1.2. JavaScript API usage ......................................................................... 214 


45.1.3. MIME types and unmarshalling. ........................................................... 216 


45.1.4. MIME types and marshalling. .............................................................. 217 


45.2. Using the JavaScript API to build AJAX queries .............................................. 218 


45.2.1. The REST object ................................................................................ 218 


45.2.2. The REST.Request class .................................................................... 219 


46. Validation ............................................................................................................... 221 


46.1. Providing a ValidatorAdapter to RESTEasy ..................................................... 221 


46.2. Telling RESTEasy what needs validation ........................................................ 221 


46.3. Bean Validation API integration ...................................................................... 223 


47. Maven and RESTEasy ............................................................................................ 225 


48. JBoss AS 5.x Integration ....................................................................................... 229 


49. JBoss AS 6 Integration .......................................................................................... 231 


50. Documentation Support ......................................................................................... 233 


51. Migration from older versions ................................................................................ 235 



51.1. Migrating from 2.3.2 to 2.3.3 .......................................................................... 235 


51.2. Migrating from 2.3.0 to 2.3.1 .......................................................................... 235 


51.3. Migrating from 2.2.x to 2.3 ............................................................................. 235 


51.4. Migrating from 2.2.0 to 2.2.1 .......................................................................... 236 


51.5. Migrating from 2.1.x to 2.2 ............................................................................. 236 


51.6. Migrating from 2.0.x to 2.1 ............................................................................. 236 


51.7. Migrating from 1.2.x to 2.0 ............................................................................. 236 


51.8. Migrating from 1.2.GA to 1.2.1.GA ................................................................. 237 


51.9. Migrating from 1.1 to 1.2 ............................................................................... 237 


52. Books You Can Read ............................................................................................. 239 



viii 


Preface 

Commercial development support, production support and training for RESTEasy JAX-RS is 
available through JBoss, a division of Red Hat Inc. (see http://www.jboss.com/). 

In some of the example listings, what is meant to be displayed on one line does not fit inside the 
available page width. These lines have been broken up. A '\' at the end of a line means that a 
break has been introduced to fit in the page, with the following lines indented. So:

 Let's pretend to have an extremely \ 
long line that \ 
does not fit 
This one is short 


Is really:

 Let's pretend to have an extremely long line that does not fit 
This one is short 



x 


Chapter 1. 

Chapter 1. Overview 


JAX-RS, JSR-311, is a new JCP specification that provides a Java API for RESTful Web Services 
over the HTTP protocol. Resteasy is an portable implementation of this specification which can run 
in any Servlet container. Tighter integration with JBoss Application Server is also available to make 
the user experience nicer in that environment. While JAX-RS is only a server-side specification, 
Resteasy has innovated to bring JAX-RS to the client through the RESTEasy JAX-RS Client 
Framework. This client-side framework allows you to map outgoing HTTP requests to remote 
servers using JAX-RS annotations and interface proxies. 

. JAX-RS implementation 
. Portable to any app-server/Tomcat that runs on JDK 5 or higher 
. Embeddable server implementation for junit testing 
. EJB and Spring integration 
. Client framework to make writing HTTP clients easy (JAX-RS only define server bindings) 

2 



Chapter 2. 

Chapter 2. License 

RESTEasy is distributed under the ASL 2.0 license. It does not distribute any thirdparty libraries 
that are GPL. It does ship thirdparty libraries licensed under Apache ASL 2.0 and LGPL. 


4 



Chapter 3. 

Chapter 3. Installation/ 
Configuration 

RESTEasy is installed and configured in different ways depending on which environment you 
are running in. If you are running in JBoss AS 6-M4 (milestone 4) or higher, resteasy is already 
bundled and integrated completely so there is very little you have to do. If you are running in a 
different distribution, there is some manual installation and configuration you will have to do. 

3.1. Standalone Resteasy 
If you are using resteasy outside of JBoss AS 6, you will need to do a few manual steps to install 
and configure resteasy. RESTeasy is deployed as a WAR archive and thus depends on a Servlet 
container. We strongly suggest that you use Maven to build your WAR files as RESTEasy is split 
into a bunch of different modules. You can see an example Maven project in one of the examples 
in the examples/ directory 

Also, when you download RESTeasy and unzip it you will see a lib/ directory that contains the 
libraries needed by resteasy. Copy these into your /WEB-INF/lib directory. Place your JAX-RS 
annotated class resources and providers within one or more jars within /WEB-INF/lib or your raw 
class files within /WEB-INF/classes. 

RESTeasy is implemented as a Servlet and deployed within a WAR file. If you open up the WEBINF/
web.xml in one of the example projects of your RESTeasy download you will see this: 

<web-app> 
<display-name>Archetype Created Web Application</display-name>


 <servlet> 
<servlet-name>Resteasy</servlet-name> 
<servlet-class>


 org.jboss.resteasy.plugins.server.servlet.HttpServletDispatcher 
</servlet-class> 
<init-param>


 <param-name>javax.ws.rs.Application</param-name> 
<param-value>com.restfully.shop.services.ShoppingApplication</paramvalue> 
</init-param> 
</servlet>


 <servlet-mapping> 
<servlet-name>Resteasy</servlet-name> 
<url-pattern>/*</url-pattern> 



Chapter 3. Installation/Confi... 

</servlet-mapping> 
</web-app> 


The Resteasy servlet is responsible for initializing some basic components of RESTeasy. 

3.2. Configuration Switches 
Resteasy receives configuration options from <context-param> elements. 

Table 3.1. 

Option Name Default Value Description 
resteasy.servlet.mapping.prefix no default If the url-pattern for the 
Resteasy servlet-mapping is 
not /* 
resteasy.scan false Automatically scan WEB-INF/ 
lib jars and WEB-INF/classes 
directory for both @Provider 
and JAX-RS resource classes 
(@Path, @GET, @POST 
etc..) and register them 
resteasy.scan.providers false Scan for @Provider classes 
and register them 
resteasy.scan.resources false Scan for JAX-RS resource 
classes 
resteasy.providers no default A comma delimited list of 
fully qualified @Provider class 
names you want to register 
resteasy.use.builtin.providers true Whether or not to register 
default, built-in @Provider 
classes. (Only available in 1.0beta-
5 and later) 
resteasy.resources no default A comma delimited list of fully 
qualified JAX-RS resource 
class names you want to 
register 
resteasy.jndi.resources no default A comma delimited list of 
JNDI names which reference 
objects you want to register as 
JAX-RS resources 


Configuration Switches 

Option Name Default Value Description 
javax.ws.rs.Application no default Fully qualified name of 
Application class to bootstrap 
in a spec portable way 
resteasy.media.type.mappings no default Replaces the need for an 
Accept header by mapping 
file name extensions (like .xml 
or .txt) to a media type. Used 
when the client is unable 
to use a Accept header 
to choose a representation 
(i.e. a browser). See JAX-RS 
Content Negotiation chapter 
for more details. 
resteasy.language.mappings no default Replaces the need for an 
Accept-Language header by 
mapping file name extensions 
(like .en or .fr) to a language. 
Used when the client is unable 
to use a Accept-Language 
header to choose a language 
(i.e. a browser). See JAX-RS 
Content Negotiation chapter 
for more details 
resteasy.document.expand.entity.referencestrue Expand external entities in 
org.w3c.dom.Document files 

The resteasy.servlet.mapping.prefix <context param> variable must be set if your servlet-mapping 
for the Resteasy servlet has a url-pattern other than /*. For example, if the url-pattern is

 <servlet-mapping> 
<servlet-name>Resteasy</servlet-name> 
<url-pattern>/restful-services/*</url-pattern> 
</servlet-mapping> 


Then the value of resteasy-servlet.mapping.prefix must be: 


Chapter 3. Installation/Confi... 

<context-param> 
<param-name>resteasy.servlet.mapping.prefix</param-name> 
<param-value>/restful-services</param-value> 
</context-param> 


3.3. javax.ws.rs.core.Application 
The javax.ws.rs.core.Application class is a standard JAX-RS class that you may implement to 
provide information on your deployment. It is simply a class the lists all JAX-RS root resources 
and providers.

 /** 


* Defines the components of a JAX-RS application and supplies 
additional 
* metadata. A JAX-RS application or implementation supplies 
a concrete 
* subclass of this abstract class. 
*/ 
public abstract class Application 
{ 
private static final Set<Object> emptySet = Collections.emptySet();


 /** 


* Get a set of root resource and provider classes. The 
default lifecycle 
* for resource class instances is per-request. The default 
lifecycle for 
* providers is singleton. 
* <p/> 
* <p>Implementations should warn about and ignore classes that do not 
* conform to the requirements of root resource or provider classes. 
* Implementations should warn about and ignore classes for which 
* {@link #getSingletons()} returns an instance. Implementations MUST 
* NOT modify the returned set.</p> 
* 
* @return a set of root resource and provider classes. Returning null 
* is equivalent to returning an empty set. 
*/ 
public abstract Set<Class<?>> getClasses(); 
/** 


* Get a set of root resource and provider instances. Fields 
and properties 
* of returned instances are injected with their declared dependencies


 * (see {@link Context}) by the runtime prior to use. 

RESTEasy as a ServletContextListener 

* <p/> 
* <p>Implementations should warn about and ignore classes that do not 
* conform to the requirements of root resource or provider classes. 
* Implementations should flag an error if the returned set includes 
* more than one instance of the same class. Implementations MUST 
* NOT modify the returned set.</p> 
* <p/> 
* <p>The default implementation returns an empty set.</p> 
* 
* @return a set of root resource and provider instances. 
Returning null 
* is equivalent to returning an empty set. 
*/ 
public Set<Object> getSingletons() 
{ 
return emptySet; 
} 
} 


To use Application you must set a servlet init-param, javax.ws.rs.Application with a fully qualified 
class that implements Application. For example:

 <servlet> 
<servlet-name>Resteasy</servlet-name> 
<servlet-class>


 org.jboss.resteasy.plugins.server.servlet.HttpServletDispatcher 
</servlet-class> 
<init-param>


 <param-name>javax.ws.rs.Application</param-name> 
<param-value>com.restfully.shop.services.ShoppingApplication</paramvalue> 
</init-param> 
</servlet> 


If you have this set, you should probably turn off automatic scanning as this will probably result 
in duplicate classes being registered. 

3.4. RESTEasy as a ServletContextListener 
The initialization of RESTEasy can be performed within a ServletContextListener instead of within 
the Servlet. You may need this if you are writing custom Listeners that need to interact with 
RESTEasy at boot time. An example of this is the RESTEasy Spring integration that requires a 


Chapter 3. Installation/Confi... 

Spring ServletContextListener. The org.jboss.resteasy.plugins.server.servlet.ResteasyBootstrap 
class is a ServletContextListener that configures an instance of an ResteasyProviderFactory 
and Registry. You can obtain instances of a ResteasyProviderFactory and Registry 
from the ServletContext attributes org.jboss.resteasy.spi.ResteasyProviderFactory and 
org.jboss.resteasy.spi.Registry. From these instances you can programmatically interact with 
RESTEasy registration interfaces. 

<web-app> 
<listener> 
<listener-class> 
org.jboss.resteasy.plugins.server.servlet.ResteasyBootstrap 
</listener-class> 
</listener>


 <!-- ** INSERT YOUR LISTENERS HERE!!!! -->


 <servlet> 
<servlet-name>Resteasy</servlet-name> 
<servlet-class>


 org.jboss.resteasy.plugins.server.servlet.HttpServletDispatcher 
</servlet-class> 
</servlet>


 <servlet-mapping> 
<servlet-name>Resteasy</servlet-name> 
<url-pattern>/resteasy/*</url-pattern>


 </servlet-mapping> 


</web-app> 


3.5. RESTEasy as a servlet Filter 
The downside of running Resteasy as a Servlet is that you cannot have static resources like .html 
and .jpeg files in the same path as your JAX-RS services. Resteasy allows you to run as a Filter 
instead. If a JAX-RS resource is not found under the URL requested, Resteasy will delegate back 
to the base servlet container to resolve URLs. 

<web-app> 
<filter> 



Patching JBoss AS 7 

<filter-name>Resteasy</filter-name> 
<filter-class>


 org.jboss.resteasy.plugins.server.servlet.FilterDispatcher 
</filter-class> 
<init-param>


 <param-name>javax.ws.rs.Application</param-name> 
<param-value>com.restfully.shop.services.ShoppingApplication</paramvalue> 
</init-param> 
</filter>


 <filter-mapping> 
<filter-name>Resteasy</filter-name> 
<url-pattern>/*</url-pattern>


 </filter-mapping> 


</web-app> 


3.6. Patching JBoss AS 7 
Resteasy is bundled with JBoss AS 7. You will likely have the need to upgrade Resteasy in AS7. 
The Resteasy distribution comes with a zip file called resteasy-jboss-modules-2.3.5.Final.zip. In 
the top level directory of JBoss AS 7 (the one with the modules/ directory), unzip this file. You 
should be patched with the latest and greatest Resteasy after this. 

3.7. Configuring in JBoss AS 7 
RESTEasy is bundled with JBoss AS 7 and completely integrated as per the requirements of Java 
EE 6. First you must at least provide an empty web.xml file. You can of course deploy any custom 
servlet, filter or security constraint you want to within your web.xml, but the least amount of work is 
to create an empty web.xml file. Also, resteasy context-params are available if you want to tweak 
turn on/off any specific resteasy feature. 

<web-app version="3.0" xmlns="http://java.sun.com/xml/ns/javaee" 
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 


xsi:schemaLocation="http://java.sun.com/xml/ns/javaee http:// 
java.sun.com/xml/ns/javaee/web-app_3_0.xsd"> 
</web-app> 



Chapter 3. Installation/Confi... 

Since we're not using a jax-rs servlet mapping, we must define an Application class that is 
annotated with the @ApplicationPath annotation. If you return any empty set for by classes and 
singletons, your WAR will be scanned for JAX-RS annotation resource and provider classes.

 import javax.ws.rs.ApplicationPath; 
import javax.ws.rs.core.Application;


 @ApplicationPath("/root-path") 
public class MyApplication extends Application 
{ 
} 


The Resteasy distribution has ported the "Restful Java" O'Reilly workbook examples to AS7. You 
can find these under the directory examples/oreilly-workbook-as7. 

3.8. RESTEasyLogging 
RESTEasy supports logging via java.util.logging, Log4j, or Slf4j. How it picks which framework to 
delegate to is expressed in the following algorithm: 

. 
If log4j is in the application's classpath, log4j will be used 
. 
If slf4j is in the application's classpath, slf4j will be used 
. 
java.util.logging is the default if neither log4j or slf4j is in the classpath 
. 
If the servlet context param resteasy.logger.type is set to JUL, LOG4J, or SLF4J will override 
this default behavior 
The logging categories are still a work in progress, but the initial set should make it easier to 
troubleshoot issues. Currently, the framework has defined the following log categories: 

Table 3.2. 

Category Function 
org.jboss.resteasy.core Logs all activity by the core RESTEasy 
implementation 
org.jboss.resteasy.plugins.providers Logs all activity by RESTEasy entity providers 
org.jboss.resteasy.plugins.server Logs all activity by the RESTEasy server 
implementation. 
org.jboss.resteasy.specimpl Logs all activity by JAX-RS implementing 
classes 


RESTEasyLogging 

Category Function 
org.jboss.resteasy.mock Logs all activity by the RESTEasy mock 
framework 


14 



Chapter 4. 

Chapter 4. Using @Path and @GET, 
@POST, etc. 

@Path("/library") 
public class Library {


 @GET


 @Path("/books")


 public String getBooks() {...}


 @GET


 @Path("/book/{isbn}")


 public String getBook(@PathParam("isbn") String id) {


 // search my database and get a string representation and return it


 }


 @PUT


 @Path("/book/{isbn}") 


public void addBook(@PathParam("isbn") String id, @QueryParam("name") String


 name) {...}


 @DELETE


 @Path("/book/{id}")


 public void removeBook(@PathParam("id") String id {...} 


} 


Let's say you have the Resteasy servlet configured and reachable at a root path of http:// 
myhost.com/services. The requests would be handled by the Library class: 

. GET http://myhost.com/services/library/books 
. GET http://myhost.com/services/library/book/333 
. PUT http://myhost.com/services/library/book/333 
. DELETE http://myhost.com/services/library/book/333 
The @javax.ws.rs.Path annotation must exist on either the class and/or a resource method. If it 
exists on both the class and method, the relative path to the resource method is a concatenation 
of the class and method. 


Chapter 4. Using @Path and @G... 

In the @javax.ws.rs package there are annotations for each HTTP method. @GET, @POST, 
@PUT, @DELETE, and @HEAD. You place these on public methods that you want to map to 
that certain kind of HTTP method. As long as there is a @Path annotation on the class, you do 
not have to have a @Path annotation on the method you are mapping. You can have more than 
one HTTP method as long as they can be distinguished from other methods. 

When you have a @Path annotation on a method without an HTTP method, these are called 
JAXRSResourceLocators. 

4.1. @Path and regular expression mappings 
The @Path annotation is not limited to simple path expressions. You also have the ability to insert 
regular expressions into @Path's value. For example: 

@Path("/resources) 
public class MyResource {


 @GET 
@Path("{var:.*}/stuff") 
public String get() {...} 


} 


The following GETs will route to the getResource() method: 

GET /resources/stuff 
GET /resources/foo/stuff 
GET /resources/on/and/on/stuff 


The format of the expression is: 

"{" variable-name [ ":" regular-expression ] "}" 


The regular-expression part is optional. When the expression is not provided, it defaults to a 
wildcard matching of one particular segment. In regular-expression terms, the expression defaults 
to 

"([]*)" 



@Path and regular expression mappings 

For example: 
@Path("/resources/{var}/stuff") 
will match these: 

GET /resources/foo/stuff 
GET /resources/bar/stuff 


but will not match: 

GET /resources/a/bunch/of/stuff 



18 



Chapter 5. 

Chapter 5. @PathParam 

@PathParam is a parameter annotation which allows you to map variable URI path fragments 
into your method call. 

@Path("/library") 
public class Library {


 @GET 
@Path("/book/{isbn}") 
public String getBook(@PathParam("isbn") String id) {


 // search my database and get a string representation and return it 
} 
} 


What this allows you to do is embed variable identification within the URIs of your resources. In 
the above example, an isbn URI parameter is used to pass information about the book we want to 
access. The parameter type you inject into can be any primitive type, a String, or any Java object 
that has a constructor that takes a String parameter, or a static valueOf method that takes a String 
as a parameter. For example, lets say we wanted isbn to be a real object. We could do:

 @GET 
@Path("/book/{isbn}") 
public String getBook(@PathParam("isbn") ISBN id) {...}


 public class ISBN { 
public ISBN(String str) {...} 
} 


Or instead of a public String constructors, have a valueOf method:

 public class ISBN { 
public static ISBN valueOf(String isbn) {...}


 } 



Chapter 5. @PathParam 

5.1. Advanced @PathParam and Regular Expressions 
There are a few more complicated uses of @PathParams not discussed in the previous section. 

You are allowed to specify one or more path params embedded in one URI segment. Here are 
some examples: 

1. @Path("/aaa{param}bbb") 
2. @Path("/{name}-{zip}") 
3. @Path("/foo{name}-{zip}bar") 
So, a URI of "/aaa111bbb" would match #1. "/bill-02115" would match #2. "foobill-02115bar" would 
match #3. 

We discussed before how you can use regular expression patterns within @Path values. 

@GET 


@Path("/aaa{param:b+}/{many:.*}/stuff") 


public String getIt(@PathParam("param") String bs, @PathParam("many") String 
many) {...} 


For the following requests, lets see what the values of the "param" and "many" @PathParams 
would be: 

Table 5.1. 

Request param many 
GET /aaabb/some/stuff bb some 
GET /aaab/a/lot/of/stuff b a/lot/of 

5.2. @PathParam and PathSegment 
The specification has a very simple abstraction for examining a fragment of the URI path being 
invoked on javax.ws.rs.core.PathSegment: 


@PathParam and PathSegment 

public interface PathSegment {


 /**


 * Get the path segment. 
* <p> 
* @return the path segment 
*/ 
String getPath(); 
/**


 * Get a map of the matrix parameters associated with the path segment 
* @return the map of matrix parameters 
*/ 
MultivaluedMap<String, String> getMatrixParameters(); 


} 


You can have Resteasy inject a PathSegment instead of a value with your @PathParam.

 @GET 
@Path("/book/{id}") 
public String getBook(@PathParam("id") PathSegment id) {...} 


This is very useful if you have a bunch of @PathParams that use matrix parameters. The idea 
of matrix parameters is that they are an arbitrary set of name-value pairs embedded in a uri path 
segment. The PathSegment object gives you access to these parameters. See also MatrixParam. 

A matrix parameter example is: 

GET http://host.com/library/book;name=EJB 3.0;author=Bill Burke 

The basic idea of matrix parameters is that it represents resources that are addressable by their 
attributes as well as their raw id. 


22 



Chapter 6. 

Chapter 6. @QueryParam 

The @QueryParam annotation allows you to map a URI query string parameter or url form 
encoded parameter to your method invocation. 

GET /books?num=5

 @GET 
public String getBooks(@QueryParam("num") int num) { 
... 
} 


Currently since Resteasy is built on top of a Servlet, it does not distinguish between URI query 
strings or url form encoded paramters. Like PathParam, your parameter type can be an String, 
primitive, or class that has a String constructor or static valueOf() method. 


24 



Chapter 7. 

Chapter 7. @HeaderParam 

The @HeaderParam annotation allows you to map a request HTTP header to your method 
invocation. 

GET /books?num=5

 @GET 
public String getBooks(@HeaderParam("From") String from) { 
... 
} 


Like PathParam, your parameter type can be an String, primitive, or class that has a String 
constructor or static valueOf() method. For example, MediaType has a valueOf() method and you 
could do:

 @PUT 
public void put(@HeaderParam("Content-Type") MediaType contentType, ...) 



26 



Chapter 8. 

Chapter 8. Linking resources 


There are two mechanisms available in RESTEasy to link a resource to another, and to 
link resources to operations: the Link HTTP header, and Atom links inside the resource 
representations. 

8.1. Link Headers 
RESTEasy has both client and server side support for the Link 
header specification [http://tools.ietf.org/html/draft-nottingham-http-link-header-06]. See 
the javadocs for org.jboss.resteasy.spi.LinkHeader, org.jboss.resteasy.spi.Link, and 
org.jboss.resteasy.client.ClientResponse. 

The main advantage of Link headers over Atom links in the resource is that those links are 
available without parsing the entity body. 

8.2. Atom links in the resource representations 
RESTEasy allows you to inject Atom links [http://tools.ietf.org/html/rfc4287#section-4.2.7] directly 
inside the entity objects you are sending to the client, via auto-discovery. 

Warning 
This is only available when using the Jettison or JAXB providers (for JSON and 
XML). 
The main advantage over Link headers is that you can have any number of Atom links directly 
over the concerned resources, for any number of resources in the response. For example, you 
can have Atom links for the root response entity, and also for each of its children entities. 

8.2.1. Configuration 
There is no configuration required to be able to inject Atom links in your resource representation, 
you just have to have this maven artifact in your path: 

Table 8.1. Maven artifact for Atom link injection 

Group Artifact Version 
org.jboss.resteasy resteasy-links 2.3.5.Final 

8.2.2. Your first links injected 
You need three things in order to tell RESTEasy to inject Atom links in your entities: 


Chapter 8. Linking resources 

. 
Annotate the JAX-RS method with @AddLinks to indicate that you want Atom links injected in 
your response entity. 
. 
Add RESTServiceDiscoveryfields to the resource classes where you want Atom links injected. 
. 
Annotate the JAX-RS methods you want Atom links for with @LinkResource, so that RESTEasy 
knows which links to create for which resources. 
The following example illustrates how you would declare everything in order to get the Atom links 
injected in your book store: 

@Path("/") 
@Consumes({"application/xml", "application/json"}) 
@Produces({"application/xml", "application/json"}) 
public interface BookStore { 


@AddLinks 
@LinkResource(value = Book.class) 
@GET 
@Path("books") 
public Collection<Book> getBooks(); 


@LinkResource 
@POST 
@Path("books") 
public void addBook(Book book); 


@AddLinks 
@LinkResource 
@GET 
@Path("book/{id}") 
public Book getBook(@PathParam("id") String id); 


@LinkResource 
@PUT 
@Path("book/{id}") 
public void updateBook(@PathParam("id") String id, Book book); 


@LinkResource(value = Book.class) 


@DELETE 


@Path("book/{id}") 


public void deleteBook(@PathParam("id") String id); 
} 


And this is the definition of the Book resource: 


Your first links injected 

@Mapped(namespaceMap = @XmlNsMap(jsonName = "atom", namespace = "http:// 
www.w3.org/2005/Atom")) 
@XmlRootElement 
@XmlAccessorType(XmlAccessType.NONE) 
public class Book { 


@XmlAttribute 
private String author; 


@XmlID 
@XmlAttribute 
private String title; 


@XmlElementRef 
private RESTServiceDiscovery rest; 
} 


If you do a GET /order/foo you will then get this XML representation: 

<?xml version="1.0" encoding="UTF-8" standalone="yes"?> 


<book xmlns:atom="http://www.w3.org/2005/Atom" title="foo" author="bar"> 
<atom:link href="http://localhost:8081/books" rel="list"/> 
<atom:link href="http://localhost:8081/books" rel="add"/> 
<atom:link href="http://localhost:8081/book/foo" rel="self"/> 
<atom:link href="http://localhost:8081/book/foo" rel="update"/> 
<atom:link href="http://localhost:8081/book/foo" rel="remove"/> 


</book> 


And in JSON format: 

{ 
"book": 
{ 
"@title":"foo", 
"@author":"bar", 
"atom.link": 
[ 
{"@href":"http://localhost:8081/books","@rel":"list"}, 
{"@href":"http://localhost:8081/books","@rel":"add"}, 
{"@href":"http://localhost:8081/book/foo","@rel":"self"}, 
{"@href":"http://localhost:8081/book/foo","@rel":"update"}, 
{"@href":"http://localhost:8081/book/foo","@rel":"remove"}


 ] 
} 
} 



Chapter 8. Linking resources 

8.2.3. Customising how the Atom links are serialised 
Because the RESTServiceDiscovery is in fact a JAXB type which inherits from Listyou are free 
to annotate it as you want to customise the JAXB serialisation, or just rely on the default with 
@XmlElementRef. 

8.2.4. Specifying which JAX-RS methods are tied to which 
resources 
This is all done by annotating the methods with the @LinkResource annotation. It supports the 
following optional parameters: 

Table 8.2. 

@LinkResource parameters 

Parameter Type Function Default 
value Class Declares an Atom link Defaults to the entity 
for the given type of body type (nonresources. 
annotated parameter), 
or the method's 
return type. This 
default does not 
work with Response 
or Collection types, 
they need to be 
explicitly specified. 
rel String The Atom link relation list 
For GET methods 
returning a 
Collection 
self 
For GET methods 
returning a non-
Collection 
remove 
For DELETE 
methods 
update 
For PUT methods 
add 
For POST methods 


Specifying path parameter values for URI templates 

You can add several @LinkResource annotations on a single method by enclosing them in a 
@LinkResourcesannotation. This way you can add links to the same method on several resource 
types. For example the /order/foo/commentsoperation can belongs on the Orderresource with 
the comments relation, and on the Comment resource with the list relation. 

8.2.5. Specifying path parameter values for URI templates 
When RESTEasy adds links to your resources it needs to insert the right values in the URI 
template. This is done either automatically by guessing the list of values from the entity, or by 
specifying the values in the @LinkResource pathParameters parameter. 

8.2.5.1. Loading URI template values from the entity 
URI template values are extracted from the entity from fields or Java Bean properties annotated 
with @ResourceID, JAXB's @XmlID or JPA's @Id. If there are more than one URI template value 
to find in a given entity, you can annotate your entity with @ResourceIDs to list the names of 
fields or properties that make up this entity's Id. If there are other URI template values required 
from a parent entity, we try to find that parent in a field or Java Bean property annotated with 
@ParentResource. The list of URI template values extracted up every @ParentResource is then 
reversed and used as the list of values for the URI template. 

For example, let's consider the previous Book example, and a list of comments: 

</p>