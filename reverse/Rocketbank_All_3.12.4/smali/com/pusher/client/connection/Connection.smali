.class public interface abstract Lcom/pusher/client/connection/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# virtual methods
.method public abstract bind(Lcom/pusher/client/connection/ConnectionState;Lcom/pusher/client/connection/ConnectionEventListener;)V
.end method

.method public abstract connect()V
.end method

.method public abstract getSocketId()Ljava/lang/String;
.end method

.method public abstract getState()Lcom/pusher/client/connection/ConnectionState;
.end method

.method public abstract unbind(Lcom/pusher/client/connection/ConnectionState;Lcom/pusher/client/connection/ConnectionEventListener;)Z
.end method
