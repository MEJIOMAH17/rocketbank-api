.class final Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "TariffFragment.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$Companion$TariffStateChange;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$Companion$TariffStateChange;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$onViewCreated$1;->call(Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$Companion$TariffStateChange;)V

    return-void
.end method

.method public final call(Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$Companion$TariffStateChange;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->access$getTariff$p(Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;)Lru/rocketbank/core/network/model/tariffs/Tariff;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/network/model/tariffs/Tariff;->getPermalink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$Companion$TariffStateChange;->getPermalink()Ljava/lang/String;

    move-result-object p1

    if-eq v0, p1, :cond_0

    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->access$getTariff$p(Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;)Lru/rocketbank/core/network/model/tariffs/Tariff;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/tariffs/Tariff;->getState()Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    move-result-object p1

    sget-object v0, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->SALARY_SHOW_INSTRUCTION:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    if-eq p1, v0, :cond_0

    .line 89
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;

    sget-object v0, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->NOT_ACTIVE:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->access$setTariffState(Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;)V

    :cond_0
    return-void
.end method
