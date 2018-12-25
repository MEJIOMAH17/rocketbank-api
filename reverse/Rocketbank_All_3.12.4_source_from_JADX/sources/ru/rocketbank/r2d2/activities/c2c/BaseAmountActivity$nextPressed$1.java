package ru.rocketbank.r2d2.activities.c2c;

/* compiled from: BaseAmountActivity.kt */
final class BaseAmountActivity$nextPressed$1 implements Runnable {
    final /* synthetic */ BaseAmountActivity this$0;

    BaseAmountActivity$nextPressed$1(BaseAmountActivity baseAmountActivity) {
        this.this$0 = baseAmountActivity;
    }

    public final void run() {
        this.this$0.onNextPressed();
    }
}
