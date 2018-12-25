.class final Lru/rocketbank/r2d2/charges/ChargesListActivity$onActivityResult$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ChargesListActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/charges/ChargesListActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lru/rocketbank/core/model/charge/ChargeModel;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $deletedItem:Lru/rocketbank/core/model/charge/ChargeModel;


# direct methods
.method constructor <init>(Lru/rocketbank/core/model/charge/ChargeModel;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity$onActivityResult$1;->$deletedItem:Lru/rocketbank/core/model/charge/ChargeModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p1, Lru/rocketbank/core/model/charge/ChargeModel;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/charges/ChargesListActivity$onActivityResult$1;->invoke(Lru/rocketbank/core/model/charge/ChargeModel;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lru/rocketbank/core/model/charge/ChargeModel;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p1}, Lru/rocketbank/core/model/charge/ChargeModel;->getId()Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity$onActivityResult$1;->$deletedItem:Lru/rocketbank/core/model/charge/ChargeModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/rocketbank/core/model/charge/ChargeModel;->getId()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
