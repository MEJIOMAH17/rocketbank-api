.class Lcom/pusher/client/connection/websocket/WebSocketConnection$5;
.super Ljava/lang/Object;
.source "WebSocketConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pusher/client/connection/websocket/WebSocketConnection;->sendErrorToAllListeners(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

.field final synthetic val$code:Ljava/lang/String;

.field final synthetic val$e:Ljava/lang/Exception;

.field final synthetic val$listener:Lcom/pusher/client/connection/ConnectionEventListener;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pusher/client/connection/websocket/WebSocketConnection;Lcom/pusher/client/connection/ConnectionEventListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$5;->this$0:Lcom/pusher/client/connection/websocket/WebSocketConnection;

    iput-object p2, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$5;->val$listener:Lcom/pusher/client/connection/ConnectionEventListener;

    iput-object p3, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$5;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$5;->val$code:Ljava/lang/String;

    iput-object p5, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$5;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$5;->val$listener:Lcom/pusher/client/connection/ConnectionEventListener;

    iget-object v1, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$5;->val$message:Ljava/lang/String;

    iget-object v2, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$5;->val$code:Ljava/lang/String;

    iget-object v3, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection$5;->val$e:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2, v3}, Lcom/pusher/client/connection/ConnectionEventListener;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
