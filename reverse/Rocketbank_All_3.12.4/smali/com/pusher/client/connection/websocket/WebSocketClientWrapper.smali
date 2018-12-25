.class public Lcom/pusher/client/connection/websocket/WebSocketClientWrapper;
.super Lorg/java_websocket/client/WebSocketClient;
.source "WebSocketClientWrapper.java"


# static fields
.field private static final WSS_SCHEME:Ljava/lang/String; = "wss"


# instance fields
.field private webSocketListener:Lcom/pusher/client/connection/websocket/WebSocketListener;


# direct methods
.method public constructor <init>(Ljava/net/URI;Ljava/net/Proxy;Lcom/pusher/client/connection/websocket/WebSocketListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Lorg/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;)V

    .line 30
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "wss"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    const-string p1, "TLS"

    .line 32
    invoke-static {p1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p1

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, v0, v0, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 39
    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/pusher/client/connection/websocket/WebSocketClientWrapper;->setSocket(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 51
    new-instance p2, Ljavax/net/ssl/SSLException;

    invoke-direct {p2, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 48
    new-instance p2, Ljavax/net/ssl/SSLException;

    invoke-direct {p2, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 45
    new-instance p2, Ljavax/net/ssl/SSLException;

    invoke-direct {p2, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 54
    :cond_0
    :goto_0
    iput-object p3, p0, Lcom/pusher/client/connection/websocket/WebSocketClientWrapper;->webSocketListener:Lcom/pusher/client/connection/websocket/WebSocketListener;

    .line 55
    invoke-virtual {p0, p2}, Lcom/pusher/client/connection/websocket/WebSocketClientWrapper;->setProxy(Ljava/net/Proxy;)V

    return-void
.end method


# virtual methods
.method public onClose(ILjava/lang/String;Z)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketClientWrapper;->webSocketListener:Lcom/pusher/client/connection/websocket/WebSocketListener;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketClientWrapper;->webSocketListener:Lcom/pusher/client/connection/websocket/WebSocketListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/pusher/client/connection/websocket/WebSocketListener;->onClose(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketClientWrapper;->webSocketListener:Lcom/pusher/client/connection/websocket/WebSocketListener;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketClientWrapper;->webSocketListener:Lcom/pusher/client/connection/websocket/WebSocketListener;

    invoke-interface {v0, p1}, Lcom/pusher/client/connection/websocket/WebSocketListener;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketClientWrapper;->webSocketListener:Lcom/pusher/client/connection/websocket/WebSocketListener;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketClientWrapper;->webSocketListener:Lcom/pusher/client/connection/websocket/WebSocketListener;

    invoke-interface {v0, p1}, Lcom/pusher/client/connection/websocket/WebSocketListener;->onMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onOpen(Lorg/java_websocket/handshake/ServerHandshake;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketClientWrapper;->webSocketListener:Lcom/pusher/client/connection/websocket/WebSocketListener;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketClientWrapper;->webSocketListener:Lcom/pusher/client/connection/websocket/WebSocketListener;

    invoke-interface {v0, p1}, Lcom/pusher/client/connection/websocket/WebSocketListener;->onOpen(Lorg/java_websocket/handshake/ServerHandshake;)V

    :cond_0
    return-void
.end method

.method public removeWebSocketListener()V
    .locals 1

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketClientWrapper;->webSocketListener:Lcom/pusher/client/connection/websocket/WebSocketListener;

    return-void
.end method
