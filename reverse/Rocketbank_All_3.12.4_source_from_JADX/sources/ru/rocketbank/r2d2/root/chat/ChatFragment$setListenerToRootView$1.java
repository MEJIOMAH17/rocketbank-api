package ru.rocketbank.r2d2.root.chat;

import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ChatFragment.kt */
final class ChatFragment$setListenerToRootView$1 implements OnGlobalLayoutListener {
    final /* synthetic */ View $activityRootView;
    final /* synthetic */ ChatFragment this$0;

    ChatFragment$setListenerToRootView$1(ChatFragment chatFragment, View view) {
        this.this$0 = chatFragment;
        this.$activityRootView = view;
    }

    public final void onGlobalLayout() {
        View view = this.$activityRootView;
        Intrinsics.checkExpressionValueIsNotNull(view, "activityRootView");
        view = view.getRootView();
        Intrinsics.checkExpressionValueIsNotNull(view, "activityRootView.rootView");
        int height = view.getHeight();
        View view2 = this.this$0.getView();
        if (height - (view2 != null ? view2.getHeight() : 0) > 100) {
            this.this$0.setKeyboardOpened(true);
            return;
        }
        if (this.this$0.isKeyboardOpened()) {
            if (ChatFragment.access$getChatActionPopup$p(this.this$0).isShowed()) {
                this.this$0.reopenChatPopUp();
            }
            this.this$0.setKeyboardOpened(false);
        }
    }
}
