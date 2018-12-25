package ru.rocketbank.r2d2.root.feed;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.FriendOperation;
import ru.rocketbank.core.model.contact.Contact;
import ru.rocketbank.core.model.dto.operations.Friend;
import ru.rocketbank.r2d2.activities.SendMoneyToContactActivity;
import ru.rocketbank.r2d2.activities.SendMoneyToContactActivity.Companion;
import ru.rocketbank.r2d2.root.feed.viewholder.FriendViewHolder;

/* compiled from: FeedAdapter.kt */
final class FeedAdapter$onBindFriend$1 implements Runnable {
    final /* synthetic */ FriendOperation $friendOperation;
    final /* synthetic */ FriendViewHolder $friendViewHolder;

    FeedAdapter$onBindFriend$1(FriendOperation friendOperation, FriendViewHolder friendViewHolder) {
        this.$friendOperation = friendOperation;
        this.$friendViewHolder = friendViewHolder;
    }

    public final void run() {
        Friend friend = this.$friendOperation.getFriend();
        if (friend != null) {
            Contact contact = new Contact(friend.getId(), friend.getFirstName(), friend.getLastName(), false, false, 24, null);
            contact.setServerFirstName(friend.getFirstName());
            contact.setServerLastName(friend.getLastName());
            contact.setRocket(true);
            Companion companion = SendMoneyToContactActivity.Companion;
            View view = this.$friendViewHolder.itemView;
            Intrinsics.checkExpressionValueIsNotNull(view, "friendViewHolder.itemView");
            Context context = view.getContext();
            if (context == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.app.Activity");
            }
            companion.startForResult((Activity) context, contact, 100);
        }
    }
}
