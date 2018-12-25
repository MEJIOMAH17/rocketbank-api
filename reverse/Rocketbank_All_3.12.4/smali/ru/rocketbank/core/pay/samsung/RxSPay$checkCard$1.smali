.class final Lru/rocketbank/core/pay/samsung/RxSPay$checkCard$1;
.super Ljava/lang/Object;
.source "RxSPay.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/pay/samsung/RxSPay;->checkCard(Ljava/lang/String;)Lrx/Observable;
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
.field final synthetic $maskedPan:Ljava/lang/String;

.field final synthetic this$0:Lru/rocketbank/core/pay/samsung/RxSPay;


# direct methods
.method constructor <init>(Lru/rocketbank/core/pay/samsung/RxSPay;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/pay/samsung/RxSPay$checkCard$1;->this$0:Lru/rocketbank/core/pay/samsung/RxSPay;

    iput-object p2, p0, Lru/rocketbank/core/pay/samsung/RxSPay$checkCard$1;->$maskedPan:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 21
    check-cast p1, Lru/rocketbank/core/pay/samsung/SPayStatus;

    .line 1141
    invoke-virtual {p1}, Lru/rocketbank/core/pay/samsung/SPayStatus;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1142
    iget-object p1, p0, Lru/rocketbank/core/pay/samsung/RxSPay$checkCard$1;->this$0:Lru/rocketbank/core/pay/samsung/RxSPay;

    invoke-static {p1}, Lru/rocketbank/core/pay/samsung/RxSPay;->access$getCards(Lru/rocketbank/core/pay/samsung/RxSPay;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lru/rocketbank/core/pay/samsung/RxSPay$checkCard$1$1;

    invoke-direct {v0, p0}, Lru/rocketbank/core/pay/samsung/RxSPay$checkCard$1$1;-><init>(Lru/rocketbank/core/pay/samsung/RxSPay$checkCard$1;)V

    check-cast v0, Lrx/functions/Func1;

    invoke-virtual {p1, v0}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    return-object p1

    .line 1148
    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/pay/samsung/SPayStatus;->getStatus()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    .line 1152
    sget-object p1, Lru/rocketbank/core/pay/samsung/RxSPay$Status;->NOT_SUPPORTED:Lru/rocketbank/core/pay/samsung/RxSPay$Status;

    goto :goto_0

    .line 1149
    :sswitch_0
    sget-object p1, Lru/rocketbank/core/pay/samsung/RxSPay$Status;->NOT_SUPPORTED:Lru/rocketbank/core/pay/samsung/RxSPay$Status;

    goto :goto_0

    .line 1150
    :sswitch_1
    sget-object p1, Lru/rocketbank/core/pay/samsung/RxSPay$Status;->NOT_READY:Lru/rocketbank/core/pay/samsung/RxSPay$Status;

    goto :goto_0

    .line 1151
    :sswitch_2
    sget-object p1, Lru/rocketbank/core/pay/samsung/RxSPay$Status;->UPDATE_NEED:Lru/rocketbank/core/pay/samsung/RxSPay$Status;

    .line 1154
    :goto_0
    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x165 -> :sswitch_2
        -0x164 -> :sswitch_1
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
    .end sparse-switch
.end method
