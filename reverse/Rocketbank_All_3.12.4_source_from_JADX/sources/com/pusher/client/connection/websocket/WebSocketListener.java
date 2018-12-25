package com.pusher.client.connection.websocket;

import org.java_websocket.handshake.ServerHandshake;

public interface WebSocketListener {
    void onClose(int i, String str, boolean z);

    void onError(Exception exception);

    void onMessage(String str);

    void onOpen(ServerHandshake serverHandshake);
}
