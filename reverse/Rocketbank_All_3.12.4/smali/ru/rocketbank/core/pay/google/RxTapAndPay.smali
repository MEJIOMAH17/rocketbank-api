.class public final Lru/rocketbank/core/pay/google/RxTapAndPay;
.super Lru/rocketbank/core/pay/google/BaseTapAndPay;
.source "RxTapAndPay.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;,
        Lru/rocketbank/core/pay/google/RxTapAndPay$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/pay/google/RxTapAndPay$Companion;


# instance fields
.field private final changesObservable:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final changesSubject:Lrx/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/PublishSubject<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/pay/google/RxTapAndPay$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/pay/google/RxTapAndPay$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/pay/google/RxTapAndPay;->Companion:Lru/rocketbank/core/pay/google/RxTapAndPay$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/tapandpay/TapAndPay;)V
    .locals 1

    const-string v0, "googleApiClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tapAndPay"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2}, Lru/rocketbank/core/pay/google/BaseTapAndPay;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/tapandpay/TapAndPay;)V

    .line 16
    invoke-static {}, Lrx/subjects/PublishSubject;->create()Lrx/subjects/PublishSubject;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/pay/google/RxTapAndPay;->changesSubject:Lrx/subjects/PublishSubject;

    .line 17
    iget-object p1, p0, Lru/rocketbank/core/pay/google/RxTapAndPay;->changesSubject:Lrx/subjects/PublishSubject;

    invoke-virtual {p1}, Lrx/subjects/PublishSubject;->asObservable()Lrx/Observable;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/pay/google/RxTapAndPay;->changesObservable:Lrx/Observable;

    return-void
.end method


# virtual methods
.method public final getActiveWalledId()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lru/rocketbank/core/pay/google/RxTapAndPay;->connectObservable()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/pay/google/RxTapAndPay$getActiveWalledId$1;

    invoke-direct {v1, p0}, Lru/rocketbank/core/pay/google/RxTapAndPay$getActiveWalledId$1;-><init>(Lru/rocketbank/core/pay/google/RxTapAndPay;)V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    const-string v1, "connectObservable().flat\u2026}\n            }\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getEnvironment()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lru/rocketbank/core/pay/google/RxTapAndPay;->connectObservable()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/pay/google/RxTapAndPay$getEnvironment$1;

    invoke-direct {v1, p0}, Lru/rocketbank/core/pay/google/RxTapAndPay$getEnvironment$1;-><init>(Lru/rocketbank/core/pay/google/RxTapAndPay;)V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    const-string v1, "connectObservable().flat\u2026}\n            }\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getTokenStatus(Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Lkotlin/Pair<",
            "Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lru/rocketbank/core/pay/google/RxTapAndPay;->connectObservable()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/pay/google/RxTapAndPay$getTokenStatus$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/core/pay/google/RxTapAndPay$getTokenStatus$1;-><init>(Lru/rocketbank/core/pay/google/RxTapAndPay;Ljava/lang/String;)V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    const-string v0, "connectObservable().flat\u2026}\n            }\n        }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
