package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import ru.rocketbank.core.widgets.RocketButton;
import ru.rocketbank.core.widgets.RocketCalendarView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.delivery.DeliveryDateTimeData;

public abstract class FragmentDeliveryDateBinding extends ViewDataBinding {
    public final LinearLayout intervalsView;
    protected DeliveryDateTimeData mData;
    protected OnClickListener mListener;
    public final RocketButton nextButton;
    public final RocketCalendarView rockerCalendar;
    public final View separator;
    public final RocketTextView staticText;

    public abstract void setData(DeliveryDateTimeData deliveryDateTimeData);

    public abstract void setListener(OnClickListener onClickListener);

    protected FragmentDeliveryDateBinding(DataBindingComponent dataBindingComponent, View view, int i, LinearLayout linearLayout, RocketButton rocketButton, RocketCalendarView rocketCalendarView, View view2, RocketTextView rocketTextView) {
        super(dataBindingComponent, view, i);
        this.intervalsView = linearLayout;
        this.nextButton = rocketButton;
        this.rockerCalendar = rocketCalendarView;
        this.separator = view2;
        this.staticText = rocketTextView;
    }

    public OnClickListener getListener() {
        return this.mListener;
    }

    public DeliveryDateTimeData getData() {
        return this.mData;
    }

    public static FragmentDeliveryDateBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentDeliveryDateBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentDeliveryDateBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentDeliveryDateBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (FragmentDeliveryDateBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.fragment_delivery_date, viewGroup, z, dataBindingComponent);
    }

    public static FragmentDeliveryDateBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return (FragmentDeliveryDateBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.fragment_delivery_date, null, false, dataBindingComponent);
    }

    public static FragmentDeliveryDateBinding bind(View view, DataBindingComponent dataBindingComponent) {
        return (FragmentDeliveryDateBinding) bind(dataBindingComponent, view, C0859R.layout.fragment_delivery_date);
    }
}
