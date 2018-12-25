package ru.rocketbank.r2d2.activities.sound;

import android.support.design.widget.BottomSheetBehavior.BottomSheetCallback;
import android.support.v4.content.ContextCompat;
import android.view.View;
import android.widget.LinearLayout;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: SoundActivity.kt */
public final class SoundActivity$setCallback$1 extends BottomSheetCallback {
    final /* synthetic */ SoundActivity this$0;

    public final void onSlide(View view, float f) {
        Intrinsics.checkParameterIsNotNull(view, "bottomSheet");
    }

    SoundActivity$setCallback$1(SoundActivity soundActivity) {
        this.this$0 = soundActivity;
    }

    public final int getColor(int i) {
        return ContextCompat.getColor(this.this$0, i);
    }

    public final void onStateChanged(View view, int i) {
        int color;
        Intrinsics.checkParameterIsNotNull(view, "bottomSheet");
        switch (i) {
            case 3:
                view = getColor(C0859R.color.white);
                color = getColor(C0859R.color.orange);
                i = view;
                break;
            case 4:
                view = getColor(C0859R.color.black);
                i = getColor(C0859R.color.sub_gray);
                color = -1;
                break;
            default:
                return;
        }
        SoundActivity soundActivity = this.this$0;
        LinearLayout linearLayout = SoundActivity.access$getBinding$p(this.this$0).headMusic;
        Intrinsics.checkExpressionValueIsNotNull(linearLayout, "binding.headMusic");
        soundActivity.animateColor(linearLayout, "backgroundColor", SoundActivity.access$getSoundBinding$p(this.this$0).getBackgroundColor().get(), color);
        SoundActivity soundActivity2 = this.this$0;
        RocketTextView rocketTextView = SoundActivity.access$getBinding$p(this.this$0).previewPlayTitle;
        Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "binding.previewPlayTitle");
        soundActivity2.animateColor(rocketTextView, "textColor", SoundActivity.access$getSoundBinding$p(this.this$0).getSubTextColor().get(), view);
        view = this.this$0;
        RocketTextView rocketTextView2 = SoundActivity.access$getBinding$p(this.this$0).playSchemeTitle;
        Intrinsics.checkExpressionValueIsNotNull(rocketTextView2, "binding.playSchemeTitle");
        view.animateColor(rocketTextView2, "textColor", SoundActivity.access$getSoundBinding$p(this.this$0).getSubTextColor().get(), i);
    }
}
