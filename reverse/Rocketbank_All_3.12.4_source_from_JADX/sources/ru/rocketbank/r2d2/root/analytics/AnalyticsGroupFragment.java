package ru.rocketbank.r2d2.root.analytics;

import android.os.Bundle;
import android.support.v4.app.NotificationCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.share.internal.ShareConstants;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.analytics.AnalyticsCategory;
import ru.rocketbank.core.model.dto.analytics.AnalyticsMerchant;
import ru.rocketbank.core.model.dto.analytics.AnalyticsResponseData;
import ru.rocketbank.core.utils.CategoryMappingUtil;
import ru.rocketbank.r2d2.Utils;
import rx.Observable;
import rx.Subscription;

/* compiled from: AnalyticsGroupFragment.kt */
public final class AnalyticsGroupFragment extends AnalyticsBaseFragment<AnalyticsResponseData> implements OnCategorySelectedListener, OnMerchantSelectedListener {
    public static final Companion Companion = new Companion();
    private static final SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd", new Locale("ru-RU"));
    public static final String KEY_CATEGORY_ID = "KEY_CATEGORY_ID";
    public static final String KEY_COLOR = "KEY_COLOR";
    public static final String KEY_GROUP_ID = "KEY_GROUP_ID";
    public static final String KEY_ICON = "KEY_ICON";
    public static final String KEY_INDEX = "KEY_INDEX";
    public static final String KEY_NAME = "KEY_NAME";
    private HashMap _$_findViewCache;
    private Long categoryId;
    private int color;
    private String groupId;
    private String icon;
    private int index;
    private String name;
    private Subscription subscription;

