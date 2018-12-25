package ru.rocketbank.core.manager;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.provider.ProviderField;
import ru.rocketbank.core.network.model.delivery.Interval;

/* compiled from: DeliveryManager.kt */
public final class DeliveryManager {
    private String address = "";
    private String comment = "";
    public Date currentDate;
    private final SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.GERMANY);
    private String deliveryText;
    private ArrayList<Interval> intervals;
    private double lat;
    private double lng;
    private Date nearestDate;
    private String senderPhoto;

    public final double getLat() {
        return this.lat;
    }

    public final void setLat(double d) {
        this.lat = d;
    }

    public final double getLng() {
        return this.lng;
    }

    public final void setLng(double d) {
        this.lng = d;
    }

    public final String getSenderPhoto() {
        return this.senderPhoto;
    }

    public final void setSenderPhoto(String str) {
        this.senderPhoto = str;
    }

    public final String getDeliveryText() {
        return this.deliveryText;
    }

    public final void setDeliveryText(String str) {
        this.deliveryText = str;
    }

    public final ArrayList<Interval> getIntervals() {
        return this.intervals;
    }

    public final void setIntervals(ArrayList<Interval> arrayList) {
        this.intervals = arrayList;
    }

    public final Date getNearestDate() {
        return this.nearestDate;
    }

    public final void setNearestDate(String str) {
        Intrinsics.checkParameterIsNotNull(str, ProviderField.DATE);
        this.nearestDate = this.dateFormat.parse(str);
    }

    public final void setCurrentDate(String str) {
        Intrinsics.checkParameterIsNotNull(str, ProviderField.DATE);
        str = this.dateFormat.parse(str);
        Intrinsics.checkExpressionValueIsNotNull(str, "dateFormat.parse(date)");
        this.currentDate = str;
    }

    public final String getFormatedDate(Calendar calendar, int i, int i2, int i3) {
        Intrinsics.checkParameterIsNotNull(calendar, "calendar");
        calendar.set(1, i3);
        calendar.set(2, i2);
        calendar.set(5, i);
        calendar = this.dateFormat.format(calendar.getTime());
        Intrinsics.checkExpressionValueIsNotNull(calendar, "dateFormat.format(calendar.time)");
        return calendar;
    }
}
