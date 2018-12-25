package ru.rocketbank.r2d2.root.chat.sync;

import android.util.Log;
import com.pusher.client.connection.ConnectionEventListener;
import com.pusher.client.connection.ConnectionState;
import com.pusher.client.connection.ConnectionStateChange;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.manager.messsage.MessageNotification;

/* compiled from: MessageNotifier.kt */
public final class MessageNotifier$connectionEventListener$1 implements ConnectionEventListener {
    final /* synthetic */ MessageNotifier this$0;

    public final void onError(String str, String str2, Exception exception) {
    }

    MessageNotifier$connectionEventListener$1(MessageNotifier messageNotifier) {
        this.this$0 = messageNotifier;
    }

    public final void onConnectionStateChange(ConnectionStateChange connectionStateChange) {
        Intrinsics.checkParameterIsNotNull(connectionStateChange, "connectionStateChange");
        Log.v(MessageNotifier.Companion.getTAG(), connectionStateChange.getCurrentState().toString());
        MessageNotificationListener notificationListener;
        if (connectionStateChange.getCurrentState() == ConnectionState.CONNECTED) {
            connectionStateChange = new MessageNotification();
            connectionStateChange.setType(MessageNotification.Companion.getTYPE_CONNECTED());
            notificationListener = this.this$0.getNotificationListener();
            if (notificationListener != null) {
                notificationListener.onMessage(connectionStateChange);
            }
            return;
        }
        if (connectionStateChange.getCurrentState() == ConnectionState.DISCONNECTED) {
            connectionStateChange = new MessageNotification();
            connectionStateChange.setType(MessageNotification.Companion.getTYPE_DISCONNECTED());
            notificationListener = this.this$0.getNotificationListener();
            if (notificationListener != null) {
                notificationListener.onMessage(connectionStateChange);
            }
        }
    }
}
