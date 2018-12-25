package ru.rocketbank.r2d2.fragments.transfers;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

/* compiled from: TransferBankFragment.kt */
final class TransferBankFragment$showPopup$2 implements OnTouchListener {
    final /* synthetic */ TransferBankFragment this$0;

    TransferBankFragment$showPopup$2(TransferBankFragment transferBankFragment) {
        this.this$0 = transferBankFragment;
    }

    public final boolean onTouch(View view, MotionEvent motionEvent) {
        this.this$0.hidePopup();
        return null;
    }
}
