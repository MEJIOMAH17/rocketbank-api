package ru.rocketbank.core.model.dto.analytics;

import com.facebook.internal.FacebookRequestErrorClassification;
import java.io.Serializable;
import ru.rocketbank.core.utils.CategoryMappingUtil;

public class AnalyticsGroup implements Serializable {
    private double amount;
    private String id;
    private String name;
    private double percentage;

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        this.id = str;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public double getAmount() {
        return this.amount;
    }

    public void setAmount(double d) {
        this.amount = d;
    }

    public double getPercentage() {
        return this.percentage;
    }

    public void setPercentage(double d) {
        this.percentage = d;
    }

    public String getIcon() {
        return ((Character) CategoryMappingUtil.INSTANCE.getCategory(getCategory()).getSecond()).toString();
    }

    public Integer getColor() {
        return (Integer) CategoryMappingUtil.INSTANCE.getCategory(getCategory()).getFirst();
    }

    private long getCategory() {
        String id = getId();
        if (id != null) {
            if (id.equals(FacebookRequestErrorClassification.KEY_OTHER)) {
                return 438;
            }
            if (id.equals("transfer")) {
                return 345;
            }
        }
        return 368;
    }
}
