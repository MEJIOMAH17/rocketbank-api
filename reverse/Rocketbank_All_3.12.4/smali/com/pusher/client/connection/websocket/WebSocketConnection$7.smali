.class Lcom/pusher/client/connection/websocket/WebSocketConnection$7;
.super Ljava/lang/Object;
.source "WebSocketConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pusher/client/connection/websocket/WebSocketConnection;->onClose(ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;


# direct methods
.method constructor <init>(Lcom/pusher/client/connection/websocket/WebSocketConnection;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$7;->this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$7;->this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

    sget-object v1, Lcom/pusher/client/connection/ConnectionState;->DISCONNECTED:Lcom/pusher/client/connection/ConnectionState;

    invoke-static {v0, v1}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->access$500(Lcom/pusher/client/connection/websocket/WebSocketConnection;Lcom/pusher/client/connection/ConnectionState;)V

    .line 266
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$7;->this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

    invoke-static {v0}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->access$400(Lcom/pusher/client/connection/websocket/WebSocketConnection;)Lcom/pusher/client/util/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pusher/client/util/Factory;->shutdownThreads()V

    return-void
.end method
