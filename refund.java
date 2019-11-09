package manageRefund;

public class refund {

	private int bid;
	private String accHolderName;
	private String accNo;
	private String bankName;
	private String branchName;
	/**
	 * @param accHolderName
	 * @param accNo
	 * @param bankName
	 * @param branchName
	 */
	public refund(String accHolderName, String accNo, String bankName, String branchName) {
		this.accHolderName = accHolderName;
		this.accNo = accNo;
		this.bankName = bankName;
		this.branchName = branchName;
	}

	public refund(int bid, String accHolderName, String accNo, String bankName, String branchName) {
		super();
		this.bid = bid;
		this.accHolderName = accHolderName;
		this.accNo = accNo;
		this.bankName = bankName;
		this.branchName = branchName;
	}


	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public String getAccHolderName() {
		return accHolderName;
	}
	public void setAccHolderName(String accHolderName) {
		this.accHolderName = accHolderName;
	}
	public String getAccNo() {
		return accNo;
	}
	public void setAccNo(String accNo) {
		this.accNo = accNo;
	}
	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	public String getBranchName() {
		return branchName;
	}
	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	@Override
	public String toString() {
		return "refund [bid=" + bid + ", accHolderName=" + accHolderName + ", accNo=" + accNo + ", bankName=" + bankName
				+ ", branchName=" + branchName + "]";
	}
	
	
	 
}

