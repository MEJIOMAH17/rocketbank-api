package org.java_websocket.handshake;

public interface ClientHandshake extends HandshakeBuilder, Handshakedata {
    String getResourceDescriptor();

    void setResourceDescriptor(String str);
}
