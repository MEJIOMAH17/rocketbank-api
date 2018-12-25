.class final Lru/rocketbank/core/pay/samsung/RxSPay$checkCard$1$1;
.super Ljava/lang/Object;
.source "RxSPay.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/pay/samsung/RxSPay$checkCard$1;
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
        "TT;TR;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxSPay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxSPay.kt\nru/rocketbank/core/pay/samsung/RxSPay$checkCard$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,185:1\n1454#2,4:186\n*E\n*S KotlinDebug\n*F\n+ 1 RxSPay.kt\nru/rocketbank/core/pay/samsung/RxSPay$checkCard$1$1\n*L\n144#1,4:186\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/pay/samsung/RxSPay$checkCard$1;


# direct methods
.method constructor <init>(Lru/rocketbank/core/pay/samsung/RxSPay$checkCard$1;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/pay/samsung/RxSPay$checkCard$1$1;->this$0:Lru/rocketbank/core/pay/samsung/RxSPay$checkCard$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 21
    check-cast p1, Ljava/util/List;

    .line 1143
    iget-object v0, p0, Lru/rocketbank/core/pay/samsung/RxSPay$checkCard$1$1;->this$0:Lru/rocketbank/core/pay/samsung/RxSPay$checkCard$1;

    iget-object v0, v0, Lru/rocketbank/core/pay/samsung/RxSPay$checkCard$1;->$maskedPan:Ljava/lang/String;

    iget-object v1, p0, Lru/rocketbank/core/pay/samsung/RxSPay$checkCard$1$1;->this$0:Lru/rocketbank/core/pay/samsung/RxSPay$checkCard$1;

    iget-object v1, v1, Lru/rocketbank/core/pay/samsung/RxSPay$checkCard$1;->$maskedPan:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    iget-object v2, p0, Lru/rocketbank/core/pay/samsung/RxSPay$checkCard$1$1;->this$0:Lru/rocketbank/core/pay/samsung/RxSPay$checkCard$1;

    iget-object v2, v2, Lru/rocketbank/core/pay/samsung/RxSPay$checkCard$1;->$maskedPan:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v0, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "it"

    .line 1144
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 1186
    instance-of v1, p1, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 1188
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;

    .line 1144
    invoke-virtual {v1}, Lcom/samsung/android/sdk/samsungpay/v2/card/Card;->getCardInfo()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "last4Fpan"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-lez v2, :cond_4

    .line 1145
    sget-object p1, Lru/rocketbank/core/pay/samsung/RxSPay$Status;->CARD_ADDED:Lru/rocketbank/core/pay/samsung/RxSPay$Status;

    return-object p1

    :cond_4
    sget-object p1, Lru/rocketbank/core/pay/samsung/RxSPay$Status;->NO_CARD:Lru/rocketbank/core/pay/samsung/RxSPay$Status;

    return-object p1
.end method
