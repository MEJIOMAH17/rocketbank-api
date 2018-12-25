package ru.rocketbank.r2d2.fragments.refill;

import android.support.design.widget.BottomSheetBehavior.BottomSheetCallback;
import android.util.Log;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RefillCashFragment.kt */
public final class RefillCashFragment$onCreateView$3 extends BottomSheetCallback {
    final /* synthetic */ RefillCashFragment this$0;

    RefillCashFragment$onCreateView$3(RefillCashFragment refillCashFragment) {
        this.this$0 = refillCashFragment;
    }

    public final void onStateChanged(View view, int i) {
        Intrinsics.checkParameterIsNotNull(view, "bottomSheet");
        view = RefillCashFragment.access$getBinding$p(this.this$0).fab;
        switch (i) {
            case 4:
                Log.v(RefillCashFragment.Companion.getTAG(), "STATE_? ");
                RefillCashFragment.access$getFabParams$p(this.this$0).anchorGravity = 8388661;
                view.animate().scaleX(1.0f).scaleY(1.0f).setDuration(300).setListener(new RefillCashFragment$onCreateView$3$onStateChanged$2(view)).start();
                break;
            case 5:
                this.this$0.onMapClicked(null);
                Log.v(RefillCashFragment.Companion.getTAG(), "STATE_HIDDEN");
                view.animate().scaleX(BitmapDescriptorFactory.HUE_RED).scaleY(BitmapDescriptorFactory.HUE_RED).setDuration(300).setListener(new RefillCashFragment$onCreateView$3$onStateChanged$1(view)).start();
                this.this$0.runAnimationButton(this.this$0.currentHeight, 0);
                break;
            default:
                break;
        }
        Log.v(RefillCashFragment.Companion.getTAG(), "onStateChanged: ".concat(String.valueOf(i)));
    }

    public final void onSlide(View view, float f) {
        Intrinsics.checkParameterIsNotNull(view, "bottomSheet");
        Log.v(RefillCashFragment.Companion.getTAG(), "Slide offset: ".concat(String.valueOf(f)));
    }
}
