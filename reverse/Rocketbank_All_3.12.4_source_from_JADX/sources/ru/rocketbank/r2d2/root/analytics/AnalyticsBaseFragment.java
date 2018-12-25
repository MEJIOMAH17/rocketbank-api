package ru.rocketbank.r2d2.root.analytics;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.share.internal.ShareConstants;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.CurrencyManager;
import ru.rocketbank.core.model.enums.Currency;
import ru.rocketbank.core.network.api.AnalyticsApi;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.core.utils.MonthNames;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.databinding.FragmentAnalyticsBaseBinding;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import ru.rocketbank.r2d2.utils.CalendarUtils;
import rx.Observable;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;
import rx.schedulers.Schedulers;

/* compiled from: AnalyticsBaseFragment.kt */
public abstract class AnalyticsBaseFragment<T extends Parcelable> extends RocketFragment implements ChangeAnalyticsListener {
    public static final Companion Companion = new Companion();
    public static final String KEY_ANALYTICS_RESPONSE_DATA = "KEY_ANALYTICS_RESPONSE_DATA";
    public static final String KEY_CURRENT_DATE = "KEY_CURRENT_DATE";
    public static final String KEY_JOINT_IDS = "KEY_JOINT_IDS";
    private static Bitmap[] avatars;
    private HashMap _$_findViewCache;
    protected AnalyticsApi analyticsApi;
    protected CurrencyManager currencyManager;
    private Calendar currentDateTime;
    public MoneyFormatter floorMoneyFormatter;
    private final AnalyticsItemHeader header = new AnalyticsItemHeader(0, null, new AnalyticsBaseFragment$header$1(this), new AnalyticsBaseFragment$header$2(this), new AnalyticsBaseFragment$header$3(this), 3, null);
    private int headerSize;
    private boolean isJointAnalytics;
    private AnalyticsItemChart itemChart;
    private T latestAnalyticsResponseData;
    private int[] latestJointIds;
    private final List<AnalyticsItem> list = CollectionsKt.mutableListOf(new AnalyticsItem[]{this.header});
    private AnalyticsMonthsManager monthsManager;
    private Subscription subscriptionProcess;
    private Subscription subscriptionRequest;

