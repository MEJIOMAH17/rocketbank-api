package ru.rocketbank.r2d2.root.analytics;

import android.os.Parcelable;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.view.View;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;
import rx.functions.Action1;

/* compiled from: AnalyticsBaseFragment.kt */
final class AnalyticsBaseFragment$processData$1<T> implements Action1<AnalyticsMonthsManager> {
    final /* synthetic */ Parcelable $data;
    final /* synthetic */ AnalyticsBaseFragment this$0;

    AnalyticsBaseFragment$processData$1(AnalyticsBaseFragment analyticsBaseFragment, Parcelable parcelable) {
        this.this$0 = analyticsBaseFragment;
        this.$data = parcelable;
    }

    public final void call(AnalyticsMonthsManager analyticsMonthsManager) {
        this.this$0.setMonthsManager(analyticsMonthsManager);
        analyticsMonthsManager = this.this$0.getList().size();
        this.this$0.setHeaderSize(this.this$0.getItemChart() == null ? 1 : 2);
        if (this.this$0.getMonthsManager() == null || !this.this$0.hasData(this.$data)) {
            CollectionsKt.removeAll(this.this$0.getList(), new Function1<AnalyticsItem, Boolean>() {
                public final boolean invoke(AnalyticsItem analyticsItem) {
                    Intrinsics.checkParameterIsNotNull(analyticsItem, "it");
                    return Intrinsics.areEqual(analyticsItem, this.this$0.getHeader()) ^ 1;
                }
            });
            this.this$0.setItemChart(null);
            this.this$0.getList().add(new AnalyticsEmpty(this.this$0.isJointAnalytics));
        } else {
            CollectionsKt.removeAll(this.this$0.getList(), new Function1<AnalyticsItem, Boolean>() {
                public final boolean invoke(AnalyticsItem analyticsItem) {
                    Intrinsics.checkParameterIsNotNull(analyticsItem, "it");
                    return ((Intrinsics.areEqual(analyticsItem, this.this$0.getHeader()) ^ 1) == 0 || (Intrinsics.areEqual(analyticsItem, this.this$0.getItemChart()) ^ 1) == null) ? null : true;
                }
            });
            this.this$0.showData(this.$data);
        }
        Function0 onUpdate = this.this$0.getHeader().getOnUpdate();
        if (onUpdate != null) {
            onUpdate.invoke();
        }
        AnalyticsItemChart itemChart = this.this$0.getItemChart();
        if (itemChart != null) {
            onUpdate = itemChart.getOnUpdate();
            if (onUpdate != null) {
                onUpdate.invoke();
            }
        }
        if (analyticsMonthsManager > this.this$0.getList().size()) {
            View view = this.this$0.getView();
            if (view != null) {
                RecyclerView recyclerView = (RecyclerView) view.findViewById(C0859R.id.recyclerView);
                if (recyclerView != null) {
                    Adapter adapter = recyclerView.getAdapter();
                    if (adapter != null) {
                        adapter.notifyItemRangeRemoved(this.this$0.getList().size(), analyticsMonthsManager - this.this$0.getList().size());
                    }
                }
            }
        }
        analyticsMonthsManager = this.this$0.getView();
        if (analyticsMonthsManager != null) {
            RecyclerView recyclerView2 = (RecyclerView) analyticsMonthsManager.findViewById(C0859R.id.recyclerView);
            if (recyclerView2 != null) {
                analyticsMonthsManager = recyclerView2.getAdapter();
                if (analyticsMonthsManager != null) {
                    analyticsMonthsManager.notifyItemRangeChanged(this.this$0.getHeaderSize(), this.this$0.getList().size() - this.this$0.getHeaderSize());
                }
            }
        }
        this.this$0.updateHeader(this.$data);
    }
}
