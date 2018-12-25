package ru.rocketbank.r2d2.fragments;

import android.text.Editable;
import com.jakewharton.rxbinding.widget.TextViewAfterTextChangeEvent;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.r2d2.C0859R;
import rx.functions.Action1;

/* compiled from: ChangeCodewordFragment.kt */
final class ChangeCodewordFragment$onResume$1<T> implements Action1<TextViewAfterTextChangeEvent> {
    final /* synthetic */ ChangeCodewordFragment this$0;

    ChangeCodewordFragment$onResume$1(ChangeCodewordFragment changeCodewordFragment) {
        this.this$0 = changeCodewordFragment;
    }

    public final void call(TextViewAfterTextChangeEvent textViewAfterTextChangeEvent) {
        textViewAfterTextChangeEvent = ChangeCodewordFragment.access$getBinding$p(this.this$0).getToolbarBinding();
        if (textViewAfterTextChangeEvent == null) {
            Intrinsics.throwNpe();
        }
        textViewAfterTextChangeEvent = textViewAfterTextChangeEvent.getButtonEnabled();
        RocketEditText rocketEditText = (RocketEditText) this.this$0._$_findCachedViewById(C0859R.id.editTextCodeword);
        Intrinsics.checkExpressionValueIsNotNull(rocketEditText, "editTextCodeword");
        Editable text = rocketEditText.getText();
        Intrinsics.checkExpressionValueIsNotNull(text, "editTextCodeword.text");
        textViewAfterTextChangeEvent.set(((CharSequence) text).length() > 0);
    }
}
