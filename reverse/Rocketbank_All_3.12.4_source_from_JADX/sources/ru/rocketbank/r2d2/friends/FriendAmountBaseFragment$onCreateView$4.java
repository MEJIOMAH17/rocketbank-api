package ru.rocketbank.r2d2.friends;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.widgets.CalculatorKeyboard;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: FriendAmountBaseFragment.kt */
final class FriendAmountBaseFragment$onCreateView$4 implements OnFocusChangeListener {
    final /* synthetic */ View $rootView;

    FriendAmountBaseFragment$onCreateView$4(View view) {
        this.$rootView = view;
    }

    public final void onFocusChange(View view, boolean z) {
        view = this.$rootView;
        Intrinsics.checkExpressionValueIsNotNull(view, "rootView");
        CalculatorKeyboard calculatorKeyboard = (CalculatorKeyboard) view.findViewById(C0859R.id.calculatorKeyboard);
        Intrinsics.checkExpressionValueIsNotNull(calculatorKeyboard, "rootView.calculatorKeyboard");
        calculatorKeyboard.setVisibility(z ? false : true);
    }
}
