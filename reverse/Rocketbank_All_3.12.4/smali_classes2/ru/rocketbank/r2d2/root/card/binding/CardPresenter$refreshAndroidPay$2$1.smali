.class final Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$2$1;
.super Ljava/lang/Object;
.source "CardPresenter.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$2;->call(Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;)Lrx/Observable;
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


# instance fields
.field final synthetic $res:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$2;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$2;Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$2$1;->this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$2;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$2$1;->$res:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$2$1;->call(Lkotlin/Pair;)Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;

    move-result-object p1

    return-object p1
.end method

.method public final call(Lkotlin/Pair;)Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;"
        }
    .end annotation

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 503
    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$2$1;->$res:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;

    sget-object v2, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v0}, Lru/rocketbank/core/pay/google/RxTapAndPay$RxTokenState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 508
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$2$1;->$res:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->setDefault(Z)V

    .line 509
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$2$1;->this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$2;

    iget-object p1, p1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$2;->this$0:Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->access$setCardAddedPending$p(Lru/rocketbank/r2d2/root/card/binding/CardPresenter;Z)V

    .line 510
    sget-object p1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->TUR_ACTIVE:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    goto :goto_0

    .line 506
    :pswitch_0
    sget-object p1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->TUR_UNTOKENIZED:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    goto :goto_0

    .line 505
    :pswitch_1
    sget-object p1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->NOT_FOUND:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    goto :goto_0

    .line 504
    :pswitch_2
    sget-object p1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->TUR_NOT_ACTIVE:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    .line 503
    :goto_0
    invoke-virtual {v1, p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->setStatus(Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;)V

    .line 513
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$refreshAndroidPay$2$1;->$res:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
