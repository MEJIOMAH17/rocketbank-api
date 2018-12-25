.class final Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1;
.super Ljava/lang/Object;
.source "UiTapAndPay.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/pay/google/UiTapAndPay;->addCard$56205205(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
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

.field final synthetic $address:Ljava/lang/String;

.field final synthetic $cardText:Ljava/lang/String;

.field final synthetic $lastDigits:Ljava/lang/String;

.field final synthetic $opc:Ljava/lang/String;

.field final synthetic $phone:Ljava/lang/String;

.field final synthetic $postalCode:Ljava/lang/String;

.field final synthetic $requestCode:I

.field final synthetic this$0:Lru/rocketbank/core/pay/google/UiTapAndPay;


# direct methods
.method constructor <init>(Lru/rocketbank/core/pay/google/UiTapAndPay;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1;->this$0:Lru/rocketbank/core/pay/google/UiTapAndPay;

    iput-object p2, p0, Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1;->$address:Ljava/lang/String;

    iput-object p3, p0, Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1;->$phone:Ljava/lang/String;

    iput-object p4, p0, Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1;->$postalCode:Ljava/lang/String;

    iput-object p5, p0, Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1;->$opc:Ljava/lang/String;

    iput-object p6, p0, Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1;->$lastDigits:Ljava/lang/String;

    iput-object p7, p0, Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1;->$cardText:Ljava/lang/String;

    iput-object p8, p0, Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1;->$activity:Landroid/app/Activity;

    const/16 p1, 0x27ff

    iput p1, p0, Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1;->$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 15
    check-cast p1, Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 1048
    new-instance v0, Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1$1;

    invoke-direct {v0, p0, p1}, Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1$1;-><init>(Lru/rocketbank/core/pay/google/UiTapAndPay$addCard$1;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    check-cast v0, Lrx/Observable$OnSubscribe;

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
