package ru.rocketbank.r2d2.root.chat;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.inputmethod.InputMethodManager;
import com.mikepenz.materialdrawer.util.KeyboardUtil;

/* compiled from: ChatFragment.kt */
final class ChatFragment$onCreateView$5 implements OnTouchListener {
    final /* synthetic */ InputMethodManager $inputMethodManager;
    final /* synthetic */ ChatFragment this$0;

    ChatFragment$onCreateView$5(ChatFragment chatFragment, InputMethodManager inputMethodManager) {
        this.this$0 = chatFragment;
        this.$inputMethodManager = inputMethodManager;
    }

    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.$inputMethodManager.isAcceptingText() != null) {
            KeyboardUtil.hideKeyboard(this.this$0.getActivity());
        }
        return null;
    }
}
