package ru.rocketbank.r2d2.friends;

import android.content.Intent;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.contact.Contact;
import ru.rocketbank.r2d2.friends.FriendsAdapter.ViewHolder;

/* compiled from: ChooseFriendFragment.kt */
final class ChooseFriendFragment$createFriendAdapter$1 extends Lambda implements Function2<ViewHolder, Contact, Unit> {
    final /* synthetic */ ChooseFriendFragment this$0;

    ChooseFriendFragment$createFriendAdapter$1(ChooseFriendFragment chooseFriendFragment) {
        this.this$0 = chooseFriendFragment;
        super(2);
    }

    public final void invoke(ViewHolder viewHolder, Contact contact) {
        Intrinsics.checkParameterIsNotNull(viewHolder, "viewHolder");
        Intrinsics.checkParameterIsNotNull(contact, "contact");
        viewHolder = this.this$0.getActivity();
        if (viewHolder == null) {
            Intrinsics.throwNpe();
        }
        viewHolder.setResult(-1, new Intent().putExtra(ChooseFriendActivity.Companion.getKEY_CONTACT(), contact));
        viewHolder = this.this$0.getActivity();
        if (viewHolder == null) {
            Intrinsics.throwNpe();
        }
        viewHolder.finish();
    }
}