    /* compiled from: AnalyticsBaseFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public final Bitmap[] getAvatars() {
            return AnalyticsBaseFragment.avatars;
        }

        public final void setAvatars(Bitmap[] bitmapArr) {
            AnalyticsBaseFragment.avatars = bitmapArr;
        }
    }

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
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

    protected abstract boolean hasData(T t);

    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public abstract Observable<T> request(String str, String str2, int[] iArr);

    protected abstract void showData(T t);

    public AnalyticsBaseFragment() {
        Calendar instance = Calendar.getInstance();
        Intrinsics.checkExpressionValueIsNotNull(instance, "Calendar.getInstance()");
        this.currentDateTime = instance;
    }

    protected final AnalyticsApi getAnalyticsApi() {
        AnalyticsApi analyticsApi = this.analyticsApi;
        if (analyticsApi == null) {
            Intrinsics.throwUninitializedPropertyAccessException("analyticsApi");
        }
        return analyticsApi;
    }

    protected final void setAnalyticsApi(AnalyticsApi analyticsApi) {
        Intrinsics.checkParameterIsNotNull(analyticsApi, "<set-?>");
        this.analyticsApi = analyticsApi;
    }

    protected final CurrencyManager getCurrencyManager() {
        CurrencyManager currencyManager = this.currencyManager;
        if (currencyManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currencyManager");
        }
        return currencyManager;
    }

    protected final void setCurrencyManager(CurrencyManager currencyManager) {
        Intrinsics.checkParameterIsNotNull(currencyManager, "<set-?>");
        this.currencyManager = currencyManager;
    }

    protected final AnalyticsMonthsManager getMonthsManager() {
        return this.monthsManager;
    }

    protected final void setMonthsManager(AnalyticsMonthsManager analyticsMonthsManager) {
        this.monthsManager = analyticsMonthsManager;
    }

    public final MoneyFormatter getFloorMoneyFormatter() {
        MoneyFormatter moneyFormatter = this.floorMoneyFormatter;
        if (moneyFormatter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("floorMoneyFormatter");
        }
        return moneyFormatter;
    }

    public final void setFloorMoneyFormatter(MoneyFormatter moneyFormatter) {
        Intrinsics.checkParameterIsNotNull(moneyFormatter, "<set-?>");
        this.floorMoneyFormatter = moneyFormatter;
    }

    protected final AnalyticsItemHeader getHeader() {
        return this.header;
    }

    protected final List<AnalyticsItem> getList() {
        return this.list;
    }

    protected final AnalyticsItemChart getItemChart() {
        return this.itemChart;
    }

    protected final void setItemChart(AnalyticsItemChart analyticsItemChart) {
        this.itemChart = analyticsItemChart;
    }

    public final int getHeaderSize() {
        return this.headerSize;
    }

    public final void setHeaderSize(int i) {
        this.headerSize = i;
    }

    protected View createView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        layoutInflater = FragmentAnalyticsBaseBinding.inflate(layoutInflater);
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "binding");
        layoutInflater = layoutInflater.getRoot();
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "binding.root");
        return layoutInflater;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onCreate(android.os.Bundle r3) {
        /*
        r2 = this;
        if (r3 == 0) goto L_0x0021;
    L_0x0002:
        r0 = "KEY_ANALYTICS_RESPONSE_DATA";
        r0 = r3.getParcelable(r0);
        r2.latestAnalyticsResponseData = r0;
        r0 = "KEY_JOINT_IDS";
        r0 = r3.getIntArray(r0);
        r2.latestJointIds = r0;
        r0 = "KEY_CURRENT_DATE";
        r0 = r3.getSerializable(r0);
        r0 = (java.util.Calendar) r0;
        if (r0 != 0) goto L_0x001e;
    L_0x001c:
        r0 = r2.currentDateTime;
    L_0x001e:
        r2.currentDateTime = r0;
        goto L_0x0041;
    L_0x0021:
        r0 = r2.getArguments();
        if (r0 == 0) goto L_0x002e;
    L_0x0027:
        r1 = "KEY_CURRENT_DATE";
        r0 = r0.getSerializable(r1);
        goto L_0x002f;
    L_0x002e:
        r0 = 0;
    L_0x002f:
        r0 = (java.util.Calendar) r0;
        if (r0 != 0) goto L_0x003f;
    L_0x0033:
        r0 = r2.monthsManager;
        if (r0 == 0) goto L_0x003d;
    L_0x0037:
        r0 = r0.getPeriodEnd();
        if (r0 != 0) goto L_0x003f;
    L_0x003d:
        r0 = r2.currentDateTime;
    L_0x003f:
        r2.currentDateTime = r0;
    L_0x0041:
        super.onCreate(r3);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.root.analytics.AnalyticsBaseFragment.onCreate(android.os.Bundle):void");
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        return createView(layoutInflater, viewGroup);
    }

    public static /* bridge */ /* synthetic */ String format$default(AnalyticsBaseFragment analyticsBaseFragment, Double d, String str, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: format");
        }
        if ((i & 2) != 0) {
            str = Currency.ROUBLE.toString();
        }
        return analyticsBaseFragment.format(d, str);
    }

    public final String format(Double d, String str) {
        if (d != null) {
            if (!Intrinsics.areEqual$3bd129e3(d)) {
                MoneyFormatter moneyFormatter = this.floorMoneyFormatter;
                if (moneyFormatter == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("floorMoneyFormatter");
                }
                double doubleValue = d.doubleValue();
                if (str == null) {
                    Intrinsics.throwNpe();
                }
                return moneyFormatter.format(doubleValue, str, null);
            }
        }
        d = new StringBuilder("0 ");
        CurrencyManager currencyManager = this.currencyManager;
        if (currencyManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currencyManager");
        }
        d.append(currencyManager.getCurrencySymbol(str));
        return d.toString();
    }

    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        this.analyticsApi = RocketApplication.Companion.getInjector().getAnalyticsApi();
        this.currencyManager = RocketApplication.Companion.getInjector().getCurrencyManager();
        bundle = this.currencyManager;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currencyManager");
        }
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
        Authorization authorization = RocketApplication.Companion.getInjector().getAuthorization();
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(authorization, "authorization");
        MoneyFormatter moneyFormatter = new MoneyFormatter(context, authorization, bundle);
        moneyFormatter.setFloorAmount(true);
        this.floorMoneyFormatter = moneyFormatter;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(C0859R.id.recyclerView);
        if (recyclerView != null) {
            recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        }
        RecyclerView recyclerView2 = (RecyclerView) view.findViewById(C0859R.id.recyclerView);
        if (recyclerView2 != null) {
            recyclerView2.setAdapter((Adapter) new AnalyticsAdapter(this.list));
        }
        Utils.setActionBarUpIndicatorBack(getActivity());
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onUserModel(ru.rocketbank.core.model.UserModel r7) {
        /*
        r6 = this;
        r0 = "userModel";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r7, r0);
        super.onUserModel(r7);
        r7 = r6.latestAnalyticsResponseData;
        if (r7 == 0) goto L_0x0047;
    L_0x000c:
        r7 = r6.latestJointIds;
        if (r7 != 0) goto L_0x0016;
    L_0x0010:
        r7 = r6.getJointIds();
        if (r7 == 0) goto L_0x003a;
    L_0x0016:
        r7 = r6.latestJointIds;
        if (r7 == 0) goto L_0x0047;
    L_0x001a:
        r0 = 0;
        r1 = r7.length;
        r2 = r0;
    L_0x001d:
        r3 = 1;
        if (r2 >= r1) goto L_0x0037;
    L_0x0020:
        r4 = r7[r2];
        r5 = r6.getJointIds();
        if (r5 == 0) goto L_0x0030;
    L_0x0028:
        r4 = kotlin.collections.ArraysKt___ArraysKt.contains(r5, r4);
        if (r4 != r3) goto L_0x0030;
    L_0x002e:
        r4 = r3;
        goto L_0x0031;
    L_0x0030:
        r4 = r0;
    L_0x0031:
        if (r4 != 0) goto L_0x0034;
    L_0x0033:
        goto L_0x0038;
    L_0x0034:
        r2 = r2 + 1;
        goto L_0x001d;
    L_0x0037:
        r0 = r3;
    L_0x0038:
        if (r0 != r3) goto L_0x0047;
    L_0x003a:
        r7 = r6.latestAnalyticsResponseData;
        if (r7 != 0) goto L_0x0041;
    L_0x003e:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x0041:
        r0 = 2;
        r1 = 0;
        processData$default(r6, r7, r1, r0, r1);
        return;
    L_0x0047:
        r7 = r6.currentDateTime;
        r6.executeRequest(r7);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.root.analytics.AnalyticsBaseFragment.onUserModel(ru.rocketbank.core.model.UserModel):void");
    }

    public int[] getJointIds() {
        ChangeAnalyticsListener changeAnalyticsListener = (ChangeAnalyticsListener) getParentFragment();
        return changeAnalyticsListener != null ? changeAnalyticsListener.getJointIds() : null;
    }

    public void onChangeAnalytics(boolean z, int[] iArr) {
        if (this.isJointAnalytics != z) {
            this.isJointAnalytics = z;
            executeRequest(this.currentDateTime);
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "outState");
        super.onSaveInstanceState(bundle);
        bundle.putParcelable(KEY_ANALYTICS_RESPONSE_DATA, this.latestAnalyticsResponseData);
        bundle.putIntArray(KEY_JOINT_IDS, this.latestJointIds);
        bundle.putSerializable(KEY_CURRENT_DATE, this.currentDateTime);
    }

    public void onPause() {
        unsubscribe(this.subscriptionRequest);
        unsubscribe(this.subscriptionProcess);
        super.onPause();
    }

    private final void showProgress() {
        this.header.getInProgress().set(true);
    }

    private final void hideProgress() {
        this.header.getInProgress().set(false);
    }

    protected final Calendar getCurrentDateTime() {
        return this.currentDateTime;
    }

    protected final void setCurrentDateTime(Calendar calendar) {
        Intrinsics.checkParameterIsNotNull(calendar, "<set-?>");
        this.currentDateTime = calendar;
    }

    private final void executeRequest(Calendar calendar) {
        showProgress();
        Calendar copy = CalendarUtils.copy(calendar);
        copy.set(5, copy.getActualMinimum(5));
        calendar = CalendarUtils.copy(calendar);
        calendar.set(5, copy.getActualMaximum(5));
        int[] jointIds = getJointIds();
        this.isJointAnalytics = jointIds != null;
        String format = AnalyticsGroupFragment.Companion.getDATE_FORMAT().format(copy.getTime());
        Intrinsics.checkExpressionValueIsNotNull(format, "AnalyticsGroupFragment.D…MAT.format(dateFrom.time)");
        calendar = AnalyticsGroupFragment.Companion.getDATE_FORMAT().format(calendar.getTime());
        Intrinsics.checkExpressionValueIsNotNull(calendar, "AnalyticsGroupFragment.D…ORMAT.format(dateTo.time)");
        this.subscriptionRequest = request(format, calendar, jointIds).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.io()).subscribe((Action1) new AnalyticsBaseFragment$executeRequest$1(this, jointIds), (Action1) new AnalyticsBaseFragment$executeRequest$2(this));
    }

    public static /* bridge */ /* synthetic */ void processData$default(AnalyticsBaseFragment analyticsBaseFragment, Parcelable parcelable, Calendar calendar, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: processData");
        }
        if ((i & 2) != 0) {
            calendar = null;
        }
        analyticsBaseFragment.processData(parcelable, calendar);
    }

    protected void processData(T t, Calendar calendar) {
        Intrinsics.checkParameterIsNotNull(t, ShareConstants.WEB_DIALOG_PARAM_DATA);
        ru.rocketbank.r2d2.root.analytics.AnalyticsMonthsManager.Companion companion = AnalyticsMonthsManager.Companion;
        AnalyticsApi analyticsApi = this.analyticsApi;
        if (analyticsApi == null) {
            Intrinsics.throwUninitializedPropertyAccessException("analyticsApi");
        }
        this.subscriptionProcess = companion.getAnalyticsManager(analyticsApi, getJointIds(), calendar).subscribe((Action1) new AnalyticsBaseFragment$processData$1(this, t), (Action1) new AnalyticsBaseFragment$processData$2(this));
    }

    protected void updateHeader(T t) {
        Intrinsics.checkParameterIsNotNull(t, ShareConstants.WEB_DIALOG_PARAM_DATA);
        t = this.header;
        AnalyticsMonthsManager analyticsMonthsManager = this.monthsManager;
        boolean z = false;
        t.setNextPeriodExists(!(analyticsMonthsManager != null ? analyticsMonthsManager.isEndPeriod(this.currentDateTime) : true));
        t = this.header;
        analyticsMonthsManager = this.monthsManager;
        if (!(analyticsMonthsManager != null ? analyticsMonthsManager.isBeginPeriod(this.currentDateTime) : true)) {
            z = true;
        }
        t.setPrevPeriodExists(z);
        t = this.header;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(MonthNames.INSTANCE.getNAMES()[this.currentDateTime.get(2)]);
        stringBuilder.append(' ');
        stringBuilder.append(this.currentDateTime.get(1));
        t.setPeriod(stringBuilder.toString());
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void onPrevPeriod() {
        /*
        r2 = this;
        r0 = r2.monthsManager;
        if (r0 == 0) goto L_0x000c;
    L_0x0004:
        r1 = r2.currentDateTime;
        r0 = r0.prevPeriod(r1);
        if (r0 != 0) goto L_0x000e;
    L_0x000c:
        r0 = r2.currentDateTime;
    L_0x000e:
        r2.currentDateTime = r0;
        r0 = r2.currentDateTime;
        r2.executeRequest(r0);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.root.analytics.AnalyticsBaseFragment.onPrevPeriod():void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void onNextPeriod() {
        /*
        r2 = this;
        r0 = r2.monthsManager;
        if (r0 == 0) goto L_0x000c;
    L_0x0004:
        r1 = r2.currentDateTime;
        r0 = r0.nextPeriod(r1);
        if (r0 != 0) goto L_0x000e;
    L_0x000c:
        r0 = r2.currentDateTime;
    L_0x000e:
        r2.currentDateTime = r0;
        r0 = r2.currentDateTime;
        r2.executeRequest(r0);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.root.analytics.AnalyticsBaseFragment.onNextPeriod():void");
    }

    public final void onChooseDate() {
        ru.rocketbank.r2d2.root.analytics.AnalyticsPeriodChooseDialog.Companion companion = AnalyticsPeriodChooseDialog.Companion;
        int i = this.currentDateTime.get(2);
        int i2 = this.currentDateTime.get(1);
        AnalyticsMonthsManager analyticsMonthsManager = this.monthsManager;
        AnalyticsPeriodChooseDialog create = companion.create(i, i2, analyticsMonthsManager != null ? analyticsMonthsManager.getPeriodBegin() : null, getJointIds());
        create.onChooseDate(new AnalyticsBaseFragment$onChooseDate$1(this));
        getChildFragmentManager().beginTransaction().add(create, null).commit();
    }
}
