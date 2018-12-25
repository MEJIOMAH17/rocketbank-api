package ru.rocketbank.r2d2.fragments.transfers;

import android.content.Context;
import android.view.View;
import android.widget.ProgressBar;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import rx.functions.Action1;

/* compiled from: TransferBankFragment.kt */
final class TransferBankFragment$requestKind$2<T> implements Action1<Throwable> {
    final /* synthetic */ TransferBankFragment this$0;

    TransferBankFragment$requestKind$2(TransferBankFragment transferBankFragment) {
        this.this$0 = transferBankFragment;
    }

    public final void call(Throwable th) {
        RocketEditText rocketEditText = (RocketEditText) this.this$0.getFragmentView().findViewById(C0859R.id.corr_number);
        if (rocketEditText != null) {
            rocketEditText.setBackgroundResource(C0859R.drawable.underline_red);
        }
        ProgressBar progressBar = (ProgressBar) this.this$0.getFragmentView().findViewById(C0859R.id.cardNumberProgressBar);
        if (progressBar != null) {
            View view = progressBar;
            Intrinsics.checkParameterIsNotNull(view, "$receiver");
            view.setVisibility(8);
        }
        RocketTextView rocketTextView = (RocketTextView) this.this$0.getFragmentView().findViewById(C0859R.id.textViewKindError);
        if (rocketTextView != null) {
            view = rocketTextView;
            Intrinsics.checkParameterIsNotNull(view, "$receiver");
            view.setVisibility(0);
        }
        rocketTextView = (RocketTextView) this.this$0.getFragmentView().findViewById(C0859R.id.textViewKindError);
        if (rocketTextView != null) {
            TransferBankFragment transferBankFragment = this.this$0;
            Context context = this.this$0.getContext();
            if (context == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
            Intrinsics.checkExpressionValueIsNotNull(th, "it");
            rocketTextView.setText(transferBankFragment.getErrorMessage(context, th));
        }
    }
}
