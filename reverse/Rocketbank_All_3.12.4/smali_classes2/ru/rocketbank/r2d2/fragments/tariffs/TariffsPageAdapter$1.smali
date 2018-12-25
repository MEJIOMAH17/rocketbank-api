.class final Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter$1;
.super Ljava/lang/Object;
.source "TariffsPageAdapter.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTariffsPageAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TariffsPageAdapter.kt\nru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,55:1\n1519#2,2:56\n*E\n*S KotlinDebug\n*F\n+ 1 TariffsPageAdapter.kt\nru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter$1\n*L\n26#1,2:56\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter$1;->this$0:Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$Companion$TariffStateChange;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter$1;->call(Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$Companion$TariffStateChange;)V

    return-void
.end method

.method public final call(Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$Companion$TariffStateChange;)V
    .locals 4

    .line 26
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter$1;->this$0:Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;->access$getTariffs$p(Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 27
    check-cast v0, Ljava/lang/Iterable;

    .line 56
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/network/model/tariffs/Tariff;

    .line 28
    invoke-virtual {v1}, Lru/rocketbank/core/network/model/tariffs/Tariff;->getPermalink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$Companion$TariffStateChange;->getPermalink()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lru/rocketbank/core/network/model/tariffs/Tariff;->getState()Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    move-result-object v2

    sget-object v3, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->WILL_BE_ACTIVATED:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    if-ne v2, v3, :cond_0

    .line 29
    sget-object v2, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->NOT_ACTIVE:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/network/model/tariffs/Tariff;->setState(Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    return-void
.end method
