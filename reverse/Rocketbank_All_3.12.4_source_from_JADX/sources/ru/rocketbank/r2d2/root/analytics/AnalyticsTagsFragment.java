package ru.rocketbank.r2d2.root.analytics;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.share.internal.ShareConstants;
import java.util.HashMap;
import java.util.List;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.analytics.AnalyticsTagOperation;
import ru.rocketbank.core.model.dto.analytics.AnalyticsTags;
import ru.rocketbank.core.utils.CategoryMappingUtil;
import ru.rocketbank.r2d2.activities.operation.OperationTagActivity;
import ru.rocketbank.r2d2.databinding.FragmentAnalyticsBaseBinding;
import rx.Observable;

/* compiled from: AnalyticsTagsFragment.kt */
public final class AnalyticsTagsFragment extends AnalyticsBaseFragment<AnalyticsTags> {
    private HashMap _$_findViewCache;

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

    protected final View createView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        layoutInflater = FragmentAnalyticsBaseBinding.inflate(layoutInflater);
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "binding");
        layoutInflater = layoutInflater.getRoot();
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "binding.root");
        return layoutInflater;
    }

    public final Observable<AnalyticsTags> request(String str, String str2, int[] iArr) {
        Intrinsics.checkParameterIsNotNull(str, "dateFrom");
        Intrinsics.checkParameterIsNotNull(str2, "dateTo");
        str = getAnalyticsApi().analyticsTags(str, str2, iArr);
        Intrinsics.checkExpressionValueIsNotNull(str, "analyticsApi.analyticsTa…teFrom, dateTo, jointIds)");
        return str;
    }

    protected final void showData(AnalyticsTags analyticsTags) {
        Intrinsics.checkParameterIsNotNull(analyticsTags, ShareConstants.WEB_DIALOG_PARAM_DATA);
        AnalyticsItemChart itemChart = getItemChart();
        if (itemChart == null) {
            AnalyticsItemChart analyticsItemChart = new AnalyticsItemChart(null, null, null, new AnalyticsTagsFragment$showData$chart$1(this), analyticsTags.getTags(), 7, null);
        }
        itemChart.setTags(analyticsTags.getTags());
        itemChart.setOnTagSelectedListener(new AnalyticsTagsFragment$showData$1(this));
        if (getItemChart() == null) {
            getList().add(itemChart);
            setItemChart(itemChart);
        }
        AnalyticsTags<AnalyticsTagOperation> tags = analyticsTags.getTags();
        if (tags == null) {
            Intrinsics.throwNpe();
        }
        int i = 0;
        for (AnalyticsTagOperation analyticsTagOperation : tags) {
            int i2 = i + 1;
            Pair category = CategoryMappingUtil.INSTANCE.getCategory(i);
            List list = getList();
            StringBuilder stringBuilder = new StringBuilder("#");
            String name = analyticsTagOperation.getName();
            if (name == null) {
                name = "";
            }
            stringBuilder.append(name);
            name = stringBuilder.toString();
            Double amount = analyticsTagOperation.getAmount();
            if (amount == null) {
                amount = Double.valueOf(0.0d);
            }
            String format$default = AnalyticsBaseFragment.format$default(this, amount, null, 2, null);
            int intValue = ((Number) category.getFirst()).intValue();
            Integer count = analyticsTagOperation.getCount();
            list.add(new AnalyticsItemTagOperation(name, count != null ? count.intValue() : 0, format$default, intValue, new AnalyticsTagsFragment$showData$2(this, analyticsTagOperation)));
            i = i2;
        }
    }

    protected final void updateHeader(AnalyticsTags analyticsTags) {
        Intrinsics.checkParameterIsNotNull(analyticsTags, ShareConstants.WEB_DIALOG_PARAM_DATA);
        AnalyticsItemHeader header = getHeader();
        Double total = analyticsTags.getTotal();
        header.setAmount(total != null ? (int) total.doubleValue() : 0);
        super.updateHeader(analyticsTags);
    }

    protected final boolean hasData(AnalyticsTags analyticsTags) {
        Intrinsics.checkParameterIsNotNull(analyticsTags, ShareConstants.WEB_DIALOG_PARAM_DATA);
        if (analyticsTags.getTags() != null) {
            analyticsTags = analyticsTags.getTags();
            if ((analyticsTags != null ? analyticsTags.size() : null) != null) {
                return true;
            }
        }
        return false;
    }

    private final void startTagActivity(AnalyticsTagOperation analyticsTagOperation) {
        OperationTagActivity.start(getContext(), analyticsTagOperation.getName());
    }
}
