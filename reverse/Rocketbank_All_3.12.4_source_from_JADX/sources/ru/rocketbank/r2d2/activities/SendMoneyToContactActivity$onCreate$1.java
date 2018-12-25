package ru.rocketbank.r2d2.activities;

import android.view.View;
import android.view.View.OnClickListener;
import kotlin.TypeCastException;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.friends.TransferFriendAmountFragment;

/* compiled from: SendMoneyToContactActivity.kt */
final class SendMoneyToContactActivity$onCreate$1 implements OnClickListener {
    final /* synthetic */ SendMoneyToContactActivity this$0;

    SendMoneyToContactActivity$onCreate$1(SendMoneyToContactActivity sendMoneyToContactActivity) {
        this.this$0 = sendMoneyToContactActivity;
    }

    public final void onClick(View view) {
        view = this.this$0.getSupportFragmentManager().findFragmentById(C0859R.id.userfeed_transfers_container);
        if (view == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.friends.TransferFriendAmountFragment");
        }
        ((TransferFriendAmountFragment) view).onNextButtonClick();
    }
}
