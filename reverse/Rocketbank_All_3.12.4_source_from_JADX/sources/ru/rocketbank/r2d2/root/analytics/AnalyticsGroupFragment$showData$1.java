package ru.rocketbank.r2d2.root.analytics;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.dto.analytics.AnalyticsCategory;

/* compiled from: AnalyticsGroupFragment.kt */
final class AnalyticsGroupFragment$showData$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ AnalyticsCategory $category;
    final /* synthetic */ AnalyticsGroupFragment this$0;

    AnalyticsGroupFragment$showData$1(AnalyticsGroupFragment analyticsGroupFragment, AnalyticsCategory analyticsCategory) {
        this.this$0 = analyticsGroupFragment;
        this.$category = analyticsCategory;
        super(0);
    }

    public final void invoke() {
        AnalyticsGroupFragment analyticsGroupFragment = this.this$0;
        AnalyticsCategory analyticsCategory = this.$category;
        Intrinsics.checkExpressionValueIsNotNull(analyticsCategory, "category");
        long id = analyticsCategory.getId();
        int access$getIndex$p = this.this$0.index;
        AnalyticsCategory analyticsCategory2 = this.$category;
        Intrinsics.checkExpressionValueIsNotNull(analyticsCategory2, "category");
        String name = analyticsCategory2.getName();
        Intrinsics.checkExpressionValueIsNotNull(name, "category.name");
        AnalyticsCategory analyticsCategory3 = this.$category;
        Intrinsics.checkExpressionValueIsNotNull(analyticsCategory3, "category");
        String icon = analyticsCategory3.getIcon();
        Intrinsics.checkExpressionValueIsNotNull(icon, "category.icon");
        analyticsGroupFragment.onCategorySelected(id, access$getIndex$p, name, icon);
    }
}
