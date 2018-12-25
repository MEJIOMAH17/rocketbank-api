.class public final Lru/rocketbank/r2d2/utils/GaToken;
.super Ljava/lang/Object;
.source "GaToken.kt"


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/utils/GaToken;

.field private static sending:Z

.field private static sent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lru/rocketbank/r2d2/utils/GaToken;

    invoke-direct {v0}, Lru/rocketbank/r2d2/utils/GaToken;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/utils/GaToken;->INSTANCE:Lru/rocketbank/r2d2/utils/GaToken;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSending()Z
    .locals 1

    .line 14
    sget-boolean v0, Lru/rocketbank/r2d2/utils/GaToken;->sending:Z

    return v0
.end method

.method public final getSent()Z
    .locals 1

    .line 15
    sget-boolean v0, Lru/rocketbank/r2d2/utils/GaToken;->sent:Z

    return v0
.end method

.method public final sendGaToken(Landroid/content/Context;Lru/rocketbank/core/network/api/RocketAPI;)V
    .locals 1

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rocketApi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-boolean v0, Lru/rocketbank/r2d2/utils/GaToken;->sending:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lru/rocketbank/r2d2/utils/GaToken;->sent:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 22
    sput-boolean v0, Lru/rocketbank/r2d2/utils/GaToken;->sending:Z

    .line 23
    new-instance v0, Lru/rocketbank/r2d2/utils/GaToken$sendGaToken$1;

    invoke-direct {v0, p1}, Lru/rocketbank/r2d2/utils/GaToken$sendGaToken$1;-><init>(Landroid/content/Context;)V

    check-cast v0, Lrx/Observable$OnSubscribe;

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p1

    .line 33
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 34
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 35
    new-instance v0, Lru/rocketbank/r2d2/utils/GaToken$sendGaToken$2;

    invoke-direct {v0, p2}, Lru/rocketbank/r2d2/utils/GaToken$sendGaToken$2;-><init>(Lru/rocketbank/core/network/api/RocketAPI;)V

    check-cast v0, Lrx/functions/Func1;

    invoke-virtual {p1, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    .line 36
    new-instance p2, Lru/rocketbank/r2d2/utils/GaToken$sendGaToken$3;

    invoke-direct {p2}, Lru/rocketbank/r2d2/utils/GaToken$sendGaToken$3;-><init>()V

    check-cast p2, Lrx/Subscriber;

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public final setSending(Z)V
    .locals 0

    .line 14
    sput-boolean p1, Lru/rocketbank/r2d2/utils/GaToken;->sending:Z

    return-void
.end method

.method public final setSent(Z)V
    .locals 0

    .line 15
    sput-boolean p1, Lru/rocketbank/r2d2/utils/GaToken;->sent:Z

    return-void
.end method
