package ru.rocketbank.r2d2.fragments.delivery;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.facebook.share.internal.ShareConstants;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.PresenterManager;
import ru.rocketbank.core.network.model.delivery.Interval;
import ru.rocketbank.core.widgets.RocketCalendarView;
import ru.rocketbank.core.widgets.RocketCalendarView.DateSelectListener;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.delivery.DeliveryDateTimeData;
import ru.rocketbank.r2d2.data.binding.delivery.TimeIntervalChoseListener;
import ru.rocketbank.r2d2.data.binding.delivery.TimeItemData;
import ru.rocketbank.r2d2.databinding.FragmentDeliveryDateBinding;
import ru.rocketbank.r2d2.databinding.ItemDeliveryTimeIntervalBinding;

/* compiled from: DeliverySelectDateFragment.kt */
public final class DeliverySelectDateFragment extends AbstractDeliveryFragment<DeliverySelectDatePresenter> implements OnClickListener, DateSelectListener, TimeIntervalChoseListener, DeliverySelectDateView {
    public static final Companion Companion = new Companion();
    private HashMap _$_findViewCache;
    private FragmentDeliveryDateBinding binding;
    private RocketCalendarView calendarView;
    private final DeliveryDateTimeData data = new DeliveryDateTimeData();
    private LinearLayout intervalsView;
    private String lastSelectedKey;
    private TimeItemData lastTimeItem;

