package ru.rocketbank.r2d2.registration.new_passport;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: OnButtonsClickListener.kt */
public interface OnButtonsClickListener {

    /* compiled from: OnButtonsClickListener.kt */
    public static final class DefaultImpls {
        private static void clicked(OnButtonsClickListener onButtonsClickListener, View view, Function0<Unit> function0) {
            view.setEnabled(null);
            function0.invoke();
            view.setEnabled(true);
        }

        public static void mainClicked(OnButtonsClickListener onButtonsClickListener, View view) {
            Intrinsics.checkParameterIsNotNull(view, "v");
            clicked(onButtonsClickListener, view, new OnButtonsClickListener$mainClicked$1(onButtonsClickListener));
        }

        public static void bottomButtonClicked(OnButtonsClickListener onButtonsClickListener, View view) {
            Intrinsics.checkParameterIsNotNull(view, "v");
            clicked(onButtonsClickListener, view, new OnButtonsClickListener$bottomButtonClicked$1(onButtonsClickListener));
        }
    }

    void bottomButtonClicked(View view);

    void mainClicked(View view);

    void onBottomButtonClicked();

    void onMainButtonClicked();
}
