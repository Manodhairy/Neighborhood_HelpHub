package com.nh.Neighborhoods_Helphub_mvc.Entity;

public class OrderRequest {

	
	    private int shopId;
	    private String fullName;
	    private String flat_no;
	    private String mobile_no;
	    private String orderDetails;
	    private String email;
	    
	    public OrderRequest() {}

		public OrderRequest(int shopId, String fullName, String flat_no, String mobile_no, String orderDetails,
				String email) {
			super();
			this.shopId = shopId;
			this.fullName = fullName;
			this.flat_no = flat_no;
			this.mobile_no = mobile_no;
			this.orderDetails = orderDetails;
			this.email = email;
		}

		public int getShopId() {
			return shopId;
		}

		public void setShopId(int shopId) {
			this.shopId = shopId;
		}

		public String getFullName() {
			return fullName;
		}

		public void setFullName(String fullName) {
			this.fullName = fullName;
		}

		public String getFlat_no() {
			return flat_no;
		}

		public void setFlat_no(String flat_no) {
			this.flat_no = flat_no;
		}

		public String getMobile_no() {
			return mobile_no;
		}

		public void setMobile_no(String mobile_no) {
			this.mobile_no = mobile_no;
		}

		public String getOrderDetails() {
			return orderDetails;
		}

		public void setOrderDetails(String orderDetails) {
			this.orderDetails = orderDetails;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}
		
	    
	    

}
