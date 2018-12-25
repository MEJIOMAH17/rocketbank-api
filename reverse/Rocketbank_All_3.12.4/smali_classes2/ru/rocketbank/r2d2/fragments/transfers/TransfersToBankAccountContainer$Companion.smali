.class public final Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer$Companion;
.super Ljava/lang/Object;
.source "TransfersToBankAccountContainer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransfersToBankAccountContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransfersToBankAccountContainer.kt\nru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer$Companion\n*L\n1#1,137:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAdd()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 112
    invoke-static {}, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->access$getAdd$cp()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    return-object v0
.end method

.method public final newInstance(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;)",
            "Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;"
        }
    .end annotation

    .line 116
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 118
    move-object v2, p0

    check-cast v2, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer$Companion;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer$Companion;->getAdd()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-interface {v3, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-virtual {v2}, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer$Companion;->getAdd()Lkotlin/jvm/functions/Function2;

    move-result-object p1

    invoke-interface {p1, p2, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-virtual {v2}, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer$Companion;->getAdd()Lkotlin/jvm/functions/Function2;

    move-result-object p1

    invoke-interface {p1, p3, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const-string p2, "is_empty"

    .line 123
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez p1, :cond_0

    const-string p1, "array"

    .line 126
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 129
    :cond_0
    new-instance p1, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;

    invoke-direct {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;-><init>()V

    .line 130
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method

.method public final setAdd(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;-",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->access$setAdd$cp(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
