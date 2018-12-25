.class public final Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$onResume$1;
.super Lrx/Subscriber;
.source "TransfersFromCardFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/TransferTemplates;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$onResume$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 208
    check-cast p1, Lru/rocketbank/core/model/TransferTemplates;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$onResume$1;->onNext(Lru/rocketbank/core/model/TransferTemplates;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/model/TransferTemplates;)V
    .locals 4

    const-string v0, "transferTemplates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lru/rocketbank/core/model/TransferTemplates;->getCard2card()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 219
    invoke-virtual {p1}, Lru/rocketbank/core/model/TransferTemplates;->getCard2card()Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/network/model/TransfersModelUrFiz;

    .line 220
    new-instance v2, Lru/rocketbank/core/model/CardModel;

    const-string v3, "transfersModelUrFiz"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v1}, Lru/rocketbank/core/model/CardModel;-><init>(Lru/rocketbank/core/network/model/TransfersModelUrFiz;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 223
    :cond_2
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment$onResume$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;->access$getListAdapter$p(Lru/rocketbank/r2d2/fragments/transfers/TransfersFromCardFragment;)Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/adapters/card/CardsListAdapter;->setData(Ljava/util/List;)V

    return-void
.end method
