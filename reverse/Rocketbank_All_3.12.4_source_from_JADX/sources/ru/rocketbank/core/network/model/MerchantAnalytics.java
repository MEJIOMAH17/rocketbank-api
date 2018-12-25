package ru.rocketbank.core.network.model;

import com.google.gson.annotations.SerializedName;
import ru.rocketbank.core.model.dto.operations.SectionStatisticsItem;

/* compiled from: MerchantAnalytics.kt */
public final class MerchantAnalytics {
    @SerializedName("30_days")
    private final SectionStatisticsItem days30;
    @SerializedName("7_days")
    private final SectionStatisticsItem days7;
    @SerializedName("this_month")
    private final SectionStatisticsItem thisMonth;
    private final double total;

    public final double getTotal() {
        return this.total;
    }

    public final SectionStatisticsItem getThisMonth() {
        return this.thisMonth;
    }

    public final SectionStatisticsItem getDays7() {
        return this.days7;
    }

    public final SectionStatisticsItem getDays30() {
        return this.days30;
    }
}
