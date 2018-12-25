.class public final Lru/rocketbank/r2d2/firebase/RocketFirebaseInstanceIDService;
.super Lcom/google/firebase/iid/FirebaseInstanceIdService;
.source "RocketFirebaseInstanceIDService.kt"


# instance fields
.field private final TAG:Ljava/lang/String;

.field public fireCMManager:Lru/rocketbank/core/manager/FireCMManager;

.field public rocketApi:Lru/rocketbank/core/network/api/RocketAPI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;-><init>()V

    const-string v0, "RocketIIDService"

    .line 13
    iput-object v0, p0, Lru/rocketbank/r2d2/firebase/RocketFirebaseInstanceIDService;->TAG:Ljava/lang/String;

    return-void
.end method

.method private final sendRegistrationToServer(Ljava/lang/String;)V
    .locals 2

    .line 57
    iget-object v0, p0, Lru/rocketbank/r2d2/firebase/RocketFirebaseInstanceIDService;->fireCMManager:Lru/rocketbank/core/manager/FireCMManager;

    if-nez v0, :cond_0

    const-string v1, "fireCMManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lru/rocketbank/core/manager/FireCMManager;->storeAndSendGcmToken(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getFireCMManager()Lru/rocketbank/core/manager/FireCMManager;
    .locals 2

    .line 16
    iget-object v0, p0, Lru/rocketbank/r2d2/firebase/RocketFirebaseInstanceIDService;->fireCMManager:Lru/rocketbank/core/manager/FireCMManager;

    if-nez v0, :cond_0

    const-string v1, "fireCMManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getRocketApi()Lru/rocketbank/core/network/api/RocketAPI;
    .locals 2

    .line 15
    iget-object v0, p0, Lru/rocketbank/r2d2/firebase/RocketFirebaseInstanceIDService;->rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

    if-nez v0, :cond_0

    const-string v1, "rocketApi"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final onCreate()V
    .locals 1

    .line 19
    invoke-super {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->onCreate()V

    .line 21
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getRocketApi()Lru/rocketbank/core/network/api/RocketAPI;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/firebase/RocketFirebaseInstanceIDService;->rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

    .line 22
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getFireCMManager()Lru/rocketbank/core/manager/FireCMManager;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/firebase/RocketFirebaseInstanceIDService;->fireCMManager:Lru/rocketbank/core/manager/FireCMManager;

    return-void
.end method

.method public final onTokenRefresh()V
    .locals 4

    .line 33
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    const-string v1, "FirebaseInstanceId.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lru/rocketbank/r2d2/firebase/RocketFirebaseInstanceIDService;->TAG:Ljava/lang/String;

    const-string v2, "Refreshed token: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/firebase/RocketFirebaseInstanceIDService;->sendRegistrationToServer(Ljava/lang/String;)V

    return-void
.end method

.method public final setFireCMManager(Lru/rocketbank/core/manager/FireCMManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lru/rocketbank/r2d2/firebase/RocketFirebaseInstanceIDService;->fireCMManager:Lru/rocketbank/core/manager/FireCMManager;

    return-void
.end method

.method public final setRocketApi(Lru/rocketbank/core/network/api/RocketAPI;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lru/rocketbank/r2d2/firebase/RocketFirebaseInstanceIDService;->rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

    return-void
.end method
