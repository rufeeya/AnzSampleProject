package com.anz.model;

public class TransactionHistory {

	private int accountNumber;
	private String accountName;
	private String value_date;
	private String currency;
	private int debitAmount;
	private int creditAmount;
	private String dr_cr;
	private String narrative;

	public TransactionHistory(int accountNumber, String accountName, String value_date, String currency,int debitAmount, int creditAmount, String dr_cr, String narrative) {
		super();
		this.accountNumber = accountNumber;
		this.accountName = accountName;
		this.value_date = value_date;
		this.currency = currency;
		this.debitAmount = debitAmount;
		this.creditAmount = creditAmount;
		this.dr_cr = dr_cr;
		this.narrative = narrative;
	}

	public int getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(int accountNumber) {
		this.accountNumber = accountNumber;
	}

	public String getAccountName() {
		return accountName;
	}

	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}

	public String getValue_date() {
		return value_date;
	}

	public void setValue_date(String value_date) {
		this.value_date = value_date;
	}

	public String getCurrency() {
		return currency;
	}

	public void setCurrency(String currency) {
		this.currency = currency;
	}

	public int getDebitAmount() {
		return debitAmount;
	}

	public void setDebitAmount(int debitAmount) {
		this.debitAmount = debitAmount;
	}

	public int getCreditAmount() {
		return creditAmount;
	}

	public void setCreditAmount(int creditAmount) {
		this.creditAmount = creditAmount;
	}

	public String getDr_cr() {
		return dr_cr;
	}

	public void setDr_cr(String dr_cr) {
		this.dr_cr = dr_cr;
	}

	public String getNarrative() {
		return narrative;
	}

	public void setNarrative(String narrative) {
		this.narrative = narrative;
	}

}
