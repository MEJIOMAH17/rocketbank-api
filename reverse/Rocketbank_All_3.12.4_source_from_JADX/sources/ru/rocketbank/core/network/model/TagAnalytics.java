package ru.rocketbank.core.network.model;

import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;
import ru.rocketbank.core.model.dto.operations.SectionStatisticsItem;

/* compiled from: TagAnalytics.kt */
public final class TagAnalytics {
    private Analytics analytics;
    @SerializedName("30_days")
    private SectionStatisticsItem days30;
    @SerializedName("7_days")
    private SectionStatisticsItem days7;
    @SerializedName("this_month")
    private SectionStatisticsItem thisMonth;
    private double total;

    /* compiled from: TagAnalytics.kt */
    public static final class Analytics {
        private Tag tag;

        public final Tag getTag() {
            return this.tag;
        }

        public final void setTag(Tag tag) {
            this.tag = tag;
        }
    }

    /* compiled from: TagAnalytics.kt */
    public static final class Tag {
        @SerializedName("current_month")
        private float currentMonth;
        private ArrayList<Float> months;
        @SerializedName("previous_month")
        private float previousMonth;
        private float total;

        public final float getCurrentMonth() {
            return this.currentMonth;
        }

        public final void setCurrentMonth(float f) {
            this.currentMonth = f;
        }

        public final float getPreviousMonth() {
            return this.previousMonth;
        }

        public final void setPreviousMonth(float f) {
            this.previousMonth = f;
        }

        public final float getTotal() {
            return this.total;
        }

        public final void setTotal(float f) {
            this.total = f;
        }

        public final ArrayList<Float> getMonths() {
            return this.months;
        }

        public final void setMonths(ArrayList<Float> arrayList) {
            this.months = arrayList;
        }
    }

    public final double getTotal() {
        return this.total;
    }

    public final void setTotal(double d) {
        this.total = d;
    }

    public final SectionStatisticsItem getThisMonth() {
        return this.thisMonth;
    }

    public final void setThisMonth(SectionStatisticsItem sectionStatisticsItem) {
        this.thisMonth = sectionStatisticsItem;
    }

    public final SectionStatisticsItem getDays7() {
        return this.days7;
    }

    public final void setDays7(SectionStatisticsItem sectionStatisticsItem) {
        this.days7 = sectionStatisticsItem;
    }

    public final SectionStatisticsItem getDays30() {
        return this.days30;
    }

    public final void setDays30(SectionStatisticsItem sectionStatisticsItem) {
        this.days30 = sectionStatisticsItem;
    }

    public final Analytics getAnalytics() {
        return this.analytics;
    }

    public final void setAnalytics(Analytics analytics) {
        this.analytics = analytics;
    }
}
