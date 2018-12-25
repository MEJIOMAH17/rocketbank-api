package ru.rocketbank.core.model.dto.analytics;

import com.google.gson.annotations.SerializedName;
import java.io.Serializable;

public class AnalyticsMerchant implements Serializable {
    private double amount;
    private long id;
    private String name;
    private double percentage;
    private String type;
    @SerializedName("userpic_url")
    private String userpicUrl;

    public long getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public double getAmount() {
        return this.amount;
    }

    public double getPercentage() {
        return this.percentage;
    }

    public String getUserpicUrl() {
        return this.userpicUrl;
    }

    public String getType() {
        return this.type;
    }
}
