package ru.rocketbank.core.widgets;

/* compiled from: CreditCardView.kt */
final class CreditCardView$init$1 implements Runnable {
    final /* synthetic */ CreditCardView this$0;

    CreditCardView$init$1(CreditCardView creditCardView) {
        this.this$0 = creditCardView;
    }

    public final void run() {
        CreditCardView.access$getEditTextCardNumber$p(this.this$0).requestFocus();
    }
}
