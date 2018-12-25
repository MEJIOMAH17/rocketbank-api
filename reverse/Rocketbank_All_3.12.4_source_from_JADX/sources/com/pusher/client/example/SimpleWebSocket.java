package com.pusher.client.example;

import java.net.URI;
import java.net.URISyntaxException;
import org.java_websocket.client.WebSocketClient;
import org.java_websocket.handshake.ServerHandshake;

public class SimpleWebSocket extends WebSocketClient {
    public static void main(String[] strArr) throws URISyntaxException {
        strArr = new SimpleWebSocket();
    }

    public SimpleWebSocket() throws URISyntaxException {
        super(new URI("ws://ws.pusherapp.com/app/387954142406c3c9cc13?protocol=6&client=js&version=0.1.2&flash=false"));
        System.out.println("SimpleWebSocket");
        connect();
    }

    public void onOpen(ServerHandshake serverHandshake) {
        System.out.println("onOpen");
    }

    public void onMessage(String str) {
        System.out.println("onMessage: ".concat(String.valueOf(str)));
    }

    public void onClose(int i, String str, boolean z) {
        System.out.println("onClose");
    }

    public void onError(Exception exception) {
        System.out.println("onError");
    }
}
