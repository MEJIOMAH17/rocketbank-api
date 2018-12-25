package ru.rocketbank.r2d2.root.analytics;

import android.graphics.Bitmap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.Utils;

/* compiled from: AnalyticsFragment.kt */
final class AnalyticsFragment$createDoubleAvatar$1$createAvatar$1 extends Lambda implements Function1<String, Bitmap> {
    final /* synthetic */ AnalyticsFragment$createDoubleAvatar$1 this$0;

    AnalyticsFragment$createDoubleAvatar$1$createAvatar$1(AnalyticsFragment$createDoubleAvatar$1 analyticsFragment$createDoubleAvatar$1) {
        this.this$0 = analyticsFragment$createDoubleAvatar$1;
        super(1);
    }

    public final Bitmap invoke(String str) {
        Intrinsics.checkParameterIsNotNull(str, "avatar");
        return Utils.isBlank((CharSequence) str) ? this.this$0.this$0.loadBitmap(this.this$0.this$0.getPlaceholder()) : this.this$0.this$0.loadBitmap(str);
    }
}
