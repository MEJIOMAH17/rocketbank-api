package ru.rocketbank.core.model.transfers.bank;

public class RemittanceIncoming {
    private double balance;
    private long id;
    private String status;

    public long getId() {
        return this.id;
    }

    public void setId(long j) {
        this.id = j;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public double getBalance() {
        return this.balance;
    }

    public void setBalance(double d) {
        this.balance = d;
    }
}
