package ru.rocketbank.r2d2.root.chat;

import android.support.v4.content.ContextCompat;
import android.view.View;
import android.widget.ImageButton;
import android.widget.PopupWindow.OnDismissListener;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: ChatFragment.kt */
final class ChatFragment$onCreateView$1 implements OnDismissListener {
    final /* synthetic */ View $view;
    final /* synthetic */ ChatFragment this$0;

    ChatFragment$onCreateView$1(ChatFragment chatFragment, View view) {
        this.this$0 = chatFragment;
        this.$view = view;
    }

    public final void onDismiss() {
        if (this.this$0.getActivity() != null) {
            ImageButton access$getActionButtonView$p = ChatFragment.access$getActionButtonView$p(this.this$0);
            View view = this.$view;
            Intrinsics.checkExpressionValueIsNotNull(view, "view");
            access$getActionButtonView$p.setImageDrawable(ContextCompat.getDrawable(view.getContext(), C0859R.drawable.ic_add_support));
            if (this.this$0.attachedOperation == null) {
                ChatFragment.access$getDelimiterMenu$p(this.this$0).setVisibility(8);
            }
        }
    }
}
