package ru.rocketbank.core.model.transfers.friend;

import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public class FriendTransfersResponseUrls implements Serializable {
    @SerializedName("default")
    private String defaultUrl;
    private Map<String, String> emails;
    private Map<String, String> phones;

    public FriendTransfersResponseUrls(String str, HashMap<String, String> hashMap, HashMap<String, String> hashMap2) {
        this.defaultUrl = str;
        this.emails = hashMap;
        this.phones = hashMap2;
    }

    public String getDefaultUrl() {
        return this.defaultUrl;
    }

    public void setDefaultUrl(String str) {
        this.defaultUrl = str;
    }

    public Map<String, String> getEmails() {
        return this.emails;
    }

    public void setEmails(Map<String, String> map) {
        this.emails = map;
    }

    public Map<String, String> getPhones() {
        return this.phones;
    }

    public void setPhones(Map<String, String> map) {
        this.phones = map;
    }
}
