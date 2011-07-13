package com.spshop.model;

import java.util.Date;

public class Promotion extends Component{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1639192819712035933L;
	
	private Date startDate;
	private Date endDate;
	
	private PromotionStatusType status;

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public PromotionStatusType getStatus() {
		return status;
	}

	public void setStatus(PromotionStatusType status) {
		this.status = status;
	}

}
