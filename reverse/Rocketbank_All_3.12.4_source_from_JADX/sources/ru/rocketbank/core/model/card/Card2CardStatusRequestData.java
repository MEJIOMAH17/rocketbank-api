package ru.rocketbank.core.model.card;

public class Card2CardStatusRequestData {
    private int id;
    private String token;

    public Card2CardStatusRequestData(String str, int i) {
        this.token = str;
        this.id = i;
    }

    public String getToken() {
        return this.token;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int i) {
        this.id = i;
    }
}
