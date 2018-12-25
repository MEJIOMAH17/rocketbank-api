package ru.rocketbank.r2d2.fragments;

import ru.rocketbank.core.widgets.RocketTextView;

/* compiled from: ChangeCodeFragment.kt */
final class ChangeCodeFragment$init$$inlined$run$lambda$1 implements Runnable {
    final /* synthetic */ RocketTextView $textView$inlined;
    final /* synthetic */ RocketTextView $textViewDescription$inlined;
    final /* synthetic */ ChangeCodeFragment this$0;

    ChangeCodeFragment$init$$inlined$run$lambda$1(ChangeCodeFragment changeCodeFragment, RocketTextView rocketTextView, RocketTextView rocketTextView2) {
        this.this$0 = changeCodeFragment;
        this.$textView$inlined = rocketTextView;
        this.$textViewDescription$inlined = rocketTextView2;
    }

    public final void run() {
        ChangeCodeFragment.access$getPinView$p(this.this$0).requestFocus();
    }
}
