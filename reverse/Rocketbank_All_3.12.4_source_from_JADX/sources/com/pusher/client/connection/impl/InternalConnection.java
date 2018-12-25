package com.pusher.client.connection.impl;

import com.pusher.client.connection.Connection;

public interface InternalConnection extends Connection {
    void disconnect();

    void sendMessage(String str);
}
