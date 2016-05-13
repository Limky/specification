package kr.ac.hansung.dao;

public class Products {


	private String productBarcode;
	private String reviewerId;
	private String reviewText;
	private int starPoint;
	private String companyName;

	
	public Products(){
			
		
	}

	public Products(String productName, String productBarcode, String reviewerId, String reviewText, int starPoint,
			String companyName) {
		super();
		this.productName = productName;
		this.productBarcode = productBarcode;
		this.reviewerId = reviewerId;
		this.reviewText = reviewText;
		this.starPoint = starPoint;
		this.companyName = companyName;
	}

	private String productName;
	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductBarcode() {
		return productBarcode;
	}

	public void setProductBarcode(String productBarcode) {
		this.productBarcode = productBarcode;
	}

	public String getReviewerId() {
		return reviewerId;
	}

	public void setReviewerId(String reviewerId) {
		this.reviewerId = reviewerId;
	}

	public String getReviewText() {
		return reviewText;
	}

	public void setReviewText(String reviewText) {
		this.reviewText = reviewText;
	}

	public int getStarPoint() {
		return starPoint;
	}

	public void setStarPoint(int starPoint) {
		this.starPoint = starPoint;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	

	@Override
	public String toString() {
		return "Products [productBarcode=" + productBarcode + ", reviewerId=" + reviewerId + ", reviewText="
				+ reviewText + ", starPoint=" + starPoint + ", companyName=" + companyName + ", productName="
				+ productName + "]";
	}
}
