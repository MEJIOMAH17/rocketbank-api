.class final Lru/rocketbank/core/pay/google/UiTapAndPay$deleteCard$1;
.super Ljava/lang/Object;
.source "UiTapAndPay.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/pay/google/UiTapAndPay;->deleteCard$2e873f09(Landroid/app/Activity;Ljava/lang/String;)Lrx/Observable;
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
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $requestCode:I

.field final synthetic $token:Ljava/lang/String;

.field final synthetic this$0:Lru/rocketbank/core/pay/google/UiTapAndPay;


# direct methods
.method constructor <init>(Lru/rocketbank/core/pay/google/UiTapAndPay;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/pay/google/UiTapAndPay$deleteCard$1;->this$0:Lru/rocketbank/core/pay/google/UiTapAndPay;

    iput-object p2, p0, Lru/rocketbank/core/pay/google/UiTapAndPay$deleteCard$1;->$activity:Landroid/app/Activity;

    iput-object p3, p0, Lru/rocketbank/core/pay/google/UiTapAndPay$deleteCard$1;->$token:Ljava/lang/String;

    const/16 p1, 0x7156

    iput p1, p0, Lru/rocketbank/core/pay/google/UiTapAndPay$deleteCard$1;->$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 15
    check-cast p1, Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 1081
    new-instance v0, Lru/rocketbank/core/pay/google/UiTapAndPay$deleteCard$1$1;

    invoke-direct {v0, p0, p1}, Lru/rocketbank/core/pay/google/UiTapAndPay$deleteCard$1$1;-><init>(Lru/rocketbank/core/pay/google/UiTapAndPay$deleteCard$1;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    check-cast v0, Lrx/Observable$OnSubscribe;

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
