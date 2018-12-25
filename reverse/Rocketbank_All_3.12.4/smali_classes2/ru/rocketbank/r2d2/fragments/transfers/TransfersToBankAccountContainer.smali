.class public final Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "TransfersToBankAccountContainer.kt"

# interfaces
.implements Lru/rocketbank/r2d2/fragments/TabFragmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer$Companion;

.field private static add:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;-",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private currentFragment:Landroid/support/v4/app/Fragment;

.field private isEmpty:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->Companion:Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer$Companion;

    .line 112
    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer$Companion$add$1;->INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer$Companion$add$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    sput-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->add:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAdd$cp()Lkotlin/jvm/functions/Function2;
    .locals 1

    .line 23
    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->add:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public static final synthetic access$setAdd$cp(Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 23
    sput-object p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->add:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method private final goToRecentTransfers(Z)V
    .locals 2

    .line 55
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v1, "array"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;->newInstance(Ljava/util/ArrayList;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    const-string v1, "RecentTransferFragment.newInstance(array)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->replaceFragment(Landroid/support/v4/app/Fragment;Z)V

    return-void
.end method

.method public static final newInstance(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;
    .locals 1
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

    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->Companion:Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer$Companion;->newInstance(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;

    move-result-object p0

    return-object p0
.end method

.method private final replaceFragment(Landroid/support/v4/app/Fragment;Z)V
    .locals 4

    .line 44
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->currentFragment:Landroid/support/v4/app/Fragment;

    .line 45
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    if-eqz p2, :cond_0

    const p2, 0x7f010012

    const v1, 0x7f010013

    const v2, 0x7f010011

    const v3, 0x7f010014

    .line 47
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    :cond_0
    const p2, 0x7f0903e7

    .line 49
    invoke-virtual {v0, p2, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/4 p2, 0x0

    .line 50
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private final setBtnNextTransferFragment()V
    .locals 2

    .line 104
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->currentFragment:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->currentFragment:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_1

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type ru.rocketbank.r2d2.fragments.NextButtonListener"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Lru/rocketbank/r2d2/fragments/NextButtonListener;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-interface {v0, v1}, Lru/rocketbank/r2d2/fragments/NextButtonListener;->updateNextButton(Landroid/support/v4/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final goToBankTransferFragment()V
    .locals 2

    .line 74
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;-><init>()V

    check-cast v0, Landroid/support/v4/app/Fragment;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->replaceFragment(Landroid/support/v4/app/Fragment;Z)V

    return-void
.end method

.method public final goToBankTransferFragment(Z)V
    .locals 1

    .line 78
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;-><init>()V

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-direct {p0, v0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->replaceFragment(Landroid/support/v4/app/Fragment;Z)V

    return-void
.end method

.method public final onBackPressed()Z
    .locals 2

    .line 60
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->isEmpty:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0903e7

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lru/rocketbank/r2d2/fragments/transfers/RecentTransferFragment;

    if-nez v0, :cond_0

    .line 62
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 65
    invoke-static {v0}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    .line 66
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onBackPressed()Z

    move-result v0

    return v0

    .line 70
    :cond_0
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const v1, 0x7f0c0100

    .line 28
    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 30
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v1, "is_empty"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->isEmpty:Z

    if-nez p3, :cond_2

    .line 31
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->currentFragment:Landroid/support/v4/app/Fragment;

    if-nez p2, :cond_2

    .line 32
    iget-boolean p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->isEmpty:Z

    if-eqz p2, :cond_1

    .line 33
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->goToBankTransferFragment(Z)V

    goto :goto_0

    .line 35
    :cond_1
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->goToRecentTransfers(Z)V

    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    const p3, 0x7f0903e7

    invoke-virtual {p2, p3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->currentFragment:Landroid/support/v4/app/Fragment;

    :goto_0
    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onNextButtonClick()V
    .locals 2

    .line 93
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->currentFragment:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->currentFragment:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_1

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type ru.rocketbank.r2d2.fragments.NextButtonListener"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Lru/rocketbank/r2d2/fragments/NextButtonListener;

    invoke-interface {v0}, Lru/rocketbank/r2d2/fragments/NextButtonListener;->onNextButtonClick()V

    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 82
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onResume()V

    .line 83
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type ru.rocketbank.r2d2.fragments.transfers.TransferTabFragment"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;

    if-ne v0, v1, :cond_1

    .line 84
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->setBtnNextTransferFragment()V

    :cond_1
    return-void
.end method

.method public final onSelected()V
    .locals 0

    .line 89
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransfersToBankAccountContainer;->setBtnNextTransferFragment()V

    return-void
.end method

.method public final updateNextButton(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
