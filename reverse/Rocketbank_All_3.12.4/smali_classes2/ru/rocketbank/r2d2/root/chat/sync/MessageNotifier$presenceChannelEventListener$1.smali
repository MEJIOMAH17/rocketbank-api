.class public final Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$presenceChannelEventListener$1;
.super Ljava/lang/Object;
.source "MessageNotifier.kt"

# interfaces
.implements Lcom/pusher/client/channel/PresenceChannelEventListener;


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

    .line 126
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$presenceChannelEventListener$1;->this$0:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAuthenticationFailure(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    sget-object v0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->Companion:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "channelName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    sget-object v0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->Companion:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v0, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;

    invoke-direct {v0}, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;-><init>()V

    .line 135
    invoke-static {}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->access$getEVENT_TYPING$cp()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    sget-object v1, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;->Companion:Lru/rocketbank/r2d2/manager/messsage/MessageNotification$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/manager/messsage/MessageNotification$Companion;->getTYPE_TYPING()I

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;->setType(I)V

    goto :goto_0

    .line 137
    :cond_0
    invoke-static {}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->access$getEVENT_NEW_MESSAGE$cp()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    sget-object v1, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;->Companion:Lru/rocketbank/r2d2/manager/messsage/MessageNotification$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/manager/messsage/MessageNotification$Companion;->getTYPE_MESSAGE()I

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;->setType(I)V

    .line 139
    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$presenceChannelEventListener$1;->this$0:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;

    invoke-static {v1}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->access$refresh(Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;)V

    goto :goto_0

    .line 141
    :cond_1
    sget-object v1, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;->Companion:Lru/rocketbank/r2d2/manager/messsage/MessageNotification$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/manager/messsage/MessageNotification$Companion;->getTYPE_READ()I

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;->setType(I)V

    .line 142
    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$presenceChannelEventListener$1;->this$0:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;

    invoke-static {v1}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->access$refresh(Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;)V

    .line 145
    :goto_0
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;->setChannelName(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0, p2}, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;->setEventName(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0, p3}, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;->setData(Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$presenceChannelEventListener$1;->this$0:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->getNotificationListener()Lru/rocketbank/r2d2/root/chat/sync/MessageNotificationListener;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotificationListener;->onMessage(Lru/rocketbank/r2d2/manager/messsage/MessageNotification;)V

    return-void

    :cond_2
    return-void
.end method

.method public final onSubscriptionSucceeded(Ljava/lang/String;)V
    .locals 2

    const-string v0, "channelName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    sget-object v0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->Companion:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Subscription succeeded: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onUsersInformationReceived(Ljava/lang/String;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "+",
            "Lcom/pusher/client/channel/User;",
            ">;)V"
        }
    .end annotation

    const-string v0, "channelName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "users"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    sget-object v0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->Companion:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onUsersInformationReceived: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final userSubscribed(Ljava/lang/String;Lcom/pusher/client/channel/User;)V
    .locals 3

    .line 161
    sget-object v0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->Companion:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "user subscribed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final userUnsubscribed(Ljava/lang/String;Lcom/pusher/client/channel/User;)V
    .locals 3

    .line 165
    sget-object v0, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->Companion:Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "user unsubscribed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
