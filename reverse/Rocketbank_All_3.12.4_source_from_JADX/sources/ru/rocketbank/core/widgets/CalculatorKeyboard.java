package ru.rocketbank.core.widgets;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.utils.MathEval;
import ru.rocketbank.r2d2.C0859R;
import rx.Observable;
import rx.subjects.PublishSubject;

/* compiled from: CalculatorKeyboard.kt */
public final class CalculatorKeyboard extends FrameLayout {
    private HashMap _$_findViewCache;
    private final PublishSubject<Character> operatorObservable = PublishSubject.create();

    private View _$_findCachedViewById$7529eef0() {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(C0859R.id.keyboardLayout));
        if (view != null) {
            return view;
        }
        view = findViewById(C0859R.id.keyboardLayout);
        this._$_findViewCache.put(Integer.valueOf(C0859R.id.keyboardLayout), view);
        return view;
    }

    public CalculatorKeyboard(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        super(context);
        init$51fe1fdb(context);
    }

    public CalculatorKeyboard(Context context, AttributeSet attributeSet) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet);
        init$51fe1fdb(context);
    }

    public CalculatorKeyboard(Context context, AttributeSet attributeSet, int i) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet, i);
        init$51fe1fdb(context);
    }

    @TargetApi(21)
    public CalculatorKeyboard(Context context, AttributeSet attributeSet, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet, i, i2);
        init$51fe1fdb(context);
    }

    private final void init$51fe1fdb(Context context) {
        FrameLayout.inflate(getContext(), C0859R.layout.calculator_keyboard, this);
        context = context.getSystemService("layout_inflater");
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.LayoutInflater");
        }
        LayoutInflater layoutInflater = (LayoutInflater) context;
        for (Character ch : MathEval.MATH_OPERATORS) {
            View inflate = layoutInflater.inflate(C0859R.layout.calculator_button, (LinearLayout) _$_findCachedViewById$7529eef0(), false);
            if (inflate == null) {
                throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketButton");
            }
            RocketButton rocketButton = (RocketButton) inflate;
            rocketButton.setText(String.valueOf(ch.charValue()));
            rocketButton.setOnClickListener(new CalculatorKeyboard$init$1(this, ch));
            ((LinearLayout) _$_findCachedViewById$7529eef0()).addView(rocketButton);
        }
    }

    public final Observable<Character> getOperatorObservable() {
        Observable<Character> onBackpressureBuffer = this.operatorObservable.onBackpressureBuffer();
        Intrinsics.checkExpressionValueIsNotNull(onBackpressureBuffer, "operatorObservable.onBackpressureBuffer()");
        return onBackpressureBuffer;
    }
}
