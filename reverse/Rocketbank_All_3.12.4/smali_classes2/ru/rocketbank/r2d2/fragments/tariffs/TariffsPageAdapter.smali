.class public final Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "TariffsPageAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTariffsPageAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TariffsPageAdapter.kt\nru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter\n*L\n1#1,55:1\n*E\n"
.end annotation


# instance fields
.field private lastTariff:Lru/rocketbank/core/model/TariffModel;

.field private final tariffUpdateSubscription:Lrx/Subscription;

.field private tariffs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/network/model/tariffs/Tariff;",
            ">;"
        }
    .end annotation
.end field

.field private final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;->token:Ljava/lang/String;

    .line 23
    sget-object p1, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->Companion:Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$Companion;->getTariffUpdateSubject()Lrx/subjects/PublishSubject;

    move-result-object p1

    .line 24
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/subjects/PublishSubject;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 25
    new-instance p2, Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter$1;-><init>(Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;)V

    check-cast p2, Lrx/functions/Action1;

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object p1

    const-string p2, "TariffFragment.tariffUpd\u2026      }\n                }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;->tariffUpdateSubscription:Lrx/Subscription;

    return-void
.end method

.method public static final synthetic access$getTariffs$p(Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;)Ljava/util/List;
    .locals 0

    .line 14
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;->tariffs:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$setTariffs$p(Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;Ljava/util/List;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;->tariffs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 53
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;->tariffs:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getItem(I)Landroid/support/v4/app/Fragment;
    .locals 4

    .line 37
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;->tariffs:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 38
    sget-object v1, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->Companion:Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$Companion;

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;->token:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/network/model/tariffs/Tariff;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;->lastTariff:Lru/rocketbank/core/model/TariffModel;

    if-nez v0, :cond_0

    const-string v3, "lastTariff"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1, v2, p1, v0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$Companion;->newInstance(Ljava/lang/String;Lru/rocketbank/core/network/model/tariffs/Tariff;Lru/rocketbank/core/model/TariffModel;)Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 37
    :goto_0
    check-cast p1, Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final onDestroy()V
    .locals 1

    .line 50
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;->tariffUpdateSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    return-void
.end method

.method public final swap(Ljava/util/List;Lru/rocketbank/core/model/TariffModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/network/model/tariffs/Tariff;",
            ">;",
            "Lru/rocketbank/core/model/TariffModel;",
            ")V"
        }
    .end annotation

    const-string v0, "lastTariff"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;->tariffs:Ljava/util/List;

    .line 45
    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;->lastTariff:Lru/rocketbank/core/model/TariffModel;

    .line 46
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffsPageAdapter;->notifyDataSetChanged()V

    return-void
.end method
