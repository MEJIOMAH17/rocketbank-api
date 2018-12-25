.class public final Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$connectionEventListener$1;
.super Ljava/lang/Object;
.source "MessageNotifier.kt"

# interfaces
.implements Lcom/pusher/client/connection/ConnectionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$connectionEventListener$1;->this$0:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionStateChange(Lcom/pusher/client/connection/ConnectionStateChange;)V
    .locals 2

    const-string v0, "connectionStateChange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    sget-object v0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->Companion:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pusher/client/connection/ConnectionStateChange;->getCurrentState()Lcom/pusher/client/connection/ConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pusher/client/connection/ConnectionState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p1}, Lcom/pusher/client/connection/ConnectionStateChange;->getCurrentState()Lcom/pusher/client/connection/ConnectionState;

    move-result-object v0

    sget-object v1, Lcom/pusher/client/connection/ConnectionState;->CONNECTED:Lcom/pusher/client/connection/ConnectionState;

    if-ne v0, v1, :cond_1

    .line 100
    new-instance p1, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;

    invoke-direct {p1}, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;-><init>()V

    .line 101
    sget-object v0, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;->Companion:Lru/rocketbank/r2d2/manager/messsage/MessageNotification$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/manager/messsage/MessageNotification$Companion;->getTYPE_CONNECTED()I

    move-result v0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;->setType(I)V

    .line 103
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$connectionEventListener$1;->this$0:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->getNotificationListener()Lru/rocketbank/r2d2/root/chat/sync/MessageNotificationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotificationListener;->onMessage(Lru/rocketbank/r2d2/manager/messsage/MessageNotification;)V

    :cond_0
    return-void

    .line 105
    :cond_1
    invoke-virtual {p1}, Lcom/pusher/client/connection/ConnectionStateChange;->getCurrentState()Lcom/pusher/client/connection/ConnectionState;

    move-result-object p1

    sget-object v0, Lcom/pusher/client/connection/ConnectionState;->DISCONNECTED:Lcom/pusher/client/connection/ConnectionState;

    if-ne p1, v0, :cond_2

    .line 106
    new-instance p1, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;

    invoke-direct {p1}, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;-><init>()V

    .line 107
    sget-object v0, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;->Companion:Lru/rocketbank/r2d2/manager/messsage/MessageNotification$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/manager/messsage/MessageNotification$Companion;->getTYPE_DISCONNECTED()I

    move-result v0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;->setType(I)V

    .line 109
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$connectionEventListener$1;->this$0:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->getNotificationListener()Lru/rocketbank/r2d2/root/chat/sync/MessageNotificationListener;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotificationListener;->onMessage(Lru/rocketbank/r2d2/manager/messsage/MessageNotification;)V

    return-void

    :cond_2
    return-void
.end method

.method public final onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method
