package com.spshop.admin.server;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FileUtils;

import com.spshop.admin.shared.LoginInfo;
import com.spshop.model.Image;
import com.spshop.model.Site;
import com.spshop.model.enums.ImageSizeType;
import com.spshop.service.factory.ServiceFactory;
import com.spshop.service.intf.ImageService;
@SuppressWarnings("rawtypes")
public class ImageBatchProcessor extends RemoteHttp {

	/**
	 * 
	 */
	private static final long serialVersionUID = 477413844967078323L;
	private static final int BUFFER = 512;

	public static Site site = null;
	public static LoginInfo loginInfo = null;
	List items = null;
	String name = null;
	String unZipDir = "tempZip/";

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		FileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		loginInfo = getLoginInfo(req);
		site = loginInfo.getSite();

		String zipFileName = System.nanoTime() + ".zip";

		try {
			items = upload.parseRequest(req);
		} catch (FileUploadException ex) {
			throw new ServletException(ex);
		}

		Iterator iter = items.iterator();
		File orignalFile = null;
		while (iter.hasNext()) {
			FileItem item = (FileItem) iter.next();
			if (item.isFormField()) {
				if (item.getFieldName().equals("imageZipFile")) {
					name = item.getString();
				}
			} else {
				orignalFile = new File(unZipDir + zipFileName);
				try {
					item.write(orignalFile);
					int count = unzipAndCreateImage(zipFileName);
					resp.getWriter().print(count);
				} catch (Exception e) {
					throw new IOException(e);
				}
			}
		}
	}

	BufferedOutputStream dest = null;
	BufferedInputStream is = null;
	ZipEntry entry;
	File tempFile = null;
	File realFile = null;
	FileOutputStream fos = null;
	byte data[] = new byte[BUFFER];

	private int unzipAndCreateImage(String zipFileName) throws IOException {
		ZipFile zipfile = new ZipFile(unZipDir + zipFileName);
		Enumeration e = zipfile.entries();
		String fileName = "";
		int counter = 0;
		while (e.hasMoreElements()) {
			entry = (ZipEntry) e.nextElement();
			is = new BufferedInputStream(zipfile.getInputStream(entry));
			int count;
			fos = new FileOutputStream(unZipDir + "/" + entry.getName());
			dest = new BufferedOutputStream(fos, BUFFER);
			while ((count = is.read(data, 0, BUFFER)) != -1) {
				dest.write(data, 0, count);
			}
			fileName = entry.getName();
			tempFile = new File(unZipDir + "/" + entry.getName());
			realFile = new File(getServletContext().getRealPath(
					site.getImagePath())
					+ "/" + fileName);
			dest.flush();
			dest.close();
			is.close();
			FileUtils.copyFile(tempFile, realFile);
			tempFile.delete();
			tempFile = null;
			// ProcessImage processImage = new ProcessImage();
			// new Thread(processImage,
			// fileName+"__"+realFile.getAbsolutePath()).start();
			processImage(fileName);
			counter++;
		}
		return counter;
	}

	private void processImage(String fileName) {
		ImageService imageService = ServiceFactory
				.getService(ImageService.class);
		Image image = new Image();
		image.setSite(site);
		image.setCreateDate(new Date());
		image.setUpdateDate(new Date());
		image.setAltTitle(site.getImagePath() + "/" + fileName);
		image.setName(fileName.substring(0,fileName.lastIndexOf('.')));
		image.setNoChangeUrl(site.getImagePath() + "/" + fileName);
		image.setSizeType(ImageSizeType.PRODUCT_NORMAL);
		imageService.saveImage(image, realFile.getAbsolutePath(), loginInfo);
	}

}
