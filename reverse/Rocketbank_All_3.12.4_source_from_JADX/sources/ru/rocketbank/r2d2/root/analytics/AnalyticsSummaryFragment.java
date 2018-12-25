package ru.rocketbank.r2d2.root.analytics;

import android.support.v4.app.Fragment;
import android.view.View;
import com.facebook.share.internal.ShareConstants;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.model.dto.analytics.AnalyticsGroup;
import ru.rocketbank.core.model.dto.analytics.AnalyticsResponseData;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.root.analytics.AnalyticsGroupFragment.Companion;
import rx.Observable;
import rx.Subscription;

/* compiled from: AnalyticsSummaryFragment.kt */
public final class AnalyticsSummaryFragment extends AnalyticsBaseFragment<AnalyticsResponseData> implements OnGroupSelectedListener {
    private HashMap _$_findViewCache;
    private Subscription subscription;

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

    public final Observable<AnalyticsResponseData> request(String str, String str2, int[] iArr) {
        Intrinsics.checkParameterIsNotNull(str, "dateFrom");
        Intrinsics.checkParameterIsNotNull(str2, "dateTo");
        str = getAnalyticsApi().analyticsSummary(str, str2, iArr);
        Intrinsics.checkExpressionValueIsNotNull(str, "analyticsApi.analyticsSu…teFrom, dateTo, jointIds)");
        return str;
    }

    public final void onPause() {
        unsubscribe(this.subscription);
        super.onPause();
    }

    protected final void showData(AnalyticsResponseData analyticsResponseData) {
        Intrinsics.checkParameterIsNotNull(analyticsResponseData, ShareConstants.WEB_DIALOG_PARAM_DATA);
        AnalyticsItemChart itemChart = getItemChart();
        if (itemChart == null) {
            AnalyticsItemChart analyticsItemChart = new AnalyticsItemChart(analyticsResponseData, null, new AnalyticsSummaryFragment$showData$chart$1(this), null, null, 26, null);
        }
        itemChart.setData(analyticsResponseData);
        itemChart.setOnGroupSelectedListener(new AnalyticsSummaryFragment$showData$1(this));
        if (getItemChart() == null) {
            getList().add(itemChart);
            setItemChart(itemChart);
        }
        analyticsResponseData = analyticsResponseData.getGroups();
        Intrinsics.checkExpressionValueIsNotNull(analyticsResponseData, "data.groups");
        Collection list = getList();
        for (AnalyticsGroup analyticsGroup : (Iterable) analyticsResponseData) {
            Intrinsics.checkExpressionValueIsNotNull(analyticsGroup, "it");
            String name = analyticsGroup.getName();
            Intrinsics.checkExpressionValueIsNotNull(name, "it.name");
            Integer color = analyticsGroup.getColor();
            Intrinsics.checkExpressionValueIsNotNull(color, "it.color");
            list.add(new AnalyticsItemOperation(name, color.intValue(), AnalyticsBaseFragment.format$default(this, Double.valueOf(analyticsGroup.getAmount()), null, 2, null), new AnalyticsSummaryFragment$showData$$inlined$mapTo$lambda$1(analyticsGroup, this), analyticsGroup.getIcon()));
        }
    }

    protected final void processData(AnalyticsResponseData analyticsResponseData, Calendar calendar) {
        Intrinsics.checkParameterIsNotNull(analyticsResponseData, ShareConstants.WEB_DIALOG_PARAM_DATA);
        super.processData(analyticsResponseData, analyticsResponseData.getFirstOperationDate());
    }

    protected final void updateHeader(AnalyticsResponseData analyticsResponseData) {
        Intrinsics.checkParameterIsNotNull(analyticsResponseData, ShareConstants.WEB_DIALOG_PARAM_DATA);
        getHeader().setAmount((int) analyticsResponseData.getTotal());
        super.updateHeader(analyticsResponseData);
    }

    protected final boolean hasData(AnalyticsResponseData analyticsResponseData) {
        Intrinsics.checkParameterIsNotNull(analyticsResponseData, ShareConstants.WEB_DIALOG_PARAM_DATA);
        return (analyticsResponseData.getFirstOperationDate() == null || analyticsResponseData.getTotal() == 0.0d) ? null : true;
    }

    public final void onGroupSelected(String str, int i, String str2, String str3, Integer num) {
        Intrinsics.checkParameterIsNotNull(str, "groupId");
        Intrinsics.checkParameterIsNotNull(str2, "name");
        Intrinsics.checkParameterIsNotNull(str3, "icon");
        Utils.setActionBarUpIndicatorBack(getActivity());
        Companion companion = AnalyticsGroupFragment.Companion;
        Calendar currentDateTime = getCurrentDateTime();
        if (num == null) {
            Intrinsics.throwNpe();
        }
        str = companion.createArguments(str, i, str2, str3, currentDateTime, num.intValue());
        i = new AnalyticsGroupFragment();
        i.setArguments(str);
        try {
            str = getFragmentManager();
            if (str == null) {
                Intrinsics.throwNpe();
            }
            str.beginTransaction().replace(C0859R.id.fragment_analytics_container, (Fragment) i).addToBackStack(0).commit();
        } catch (String str4) {
            AnalyticsManager.logException(str4);
        }
    }
}
