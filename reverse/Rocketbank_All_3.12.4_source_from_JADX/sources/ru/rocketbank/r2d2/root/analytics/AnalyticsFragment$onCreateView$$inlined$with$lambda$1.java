package ru.rocketbank.r2d2.root.analytics;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: AnalyticsFragment.kt */
final class AnalyticsFragment$onCreateView$$inlined$with$lambda$1 implements OnClickListener {
    final /* synthetic */ Bundle $savedInstanceState$inlined;
    final /* synthetic */ AnalyticsFragment this$0;

    AnalyticsFragment$onCreateView$$inlined$with$lambda$1(AnalyticsFragment analyticsFragment, Bundle bundle) {
        this.this$0 = analyticsFragment;
        this.$savedInstanceState$inlined = bundle;
    }

    public final void onClick(View view) {
        this.this$0.onChangeAnalytics(this.this$0.isJointAnalytics ^ 1, this.this$0.getJointIds$App_prodRelease());
    }
}
