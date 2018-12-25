package ru.rocketbank.r2d2.friends;

import android.text.Editable;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.provider.ProviderField;
import ru.rocketbank.r2d2.utils.TextWatcherAbstract;

/* compiled from: FriendAmountBaseFragment.kt */
public final class FriendAmountBaseFragment$onViewCreated$1 extends TextWatcherAbstract {
    final /* synthetic */ FriendAmountBaseFragment this$0;

    FriendAmountBaseFragment$onViewCreated$1(FriendAmountBaseFragment friendAmountBaseFragment) {
        this.this$0 = friendAmountBaseFragment;
    }

    public final void afterTextChanged(Editable editable) {
        Intrinsics.checkParameterIsNotNull(editable, ProviderField.TEXT);
        this.this$0.onTextChanged();
    }
}
