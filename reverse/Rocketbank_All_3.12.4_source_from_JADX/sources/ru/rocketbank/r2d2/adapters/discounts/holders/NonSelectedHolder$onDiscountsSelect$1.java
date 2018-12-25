package ru.rocketbank.r2d2.adapters.discounts.holders;

import android.view.View;
import android.widget.Toast;
import de.greenrobot.event.EventBus;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.Empty;
import ru.rocketbank.r2d2.fragments.discounts.DiscountUpdateEvent;
import rx.Subscriber;

/* compiled from: NonSelectedHolder.kt */
public final class NonSelectedHolder$onDiscountsSelect$1 extends Subscriber<Empty> {
    final /* synthetic */ View $v;
    final /* synthetic */ NonSelectedHolder this$0;

    public final void onCompleted() {
    }

    NonSelectedHolder$onDiscountsSelect$1(NonSelectedHolder nonSelectedHolder, View view) {
        this.this$0 = nonSelectedHolder;
        this.$v = view;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        Toast.makeText(this.$v.getContext(), th.getMessage(), 0).show();
        this.this$0.data.getConfirmEnabled().set(true);
        unsubscribe();
    }

    public final void onNext(Empty empty) {
        Intrinsics.checkParameterIsNotNull(empty, "empty");
        EventBus.getDefault().post(new DiscountUpdateEvent());
        unsubscribe();
    }
}
