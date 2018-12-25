.class public final Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUserInfo;
.super Ljava/lang/Object;
.source "TypingNotification.kt"


# instance fields
.field private final avatar:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final permalink:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatar"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permalink"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUserInfo;->name:Ljava/lang/String;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUserInfo;->avatar:Ljava/lang/String;

    iput-object p3, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUserInfo;->permalink:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAvatar()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUserInfo;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUserInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPermalink()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/sync/notification/NotificationUserInfo;->permalink:Ljava/lang/String;

    return-object v0
.end method
