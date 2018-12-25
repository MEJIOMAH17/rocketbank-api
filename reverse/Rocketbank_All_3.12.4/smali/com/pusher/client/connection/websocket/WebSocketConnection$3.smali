.class Lcom/pusher/client/connection/websocket/WebSocketConnection$3;
.super Ljava/lang/Object;
.source "WebSocketConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pusher/client/connection/websocket/WebSocketConnection;->sendMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pusher/client/connection/websocket/WebSocketConnection;Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$3;->this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

    iput-object p2, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$3;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$3;->this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

    invoke-static {v1}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->access$000(Lcom/pusher/client/connection/websocket/WebSocketConnection;)Lcom/pusher/client/connection/ConnectionState;

    move-result-object v1

    sget-object v2, Lcom/pusher/client/connection/ConnectionState;->CONNECTED:Lcom/pusher/client/connection/ConnectionState;

    if-ne v1, v2, :cond_0

    .line 122
    iget-object v1, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$3;->this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

    invoke-static {v1}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->access$100(Lcom/pusher/client/connection/websocket/WebSocketConnection;)Lcom/pusher/client/connection/websocket/WebSocketClientWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$3;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/pusher/client/connection/websocket/WebSocketClientWrapper;->send(Ljava/lang/String;)V

    return-void

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$3;->this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot send a message while in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$3;->this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

    invoke-static {v3}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->access$000(Lcom/pusher/client/connection/websocket/WebSocketConnection;)Lcom/pusher/client/connection/ConnectionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0, v0}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->access$600(Lcom/pusher/client/connection/websocket/WebSocketConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 129
    iget-object v2, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$3;->this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "An exception occurred while sending message ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$3;->val$message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->access$600(Lcom/pusher/client/connection/websocket/WebSocketConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
