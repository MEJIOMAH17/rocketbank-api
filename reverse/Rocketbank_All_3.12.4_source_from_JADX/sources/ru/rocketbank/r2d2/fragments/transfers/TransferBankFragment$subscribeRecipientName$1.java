package ru.rocketbank.r2d2.fragments.transfers;

import com.jakewharton.rxbinding.widget.TextViewTextChangeEvent;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.r2d2.C0859R;
import rx.functions.Action1;

/* compiled from: TransferBankFragment.kt */
final class TransferBankFragment$subscribeRecipientName$1<T> implements Action1<TextViewTextChangeEvent> {
    final /* synthetic */ RocketEditText $recipientName;
    final /* synthetic */ TransferBankFragment this$0;

    TransferBankFragment$subscribeRecipientName$1(TransferBankFragment transferBankFragment, RocketEditText rocketEditText) {
        this.this$0 = transferBankFragment;
        this.$recipientName = rocketEditText;
    }

    public final void call(TextViewTextChangeEvent textViewTextChangeEvent) {
        if (this.this$0.name != null) {
            int length = textViewTextChangeEvent.toString().length();
            RocketEditText rocketEditText = this.$recipientName;
            Intrinsics.checkExpressionValueIsNotNull(rocketEditText, "recipientName");
            String obj = rocketEditText.getText().toString();
            String access$getName$p = this.this$0.name;
            if (access$getName$p == null) {
                Intrinsics.throwNpe();
            }
            int length2 = access$getName$p.length();
            int length3 = obj.length();
            boolean equals = StringsKt.equals(obj, this.this$0.name, true);
            if (textViewTextChangeEvent.before() < textViewTextChangeEvent.count() && length > 0 && length3 >= 3 && length2 > length3) {
                if (obj == null) {
                    throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                }
                textViewTextChangeEvent = obj.toUpperCase();
                Intrinsics.checkExpressionValueIsNotNull(textViewTextChangeEvent, "(this as java.lang.String).toUpperCase()");
                String access$getName$p2 = this.this$0.name;
                if (access$getName$p2 == null) {
                    Intrinsics.throwNpe();
                }
                if (access$getName$p2 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                }
                access$getName$p2 = access$getName$p2.substring(0, length3);
                Intrinsics.checkExpressionValueIsNotNull(access$getName$p2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                if (access$getName$p2 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                }
                access$getName$p2 = access$getName$p2.toUpperCase();
                Intrinsics.checkExpressionValueIsNotNull(access$getName$p2, "(this as java.lang.String).toUpperCase()");
                if (StringsKt.startsWith$default(textViewTextChangeEvent, access$getName$p2, false, 2, null) != null) {
                    this.$recipientName.setText(this.this$0.name);
                    if (length3 < length2) {
                        this.$recipientName.setSelection(length3, length2);
                    }
                    equals = true;
                }
            }
            if (equals) {
                this.this$0.setPurpose(this.this$0.individualViewModel.getPurpose(), C0859R.string.transfers_bank_purpose_own_money);
            }
        }
    }
}
