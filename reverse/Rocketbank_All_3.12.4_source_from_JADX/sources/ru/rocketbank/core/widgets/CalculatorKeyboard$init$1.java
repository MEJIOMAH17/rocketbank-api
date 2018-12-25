package ru.rocketbank.core.widgets;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: CalculatorKeyboard.kt */
final class CalculatorKeyboard$init$1 implements OnClickListener {
    final /* synthetic */ Character $operator;
    final /* synthetic */ CalculatorKeyboard this$0;

    CalculatorKeyboard$init$1(CalculatorKeyboard calculatorKeyboard, Character ch) {
        this.this$0 = calculatorKeyboard;
        this.$operator = ch;
    }

    public final void onClick(View view) {
        this.this$0.operatorObservable.onNext(this.$operator);
    }
}
