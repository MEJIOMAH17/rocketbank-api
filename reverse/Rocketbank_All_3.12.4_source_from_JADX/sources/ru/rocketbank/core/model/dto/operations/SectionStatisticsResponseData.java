package ru.rocketbank.core.model.dto.operations;

import com.google.gson.annotations.SerializedName;

public class SectionStatisticsResponseData {
    @SerializedName("30_days")
    private SectionStatisticsItem days30;
    @SerializedName("7_days")
    private SectionStatisticsItem days7;
    @SerializedName("this_month")
    private SectionStatisticsItem thisMonth;
    private double total;

    public double getTotal() {
        return this.total;
    }

    public SectionStatisticsItem getThisMonth() {
        return this.thisMonth;
    }

    public SectionStatisticsItem getDays7() {
        return this.days7;
    }

    public SectionStatisticsItem getDays30() {
        return this.days30;
    }
}
