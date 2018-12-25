.class Lcom/pusher/client/connection/websocket/WebSocketConnection$4;
.super Ljava/lang/Object;
.source "WebSocketConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pusher/client/connection/websocket/WebSocketConnection;->updateState(Lcom/pusher/client/connection/ConnectionState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

.field final synthetic val$change:Lcom/pusher/client/connection/ConnectionStateChange;

.field final synthetic val$listener:Lcom/pusher/client/connection/ConnectionEventListener;


# direct methods
.method constructor <init>(Lcom/pusher/client/connection/websocket/WebSocketConnection;Lcom/pusher/client/connection/ConnectionEventListener;Lcom/pusher/client/connection/ConnectionStateChange;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$4;->this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

    iput-object p2, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$4;->val$listener:Lcom/pusher/client/connection/ConnectionEventListener;

    iput-object p3, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$4;->val$change:Lcom/pusher/client/connection/ConnectionStateChange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$4;->val$listener:Lcom/pusher/client/connection/ConnectionEventListener;

    iget-object v1, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$4;->val$change:Lcom/pusher/client/connection/ConnectionStateChange;

    invoke-interface {v0, v1}, Lcom/pusher/client/connection/ConnectionEventListener;->onConnectionStateChange(Lcom/pusher/client/connection/ConnectionStateChange;)V

    return-void
.end method
