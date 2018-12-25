.class public final Lru/rocketbank/r2d2/fragments/safe/SafeAccountsAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "SafeAccountsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeAccountsAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeAccountsAdapter.kt\nru/rocketbank/r2d2/fragments/safe/SafeAccountsAdapter\n*L\n1#1,42:1\n*E\n"
.end annotation


# instance fields
.field private availableAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/AvailableAccount;",
            ">;"
        }
    .end annotation
.end field

.field private final titles:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 2

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 12
    new-instance p1, Landroid/support/v4/util/ArrayMap;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountsAdapter;->titles:Landroid/support/v4/util/ArrayMap;

    .line 16
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountsAdapter;->titles:Landroid/support/v4/util/ArrayMap;

    check-cast p1, Ljava/util/Map;

    const-string v0, "rub"

    const v1, 0x7f1103ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountsAdapter;->titles:Landroid/support/v4/util/ArrayMap;

    check-cast p1, Ljava/util/Map;

    const-string v0, "usd"

    const v1, 0x7f1103ee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountsAdapter;->titles:Landroid/support/v4/util/ArrayMap;

    check-cast p1, Ljava/util/Map;

    const-string v0, "eur"

    const v1, 0x7f1103ea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 35
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountsAdapter;->availableAccounts:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic getItem(I)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountsAdapter;->getItem(I)Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method public final getItem(I)Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;
    .locals 2

    .line 30
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountsAdapter;->availableAccounts:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 31
    sget-object v1, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->Companion:Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment$Companion;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/AvailableAccount;

    invoke-virtual {v1, p1}, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment$Companion;->newInstance(Lru/rocketbank/core/model/AvailableAccount;)Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final bridge synthetic getPageTitle(I)Ljava/lang/CharSequence;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountsAdapter;->getPageTitle(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method

.method public final getPageTitle(I)Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountsAdapter;->availableAccounts:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 22
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/AvailableAccount;

    .line 23
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountsAdapter;->titles:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p1}, Lru/rocketbank/core/model/AvailableAccount;->getCurrency()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const p1, 0x7f1103e8

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 27
    :cond_0
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    :cond_1
    const-string p1, ""

    :cond_2
    return-object p1
.end method

.method public final swap(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/AvailableAccount;",
            ">;)V"
        }
    .end annotation

    const-string v0, "availableAccounts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountsAdapter;->availableAccounts:Ljava/util/List;

    .line 40
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountsAdapter;->notifyDataSetChanged()V

    return-void
.end method
