.class public final Lru/rocketbank/r2d2/manager/SecurityManager;
.super Ljava/lang/Object;
.source "SecurityManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/manager/SecurityManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/manager/SecurityManager$Companion;

.field private static final TAG:Ljava/lang/String; = "SecurityManager"

.field private static final TIME:Ljava/lang/String; = "TIME"

.field private static final instance:Lru/rocketbank/r2d2/manager/SecurityManager;


# instance fields
.field private final authorization:Lru/rocketbank/core/user/Authorization;

.field private paused:Z

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/manager/SecurityManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/manager/SecurityManager$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/manager/SecurityManager;->Companion:Lru/rocketbank/r2d2/manager/SecurityManager$Companion;

    .line 76
    new-instance v0, Lru/rocketbank/r2d2/manager/SecurityManager;

    invoke-direct {v0}, Lru/rocketbank/r2d2/manager/SecurityManager;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/manager/SecurityManager;->instance:Lru/rocketbank/r2d2/manager/SecurityManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/r2d2/manager/SecurityManager;->time:J

    .line 10
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/manager/SecurityManager;->authorization:Lru/rocketbank/core/user/Authorization;

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lru/rocketbank/r2d2/manager/SecurityManager;
    .locals 1

    .line 8
    sget-object v0, Lru/rocketbank/r2d2/manager/SecurityManager;->instance:Lru/rocketbank/r2d2/manager/SecurityManager;

    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 8
    sget-object v0, Lru/rocketbank/r2d2/manager/SecurityManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final getTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/manager/SecurityManager;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final isLocked(Z)Z
    .locals 7

    .line 14
    iget-object v0, p0, Lru/rocketbank/r2d2/manager/SecurityManager;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getUserImmediate()Lru/rocketbank/core/model/UserModel;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 22
    :cond_0
    iget-object v2, p0, Lru/rocketbank/r2d2/manager/SecurityManager;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v2}, Lru/rocketbank/core/user/Authorization;->isAuthorized()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 29
    :cond_1
    iget-object v2, p0, Lru/rocketbank/r2d2/manager/SecurityManager;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v2}, Lru/rocketbank/core/user/Authorization;->getToken()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    return v1

    .line 33
    :cond_2
    iget-wide v2, p0, Lru/rocketbank/r2d2/manager/SecurityManager;->time:J

    const/4 v4, 0x0

    if-eqz p1, :cond_4

    const-wide/32 v5, 0x493e0

    cmp-long p1, v2, v5

    if-lez p1, :cond_3

    return v1

    :cond_3
    return v4

    .line 39
    :cond_4
    invoke-virtual {v0}, Lru/rocketbank/core/model/UserModel;->isShortTermLogin()Z

    move-result p1

    xor-int/2addr p1, v1

    if-nez p1, :cond_5

    const-wide/32 v5, 0x2bf20

    cmp-long v0, v2, v5

    if-lez v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v4

    :goto_0
    if-eqz p1, :cond_6

    const-wide/16 v5, 0xfa0

    cmp-long p1, v2, v5

    if-lez p1, :cond_6

    move p1, v1

    goto :goto_1

    :cond_6
    move p1, v4

    .line 44
    :goto_1
    sget-object v5, Lru/rocketbank/r2d2/manager/SecurityManager;->TAG:Ljava/lang/String;

    const-string v6, "difference "

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_8

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    return v4

    :cond_8
    :goto_2
    return v1
.end method

.method public final onPause()V
    .locals 2

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/r2d2/manager/SecurityManager;->time:J

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lru/rocketbank/r2d2/manager/SecurityManager;->paused:Z

    .line 52
    sget-object v0, Lru/rocketbank/r2d2/manager/SecurityManager;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onRestoreInstance(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "savedInstanceState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lru/rocketbank/r2d2/manager/SecurityManager;->TIME:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    sub-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/manager/SecurityManager;->time:J

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "savedInstanceState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    sget-object v0, Lru/rocketbank/r2d2/manager/SecurityManager;->TIME:Ljava/lang/String;

    iget-wide v1, p0, Lru/rocketbank/r2d2/manager/SecurityManager;->time:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public final onStart()V
    .locals 6

    .line 56
    iget-boolean v0, p0, Lru/rocketbank/r2d2/manager/SecurityManager;->paused:Z

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lru/rocketbank/r2d2/manager/SecurityManager;->time:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/manager/SecurityManager;->time:J

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lru/rocketbank/r2d2/manager/SecurityManager;->paused:Z

    .line 59
    sget-object v0, Lru/rocketbank/r2d2/manager/SecurityManager;->TAG:Ljava/lang/String;

    const-string v1, "paused onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    sget-object v0, Lru/rocketbank/r2d2/manager/SecurityManager;->TAG:Ljava/lang/String;

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
