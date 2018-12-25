package ru.rocketbank.r2d2.root.chat;

import android.content.Context;
import android.graphics.Point;
import android.support.v4.content.ContextCompat;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.Utils;
import rx.functions.Action1;

/* compiled from: ChatFragment.kt */
final class ChatFragment$initClicks$2<T> implements Action1<Void> {
    final /* synthetic */ ChatFragment this$0;

    ChatFragment$initClicks$2(ChatFragment chatFragment) {
        this.this$0 = chatFragment;
    }

    public final void call(Void voidR) {
        voidR = new Point();
        int[] iArr = new int[2];
        ChatFragment.access$getEditZoneView$p(this.this$0).getLocationOnScreen(iArr);
        int height = ChatFragment.access$getChatActionPopup$p(this.this$0).getHeight();
        voidR.set(iArr[0], (iArr[1] - height) - Utils.dpToPx(this.this$0.getContext(), 1));
        ChatFragment.access$getChatActionPopup$p(this.this$0).showPopup(this.this$0.windowWidth, voidR);
        ChatFragment.access$getDelimiterMenu$p(this.this$0).setVisibility(0);
        voidR = ChatFragment.access$getActionButtonView$p(this.this$0);
        Context context = this.this$0.getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        voidR.setImageDrawable(ContextCompat.getDrawable(context, C0859R.drawable.close_support));
    }
}
