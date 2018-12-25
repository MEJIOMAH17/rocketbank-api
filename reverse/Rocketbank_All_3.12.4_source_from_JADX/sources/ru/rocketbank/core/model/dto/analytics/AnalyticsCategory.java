package ru.rocketbank.core.model.dto.analytics;

import java.io.Serializable;

public class AnalyticsCategory implements Serializable {
    private double amount;
    private String icon;
    private long id;
    private String name;
    private double percentage;

    public long getId() {
        return this.id;
    }

    public String getIcon() {
        return this.icon;
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
}
