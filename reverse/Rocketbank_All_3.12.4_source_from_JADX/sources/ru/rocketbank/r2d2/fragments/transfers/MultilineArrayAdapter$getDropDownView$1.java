package ru.rocketbank.r2d2.fragments.transfers;

import android.widget.TextView;

/* compiled from: TransferBankFragment.kt */
final class MultilineArrayAdapter$getDropDownView$1 implements Runnable {
    final /* synthetic */ TextView $view;

    MultilineArrayAdapter$getDropDownView$1(TextView textView) {
        this.$view = textView;
    }

    public final void run() {
        this.$view.setSingleLine(false);
    }
}
