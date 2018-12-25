package ru.rocketbank.r2d2.root.chat.sync;

import android.util.Log;
import com.pusher.client.Pusher;
import com.pusher.client.PusherOptions;
import com.pusher.client.channel.PresenceChannelEventListener;
import com.pusher.client.connection.ConnectionEventListener;
import com.pusher.client.connection.ConnectionState;
import com.pusher.client.util.HttpAuthorizer;
import java.util.HashMap;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import ru.rocketbank.core.BaseRocketApplication;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.manager.HeaderManager;
import ru.rocketbank.core.network.Request;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.r2d2.C0859R;
import rx.Subscription;
import rx.functions.Action1;
import rx.subscriptions.Subscriptions;

/* compiled from: MessageNotifier.kt */
public final class MessageNotifier {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(MessageNotifier.class), "authorization", "getAuthorization()Lru/rocketbank/core/user/Authorization;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(MessageNotifier.class), "headerManager", "getHeaderManager()Lru/rocketbank/core/manager/HeaderManager;"))};
    private static final int CONNECT = 3;
    private static final int CREATED = 1;
    public static final Companion Companion = new Companion();
    private static final String EVENT_NEW_MESSAGE = "client-new-message";
    private static final String EVENT_READ_BY_ADMIN = "client-read-by-admin";
    private static final String EVENT_TYPING = "client-typing";
    private static final int NONE = 0;
    private static final int STOPPED = 2;
    private static final String TAG = "MessageNotifier";
    private final String apiKey = BaseRocketApplication.getContext().getString(C0859R.string.pusher_key);
    private final Lazy authorization$delegate = ExceptionsKt__ExceptionsKt.lazy(MessageNotifier$authorization$2.INSTANCE);
    private final ConnectionEventListener connectionEventListener = new MessageNotifier$connectionEventListener$1(this);
    private String currentChannelName;
    private final Lazy headerManager$delegate = ExceptionsKt__ExceptionsKt.lazy(MessageNotifier$headerManager$2.INSTANCE);
    private MessageNotificationListener notificationListener;
    private final PresenceChannelEventListener presenceChannelEventListener = new MessageNotifier$presenceChannelEventListener$1(this);
    private Pusher pusher;
    private Subscription subscription;

    /* compiled from: MessageNotifier.kt */
    public static final class Companion {
        private Companion() {
        }

        public final String getTAG() {
            return MessageNotifier.TAG;
        }

        public final int getNONE() {
            return MessageNotifier.NONE;
        }

        public final int getCREATED() {
            return MessageNotifier.CREATED;
        }

        public final int getSTOPPED() {
            return MessageNotifier.STOPPED;
        }

        public final int getCONNECT() {
            return MessageNotifier.CONNECT;
        }
    }

    private final Authorization getAuthorization() {
        return (Authorization) this.authorization$delegate.getValue();
    }

    private final HeaderManager getHeaderManager() {
        return (HeaderManager) this.headerManager$delegate.getValue();
    }

    private final void refresh() {
    }

    public MessageNotifier() {
        Subscription empty = Subscriptions.empty();
        Intrinsics.checkExpressionValueIsNotNull(empty, "Subscriptions.empty()");
        this.subscription = empty;
    }

    public final MessageNotificationListener getNotificationListener() {
        return this.notificationListener;
    }

    public final void setNotificationListener(MessageNotificationListener messageNotificationListener) {
        this.notificationListener = messageNotificationListener;
    }

    private final String getChannelName() {
        StringBuilder stringBuilder = new StringBuilder("presence-user-");
        stringBuilder.append(getAuthorization().getPusherToken());
        return stringBuilder.toString();
    }

    public final void onStart() {
        Subscription subscribe = getAuthorization().getUser().subscribe((Action1) new MessageNotifier$onStart$1(this));
        Intrinsics.checkExpressionValueIsNotNull(subscribe, "authorization.user.subsc…)\n            }\n        }");
        this.subscription = subscribe;
    }

    public final void initializePusher() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(Request.LINK_API);
        stringBuilder.append("messages/pusher");
        HttpAuthorizer httpAuthorizer = new HttpAuthorizer(stringBuilder.toString());
        httpAuthorizer.setHeaders(new HashMap(getHeaderManager().getHeaders()));
        PusherOptions authorizer = new PusherOptions().setAuthorizer(httpAuthorizer);
        Intrinsics.checkExpressionValueIsNotNull(authorizer, "pusherOptions");
        authorizer.setEncrypted(true);
        this.pusher = new Pusher(this.apiKey, authorizer);
    }

    public final void connect() {
        initializePusher();
        Pusher pusher = this.pusher;
        if (pusher != null) {
            pusher.connect(this.connectionEventListener, new ConnectionState[]{ConnectionState.ALL});
            try {
                pusher.subscribePresence(getChannelName(), this.presenceChannelEventListener, new String[]{EVENT_NEW_MESSAGE, EVENT_TYPING, EVENT_READ_BY_ADMIN});
                this.currentChannelName = getChannelName();
            } catch (Throwable th) {
                Log.e(TAG, "subscribe error", th);
                AnalyticsManager.logException(th);
            }
        }
    }

    public final void disconnect() {
        Pusher pusher = this.pusher;
        if (pusher != null) {
            pusher.disconnect();
            pusher.unsubscribe(this.currentChannelName);
        }
    }

    public final void onStop() {
        this.subscription.unsubscribe();
        disconnect();
    }
}
