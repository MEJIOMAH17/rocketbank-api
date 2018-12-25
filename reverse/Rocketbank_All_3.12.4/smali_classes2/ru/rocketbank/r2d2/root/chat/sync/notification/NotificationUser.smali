.class public final Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUser;
.super Ljava/lang/Object;
.source "TypingNotification.kt"


# instance fields
.field private final id:I

.field private final info:Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUserInfo;


# direct methods
.method public constructor <init>(ILru/rocketbank/r2d2/root/chat/sync/notification/NotificationUserInfo;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUser;->id:I

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUser;->info:Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUserInfo;

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUser;ILru/rocketbank/r2d2/root/chat/sync/notification/NotificationUserInfo;ILjava/lang/Object;)Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUser;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUser;->id:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUser;->info:Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUserInfo;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUser;->copy(ILru/rocketbank/r2d2/root/chat/sync/notification/NotificationUserInfo;)Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUser;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUser;->id:I

    return v0
.end method

.method public final component2()Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUserInfo;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUser;->info:Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUserInfo;

    return-object v0
.end method

.method public final copy(ILru/rocketbank/r2d2/root/chat/sync/notification/NotificationUserInfo;)Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUser;
    .locals 1

    new-instance v0, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUser;

    invoke-direct {v0, p1, p2}, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUser;-><init>(ILru/rocketbank/r2d2/root/chat/sync/notification/NotificationUserInfo;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUser;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUser;

    iget v1, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUser;->id:I

    iget v3, p1, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUser;->id:I

    if-ne v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUser;->info:Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUserInfo;

    iget-object p1, p1, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUser;->info:Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUserInfo;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method public final getId()I
    .locals 1

    .line 10
    iget v0, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUser;->id:I

    return v0
.end method

.method public final getInfo()Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUserInfo;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUser;->info:Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUserInfo;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUser;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUser;->info:Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUserInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotificationUser(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUser;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUser;->info:Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUserInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
