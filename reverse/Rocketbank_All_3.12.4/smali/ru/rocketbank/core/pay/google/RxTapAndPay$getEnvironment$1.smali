.class final Lru/rocketbank/core/pay/google/RxTapAndPay$getEnvironment$1;
.super Ljava/lang/Object;
.source "RxTapAndPay.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/pay/google/RxTapAndPay;->getEnvironment()Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "TT;",
        "Lrx/Observable<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/pay/google/RxTapAndPay;


# direct methods
.method constructor <init>(Lru/rocketbank/core/pay/google/RxTapAndPay;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/pay/google/RxTapAndPay$getEnvironment$1;->this$0:Lru/rocketbank/core/pay/google/RxTapAndPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 13
    check-cast p1, Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 1081
    new-instance v0, Lru/rocketbank/core/pay/google/RxTapAndPay$getEnvironment$1$1;

    invoke-direct {v0, p0, p1}, Lru/rocketbank/core/pay/google/RxTapAndPay$getEnvironment$1$1;-><init>(Lru/rocketbank/core/pay/google/RxTapAndPay$getEnvironment$1;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    check-cast v0, Lrx/Observable$OnSubscribe;

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
