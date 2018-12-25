package ru.rocketbank.r2d2.fragments.transfers;

import android.os.Bundle;
import android.support.design.widget.TabLayout;
import android.support.design.widget.TabLayout.OnTabSelectedListener;
import android.support.design.widget.TabLayout.Tab;
import android.support.design.widget.TabLayout.TabLayoutOnPageChangeListener;
import android.support.v4.app.DialogFragment;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import ru.rocketbank.core.widgets.RocketButton;
import ru.rocketbank.core.widgets.ViewPagerAdapter;
import ru.rocketbank.core.widgets.WheelView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.fragments.transfers.BudgetDate.Period;

/* compiled from: DatePeriodChooseDialog.kt */
public final class DatePeriodChooseDialog extends DialogFragment {
    public static final Companion Companion = new Companion();
    private static final String DATE_PERIOD = "DATE_PERIOD";
    private static final String IS_MONTH_ONLY = "IS_MONTH_ONLY";
    private static List<String> years;
    private HashMap _$_findViewCache;
    private Function1<? super Period, Unit> callback;
    private Period datePeriod;
    private Tab tabHalf;
    private Tab tabMonth;
    private Tab tabQuarter;
    private Tab tabYear;

    /* compiled from: DatePeriodChooseDialog.kt */
    public static final class Companion {
        private Companion() {
        }

        public final String getDATE_PERIOD() {
            return DatePeriodChooseDialog.DATE_PERIOD;
        }

        public final List<String> getYears() {
            return DatePeriodChooseDialog.years;
        }

        public final void setYears(List<String> list) {
            Intrinsics.checkParameterIsNotNull(list, "<set-?>");
            DatePeriodChooseDialog.years = list;
        }

        public static /* bridge */ /* synthetic */ DatePeriodChooseDialog newInstance$default(Companion companion, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = false;
            }
            return companion.newInstance(z);
        }

