.class final Lru/rocketbank/r2d2/activities/safe/TransferActivity$getCurrency$$inlined$let$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TransferActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/safe/TransferActivity;->getCurrency(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lru/rocketbank/core/model/DepositModel;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $token$inlined:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$getCurrency$$inlined$let$lambda$1;->$token$inlined:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 61
    check-cast p1, Lru/rocketbank/core/model/DepositModel;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity$getCurrency$$inlined$let$lambda$1;->invoke(Lru/rocketbank/core/model/DepositModel;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lru/rocketbank/core/model/DepositModel;)Z
    .locals 2

    .line 377
    invoke-virtual {p1}, Lru/rocketbank/core/model/DepositModel;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$getCurrency$$inlined$let$lambda$1;->$token$inlined:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
