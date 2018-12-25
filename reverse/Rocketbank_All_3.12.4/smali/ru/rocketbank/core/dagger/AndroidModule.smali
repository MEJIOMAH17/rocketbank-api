.class public final Lru/rocketbank/core/dagger/AndroidModule;
.super Ljava/lang/Object;
.source "AndroidModule.kt"


# instance fields
.field private final context:Landroid/content/Context;

.field private final tapAndPay:Lcom/google/android/gms/tapandpay/TapAndPay;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tapandpay/TapAndPay;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tapAndPay"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/dagger/AndroidModule;->context:Landroid/content/Context;

    iput-object p2, p0, Lru/rocketbank/core/dagger/AndroidModule;->tapAndPay:Lcom/google/android/gms/tapandpay/TapAndPay;

    return-void
.end method

.method public static provideGoogleApiClient(Landroid/content/Context;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 28
    sget-object p0, Lcom/google/android/gms/tapandpay/TapAndPay;->TAP_AND_PAY_API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p0

    const-string v0, "GoogleApiClient.Builder(\u2026                 .build()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static provideMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .line 23
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    return-object v0
.end method

.method public static provideRootChecker(Landroid/content/Context;)Lcom/scottyab/rootbeer/RootBeer;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/scottyab/rootbeer/RootBeer;

    invoke-direct {v0, p0}, Lcom/scottyab/rootbeer/RootBeer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static provideSPay(Landroid/content/Context;)Lru/rocketbank/core/pay/samsung/RxSPay;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lru/rocketbank/core/pay/samsung/RxSPay;

    invoke-direct {v0, p0}, Lru/rocketbank/core/pay/samsung/RxSPay;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final provideAndroidTapAndPay(Lcom/google/android/gms/common/api/GoogleApiClient;)Lru/rocketbank/core/pay/google/UiTapAndPay;
    .locals 2

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lru/rocketbank/core/pay/google/UiTapAndPay;

    iget-object v1, p0, Lru/rocketbank/core/dagger/AndroidModule;->tapAndPay:Lcom/google/android/gms/tapandpay/TapAndPay;

    invoke-direct {v0, p1, v1}, Lru/rocketbank/core/pay/google/UiTapAndPay;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/tapandpay/TapAndPay;)V

    return-object v0
.end method

.method public final provideAppContext()Landroid/content/Context;
    .locals 1

    .line 20
    iget-object v0, p0, Lru/rocketbank/core/dagger/AndroidModule;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final provideTapAndPay(Lcom/google/android/gms/common/api/GoogleApiClient;)Lru/rocketbank/core/pay/google/RxTapAndPay;
    .locals 2

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Lru/rocketbank/core/pay/google/RxTapAndPay;

    iget-object v1, p0, Lru/rocketbank/core/dagger/AndroidModule;->tapAndPay:Lcom/google/android/gms/tapandpay/TapAndPay;

    invoke-direct {v0, p1, v1}, Lru/rocketbank/core/pay/google/RxTapAndPay;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/tapandpay/TapAndPay;)V

    return-object v0
.end method
