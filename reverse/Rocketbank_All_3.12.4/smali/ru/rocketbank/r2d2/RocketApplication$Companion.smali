.class public final Lru/rocketbank/r2d2/RocketApplication$Companion;
.super Ljava/lang/Object;
.source "RocketApplication.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/RocketApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 206
    invoke-direct {p0}, Lru/rocketbank/r2d2/RocketApplication$Companion;-><init>()V

    return-void
.end method

.method public static synthetic injector$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 2

    .line 218
    invoke-static {}, Lru/rocketbank/core/BaseRocketApplication;->getContext()Lru/rocketbank/core/BaseRocketApplication;

    move-result-object v0

    const-string v1, "BaseRocketApplication.getContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public final getFirebaseAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 1

    .line 209
    invoke-static {}, Lru/rocketbank/r2d2/RocketApplication;->access$getFirebaseAnalytics$cp()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    return-object v0
.end method

.method public final getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;
    .locals 2

    .line 214
    invoke-static {}, Lru/rocketbank/core/BaseRocketApplication;->getRocketComponent()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    const-string v1, "BaseRocketApplication.getRocketComponent()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getTAG_APP()Ljava/lang/String;
    .locals 1

    .line 207
    invoke-static {}, Lru/rocketbank/r2d2/RocketApplication;->access$getTAG_APP$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setFirebaseAnalytics(Lcom/google/firebase/analytics/FirebaseAnalytics;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-static {p1}, Lru/rocketbank/r2d2/RocketApplication;->access$setFirebaseAnalytics$cp(Lcom/google/firebase/analytics/FirebaseAnalytics;)V

    return-void
.end method

.method public final setTAG_APP(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-static {p1}, Lru/rocketbank/r2d2/RocketApplication;->access$setTAG_APP$cp(Ljava/lang/String;)V

    return-void
.end method
