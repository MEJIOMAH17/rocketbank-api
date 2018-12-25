.class public final Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationRead;
.super Ljava/lang/Object;
.source "TypingNotification.kt"


# instance fields
.field private final message:Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationRead;->message:Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationRead;Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;ILjava/lang/Object;)Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationRead;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationRead;->message:Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;

    :cond_0
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationRead;->copy(Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;)Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationRead;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationRead;->message:Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;

    return-object v0
.end method

.method public final copy(Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;)Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationRead;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationRead;

    invoke-direct {v0, p1}, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationRead;-><init>(Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationRead;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationRead;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationRead;->message:Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;

    iget-object p1, p1, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationRead;->message:Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getMessage()Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;
    .locals 1

    .line 24
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationRead;->message:Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationRead;->message:Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotificationRead(message="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationRead;->message:Lru/rocketbank/r2d2/root/chat/sync/notification/MessageRead;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
