package com.pusher.client.connection.websocket;

import android.support.v4.app.NotificationCompat;
import com.facebook.share.internal.ShareConstants;
import com.google.gson.Gson;
import com.pusher.client.connection.ConnectionEventListener;
import com.pusher.client.connection.ConnectionState;
import com.pusher.client.connection.ConnectionStateChange;
import com.pusher.client.connection.impl.InternalConnection;
import com.pusher.client.util.Factory;
import java.net.Proxy;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.java_websocket.handshake.ServerHandshake;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class WebSocketConnection implements InternalConnection, WebSocketListener {
    private static final Gson GSON = new Gson();
    private static final String INTERNAL_EVENT_PREFIX = "pusher:";
    static final String PING_EVENT_SERIALIZED = "{\"event\": \"pusher:ping\"}";
    private static final Logger log = LoggerFactory.getLogger(WebSocketConnection.class);
    private final ActivityTimer activityTimer;
    private final Map<ConnectionState, Set<ConnectionEventListener>> eventListeners = new ConcurrentHashMap();
    private final Factory factory;
    private final Proxy proxy;
    private String socketId;
    private volatile ConnectionState state = ConnectionState.DISCONNECTED;
    private WebSocketClientWrapper underlyingConnection;
    private final URI webSocketUri;

    /* renamed from: com.pusher.client.connection.websocket.WebSocketConnection$1 */
    class C06761 implements Runnable {
        C06761() {
        }

        public void run() {
            if (WebSocketConnection.this.state == ConnectionState.DISCONNECTED) {
                try {
                    WebSocketConnection.this.underlyingConnection = WebSocketConnection.this.factory.newWebSocketClientWrapper(WebSocketConnection.this.webSocketUri, WebSocketConnection.this.proxy, WebSocketConnection.this);
                    WebSocketConnection.this.updateState(ConnectionState.CONNECTING);
                    WebSocketConnection.this.underlyingConnection.connect();
                } catch (Exception e) {
                    WebSocketConnection.this.sendErrorToAllListeners("Error connecting over SSL", null, e);
                }
            }
        }
    }

    /* renamed from: com.pusher.client.connection.websocket.WebSocketConnection$2 */
    class C06772 implements Runnable {
        C06772() {
        }

        public void run() {
            if (WebSocketConnection.this.state == ConnectionState.CONNECTED) {
                WebSocketConnection.this.updateState(ConnectionState.DISCONNECTING);
                WebSocketConnection.this.underlyingConnection.close();
            }
        }
    }

    /* renamed from: com.pusher.client.connection.websocket.WebSocketConnection$7 */
    class C06827 implements Runnable {
        C06827() {
        }

        public void run() {
            WebSocketConnection.this.updateState(ConnectionState.DISCONNECTED);
            WebSocketConnection.this.factory.shutdownThreads();
        }
    }

    private class ActivityTimer {
        private final long activityTimeout;
        private Future<?> pingTimer;
        private final long pongTimeout;
        private Future<?> pongTimer;

        /* renamed from: com.pusher.client.connection.websocket.WebSocketConnection$ActivityTimer$1 */
        class C06841 implements Runnable {
            C06841() {
            }

            public void run() {
                WebSocketConnection.log.debug("Sending ping");
                WebSocketConnection.this.sendMessage(WebSocketConnection.PING_EVENT_SERIALIZED);
                ActivityTimer.this.schedulePongCheck();
            }
        }

        /* renamed from: com.pusher.client.connection.websocket.WebSocketConnection$ActivityTimer$2 */
        class C06852 implements Runnable {
            C06852() {
            }

            public void run() {
                WebSocketConnection.log.debug("Timed out awaiting pong from server - disconnecting");
                WebSocketConnection.this.underlyingConnection.removeWebSocketListener();
                WebSocketConnection.this.disconnect();
                WebSocketConnection.this.onClose(-1, "Pong timeout", false);
            }
        }

        public ActivityTimer(long j, long j2) {
            this.activityTimeout = j;
            this.pongTimeout = j2;
        }

        public synchronized void activity() {
            if (this.pongTimer != null) {
                this.pongTimer.cancel(true);
            }
            if (this.pingTimer != null) {
                this.pingTimer.cancel(false);
            }
            this.pingTimer = WebSocketConnection.this.factory.getTimers().schedule(new C06841(), this.activityTimeout, TimeUnit.MILLISECONDS);
        }

        public synchronized void cancelTimeouts() {
            if (this.pingTimer != null) {
                this.pingTimer.cancel(false);
            }
            if (this.pongTimer != null) {
                this.pongTimer.cancel(false);
            }
        }

        private synchronized void schedulePongCheck() {
            if (this.pongTimer != null) {
                this.pongTimer.cancel(false);
            }
            this.pongTimer = WebSocketConnection.this.factory.getTimers().schedule(new C06852(), this.pongTimeout, TimeUnit.MILLISECONDS);
        }
    }

    public void onOpen(ServerHandshake serverHandshake) {
    }

    public WebSocketConnection(String str, long j, long j2, Proxy proxy, Factory factory) throws URISyntaxException {
        this.webSocketUri = new URI(str);
        this.activityTimer = new ActivityTimer(j, j2);
        this.proxy = proxy;
        this.factory = factory;
        for (long j22 : ConnectionState.values()) {
            this.eventListeners.put(j22, Collections.newSetFromMap(new ConcurrentHashMap()));
        }
    }

    public void connect() {
        this.factory.queueOnEventThread(new C06761());
    }

    public void disconnect() {
        this.factory.queueOnEventThread(new C06772());
    }

    public void bind(ConnectionState connectionState, ConnectionEventListener connectionEventListener) {
        ((Set) this.eventListeners.get(connectionState)).add(connectionEventListener);
    }

    public boolean unbind(ConnectionState connectionState, ConnectionEventListener connectionEventListener) {
        return ((Set) this.eventListeners.get(connectionState)).remove(connectionEventListener);
    }

    public ConnectionState getState() {
        return this.state;
    }

    public void sendMessage(final String str) {
        this.factory.queueOnEventThread(new Runnable() {
            public void run() {
                try {
                    if (WebSocketConnection.this.state == ConnectionState.CONNECTED) {
                        WebSocketConnection.this.underlyingConnection.send(str);
                        return;
                    }
                    WebSocketConnection webSocketConnection = WebSocketConnection.this;
                    StringBuilder stringBuilder = new StringBuilder("Cannot send a message while in ");
                    stringBuilder.append(WebSocketConnection.this.state);
                    stringBuilder.append(" state");
                    webSocketConnection.sendErrorToAllListeners(stringBuilder.toString(), null, null);
                } catch (Exception e) {
                    WebSocketConnection webSocketConnection2 = WebSocketConnection.this;
                    StringBuilder stringBuilder2 = new StringBuilder("An exception occurred while sending message [");
                    stringBuilder2.append(str);
                    stringBuilder2.append("]");
                    webSocketConnection2.sendErrorToAllListeners(stringBuilder2.toString(), null, e);
                }
            }
        });
    }

    public String getSocketId() {
        return this.socketId;
    }

    private void updateState(ConnectionState connectionState) {
        Logger logger = log;
        StringBuilder stringBuilder = new StringBuilder("State transition requested, current [");
        stringBuilder.append(this.state);
        stringBuilder.append("], new [");
        stringBuilder.append(connectionState);
        stringBuilder.append("]");
        logger.debug(stringBuilder.toString());
        final ConnectionStateChange connectionStateChange = new ConnectionStateChange(this.state, connectionState);
        this.state = connectionState;
        Set<ConnectionEventListener> hashSet = new HashSet();
        hashSet.addAll((Collection) this.eventListeners.get(ConnectionState.ALL));
        hashSet.addAll((Collection) this.eventListeners.get(connectionState));
        for (final ConnectionEventListener connectionEventListener : hashSet) {
            this.factory.queueOnEventThread(new Runnable() {
                public void run() {
                    connectionEventListener.onConnectionStateChange(connectionStateChange);
                }
            });
        }
    }

    private void handleEvent(String str, String str2) {
        if (str.startsWith(INTERNAL_EVENT_PREFIX)) {
            handleInternalEvent(str, str2);
        } else {
            this.factory.getChannelManager().onMessage(str, str2);
        }
    }

    private void handleInternalEvent(String str, String str2) {
        if (str.equals("pusher:connection_established")) {
            handleConnectionMessage(str2);
            return;
        }
        if (str.equals("pusher:error") != null) {
            handleError(str2);
        }
    }

    private void handleConnectionMessage(String str) {
        this.socketId = (String) ((Map) GSON.fromJson((String) ((Map) GSON.fromJson(str, Map.class)).get(ShareConstants.WEB_DIALOG_PARAM_DATA), Map.class)).get("socket_id");
        updateState(ConnectionState.CONNECTED);
    }

    private void handleError(String str) {
        str = ((Map) GSON.fromJson(str, Map.class)).get(ShareConstants.WEB_DIALOG_PARAM_DATA);
        if (str instanceof String) {
            str = (Map) GSON.fromJson(str, Map.class);
        } else {
            str = (Map) str;
        }
        String str2 = (String) str.get(ShareConstants.WEB_DIALOG_PARAM_MESSAGE);
        str = str.get("code");
        sendErrorToAllListeners(str2, str != null ? String.valueOf(Math.round(((Double) str).doubleValue())) : null, null);
    }

    private void sendErrorToAllListeners(String str, String str2, Exception exception) {
        Set<ConnectionEventListener> hashSet = new HashSet();
        for (Set addAll : this.eventListeners.values()) {
            hashSet.addAll(addAll);
        }
        for (final ConnectionEventListener connectionEventListener : hashSet) {
            final String str3 = str;
            final String str4 = str2;
            final Exception exception2 = exception;
            this.factory.queueOnEventThread(new Runnable() {
                public void run() {
                    connectionEventListener.onError(str3, str4, exception2);
                }
            });
        }
    }

    public void onMessage(final String str) {
        this.activityTimer.activity();
        this.factory.queueOnEventThread(new Runnable() {
            public void run() {
                WebSocketConnection.this.handleEvent((String) ((Map) WebSocketConnection.GSON.fromJson(str, Map.class)).get(NotificationCompat.CATEGORY_EVENT), str);
            }
        });
    }

    public void onClose(int i, String str, boolean z) {
        if (this.state == ConnectionState.DISCONNECTED) {
            Logger logger = log;
            StringBuilder stringBuilder = new StringBuilder("Received close from underlying socket when already disconnected. Close code [");
            stringBuilder.append(i);
            stringBuilder.append("], Reason [");
            stringBuilder.append(str);
            stringBuilder.append("], Remote [");
            stringBuilder.append(z);
            stringBuilder.append("]");
            logger.error(stringBuilder.toString());
            return;
        }
        this.activityTimer.cancelTimeouts();
        this.factory.queueOnEventThread(new C06827());
    }

    public void onError(final Exception exception) {
        this.factory.queueOnEventThread(new Runnable() {
            public void run() {
                WebSocketConnection.this.sendErrorToAllListeners("An exception was thrown by the websocket", null, exception);
            }
        });
    }
}
