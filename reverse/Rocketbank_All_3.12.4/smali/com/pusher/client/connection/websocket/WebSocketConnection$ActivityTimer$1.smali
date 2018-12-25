.class Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer$1;
.super Ljava/lang/Object;
.source "WebSocketConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;->activity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;


# direct methods
.method constructor <init>(Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer$1;->this$1:Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 313
    invoke-static {}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->access$900()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Sending ping"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer$1;->this$1:Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;

    iget-object v0, v0, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;->this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

    const-string/jumbo v1, "{\"event\": \"pusher:ping\"}"

    invoke-virtual {v0, v1}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->sendMessage(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer$1;->this$1:Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;

    invoke-static {v0}, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;->access$1000(Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;)V

    return-void
.end method
