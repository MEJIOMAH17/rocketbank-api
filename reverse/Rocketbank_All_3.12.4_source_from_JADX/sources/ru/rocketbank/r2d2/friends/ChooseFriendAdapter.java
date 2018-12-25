package ru.rocketbank.r2d2.friends;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.contact.Contact;
import ru.rocketbank.r2d2.friends.FriendsAdapter.ViewHolder;

/* compiled from: ChooseFriendFragment.kt */
public final class ChooseFriendAdapter extends FriendsAdapter {
    protected final boolean hasFriends() {
        return false;
    }

    protected final boolean hasTransfers() {
        return false;
    }

    public ChooseFriendAdapter(Function2<? super ViewHolder, ? super Contact, Unit> function2) {
        Intrinsics.checkParameterIsNotNull(function2, "onContactClickListener");
        super(new ChooseFriendAdapter$sam$rx_functions_Action2$0(function2));
    }
}
