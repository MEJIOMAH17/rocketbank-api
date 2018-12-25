package ru.rocketbank.r2d2.fragments;

import android.view.View;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.exception.RocketResponseException;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.helpers.UIHelper;
import rx.functions.Action1;

/* compiled from: ChangeCodewordFragment.kt */
final class ChangeCodewordFragment$nextPressed$2<T> implements Action1<Throwable> {
    final /* synthetic */ View $view;
    final /* synthetic */ ChangeCodewordFragment this$0;

    ChangeCodewordFragment$nextPressed$2(ChangeCodewordFragment changeCodewordFragment, View view) {
        this.this$0 = changeCodewordFragment;
        this.$view = view;
    }

    public final void call(Throwable th) {
        UIHelper.showSnackWithError(this.$view, th);
        this.this$0.hideSpinner();
        if (th instanceof RocketResponseException) {
            th = ((RocketResponseException) th).getGenericRequestResponseData();
            if ((th != null ? th.getErrors() : null) != null) {
                RocketTextView rocketTextView = (RocketTextView) this.this$0._$_findCachedViewById(C0859R.id.textViewErrors);
                Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "textViewErrors");
                rocketTextView.setText(th.getErrors());
                RocketTextView rocketTextView2 = (RocketTextView) this.this$0._$_findCachedViewById(C0859R.id.textViewErrors);
                Intrinsics.checkExpressionValueIsNotNull(rocketTextView2, "textViewErrors");
                rocketTextView2.setVisibility(0);
            }
        }
    }
}
