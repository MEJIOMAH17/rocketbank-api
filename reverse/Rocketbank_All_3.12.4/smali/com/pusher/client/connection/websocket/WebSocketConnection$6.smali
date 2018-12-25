.class Lcom/pusher/client/connection/websocket/WebSocketConnection$6;
.super Ljava/lang/Object;
.source "WebSocketConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pusher/client/connection/websocket/WebSocketConnection;->onMessage(Ljava/lang/String;)V
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

    .line 242
    iput-object p1, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$6;->this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

    iput-object p2, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$6;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 245
    invoke-static {}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->access$700()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$6;->val$message:Ljava/lang/String;

    const-class v2, Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "event"

    .line 246
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 247
    iget-object v1, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$6;->this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

    iget-object v2, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$6;->val$message:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->access$800(Lcom/pusher/client/connection/websocket/WebSocketConnection;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
