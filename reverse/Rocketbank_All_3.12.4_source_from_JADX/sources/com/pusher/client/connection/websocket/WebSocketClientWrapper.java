package com.pusher.client.connection.websocket;

import java.net.Proxy;
import java.net.URI;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLException;
import org.java_websocket.client.WebSocketClient;
import org.java_websocket.handshake.ServerHandshake;

public class WebSocketClientWrapper extends WebSocketClient {
    private static final String WSS_SCHEME = "wss";
    private WebSocketListener webSocketListener;

    public WebSocketClientWrapper(URI uri, Proxy proxy, WebSocketListener webSocketListener) throws SSLException {
        super(uri);
        if (uri.getScheme().equals(WSS_SCHEME) != null) {
            try {
                uri = SSLContext.getInstance("TLS");
                uri.init(null, null, null);
                setSocket(uri.getSocketFactory().createSocket());
            } catch (URI uri2) {
                throw new SSLException(uri2);
            } catch (URI uri22) {
                throw new SSLException(uri22);
            } catch (URI uri222) {
                throw new SSLException(uri222);
            }
        }
        this.webSocketListener = webSocketListener;
        setProxy(proxy);
    }

    public void onOpen(ServerHandshake serverHandshake) {
        if (this.webSocketListener != null) {
            this.webSocketListener.onOpen(serverHandshake);
        }
    }

    public void onMessage(String str) {
        if (this.webSocketListener != null) {
            this.webSocketListener.onMessage(str);
        }
    }

    public void onClose(int i, String str, boolean z) {
        if (this.webSocketListener != null) {
            this.webSocketListener.onClose(i, str, z);
        }
    }

    public void onError(Exception exception) {
        if (this.webSocketListener != null) {
            this.webSocketListener.onError(exception);
        }
    }

    public void removeWebSocketListener() {
        this.webSocketListener = null;
    }
}
