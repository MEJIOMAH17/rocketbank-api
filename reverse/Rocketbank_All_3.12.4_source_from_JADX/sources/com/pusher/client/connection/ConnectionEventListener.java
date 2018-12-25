package com.pusher.client.connection;

public interface ConnectionEventListener {
    void onConnectionStateChange(ConnectionStateChange connectionStateChange);

    void onError(String str, String str2, Exception exception);
}
