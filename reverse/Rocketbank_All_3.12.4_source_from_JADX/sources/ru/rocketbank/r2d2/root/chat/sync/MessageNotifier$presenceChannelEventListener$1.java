package ru.rocketbank.r2d2.root.chat.sync;

import android.util.Log;
import com.facebook.share.internal.ShareConstants;
import com.pusher.client.channel.PresenceChannelEventListener;
import com.pusher.client.channel.User;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.manager.messsage.MessageNotification;

/* compiled from: MessageNotifier.kt */
public final class MessageNotifier$presenceChannelEventListener$1 implements PresenceChannelEventListener {
    final /* synthetic */ MessageNotifier this$0;

    MessageNotifier$presenceChannelEventListener$1(MessageNotifier messageNotifier) {
        this.this$0 = messageNotifier;
    }

    public final void onUsersInformationReceived(String str, Set<? extends User> set) {
        Intrinsics.checkParameterIsNotNull(str, "channelName");
        Intrinsics.checkParameterIsNotNull(set, "users");
        String tag = MessageNotifier.Companion.getTAG();
        StringBuilder stringBuilder = new StringBuilder("onUsersInformationReceived: ");
        stringBuilder.append(str);
        stringBuilder.append("\n ");
        stringBuilder.append(set);
        Log.v(tag, stringBuilder.toString());
    }

    public final void onEvent(String str, String str2, String str3) {
        Intrinsics.checkParameterIsNotNull(str, "channelName");
        Intrinsics.checkParameterIsNotNull(str2, "eventName");
        Intrinsics.checkParameterIsNotNull(str3, ShareConstants.WEB_DIALOG_PARAM_DATA);
        String tag = MessageNotifier.Companion.getTAG();
        StringBuilder stringBuilder = new StringBuilder("Event: ");
        stringBuilder.append(str2);
        stringBuilder.append(' ');
        stringBuilder.append(str3);
        Log.v(tag, stringBuilder.toString());
        MessageNotification messageNotification = new MessageNotification();
        if (Intrinsics.areEqual(str2, MessageNotifier.EVENT_TYPING)) {
            messageNotification.setType(MessageNotification.Companion.getTYPE_TYPING());
        } else if (Intrinsics.areEqual(str2, MessageNotifier.EVENT_NEW_MESSAGE)) {
            messageNotification.setType(MessageNotification.Companion.getTYPE_MESSAGE());
            this.this$0.refresh();
        } else {
            messageNotification.setType(MessageNotification.Companion.getTYPE_READ());
            this.this$0.refresh();
        }
        messageNotification.setChannelName(str);
        messageNotification.setEventName(str2);
        messageNotification.setData(str3);
        str = this.this$0.getNotificationListener();
        if (str != null) {
            str.onMessage(messageNotification);
        }
    }

    public final void onSubscriptionSucceeded(String str) {
        Intrinsics.checkParameterIsNotNull(str, "channelName");
        Log.v(MessageNotifier.Companion.getTAG(), "Subscription succeeded: ".concat(String.valueOf(str)));
    }

    public final void onAuthenticationFailure(String str, Exception exception) {
        Intrinsics.checkParameterIsNotNull(str, ShareConstants.WEB_DIALOG_PARAM_MESSAGE);
        Intrinsics.checkParameterIsNotNull(exception, "e");
        Log.e(MessageNotifier.Companion.getTAG(), str, exception);
    }

    public final void userSubscribed(String str, User user) {
        String tag = MessageNotifier.Companion.getTAG();
        StringBuilder stringBuilder = new StringBuilder("user subscribed: ");
        stringBuilder.append(str);
        stringBuilder.append(' ');
        stringBuilder.append(user);
        Log.v(tag, stringBuilder.toString());
    }

    public final void userUnsubscribed(String str, User user) {
        String tag = MessageNotifier.Companion.getTAG();
        StringBuilder stringBuilder = new StringBuilder("user unsubscribed: ");
        stringBuilder.append(str);
        stringBuilder.append(' ');
        stringBuilder.append(user);
        Log.w(tag, stringBuilder.toString());
    }
}