    /* compiled from: AnalyticsGroupFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public final SimpleDateFormat getDATE_FORMAT() {
            return AnalyticsGroupFragment.DATE_FORMAT;
        }

        public final Bundle createArguments(String str, int i, String str2, String str3, Calendar calendar, int i2) {
            Intrinsics.checkParameterIsNotNull(str2, "name");
            Intrinsics.checkParameterIsNotNull(str3, "icon");
            Intrinsics.checkParameterIsNotNull(calendar, "currentDateTime");
            Bundle bundle = new Bundle();
            bundle.putString(AnalyticsGroupFragment.KEY_GROUP_ID, str);
            bundle.putInt(AnalyticsGroupFragment.KEY_INDEX, i);
            bundle.putString(AnalyticsGroupFragment.KEY_ICON, str3);
            bundle.putString(AnalyticsGroupFragment.KEY_NAME, str2);
            bundle.putSerializable(AnalyticsBaseFragment.KEY_CURRENT_DATE, calendar);
            bundle.putInt(AnalyticsGroupFragment.KEY_COLOR, i2);
            return bundle;
        }

        private final Bundle createArguments(String str, int i, String str2, Calendar calendar, int i2, long j) {
            str = createArguments(str, i, str2, String.valueOf(((Character) CategoryMappingUtil.INSTANCE.getCategory(j).getSecond()).charValue()), calendar, i2);
            str.putLong(AnalyticsGroupFragment.KEY_CATEGORY_ID, j);
            return str;
        }
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

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        layoutInflater = super.onCreateView(layoutInflater, viewGroup, bundle);
        Utils.setActionBarUpIndicatorBack(getActivity());
        return layoutInflater;
    }

    public final void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        if (bundle == null) {
            Intrinsics.throwNpe();
        }
        this.groupId = bundle.getString(KEY_GROUP_ID);
        this.categoryId = Long.valueOf(bundle.getLong(KEY_CATEGORY_ID, 0));
        this.index = bundle.getInt(KEY_INDEX);
        this.name = bundle.getString(KEY_NAME);
        this.icon = bundle.getString(KEY_ICON);
        this.color = bundle.getInt(KEY_COLOR);
    }

    public final void onSaveInstanceState(Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "outState");
        super.onSaveInstanceState(bundle);
        bundle.putString(KEY_GROUP_ID, this.groupId);
        String str = KEY_CATEGORY_ID;
        Long l = this.categoryId;
        bundle.putLong(str, l != null ? l.longValue() : 0);
    }

    public final Observable<AnalyticsResponseData> request(String str, String str2, int[] iArr) {
        Intrinsics.checkParameterIsNotNull(str, "dateFrom");
        Intrinsics.checkParameterIsNotNull(str2, "dateTo");
        str = getAnalyticsApi().analytics(this.groupId, this.categoryId, str, str2, iArr);
        Intrinsics.checkExpressionValueIsNotNull(str, "analyticsApi.analytics(g…teFrom, dateTo, jointIds)");
        return str;
    }

    public final void onPause() {
        unsubscribe(this.subscription);
        super.onPause();
    }

    protected final void showData(AnalyticsResponseData analyticsResponseData) {
        AnalyticsResponseData analyticsResponseData2 = analyticsResponseData;
        Intrinsics.checkParameterIsNotNull(analyticsResponseData2, ShareConstants.WEB_DIALOG_PARAM_DATA);
        Function4 analyticsGroupFragment$showData$onCategorySelectedListener$1 = new AnalyticsGroupFragment$showData$onCategorySelectedListener$1(this);
        if (hasCategories(analyticsResponseData)) {
            AnalyticsItemChart analyticsItemChart;
            AnalyticsItemChart itemChart = getItemChart();
            if (itemChart == null) {
                itemChart = new AnalyticsItemChart(analyticsResponseData2, analyticsGroupFragment$showData$onCategorySelectedListener$1, null, null, null, 28, null);
            } else {
                analyticsItemChart = itemChart;
            }
            analyticsItemChart.setData(analyticsResponseData2);
            analyticsItemChart.setOnCategorySelectedListener(analyticsGroupFragment$showData$onCategorySelectedListener$1);
            if (getItemChart() == null) {
                getList().add(analyticsItemChart);
                setItemChart(analyticsItemChart);
            }
            for (AnalyticsCategory analyticsCategory : analyticsResponseData.getCategories()) {
                CategoryMappingUtil categoryMappingUtil = CategoryMappingUtil.INSTANCE;
                Intrinsics.checkExpressionValueIsNotNull(analyticsCategory, "category");
                Pair category = categoryMappingUtil.getCategory(analyticsCategory.getId());
                List list = getList();
                String name = analyticsCategory.getName();
                Intrinsics.checkExpressionValueIsNotNull(name, "category.name");
                list.add(new AnalyticsItemOperation(name, ((Number) category.getFirst()).intValue(), AnalyticsBaseFragment.format$default(r0, Double.valueOf(analyticsCategory.getAmount()), null, 2, null), new AnalyticsGroupFragment$showData$1(r0, analyticsCategory), String.valueOf(((Character) category.getSecond()).charValue())));
            }
        } else if (hasMerchants(analyticsResponseData)) {
            setItemChart(null);
            List list2 = getList();
            String str = r0.icon;
            if (str == null) {
                str = "";
            }
            int i = r0.color;
            String str2 = r0.name;
            if (str2 == null) {
                str2 = "";
            }
            list2.add(new AnalyticsItemSection(str, i, str2));
            setHeaderSize(getHeaderSize() + 1);
            for (AnalyticsMerchant analyticsMerchant : analyticsResponseData.getMerchants()) {
                List list3;
                Long l = r0.categoryId;
                if (l != null) {
                    if (l.longValue() == 0) {
                        list3 = getList();
                        Intrinsics.checkExpressionValueIsNotNull(analyticsMerchant, "merchant");
                        str2 = analyticsMerchant.getName();
                        if (str2 == null) {
                            str2 = "";
                        }
                        String str3 = str2;
                        String format$default = AnalyticsBaseFragment.format$default(r0, Double.valueOf(analyticsMerchant.getAmount()), null, 2, null);
                        Function0 function0 = AnalyticsGroupFragment$showData$2.INSTANCE;
                        String userpicUrl = analyticsMerchant.getUserpicUrl();
                        if (userpicUrl == null) {
                            userpicUrl = "";
                        }
                        list3.add(new AnalyticsItemMerchantOperation(str3, null, userpicUrl, format$default, false, function0, 18, null));
                    }
                }
                list3 = getList();
                Intrinsics.checkExpressionValueIsNotNull(analyticsMerchant, "merchant");
                str2 = analyticsMerchant.getName();
                if (str2 == null) {
                    str2 = "";
                }
                list3.add(new AnalyticsItemOperation(str2, 0, AnalyticsBaseFragment.format$default(r0, Double.valueOf(analyticsMerchant.getAmount()), null, 2, null), new AnalyticsGroupFragment$showData$3(r0, analyticsMerchant), null, 18, null));
            }
        }
    }

    protected final void updateHeader(AnalyticsResponseData analyticsResponseData) {
        Intrinsics.checkParameterIsNotNull(analyticsResponseData, ShareConstants.WEB_DIALOG_PARAM_DATA);
        getHeader().setAmount((int) analyticsResponseData.getTotal());
        super.updateHeader(analyticsResponseData);
    }

    private final boolean hasMerchants(AnalyticsResponseData analyticsResponseData) {
        return (analyticsResponseData.getMerchants() == null || analyticsResponseData.getMerchants().size() == null) ? null : true;
    }

    private final boolean hasCategories(AnalyticsResponseData analyticsResponseData) {
        return (analyticsResponseData.getCategories() == null || analyticsResponseData.getCategories().size() == null) ? null : true;
    }

    protected final boolean hasData(AnalyticsResponseData analyticsResponseData) {
        Intrinsics.checkParameterIsNotNull(analyticsResponseData, ShareConstants.WEB_DIALOG_PARAM_DATA);
        return ((hasCategories(analyticsResponseData) || hasMerchants(analyticsResponseData)) && analyticsResponseData.getTotal() != 0.0d) ? true : null;
    }

    public final void onEventMainThread(AnalyticsResponseData analyticsResponseData) {
        Intrinsics.checkParameterIsNotNull(analyticsResponseData, NotificationCompat.CATEGORY_EVENT);
        getLocalEventBus().removeStickyEvent(analyticsResponseData);
        AnalyticsBaseFragment.processData$default(this, analyticsResponseData, null, 2, null);
    }

    protected final void processData(AnalyticsResponseData analyticsResponseData, Calendar calendar) {
        Intrinsics.checkParameterIsNotNull(analyticsResponseData, ShareConstants.WEB_DIALOG_PARAM_DATA);
        super.processData(analyticsResponseData, analyticsResponseData.getFirstOperationDate());
    }

    public final void onCategorySelected(long r9, int r11, java.lang.String r12, java.lang.String r13) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r8 = this;
        r0 = "name";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r12, r0);
        r0 = "icon";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r13, r0);
        r13 = ru.rocketbank.core.utils.CategoryMappingUtil.INSTANCE;
        r13 = r13.getCategory(r9);
        r13 = r13.getFirst();
        r13 = (java.lang.Number) r13;
        r5 = r13.intValue();
        r0 = Companion;
        r1 = r8.groupId;
        r4 = r8.getCurrentDateTime();
        r2 = r11;
        r3 = r12;
        r6 = r9;
        r9 = r0.createArguments(r1, r2, r3, r4, r5, r6);
        r10 = new ru.rocketbank.r2d2.root.analytics.AnalyticsGroupFragment;
        r10.<init>();
        r10.setArguments(r9);
        r9 = r8.getFragmentManager();	 Catch:{ Throwable -> 0x0050 }
        if (r9 != 0) goto L_0x003a;	 Catch:{ Throwable -> 0x0050 }
    L_0x0037:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Throwable -> 0x0050 }
    L_0x003a:
        r9 = r9.beginTransaction();	 Catch:{ Throwable -> 0x0050 }
        r11 = 2131296645; // 0x7f090185 float:1.8211213E38 double:1.0530004534E-314;	 Catch:{ Throwable -> 0x0050 }
        r10 = (android.support.v4.app.Fragment) r10;	 Catch:{ Throwable -> 0x0050 }
        r9 = r9.replace(r11, r10);	 Catch:{ Throwable -> 0x0050 }
        r10 = 0;	 Catch:{ Throwable -> 0x0050 }
        r9 = r9.addToBackStack(r10);	 Catch:{ Throwable -> 0x0050 }
        r9.commit();	 Catch:{ Throwable -> 0x0050 }
        return;
    L_0x0050:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.root.analytics.AnalyticsGroupFragment.onCategorySelected(long, int, java.lang.String, java.lang.String):void");
    }

    public final void onMerchantSelected(ru.rocketbank.core.model.dto.analytics.AnalyticsMerchant r3) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r2 = this;
        r0 = "merchants";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r3, r0);
        r0 = ru.rocketbank.r2d2.root.analytics.AnalyticsMerchantFragment.Companion;
        r1 = r2.getCurrentDateTime();
        r3 = r0.createArguments(r3, r1);
        r0 = new ru.rocketbank.r2d2.root.analytics.AnalyticsMerchantFragment;
        r0.<init>();
        r0.setArguments(r3);
        r3 = r2.getFragmentManager();	 Catch:{ Throwable -> 0x0036 }
        if (r3 != 0) goto L_0x0020;	 Catch:{ Throwable -> 0x0036 }
    L_0x001d:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Throwable -> 0x0036 }
    L_0x0020:
        r3 = r3.beginTransaction();	 Catch:{ Throwable -> 0x0036 }
        r1 = 2131296645; // 0x7f090185 float:1.8211213E38 double:1.0530004534E-314;	 Catch:{ Throwable -> 0x0036 }
        r0 = (android.support.v4.app.Fragment) r0;	 Catch:{ Throwable -> 0x0036 }
        r3 = r3.replace(r1, r0);	 Catch:{ Throwable -> 0x0036 }
        r0 = 0;	 Catch:{ Throwable -> 0x0036 }
        r3 = r3.addToBackStack(r0);	 Catch:{ Throwable -> 0x0036 }
        r3.commit();	 Catch:{ Throwable -> 0x0036 }
        return;
    L_0x0036:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.root.analytics.AnalyticsGroupFragment.onMerchantSelected(ru.rocketbank.core.model.dto.analytics.AnalyticsMerchant):void");
    }
}
