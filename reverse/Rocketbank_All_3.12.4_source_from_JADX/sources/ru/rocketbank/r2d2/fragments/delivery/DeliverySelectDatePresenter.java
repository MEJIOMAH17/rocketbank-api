package ru.rocketbank.r2d2.fragments.delivery;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.DeliveryManager;
import ru.rocketbank.core.network.model.delivery.DeliveryBody;
import ru.rocketbank.core.network.model.delivery.DeliveryDateBody;
import ru.rocketbank.core.network.model.delivery.ScheduleDateBody;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.schedulers.Schedulers;

/* compiled from: DeliverySelectDatePresenter.kt */
public final class DeliverySelectDatePresenter extends AbstractDeliveryPresenter {
    private final Calendar calendar = Calendar.getInstance(new Locale("ru", "RU"));
    private int day;
    private Subscription deliverySubscription;
    private int month;
    private DeliverySelectDateView view;
    private int year;

    public final DeliverySelectDateView getView() {
        return this.view;
    }

    public final void setView(DeliverySelectDateView deliverySelectDateView) {
        this.view = deliverySelectDateView;
    }

    public final void onCreate(Bundle bundle, String str) {
        Intrinsics.checkParameterIsNotNull(str, "token");
        super.onCreate(bundle);
        bundle = getDeliveryManager().getNearestDate();
        if (bundle != null) {
            Calendar calendar = this.calendar;
            Intrinsics.checkExpressionValueIsNotNull(calendar, "calendar");
            calendar.setTime(bundle);
        } else {
            this.calendar.add(5, 2);
        }
        this.day = this.calendar.get(5);
        this.month = this.calendar.get(2);
        this.year = this.calendar.get(1);
        bundle = this.view;
        if (bundle != null) {
            Calendar calendar2 = this.calendar;
            Intrinsics.checkExpressionValueIsNotNull(calendar2, "calendar");
            bundle.setUpCalendar(calendar2);
            ArrayList intervals = getDeliveryManager().getIntervals();
            if (intervals != null) {
                bundle.showNearestDayAndTime(intervals);
                return;
            }
            bundle.showProgressDialog();
            daySelected(str, this.calendar.get(5), this.calendar.get(2), this.calendar.get(1));
        }
    }

    public final void daySelected(String str, int i, int i2, int i3) {
        Intrinsics.checkParameterIsNotNull(str, "token");
        DeliverySelectDateView deliverySelectDateView = this.view;
        if (deliverySelectDateView != null) {
            deliverySelectDateView.showProgressDialog();
        }
        this.day = i;
        this.month = i2;
        this.year = i3;
        DeliveryManager deliveryManager = getDeliveryManager();
        Calendar calendar = this.calendar;
        Intrinsics.checkExpressionValueIsNotNull(calendar, "calendar");
        DeliveryDateBody deliveryDateBody = new DeliveryDateBody(deliveryManager.getFormatedDate(calendar, i, i2, i3));
        i = this.deliverySubscription;
        if (i != 0) {
            i.unsubscribe();
        }
        this.deliverySubscription = getDeliveryApi().getTimesByDate(str, new DeliveryBody(deliveryDateBody)).retry((long) 10).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.io()).subscribe((Subscriber) new DeliverySelectDatePresenter$daySelected$1(this));
    }

    public final void nextPressed(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "token");
        Intrinsics.checkParameterIsNotNull(str2, "intervalKey");
        DeliverySelectDateView deliverySelectDateView = this.view;
        if (deliverySelectDateView != null) {
            deliverySelectDateView.showProgressDialog();
        }
        DeliveryManager deliveryManager = getDeliveryManager();
        Calendar calendar = this.calendar;
        Intrinsics.checkExpressionValueIsNotNull(calendar, "calendar");
        ScheduleDateBody scheduleDateBody = new ScheduleDateBody(str2, deliveryManager.getFormatedDate(calendar, this.day, this.month, this.year));
        str2 = this.deliverySubscription;
        if (str2 != null) {
            str2.unsubscribe();
        }
        this.deliverySubscription = getDeliveryApi().scheduleDelivery(str, new DeliveryBody(scheduleDateBody)).retry(10).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new DeliverySelectDatePresenter$nextPressed$1(this));
    }

    public final void onDestroy() {
        this.view = null;
        Subscription subscription = this.deliverySubscription;
        if (subscription != null) {
            subscription.unsubscribe();
        }
        super.onDestroy();
    }
}
