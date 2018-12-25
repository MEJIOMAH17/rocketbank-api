.class Lcom/pusher/client/connection/websocket/WebSocketConnection$1;
.super Ljava/lang/Object;
.source "WebSocketConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pusher/client/connection/websocket/WebSocketConnection;->connect()V
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

    .line 66
    iput-object p1, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$1;->this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 70
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$1;->this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

    invoke-static {v0}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->access$000(Lcom/pusher/client/connection/websocket/WebSocketConnection;)Lcom/pusher/client/connection/ConnectionState;

    move-result-object v0

    sget-object v1, Lcom/pusher/client/connection/ConnectionState;->DISCONNECTED:Lcom/pusher/client/connection/ConnectionState;

    if-ne v0, v1, :cond_0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$1;->this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

    iget-object v1, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$1;->this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

    invoke-static {v1}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->access$400(Lcom/pusher/client/connection/websocket/WebSocketConnection;)Lcom/pusher/client/util/Factory;

    move-result-object v1

    iget-object v2, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$1;->this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

    .line 73
    invoke-static {v2}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->access$200(Lcom/pusher/client/connection/websocket/WebSocketConnection;)Ljava/net/URI;

    move-result-object v2

    iget-object v3, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$1;->this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

    invoke-static {v3}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->access$300(Lcom/pusher/client/connection/websocket/WebSocketConnection;)Ljava/net/Proxy;

    move-result-object v3

    iget-object v4, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$1;->this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

    invoke-virtual {v1, v2, v3, v4}, Lcom/pusher/client/util/Factory;->newWebSocketClientWrapper(Ljava/net/URI;Ljava/net/Proxy;Lcom/pusher/client/connection/websocket/WebSocketListener;)Lcom/pusher/client/connection/websocket/WebSocketClientWrapper;

    move-result-object v1

    .line 72
    invoke-static {v0, v1}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->access$102(Lcom/pusher/client/connection/websocket/WebSocketConnection;Lcom/pusher/client/connection/websocket/WebSocketClientWrapper;)Lcom/pusher/client/connection/websocket/WebSocketClientWrapper;

    .line 74
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$1;->this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

    sget-object v1, Lcom/pusher/client/connection/ConnectionState;->CONNECTING:Lcom/pusher/client/connection/ConnectionState;

    invoke-static {v0, v1}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->access$500(Lcom/pusher/client/connection/websocket/WebSocketConnection;Lcom/pusher/client/connection/ConnectionState;)V

    .line 75
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$1;->this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

    invoke-static {v0}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->access$100(Lcom/pusher/client/connection/websocket/WebSocketConnection;)Lcom/pusher/client/connection/websocket/WebSocketClientWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pusher/client/connection/websocket/WebSocketClientWrapper;->connect()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 78
    iget-object v1, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$1;->this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

    const-string v2, "Error connecting over SSL"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->access$600(Lcom/pusher/client/connection/websocket/WebSocketConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