        public final DatePeriodChooseDialog newInstance(boolean z) {
            DatePeriodChooseDialog datePeriodChooseDialog = new DatePeriodChooseDialog();
            Bundle bundle = new Bundle();
            bundle.putBoolean(DatePeriodChooseDialog.IS_MONTH_ONLY, z);
            datePeriodChooseDialog.setArguments(bundle);
            return datePeriodChooseDialog;
        }
    }

    public static final DatePeriodChooseDialog newInstance(boolean z) {
        return Companion.newInstance(z);
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

    public final /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public DatePeriodChooseDialog() {
        Period period = new Period();
        Calendar instance = Calendar.getInstance();
        period.setYear(instance.get(1));
        period.setMonth(Integer.valueOf(instance.get(2)));
        Integer month = period.getMonth();
        if (month == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Int");
        }
        period.setQuarter(Integer.valueOf(month.intValue() / 3));
        month = period.getMonth();
        if (month == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Int");
        }
        period.setHalf(Integer.valueOf(month.intValue() / 6));
        this.datePeriod = period;
    }

    public static final /* synthetic */ Tab access$getTabHalf$p(DatePeriodChooseDialog datePeriodChooseDialog) {
        datePeriodChooseDialog = datePeriodChooseDialog.tabHalf;
        if (datePeriodChooseDialog == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tabHalf");
        }
        return datePeriodChooseDialog;
    }

    public static final /* synthetic */ Tab access$getTabMonth$p(DatePeriodChooseDialog datePeriodChooseDialog) {
        datePeriodChooseDialog = datePeriodChooseDialog.tabMonth;
        if (datePeriodChooseDialog == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tabMonth");
        }
        return datePeriodChooseDialog;
    }

    public static final /* synthetic */ Tab access$getTabQuarter$p(DatePeriodChooseDialog datePeriodChooseDialog) {
        datePeriodChooseDialog = datePeriodChooseDialog.tabQuarter;
        if (datePeriodChooseDialog == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tabQuarter");
        }
        return datePeriodChooseDialog;
    }

    public static final /* synthetic */ Tab access$getTabYear$p(DatePeriodChooseDialog datePeriodChooseDialog) {
        datePeriodChooseDialog = datePeriodChooseDialog.tabYear;
        if (datePeriodChooseDialog == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tabYear");
        }
        return datePeriodChooseDialog;
    }

    static {
        int i = Calendar.getInstance().get(1);
        Iterable intRange = new IntRange(i - 1, i + 30);
        Collection arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault$251b5948(intRange));
        Iterator it = intRange.iterator();
        while (it.hasNext()) {
            arrayList.add(String.valueOf(((IntIterator) it).nextInt()));
        }
        years = CollectionsKt.toList((List) arrayList);
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        viewGroup = layoutInflater.inflate(C0859R.layout.dialog_fragment_date_period_choose, viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
        TabLayout tabLayout = (TabLayout) viewGroup.findViewById(C0859R.id.tabLayout);
        Tab text = tabLayout.newTab().setText(C0859R.string.month_tab);
        Intrinsics.checkExpressionValueIsNotNull(text, "tabLayout.newTab().setText(R.string.month_tab)");
        this.tabMonth = text;
        text = tabLayout.newTab().setText(C0859R.string.half_year_tab);
        Intrinsics.checkExpressionValueIsNotNull(text, "tabLayout.newTab().setText(R.string.half_year_tab)");
        this.tabHalf = text;
        text = tabLayout.newTab().setText(C0859R.string.quarter_tab);
        Intrinsics.checkExpressionValueIsNotNull(text, "tabLayout.newTab().setText(R.string.quarter_tab)");
        this.tabQuarter = text;
        text = tabLayout.newTab().setText(C0859R.string.year_tab);
        Intrinsics.checkExpressionValueIsNotNull(text, "tabLayout.newTab().setText(R.string.year_tab)");
        this.tabYear = text;
        text = this.tabMonth;
        if (text == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tabMonth");
        }
        tabLayout.addTab(text);
        text = this.tabHalf;
        if (text == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tabHalf");
        }
        tabLayout.addTab(text);
        text = this.tabQuarter;
        if (text == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tabQuarter");
        }
        tabLayout.addTab(text);
        text = this.tabYear;
        if (text == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tabYear");
        }
        tabLayout.addTab(text);
        Intrinsics.checkExpressionValueIsNotNull(tabLayout, "tabLayout");
        tabLayout.setTabGravity(0);
        ((ViewPager) viewGroup.findViewById(C0859R.id.pager)).addOnPageChangeListener(new TabLayoutOnPageChangeListener(tabLayout));
        View inflate = layoutInflater.inflate(C0859R.layout.two_wheel_view, (ViewPager) viewGroup.findViewById(C0859R.id.pager), false);
        Intrinsics.checkExpressionValueIsNotNull(inflate, "monthView");
        WheelView wheelView = (WheelView) inflate.findViewById(C0859R.id.leftWheel);
        Intrinsics.checkExpressionValueIsNotNull(wheelView, "monthView.leftWheel");
        fillMonthWheel(wheelView);
        wheelView = (WheelView) inflate.findViewById(C0859R.id.rightWheel);
        Intrinsics.checkExpressionValueIsNotNull(wheelView, "monthView.rightWheel");
        fillYearWheel(wheelView);
        View inflate2 = layoutInflater.inflate(C0859R.layout.two_wheel_view, (ViewPager) viewGroup.findViewById(C0859R.id.pager), false);
        Intrinsics.checkExpressionValueIsNotNull(inflate2, "halfView");
        WheelView wheelView2 = (WheelView) inflate2.findViewById(C0859R.id.leftWheel);
        Object stringArray = getResources().getStringArray(C0859R.array.half_years);
        Intrinsics.checkExpressionValueIsNotNull(stringArray, "resources.getStringArray(R.array.half_years)");
        Intrinsics.checkParameterIsNotNull(stringArray, "$receiver");
        List asList = Arrays.asList(stringArray);
        Intrinsics.checkExpressionValueIsNotNull(asList, "ArraysUtilJVM.asList(this)");
        wheelView2.setItems(asList);
        wheelView2 = (WheelView) inflate2.findViewById(C0859R.id.leftWheel);
        Intrinsics.checkExpressionValueIsNotNull(wheelView2, "halfView.leftWheel");
        wheelView2.setOnWheelViewListener(new DatePeriodChooseDialog$onCreateView$1(this));
        wheelView2 = (WheelView) inflate2.findViewById(C0859R.id.rightWheel);
        Intrinsics.checkExpressionValueIsNotNull(wheelView2, "halfView.rightWheel");
        fillYearWheel(wheelView2);
        View inflate3 = layoutInflater.inflate(C0859R.layout.two_wheel_view, (ViewPager) viewGroup.findViewById(C0859R.id.pager), false);
        Intrinsics.checkExpressionValueIsNotNull(inflate3, "quarterView");
        WheelView wheelView3 = (WheelView) inflate3.findViewById(C0859R.id.leftWheel);
        Object stringArray2 = getResources().getStringArray(C0859R.array.quarters);
        Intrinsics.checkExpressionValueIsNotNull(stringArray2, "resources.getStringArray(R.array.quarters)");
        Intrinsics.checkParameterIsNotNull(stringArray2, "$receiver");
        List asList2 = Arrays.asList(stringArray2);
        Intrinsics.checkExpressionValueIsNotNull(asList2, "ArraysUtilJVM.asList(this)");
        wheelView3.setItems(asList2);
        wheelView3 = (WheelView) inflate3.findViewById(C0859R.id.leftWheel);
        Intrinsics.checkExpressionValueIsNotNull(wheelView3, "quarterView.leftWheel");
        wheelView3.setOnWheelViewListener(new DatePeriodChooseDialog$onCreateView$2(this));
        wheelView3 = (WheelView) inflate3.findViewById(C0859R.id.rightWheel);
        Intrinsics.checkExpressionValueIsNotNull(wheelView3, "quarterView.rightWheel");
        fillYearWheel(wheelView3);
        layoutInflater = layoutInflater.inflate(C0859R.layout.two_wheel_view, (ViewPager) viewGroup.findViewById(C0859R.id.pager), false);
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "yearView");
        WheelView wheelView4 = (WheelView) layoutInflater.findViewById(C0859R.id.leftWheel);
        Intrinsics.checkExpressionValueIsNotNull(wheelView4, "yearView.leftWheel");
        wheelView4.setVisibility(8);
        wheelView4 = (WheelView) layoutInflater.findViewById(C0859R.id.leftWheel);
        Intrinsics.checkExpressionValueIsNotNull(wheelView4, "yearView.leftWheel");
        wheelView4.setOnWheelViewListener(new DatePeriodChooseDialog$onCreateView$3(this));
        wheelView4 = (WheelView) layoutInflater.findViewById(C0859R.id.rightWheel);
        Intrinsics.checkExpressionValueIsNotNull(wheelView4, "yearView.rightWheel");
        fillYearWheel(wheelView4);
        ((RocketButton) viewGroup.findViewById(C0859R.id.buttonOk)).setOnClickListener(new DatePeriodChooseDialog$onCreateView$4(this));
        ((RocketButton) viewGroup.findViewById(C0859R.id.buttonCancel)).setOnClickListener(new DatePeriodChooseDialog$onCreateView$5(this));
        Bundle arguments = getArguments();
        if (arguments == null || !arguments.getBoolean(IS_MONTH_ONLY)) {
            layoutInflater = new View[]{inflate, inflate2, inflate3, layoutInflater};
        } else {
            View view = tabLayout;
            Intrinsics.checkParameterIsNotNull(view, "$receiver");
            view.setVisibility(8);
            layoutInflater = new View[]{inflate};
        }
        ViewPager viewPager = (ViewPager) viewGroup.findViewById(C0859R.id.pager);
        Intrinsics.checkExpressionValueIsNotNull(viewPager, "view.pager");
        viewPager.setAdapter(new ViewPagerAdapter(layoutInflater));
        tabLayout.setOnTabSelectedListener((OnTabSelectedListener) new DatePeriodChooseDialog$onCreateView$6(this));
        return viewGroup;
    }

    public final void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        bundle = getArguments();
        Period period = (Period) (bundle != null ? bundle.getSerializable(DATE_PERIOD) : null);
        if (period != null) {
            this.datePeriod = period;
        }
        view.post(new DatePeriodChooseDialog$onViewCreated$1(this, period, view));
    }

    public final void updateTab(Tab tab) {
        ViewPager viewPager;
        PagerAdapter adapter;
        View[] views;
        View view;
        ViewPager viewPager2;
        int currentItem;
        WheelView wheelView;
        Integer month;
        View view2 = getView();
        int i = 0;
        if (view2 != null) {
            viewPager = (ViewPager) view2.findViewById(C0859R.id.pager);
            if (viewPager != null) {
                viewPager.setCurrentItem(tab != null ? tab.getPosition() : 0);
            }
        }
        view2 = getView();
        Object obj = null;
        if (view2 != null) {
            viewPager = (ViewPager) view2.findViewById(C0859R.id.pager);
            if (viewPager != null) {
                adapter = viewPager.getAdapter();
                if (adapter != null) {
                    throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.ViewPagerAdapter");
                }
                views = ((ViewPagerAdapter) adapter).getViews();
                view = getView();
                if (view != null) {
                    viewPager2 = (ViewPager) view.findViewById(C0859R.id.pager);
                    if (viewPager2 != null) {
                        currentItem = viewPager2.getCurrentItem();
                        view2 = views[currentItem];
                        ((WheelView) view2.findViewById(C0859R.id.rightWheel)).setSeletion(years.indexOf(String.valueOf(this.datePeriod.getYear())));
                        if (tab != null) {
                            obj = tab.getText();
                        }
                        if (Intrinsics.areEqual(obj, getResources().getString(C0859R.string.month_tab)) == null) {
                            wheelView = (WheelView) view2.findViewById(C0859R.id.leftWheel);
                            if (wheelView != null) {
                                month = this.datePeriod.getMonth();
                                if (month != null) {
                                    i = month.intValue();
                                }
                                wheelView.setSeletion(i);
                            }
                            return;
                        } else if (Intrinsics.areEqual(obj, getResources().getString(C0859R.string.quarter_tab)) == null) {
                            wheelView = (WheelView) view2.findViewById(C0859R.id.leftWheel);
                            if (wheelView != null) {
                                month = this.datePeriod.getQuarter();
                                if (month != null) {
                                    i = month.intValue();
                                }
                                wheelView.setSeletion(i);
                            }
                            return;
                        } else {
                            if (Intrinsics.areEqual(obj, getResources().getString(C0859R.string.half_year_tab)) != null) {
                                wheelView = (WheelView) view2.findViewById(C0859R.id.leftWheel);
                                if (wheelView != null) {
                                    month = this.datePeriod.getHalf();
                                    if (month != null) {
                                        i = month.intValue();
                                    }
                                    wheelView.setSeletion(i);
                                    return;
                                }
                            }
                            return;
                        }
                    }
                }
                currentItem = 0;
                view2 = views[currentItem];
                ((WheelView) view2.findViewById(C0859R.id.rightWheel)).setSeletion(years.indexOf(String.valueOf(this.datePeriod.getYear())));
                if (tab != null) {
                    obj = tab.getText();
                }
                if (Intrinsics.areEqual(obj, getResources().getString(C0859R.string.month_tab)) == null) {
                    wheelView = (WheelView) view2.findViewById(C0859R.id.leftWheel);
                    if (wheelView != null) {
                        month = this.datePeriod.getMonth();
                        if (month != null) {
                            i = month.intValue();
                        }
                        wheelView.setSeletion(i);
                    }
                    return;
                } else if (Intrinsics.areEqual(obj, getResources().getString(C0859R.string.quarter_tab)) == null) {
                    if (Intrinsics.areEqual(obj, getResources().getString(C0859R.string.half_year_tab)) != null) {
                        wheelView = (WheelView) view2.findViewById(C0859R.id.leftWheel);
                        if (wheelView != null) {
                            month = this.datePeriod.getHalf();
                            if (month != null) {
                                i = month.intValue();
                            }
                            wheelView.setSeletion(i);
                            return;
                        }
                    }
                    return;
                } else {
                    wheelView = (WheelView) view2.findViewById(C0859R.id.leftWheel);
                    if (wheelView != null) {
                        month = this.datePeriod.getQuarter();
                        if (month != null) {
                            i = month.intValue();
                        }
                        wheelView.setSeletion(i);
                    }
                    return;
                }
            }
        }
        adapter = null;
        if (adapter != null) {
            views = ((ViewPagerAdapter) adapter).getViews();
            view = getView();
            if (view != null) {
                viewPager2 = (ViewPager) view.findViewById(C0859R.id.pager);
                if (viewPager2 != null) {
                    currentItem = viewPager2.getCurrentItem();
                    view2 = views[currentItem];
                    ((WheelView) view2.findViewById(C0859R.id.rightWheel)).setSeletion(years.indexOf(String.valueOf(this.datePeriod.getYear())));
                    if (tab != null) {
                        obj = tab.getText();
                    }
                    if (Intrinsics.areEqual(obj, getResources().getString(C0859R.string.month_tab)) == null) {
                        wheelView = (WheelView) view2.findViewById(C0859R.id.leftWheel);
                        if (wheelView != null) {
                            month = this.datePeriod.getMonth();
                            if (month != null) {
                                i = month.intValue();
                            }
                            wheelView.setSeletion(i);
                        }
                        return;
                    } else if (Intrinsics.areEqual(obj, getResources().getString(C0859R.string.quarter_tab)) == null) {
                        wheelView = (WheelView) view2.findViewById(C0859R.id.leftWheel);
                        if (wheelView != null) {
                            month = this.datePeriod.getQuarter();
                            if (month != null) {
                                i = month.intValue();
                            }
                            wheelView.setSeletion(i);
                        }
                        return;
                    } else {
                        if (Intrinsics.areEqual(obj, getResources().getString(C0859R.string.half_year_tab)) != null) {
                            wheelView = (WheelView) view2.findViewById(C0859R.id.leftWheel);
                            if (wheelView != null) {
                                month = this.datePeriod.getHalf();
                                if (month != null) {
                                    i = month.intValue();
                                }
                                wheelView.setSeletion(i);
                                return;
                            }
                        }
                        return;
                    }
                }
            }
            currentItem = 0;
            view2 = views[currentItem];
            ((WheelView) view2.findViewById(C0859R.id.rightWheel)).setSeletion(years.indexOf(String.valueOf(this.datePeriod.getYear())));
            if (tab != null) {
                obj = tab.getText();
            }
            if (Intrinsics.areEqual(obj, getResources().getString(C0859R.string.month_tab)) == null) {
                wheelView = (WheelView) view2.findViewById(C0859R.id.leftWheel);
                if (wheelView != null) {
                    month = this.datePeriod.getMonth();
                    if (month != null) {
                        i = month.intValue();
                    }
                    wheelView.setSeletion(i);
                }
                return;
            } else if (Intrinsics.areEqual(obj, getResources().getString(C0859R.string.quarter_tab)) == null) {
                if (Intrinsics.areEqual(obj, getResources().getString(C0859R.string.half_year_tab)) != null) {
                    wheelView = (WheelView) view2.findViewById(C0859R.id.leftWheel);
                    if (wheelView != null) {
                        month = this.datePeriod.getHalf();
                        if (month != null) {
                            i = month.intValue();
                        }
                        wheelView.setSeletion(i);
                        return;
                    }
                }
                return;
            } else {
                wheelView = (WheelView) view2.findViewById(C0859R.id.leftWheel);
                if (wheelView != null) {
                    month = this.datePeriod.getQuarter();
                    if (month != null) {
                        i = month.intValue();
                    }
                    wheelView.setSeletion(i);
                }
                return;
            }
        }
        throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.ViewPagerAdapter");
    }

    private final void onCancelClick() {
        dismiss();
    }

    private final void onOkClick() {
        Function1 function1 = this.callback;
        if (function1 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("callback");
        }
        function1.invoke(getDatePeriod());
        dismiss();
    }

    private final Period getDatePeriod() {
        int currentItem;
        View view;
        Object obj;
        TabLayout tabLayout;
        Tab tabAt;
        View view2;
        ViewPager viewPager;
        PagerAdapter adapter;
        WheelView wheelView;
        String seletedItem;
        int parseInt;
        WheelView wheelView2;
        Integer valueOf;
        Period period = new Period();
        View view3 = getView();
        if (view3 != null) {
            ViewPager viewPager2 = (ViewPager) view3.findViewById(C0859R.id.pager);
            if (viewPager2 != null) {
                currentItem = viewPager2.getCurrentItem();
                view = getView();
                obj = null;
                if (view != null) {
                    tabLayout = (TabLayout) view.findViewById(C0859R.id.tabLayout);
                    if (tabLayout != null) {
                        tabAt = tabLayout.getTabAt(currentItem);
                        view2 = getView();
                        if (view2 != null) {
                            viewPager = (ViewPager) view2.findViewById(C0859R.id.pager);
                            if (viewPager != null) {
                                adapter = viewPager.getAdapter();
                                if (adapter != null) {
                                    throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.ViewPagerAdapter");
                                }
                                view3 = ((ViewPagerAdapter) adapter).getViews()[currentItem];
                                wheelView = (WheelView) view3.findViewById(C0859R.id.rightWheel);
                                if (wheelView != null) {
                                    seletedItem = wheelView.getSeletedItem();
                                    if (seletedItem != null) {
                                        parseInt = Integer.parseInt(seletedItem);
                                        period.setYear(parseInt);
                                        wheelView2 = (WheelView) view3.findViewById(C0859R.id.leftWheel);
                                        valueOf = wheelView2 == null ? Integer.valueOf(wheelView2.getSeletedIndex()) : null;
                                        if (tabAt != null) {
                                            obj = tabAt.getText();
                                        }
                                        if (!Intrinsics.areEqual(obj, getResources().getString(C0859R.string.month_tab))) {
                                            period.setMonth(valueOf);
                                        } else if (!Intrinsics.areEqual(obj, getResources().getString(C0859R.string.quarter_tab))) {
                                            period.setQuarter(valueOf);
                                        } else if (Intrinsics.areEqual(obj, getResources().getString(C0859R.string.half_year_tab))) {
                                            period.setHalf(valueOf);
                                        }
                                        return period;
                                    }
                                }
                                parseInt = Calendar.getInstance().get(1);
                                period.setYear(parseInt);
                                wheelView2 = (WheelView) view3.findViewById(C0859R.id.leftWheel);
                                if (wheelView2 == null) {
                                }
                                if (tabAt != null) {
                                    obj = tabAt.getText();
                                }
                                if (!Intrinsics.areEqual(obj, getResources().getString(C0859R.string.month_tab))) {
                                    period.setMonth(valueOf);
                                } else if (!Intrinsics.areEqual(obj, getResources().getString(C0859R.string.quarter_tab))) {
                                    period.setQuarter(valueOf);
                                } else if (Intrinsics.areEqual(obj, getResources().getString(C0859R.string.half_year_tab))) {
                                    period.setHalf(valueOf);
                                }
                                return period;
                            }
                        }
                        adapter = null;
                        if (adapter != null) {
                            view3 = ((ViewPagerAdapter) adapter).getViews()[currentItem];
                            wheelView = (WheelView) view3.findViewById(C0859R.id.rightWheel);
                            if (wheelView != null) {
                                seletedItem = wheelView.getSeletedItem();
                                if (seletedItem != null) {
                                    parseInt = Integer.parseInt(seletedItem);
                                    period.setYear(parseInt);
                                    wheelView2 = (WheelView) view3.findViewById(C0859R.id.leftWheel);
                                    if (wheelView2 == null) {
                                    }
                                    if (tabAt != null) {
                                        obj = tabAt.getText();
                                    }
                                    if (!Intrinsics.areEqual(obj, getResources().getString(C0859R.string.month_tab))) {
                                        period.setMonth(valueOf);
                                    } else if (!Intrinsics.areEqual(obj, getResources().getString(C0859R.string.quarter_tab))) {
                                        period.setQuarter(valueOf);
                                    } else if (Intrinsics.areEqual(obj, getResources().getString(C0859R.string.half_year_tab))) {
                                        period.setHalf(valueOf);
                                    }
                                    return period;
                                }
                            }
                            parseInt = Calendar.getInstance().get(1);
                            period.setYear(parseInt);
                            wheelView2 = (WheelView) view3.findViewById(C0859R.id.leftWheel);
                            if (wheelView2 == null) {
                            }
                            if (tabAt != null) {
                                obj = tabAt.getText();
                            }
                            if (!Intrinsics.areEqual(obj, getResources().getString(C0859R.string.month_tab))) {
                                period.setMonth(valueOf);
                            } else if (!Intrinsics.areEqual(obj, getResources().getString(C0859R.string.quarter_tab))) {
                                period.setQuarter(valueOf);
                            } else if (Intrinsics.areEqual(obj, getResources().getString(C0859R.string.half_year_tab))) {
                                period.setHalf(valueOf);
                            }
                            return period;
                        }
                        throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.ViewPagerAdapter");
                    }
                }
                tabAt = null;
                view2 = getView();
                if (view2 != null) {
                    viewPager = (ViewPager) view2.findViewById(C0859R.id.pager);
                    if (viewPager != null) {
                        adapter = viewPager.getAdapter();
                        if (adapter != null) {
                            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.ViewPagerAdapter");
                        }
                        view3 = ((ViewPagerAdapter) adapter).getViews()[currentItem];
                        wheelView = (WheelView) view3.findViewById(C0859R.id.rightWheel);
                        if (wheelView != null) {
                            seletedItem = wheelView.getSeletedItem();
                            if (seletedItem != null) {
                                parseInt = Integer.parseInt(seletedItem);
                                period.setYear(parseInt);
                                wheelView2 = (WheelView) view3.findViewById(C0859R.id.leftWheel);
                                if (wheelView2 == null) {
                                }
                                if (tabAt != null) {
                                    obj = tabAt.getText();
                                }
                                if (!Intrinsics.areEqual(obj, getResources().getString(C0859R.string.month_tab))) {
                                    period.setMonth(valueOf);
                                } else if (!Intrinsics.areEqual(obj, getResources().getString(C0859R.string.quarter_tab))) {
                                    period.setQuarter(valueOf);
                                } else if (Intrinsics.areEqual(obj, getResources().getString(C0859R.string.half_year_tab))) {
                                    period.setHalf(valueOf);
                                }
                                return period;
                            }
                        }
                        parseInt = Calendar.getInstance().get(1);
                        period.setYear(parseInt);
                        wheelView2 = (WheelView) view3.findViewById(C0859R.id.leftWheel);
                        if (wheelView2 == null) {
                        }
                        if (tabAt != null) {
                            obj = tabAt.getText();
                        }
                        if (!Intrinsics.areEqual(obj, getResources().getString(C0859R.string.month_tab))) {
                            period.setMonth(valueOf);
                        } else if (!Intrinsics.areEqual(obj, getResources().getString(C0859R.string.quarter_tab))) {
                            period.setQuarter(valueOf);
                        } else if (Intrinsics.areEqual(obj, getResources().getString(C0859R.string.half_year_tab))) {
                            period.setHalf(valueOf);
                        }
                        return period;
                    }
                }
                adapter = null;
                if (adapter != null) {
                    view3 = ((ViewPagerAdapter) adapter).getViews()[currentItem];
                    wheelView = (WheelView) view3.findViewById(C0859R.id.rightWheel);
                    if (wheelView != null) {
                        seletedItem = wheelView.getSeletedItem();
                        if (seletedItem != null) {
                            parseInt = Integer.parseInt(seletedItem);
                            period.setYear(parseInt);
                            wheelView2 = (WheelView) view3.findViewById(C0859R.id.leftWheel);
                            if (wheelView2 == null) {
                            }
                            if (tabAt != null) {
                                obj = tabAt.getText();
                            }
                            if (!Intrinsics.areEqual(obj, getResources().getString(C0859R.string.month_tab))) {
                                period.setMonth(valueOf);
                            } else if (!Intrinsics.areEqual(obj, getResources().getString(C0859R.string.quarter_tab))) {
                                period.setQuarter(valueOf);
                            } else if (Intrinsics.areEqual(obj, getResources().getString(C0859R.string.half_year_tab))) {
                                period.setHalf(valueOf);
                            }
                            return period;
                        }
                    }
                    parseInt = Calendar.getInstance().get(1);
                    period.setYear(parseInt);
                    wheelView2 = (WheelView) view3.findViewById(C0859R.id.leftWheel);
                    if (wheelView2 == null) {
                    }
                    if (tabAt != null) {
                        obj = tabAt.getText();
                    }
                    if (!Intrinsics.areEqual(obj, getResources().getString(C0859R.string.month_tab))) {
                        period.setMonth(valueOf);
                    } else if (!Intrinsics.areEqual(obj, getResources().getString(C0859R.string.quarter_tab))) {
                        period.setQuarter(valueOf);
                    } else if (Intrinsics.areEqual(obj, getResources().getString(C0859R.string.half_year_tab))) {
                        period.setHalf(valueOf);
                    }
                    return period;
                }
                throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.ViewPagerAdapter");
            }
        }
        currentItem = 0;
        view = getView();
        obj = null;
        if (view != null) {
            tabLayout = (TabLayout) view.findViewById(C0859R.id.tabLayout);
            if (tabLayout != null) {
                tabAt = tabLayout.getTabAt(currentItem);
                view2 = getView();
                if (view2 != null) {
                    viewPager = (ViewPager) view2.findViewById(C0859R.id.pager);
                    if (viewPager != null) {
                        adapter = viewPager.getAdapter();
                        if (adapter != null) {
                            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.ViewPagerAdapter");
                        }
                        view3 = ((ViewPagerAdapter) adapter).getViews()[currentItem];
                        wheelView = (WheelView) view3.findViewById(C0859R.id.rightWheel);
                        if (wheelView != null) {
                            seletedItem = wheelView.getSeletedItem();
                            if (seletedItem != null) {
                                parseInt = Integer.parseInt(seletedItem);
                                period.setYear(parseInt);
                                wheelView2 = (WheelView) view3.findViewById(C0859R.id.leftWheel);
                                if (wheelView2 == null) {
                                }
                                if (tabAt != null) {
                                    obj = tabAt.getText();
                                }
                                if (!Intrinsics.areEqual(obj, getResources().getString(C0859R.string.month_tab))) {
                                    period.setMonth(valueOf);
                                } else if (!Intrinsics.areEqual(obj, getResources().getString(C0859R.string.quarter_tab))) {
                                    period.setQuarter(valueOf);
                                } else if (Intrinsics.areEqual(obj, getResources().getString(C0859R.string.half_year_tab))) {
                                    period.setHalf(valueOf);
                                }
                                return period;
                            }
                        }
                        parseInt = Calendar.getInstance().get(1);
                        period.setYear(parseInt);
                        wheelView2 = (WheelView) view3.findViewById(C0859R.id.leftWheel);
                        if (wheelView2 == null) {
                        }
                        if (tabAt != null) {
                            obj = tabAt.getText();
                        }
                        if (!Intrinsics.areEqual(obj, getResources().getString(C0859R.string.month_tab))) {
                            period.setMonth(valueOf);
                        } else if (!Intrinsics.areEqual(obj, getResources().getString(C0859R.string.quarter_tab))) {
                            period.setQuarter(valueOf);
                        } else if (Intrinsics.areEqual(obj, getResources().getString(C0859R.string.half_year_tab))) {
                            period.setHalf(valueOf);
                        }
                        return period;
                    }
                }
                adapter = null;
                if (adapter != null) {
                    view3 = ((ViewPagerAdapter) adapter).getViews()[currentItem];
                    wheelView = (WheelView) view3.findViewById(C0859R.id.rightWheel);
                    if (wheelView != null) {
                        seletedItem = wheelView.getSeletedItem();
                        if (seletedItem != null) {
                            parseInt = Integer.parseInt(seletedItem);
                            period.setYear(parseInt);
                            wheelView2 = (WheelView) view3.findViewById(C0859R.id.leftWheel);
                            if (wheelView2 == null) {
                            }
                            if (tabAt != null) {
                                obj = tabAt.getText();
                            }
                            if (!Intrinsics.areEqual(obj, getResources().getString(C0859R.string.month_tab))) {
                                period.setMonth(valueOf);
                            } else if (!Intrinsics.areEqual(obj, getResources().getString(C0859R.string.quarter_tab))) {
                                period.setQuarter(valueOf);
                            } else if (Intrinsics.areEqual(obj, getResources().getString(C0859R.string.half_year_tab))) {
                                period.setHalf(valueOf);
                            }
                            return period;
                        }
                    }
                    parseInt = Calendar.getInstance().get(1);
                    period.setYear(parseInt);
                    wheelView2 = (WheelView) view3.findViewById(C0859R.id.leftWheel);
                    if (wheelView2 == null) {
                    }
                    if (tabAt != null) {
                        obj = tabAt.getText();
                    }
                    if (!Intrinsics.areEqual(obj, getResources().getString(C0859R.string.month_tab))) {
                        period.setMonth(valueOf);
                    } else if (!Intrinsics.areEqual(obj, getResources().getString(C0859R.string.quarter_tab))) {
                        period.setQuarter(valueOf);
                    } else if (Intrinsics.areEqual(obj, getResources().getString(C0859R.string.half_year_tab))) {
                        period.setHalf(valueOf);
                    }
                    return period;
                }
                throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.ViewPagerAdapter");
            }
        }
        tabAt = null;
        view2 = getView();
        if (view2 != null) {
            viewPager = (ViewPager) view2.findViewById(C0859R.id.pager);
            if (viewPager != null) {
                adapter = viewPager.getAdapter();
                if (adapter != null) {
                    throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.ViewPagerAdapter");
                }
                view3 = ((ViewPagerAdapter) adapter).getViews()[currentItem];
                wheelView = (WheelView) view3.findViewById(C0859R.id.rightWheel);
                if (wheelView != null) {
                    seletedItem = wheelView.getSeletedItem();
                    if (seletedItem != null) {
                        parseInt = Integer.parseInt(seletedItem);
                        period.setYear(parseInt);
                        wheelView2 = (WheelView) view3.findViewById(C0859R.id.leftWheel);
                        if (wheelView2 == null) {
                        }
                        if (tabAt != null) {
                            obj = tabAt.getText();
                        }
                        if (!Intrinsics.areEqual(obj, getResources().getString(C0859R.string.month_tab))) {
                            period.setMonth(valueOf);
                        } else if (!Intrinsics.areEqual(obj, getResources().getString(C0859R.string.quarter_tab))) {
                            period.setQuarter(valueOf);
                        } else if (Intrinsics.areEqual(obj, getResources().getString(C0859R.string.half_year_tab))) {
                            period.setHalf(valueOf);
                        }
                        return period;
                    }
                }
                parseInt = Calendar.getInstance().get(1);
                period.setYear(parseInt);
                wheelView2 = (WheelView) view3.findViewById(C0859R.id.leftWheel);
                if (wheelView2 == null) {
                }
                if (tabAt != null) {
                    obj = tabAt.getText();
                }
                if (!Intrinsics.areEqual(obj, getResources().getString(C0859R.string.month_tab))) {
                    period.setMonth(valueOf);
                } else if (!Intrinsics.areEqual(obj, getResources().getString(C0859R.string.quarter_tab))) {
                    period.setQuarter(valueOf);
                } else if (Intrinsics.areEqual(obj, getResources().getString(C0859R.string.half_year_tab))) {
                    period.setHalf(valueOf);
                }
                return period;
            }
        }
        adapter = null;
        if (adapter != null) {
            view3 = ((ViewPagerAdapter) adapter).getViews()[currentItem];
            wheelView = (WheelView) view3.findViewById(C0859R.id.rightWheel);
            if (wheelView != null) {
                seletedItem = wheelView.getSeletedItem();
                if (seletedItem != null) {
                    parseInt = Integer.parseInt(seletedItem);
                    period.setYear(parseInt);
                    wheelView2 = (WheelView) view3.findViewById(C0859R.id.leftWheel);
                    if (wheelView2 == null) {
                    }
                    if (tabAt != null) {
                        obj = tabAt.getText();
                    }
                    if (!Intrinsics.areEqual(obj, getResources().getString(C0859R.string.month_tab))) {
                        period.setMonth(valueOf);
                    } else if (!Intrinsics.areEqual(obj, getResources().getString(C0859R.string.quarter_tab))) {
                        period.setQuarter(valueOf);
                    } else if (Intrinsics.areEqual(obj, getResources().getString(C0859R.string.half_year_tab))) {
                        period.setHalf(valueOf);
                    }
                    return period;
                }
            }
            parseInt = Calendar.getInstance().get(1);
            period.setYear(parseInt);
            wheelView2 = (WheelView) view3.findViewById(C0859R.id.leftWheel);
            if (wheelView2 == null) {
            }
            if (tabAt != null) {
                obj = tabAt.getText();
            }
            if (!Intrinsics.areEqual(obj, getResources().getString(C0859R.string.month_tab))) {
                period.setMonth(valueOf);
            } else if (!Intrinsics.areEqual(obj, getResources().getString(C0859R.string.quarter_tab))) {
                period.setQuarter(valueOf);
            } else if (Intrinsics.areEqual(obj, getResources().getString(C0859R.string.half_year_tab))) {
                period.setHalf(valueOf);
            }
            return period;
        }
        throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.ViewPagerAdapter");
    }

    private final void fillYearWheel(WheelView wheelView) {
        wheelView.setItems(years);
        wheelView.setOnWheelViewListener(new DatePeriodChooseDialog$fillYearWheel$1(this));
    }

    private final void fillMonthWheel(WheelView wheelView) {
        Iterable intRange = new IntRange(0, 11);
        Collection arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault$251b5948(intRange));
        Iterator it = intRange.iterator();
        while (it.hasNext()) {
            arrayList.add(getResources().getStringArray(C0859R.array.month_names)[((IntIterator) it).nextInt()]);
        }
        wheelView.setItems(CollectionsKt.toList((List) arrayList));
        wheelView.setOnWheelViewListener(new DatePeriodChooseDialog$fillMonthWheel$2(this));
    }

    public final void onChooseDate(Function1<? super Period, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, "callback");
        this.callback = function1;
    }
}
