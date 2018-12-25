package ru.rocketbank.r2d2.fragments.delivery;

import java.util.ArrayList;
import java.util.Calendar;
import ru.rocketbank.core.network.model.delivery.Interval;

/* compiled from: DeliverySelectDateView.kt */
public interface DeliverySelectDateView extends DeliveryView {
    void intervalsLoaded(ArrayList<Interval> arrayList);

    void nextStep();

    void setUpCalendar(Calendar calendar);

    void showNearestDayAndTime(ArrayList<Interval> arrayList);
}
