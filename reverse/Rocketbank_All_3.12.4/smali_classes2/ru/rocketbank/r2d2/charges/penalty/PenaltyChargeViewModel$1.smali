.class final Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PenaltyChargePaymentDetailsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel$1;->this$0:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 91
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel$1;->invoke(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel$1;->this$0:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getIKnowNum()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
