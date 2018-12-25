package ru.rocketbank.r2d2.root.analytics;

import android.graphics.Bitmap;
import android.support.v7.widget.Toolbar;
import android.view.View;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;
import rx.Subscriber;

/* compiled from: AnalyticsFragment.kt */
public final class AnalyticsFragment$updateAnalytics$1 extends Subscriber<Bitmap[]> {
    final /* synthetic */ AnalyticsFragment this$0;

    public final void onCompleted() {
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
    }

    AnalyticsFragment$updateAnalytics$1(AnalyticsFragment analyticsFragment) {
        this.this$0 = analyticsFragment;
    }

    public final void onNext(Bitmap[] bitmapArr) {
        Intrinsics.checkParameterIsNotNull(bitmapArr, "bitmaps");
        AnalyticsBaseFragment.Companion.setAvatars(bitmapArr);
        View view = this.this$0.getView();
        if (view != null) {
            SwitchAvatarButton switchAvatarButton = (SwitchAvatarButton) view.findViewById(C0859R.id.buttonChangeAnalyticsToolbar);
            if (switchAvatarButton != null) {
                switchAvatarButton.setAvatars(bitmapArr[0], bitmapArr[1]);
            }
        }
        bitmapArr = this.this$0.getView();
        if (bitmapArr != null) {
            Toolbar toolbar = (Toolbar) bitmapArr.findViewById(C0859R.id.toolbar);
            if (toolbar != null) {
                toolbar.invalidate();
            }
        }
    }
}
