package ru.rocketbank.r2d2.friends;

import kotlin.TypeCastException;
import kotlin.text.StringsKt;
import rx.functions.Action1;

/* compiled from: FriendAmountBaseFragment.kt */
final class FriendAmountBaseFragment$onCreateView$5<T> implements Action1<Character> {
    final /* synthetic */ FriendAmountBaseFragment this$0;

    FriendAmountBaseFragment$onCreateView$5(FriendAmountBaseFragment friendAmountBaseFragment) {
        this.this$0 = friendAmountBaseFragment;
    }

    public final void call(Character ch) {
        String obj = this.this$0.getEditTextAmount().getText().toString();
        int selectionStart = this.this$0.getEditTextAmount().getSelectionStart();
        int selectionEnd = this.this$0.getEditTextAmount().getSelectionEnd();
        CharSequence valueOf = String.valueOf(ch.charValue());
        if (obj == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
        }
        ch = StringsKt.replaceRange(obj, selectionStart, selectionEnd, valueOf).toString();
        int selectionStart2 = this.this$0.getEditTextAmount().getSelectionStart();
        this.this$0.getEditTextAmount().setText((CharSequence) ch);
        selectionStart2++;
        if (selectionStart2 > this.this$0.getEditTextAmount().length()) {
            selectionStart2 = this.this$0.getEditTextAmount().length();
        }
        this.this$0.getEditTextAmount().setSelection(selectionStart2);
    }
}
