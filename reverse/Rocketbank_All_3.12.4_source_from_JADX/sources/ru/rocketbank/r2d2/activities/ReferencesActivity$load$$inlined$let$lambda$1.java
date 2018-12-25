package ru.rocketbank.r2d2.activities;

import android.support.v7.widget.CardView;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.references.Reference;
import rx.Subscriber;

/* compiled from: ReferencesActivity.kt */
public final class ReferencesActivity$load$$inlined$let$lambda$1 extends Subscriber<List<? extends Reference>> {
    final /* synthetic */ ReferencesActivity this$0;

    public final void onCompleted() {
    }

    ReferencesActivity$load$$inlined$let$lambda$1(ReferencesActivity referencesActivity) {
        this.this$0 = referencesActivity;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        this.this$0.hideProgressDialog();
    }

    public final void onNext(List<Reference> list) {
        Intrinsics.checkParameterIsNotNull(list, "list");
        this.this$0.count = list.size();
        CardView cardView = ReferencesActivity.access$getBinding$p(this.this$0).ref;
        Intrinsics.checkExpressionValueIsNotNull(cardView, "binding.ref");
        cardView.setVisibility(0);
        ReferencesActivity.access$getBinding$p(this.this$0).container.removeAllViews();
        for (Reference access$addView : list) {
            this.this$0.addView(access$addView);
        }
        this.this$0.hideProgressDialog();
    }
}