    /* compiled from: DeliverySelectDateFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public final DeliverySelectDateFragment newInstance(String str) {
            Intrinsics.checkParameterIsNotNull(str, "deliveryToken");
            DeliverySelectDateFragment deliverySelectDateFragment = new DeliverySelectDateFragment();
            AbstractDeliveryFragment.Companion.setArguments(deliverySelectDateFragment, str);
            return deliverySelectDateFragment;
        }
    }

    public static final DeliverySelectDateFragment newInstance(String str) {
        return Companion.newInstance(str);
    }

    public final void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public final View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view == null) {
            view = getView();
            if (view == null) {
                return null;
            }
            view = view.findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view);
        }
        return view;
    }

    public final int getTitleResID() {
        return C0859R.string.date_and_time;
    }

    public final DeliverySelectDatePresenter createPresenter() {
        PresenterManager presenterManager = PresenterManager.INSTANCE;
        UUID fromString = UUID.fromString("038514ec-8c7a-41fc-9d28-b097f0eff1c8");
        Intrinsics.checkExpressionValueIsNotNull(fromString, "UUID.fromString(\"038514e…-41fc-9d28-b097f0eff1c8\")");
        return (DeliverySelectDatePresenter) PresenterManager.getOrCreatePresenter(fromString, DeliverySelectDatePresenter.class);
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        layoutInflater = FragmentDeliveryDateBinding.inflate(layoutInflater, viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "FragmentDeliveryDateBind…flater, container, false)");
        this.binding = layoutInflater;
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        layoutInflater.setData(this.data);
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        layoutInflater = layoutInflater.rockerCalendar;
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "binding.rockerCalendar");
        this.calendarView = layoutInflater;
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        layoutInflater = layoutInflater.intervalsView;
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "binding.intervalsView");
        this.intervalsView = layoutInflater;
        ((DeliverySelectDatePresenter) getPresenter()).setView(this);
        ((DeliverySelectDatePresenter) getPresenter()).onCreate(bundle, getToken());
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        layoutInflater = layoutInflater.getRoot();
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "binding.root");
        return layoutInflater;
    }

    public final void onStart() {
        super.onStart();
        RocketCalendarView rocketCalendarView = this.calendarView;
        if (rocketCalendarView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("calendarView");
        }
        rocketCalendarView.setDayListener(this);
        FragmentDeliveryDateBinding fragmentDeliveryDateBinding = this.binding;
        if (fragmentDeliveryDateBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        fragmentDeliveryDateBinding.setListener(this);
    }

    public final void onStop() {
        super.onStop();
        RocketCalendarView rocketCalendarView = this.calendarView;
        if (rocketCalendarView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("calendarView");
        }
        rocketCalendarView.setDayListener(null);
        FragmentDeliveryDateBinding fragmentDeliveryDateBinding = this.binding;
        if (fragmentDeliveryDateBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        fragmentDeliveryDateBinding.setListener(null);
    }

    public final void onDestroyView() {
        super.onDestroyView();
        ((DeliverySelectDatePresenter) getPresenter()).setView(null);
        _$_clearFindViewByIdCache();
    }

    public final void setUpCalendar(Calendar calendar) {
        Intrinsics.checkParameterIsNotNull(calendar, "calendar");
        RocketCalendarView rocketCalendarView = this.calendarView;
        if (rocketCalendarView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("calendarView");
        }
        rocketCalendarView.setCalendar(calendar);
    }

    public final void nextStep() {
        nextStep(3);
    }

    public final void intervalsLoaded(ArrayList<Interval> arrayList) {
        LinearLayout linearLayout = this.intervalsView;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("intervalsView");
        }
        linearLayout.removeAllViews();
        LayoutInflater from = LayoutInflater.from(getContext());
        Object obj = null;
        if (!(arrayList == null || arrayList.isEmpty())) {
            obj = 1;
        }
        if (obj != null) {
            Intrinsics.checkExpressionValueIsNotNull(from, "inflater");
            if (arrayList == null) {
                Intrinsics.throwNpe();
            }
            fillIntervals(from, arrayList);
            return;
        }
        Intrinsics.checkExpressionValueIsNotNull(from, "inflater");
        addItem(from, null, "Нет свободных интервалов");
    }

    private final void fillIntervals(LayoutInflater layoutInflater, ArrayList<Interval> arrayList) {
        for (Interval interval : arrayList) {
            addItem(layoutInflater, interval.getKey(), interval.getText());
        }
    }

    private final void addItem(LayoutInflater layoutInflater, String str, String str2) {
        LinearLayout linearLayout = this.intervalsView;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("intervalsView");
        }
        layoutInflater = layoutInflater.inflate(C0859R.layout.item_delivery_time_interval, linearLayout, false);
        ItemDeliveryTimeIntervalBinding bind = ItemDeliveryTimeIntervalBinding.bind(layoutInflater);
        TimeItemData timeItemData = new TimeItemData();
        timeItemData.getIntervalText().set(str2);
        Intrinsics.checkExpressionValueIsNotNull(bind, "binding");
        bind.setData(timeItemData);
        bind.setListener(this);
        bind.setKey(str);
        str = this.intervalsView;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("intervalsView");
        }
        str.addView(layoutInflater);
    }

    public final void onTimeIntervalClicked(String str, TimeItemData timeItemData) {
        Intrinsics.checkParameterIsNotNull(str, "key");
        Intrinsics.checkParameterIsNotNull(timeItemData, ShareConstants.WEB_DIALOG_PARAM_DATA);
        TimeItemData timeItemData2 = this.lastTimeItem;
        if (timeItemData2 != null) {
            timeItemData2.isSelected().set(false);
        }
        timeItemData.isSelected().set(true);
        this.lastSelectedKey = str;
        this.lastTimeItem = timeItemData;
        this.data.getNextButtonEnabled().set(true);
    }

    public final void showNearestDayAndTime(ArrayList<Interval> arrayList) {
        Intrinsics.checkParameterIsNotNull(arrayList, "intervals");
        RocketCalendarView rocketCalendarView = this.calendarView;
        if (rocketCalendarView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("calendarView");
        }
        rocketCalendarView.updateCalendar$13462e();
        LinearLayout linearLayout = this.intervalsView;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("intervalsView");
        }
        linearLayout.removeAllViews();
        LayoutInflater from = LayoutInflater.from(getContext());
        Intrinsics.checkExpressionValueIsNotNull(from, "inflater");
        fillIntervals(from, arrayList);
    }

    public final void onClick(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        String str = this.lastSelectedKey;
        if (str != null) {
            view.setEnabled(false);
            ((DeliverySelectDatePresenter) getPresenter()).nextPressed(getToken(), str);
            view.setEnabled(true);
        }
    }

    public final void onDateSelected(int i, int i2, int i3) {
        ((DeliverySelectDatePresenter) getPresenter()).daySelected(getToken(), i, i2, i3);
    }
}
