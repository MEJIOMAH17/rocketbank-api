package ru.rocketbank.r2d2.activities.safe;

/* compiled from: TransferActivity.kt */
final class TransferActivity$nextPressed$1 implements Runnable {
    final /* synthetic */ TransferActivity this$0;

    TransferActivity$nextPressed$1(TransferActivity transferActivity) {
        this.this$0 = transferActivity;
    }

    public final void run() {
        this.this$0.sendMoney();
    }
}
