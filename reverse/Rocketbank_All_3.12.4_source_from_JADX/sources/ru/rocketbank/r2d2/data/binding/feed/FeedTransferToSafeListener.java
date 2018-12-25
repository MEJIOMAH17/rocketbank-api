package ru.rocketbank.r2d2.data.binding.feed;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.utils.ButtonHandler;

/* compiled from: FeedTransferToSafeListener.kt */
public interface FeedTransferToSafeListener extends ButtonHandler {

    /* compiled from: FeedTransferToSafeListener.kt */
    public static final class DefaultImpls {
        public static void confirmClicked(FeedTransferToSafeListener feedTransferToSafeListener, View view) {
            Intrinsics.checkParameterIsNotNull(view, "v");
            feedTransferToSafeListener.handle(view, new FeedTransferToSafeListener$confirmClicked$1(feedTransferToSafeListener));
        }

        public static void infoClicked(FeedTransferToSafeListener feedTransferToSafeListener, View view) {
            Intrinsics.checkParameterIsNotNull(view, "v");
            feedTransferToSafeListener.handle(view, new FeedTransferToSafeListener$infoClicked$1(feedTransferToSafeListener));
        }

        public static void handle(FeedTransferToSafeListener feedTransferToSafeListener, View view, Function0<Unit> function0) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(function0, "func");
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(function0, "func");
            view.setEnabled(null);
            function0.invoke();
            view.setEnabled(true);
        }
    }

    void confirmClicked(View view);

    void infoClicked(View view);

    void onConfirmClicked();

    void onInfoClicked();
}
