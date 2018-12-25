package ru.rocketbank.r2d2.fragments;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ChangeCodewordFragment.kt */
final class ChangeCodewordFragment$onViewCreated$1 implements OnEditorActionListener {
    final /* synthetic */ ChangeCodewordFragment this$0;

    ChangeCodewordFragment$onViewCreated$1(ChangeCodewordFragment changeCodewordFragment) {
        this.this$0 = changeCodewordFragment;
    }

    public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 6) {
            return null;
        }
        i = this.this$0;
        Intrinsics.checkExpressionValueIsNotNull(textView, "textView");
        i.nextPressed(textView);
        return true;
    }
}
