package org.java_websocket;

import java.net.InetSocketAddress;
import org.java_websocket.framing.Framedata;

public interface WebSocket {

    public enum READYSTATE {
        NOT_YET_CONNECTED,
        CONNECTING,
        OPEN,
        CLOSING,
        CLOSED
    }

    public enum Role {
        CLIENT,
        SERVER
    }

    InetSocketAddress getLocalSocketAddress();

    void sendFrame(Framedata framedata);
}
