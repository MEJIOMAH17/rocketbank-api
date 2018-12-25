package ru.rocketbank.r2d2.root.feed.viewholder;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.NewPassportOperation;
import ru.rocketbank.r2d2.data.binding.feed.FeedOnCLickListener;
import ru.rocketbank.r2d2.databinding.FeedItemNewPassportBinding;
import ru.rocketbank.r2d2.registration.new_passport.NewPassportActivity;
import ru.rocketbank.r2d2.registration.new_passport.NewPassportActivity.Companion;
import ru.rocketbank.r2d2.root.feed.FeedFragment;
import ru.rocketbank.r2d2.root.feed.binding.FeedNewPassportData;

/* compiled from: FeedNewPassportViewHolder.kt */
public final class FeedNewPassportViewHolder extends FeedViewHolder implements FeedOnCLickListener {
    private final FeedNewPassportData data = new FeedNewPassportData();
    private NewPassportOperation operation;

    public FeedNewPassportViewHolder(FeedItemNewPassportBinding feedItemNewPassportBinding) {
        Intrinsics.checkParameterIsNotNull(feedItemNewPassportBinding, "binding");
        LinearLayout linearLayout = feedItemNewPassportBinding.root;
        Intrinsics.checkExpressionValueIsNotNull(linearLayout, "binding.root");
        super(linearLayout);
        feedItemNewPassportBinding.setData(this.data);
        feedItemNewPassportBinding.setListener(this);
    }

    public final void onBind(NewPassportOperation newPassportOperation) {
        Intrinsics.checkParameterIsNotNull(newPassportOperation, "operation");
        this.operation = newPassportOperation;
        this.data.getText().set(newPassportOperation.getText());
        this.data.getButtonText().set(newPassportOperation.getButtonText());
    }

    public final void onClick() {
        Companion companion = NewPassportActivity.Companion;
        View view = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
        Context context = view.getContext();
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.app.Activity");
        }
        Activity activity = (Activity) context;
        NewPassportOperation newPassportOperation = this.operation;
        if (newPassportOperation == null) {
            Intrinsics.throwUninitializedPropertyAccessException("operation");
        }
        companion.startForResult(activity, newPassportOperation, FeedFragment.NEW_PASSPORT_REQUEST);
    }
}
