.class final Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer$Companion$add$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TransfersToBankAccountContainer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransfersToBankAccountContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransfersToBankAccountContainer.kt\nru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer$Companion$add$1\n*L\n1#1,137:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer$Companion$add$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer$Companion$add$1;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer$Companion$add$1;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer$Companion$add$1;->INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer$Companion$add$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 110
    check-cast p1, Ljava/util/ArrayList;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer$Companion$add$1;->invoke(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;)V"
        }
    .end annotation

    const-string v0, "array"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 112
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method
