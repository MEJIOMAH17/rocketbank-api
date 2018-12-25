.class public final Lorg/java_websocket/drafts/Draft_17;
.super Lorg/java_websocket/drafts/Draft_10;
.source "Draft_17.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lorg/java_websocket/drafts/Draft_10;-><init>()V

    return-void
.end method


# virtual methods
.method public final acceptHandshakeAsServer(Lorg/java_websocket/handshake/ClientHandshake;)Lorg/java_websocket/drafts/Draft$HandshakeState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .line 10
    invoke-static {p1}, Lorg/java_websocket/drafts/Draft_17;->readVersion(Lorg/java_websocket/handshake/Handshakedata;)I

    move-result p1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 12
    sget-object p1, Lorg/java_websocket/drafts/Draft$HandshakeState;->MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;

    return-object p1

    .line 13
    :cond_0
    sget-object p1, Lorg/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;

    return-object p1
.end method

.method public final copyInstance()Lorg/java_websocket/drafts/Draft;
    .locals 1

    .line 25
    new-instance v0, Lorg/java_websocket/drafts/Draft_17;

    invoke-direct {v0}, Lorg/java_websocket/drafts/Draft_17;-><init>()V

    return-object v0
.end method

.method public final postProcessHandshakeRequestAsClient$4e5e7725(Lorg/java_websocket/handshake/ClientHandshake;)Lorg/java_websocket/handshake/ClientHandshake;
    .locals 2

    .line 18
    invoke-super {p0, p1}, Lorg/java_websocket/drafts/Draft_10;->postProcessHandshakeRequestAsClient$4e5e7725(Lorg/java_websocket/handshake/ClientHandshake;)Lorg/java_websocket/handshake/ClientHandshake;

    const-string v0, "Sec-WebSocket-Version"

    const-string v1, "13"

    .line 19
    invoke-interface {p1, v0, v1}, Lorg/java_websocket/handshake/ClientHandshake;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
