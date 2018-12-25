package ru.rocketbank.r2d2.activities;

/* compiled from: DiscountDetailsActivity.kt */
final class DiscountDetailsActivity$onCreate$1 implements Runnable {
    final /* synthetic */ DiscountDetailsActivity this$0;

    DiscountDetailsActivity$onCreate$1(DiscountDetailsActivity discountDetailsActivity) {
        this.this$0 = discountDetailsActivity;
    }

    public final void run() {
        this.this$0.height = (float) (DiscountDetailsActivity.access$getImageView$p(this.this$0).getHeight() - DiscountDetailsActivity.access$getToolbar$p(this.this$0).getHeight());
        this.this$0.onScrollChanged(DiscountDetailsActivity.access$getObservableScrollView$p(this.this$0).getCurrentScrollY(), false, false);
    }
}
