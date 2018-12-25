.class public final Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$applyTariff$1;
.super Lrx/Subscriber;
.source "TariffFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->applyTariff(Ljava/lang/String;Ljava/lang/String;Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/network/model/TariffResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTariffFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TariffFragment.kt\nru/rocketbank/r2d2/fragments/tariffs/TariffFragment$applyTariff$1\n*L\n1#1,289:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $newState:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

.field final synthetic $tariffPermalink:Ljava/lang/String;

.field final synthetic $token:Ljava/lang/String;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 234
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$applyTariff$1;->this$0:Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$applyTariff$1;->$newState:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$applyTariff$1;->$tariffPermalink:Ljava/lang/String;

    iput-object p4, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$applyTariff$1;->$token:Ljava/lang/String;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$applyTariff$1;->this$0:Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->access$hideSpinner(Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;)V

    .line 241
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$applyTariff$1;->this$0:Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f11010d

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 234
    check-cast p1, Lru/rocketbank/core/network/model/TariffResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$applyTariff$1;->onNext(Lru/rocketbank/core/network/model/TariffResponse;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/network/model/TariffResponse;)V
    .locals 5

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$applyTariff$1;->this$0:Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->access$getTariff$p(Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;)Lru/rocketbank/core/network/model/tariffs/Tariff;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$applyTariff$1;->$newState:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/network/model/tariffs/Tariff;->setState(Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;)V

    .line 246
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$applyTariff$1;->this$0:Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getUserImmediate()Lru/rocketbank/core/model/UserModel;

    move-result-object v0

    .line 247
    sget-object v1, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->Companion:Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$Companion;->getTariffUpdateSubject()Lrx/subjects/PublishSubject;

    move-result-object v1

    new-instance v2, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$Companion$TariffStateChange;

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$applyTariff$1;->$newState:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    iget-object v4, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$applyTariff$1;->$tariffPermalink:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$Companion$TariffStateChange;-><init>(Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lrx/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 248
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$applyTariff$1;->this$0:Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$applyTariff$1;->$newState:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    invoke-static {v1, v2}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->access$setTariffState(Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;)V

    if-eqz v0, :cond_0

    .line 250
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$applyTariff$1;->$token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/UserModel;->getAccount(Ljava/lang/String;)Lru/rocketbank/core/model/AccountModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/TariffResponse;->getNextTariff()Lru/rocketbank/core/model/TariffModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/core/model/AccountModel;->setNextTariff(Lru/rocketbank/core/model/TariffModel;)V

    .line 253
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$applyTariff$1;->this$0:Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->access$hideSpinner(Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;)V

    return-void
.end method
