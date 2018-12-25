package com.pusher.client.connection;

public interface Connection {
    void bind(ConnectionState connectionState, ConnectionEventListener connectionEventListener);

    void connect();

    String getSocketId();

    ConnectionState getState();

    boolean unbind(ConnectionState connectionState, ConnectionEventListener connectionEventListener);
}
