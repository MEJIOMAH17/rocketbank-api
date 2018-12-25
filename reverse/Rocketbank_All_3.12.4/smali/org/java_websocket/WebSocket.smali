.class public interface abstract Lorg/java_websocket/WebSocket;
.super Ljava/lang/Object;
.source "WebSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/java_websocket/WebSocket$READYSTATE;,
        Lorg/java_websocket/WebSocket$Role;
    }
.end annotation


# virtual methods
.method public abstract getLocalSocketAddress()Ljava/net/InetSocketAddress;
.end method

.method public abstract sendFrame(Lorg/java_websocket/framing/Framedata;)V
.end method
