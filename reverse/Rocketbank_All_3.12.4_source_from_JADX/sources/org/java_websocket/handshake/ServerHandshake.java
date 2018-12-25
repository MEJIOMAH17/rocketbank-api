package org.java_websocket.handshake;

public interface ServerHandshake extends HandshakeBuilder, Handshakedata {
    String getHttpStatusMessage();

    void setHttpStatus(short s);

    void setHttpStatusMessage(String str);
}
