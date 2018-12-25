package ru.rocketbank.r2d2.friends;

import android.text.Editable;
import android.view.View;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.provider.ProviderField;
import ru.rocketbank.r2d2.utils.TextWatcherAbstract;

/* compiled from: FriendAmountBaseFragment.kt */
public final class FriendAmountBaseFragment$onCreateView$3 extends TextWatcherAbstract {
    final /* synthetic */ View $rootView;
    final /* synthetic */ FriendAmountBaseFragment this$0;

    FriendAmountBaseFragment$onCreateView$3(FriendAmountBaseFragment friendAmountBaseFragment, View view) {
        this.this$0 = friendAmountBaseFragment;
        this.$rootView = view;
    }

    public final void afterTextChanged(Editable editable) {
        Intrinsics.checkParameterIsNotNull(editable, ProviderField.TEXT);
        editable = this.this$0;
        View view = this.$rootView;
        Intrinsics.checkExpressionValueIsNotNull(view, "rootView");
        editable.updateText(view, this);
    }
}
