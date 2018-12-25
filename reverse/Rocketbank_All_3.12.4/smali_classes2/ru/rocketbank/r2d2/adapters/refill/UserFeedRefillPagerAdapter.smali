.class public final Lru/rocketbank/r2d2/adapters/refill/UserFeedRefillPagerAdapter;
.super Lru/rocketbank/core/utils/RocketPageAdapter;
.source "UserFeedRefillPagerAdapter.kt"


# instance fields
.field private _currentPrimaryItem:Landroid/support/v4/app/Fragment;

.field private _lastCurentPrimaryItem:Landroid/support/v4/app/Fragment;

.field private final _tabCaptions:[Ljava/lang/String;

.field private final activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p2}, Lru/rocketbank/core/utils/RocketPageAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/refill/UserFeedRefillPagerAdapter;->activity:Landroid/app/Activity;

    const/4 p1, 0x3

    .line 16
    new-array p1, p1, [Ljava/lang/String;

    const-string p2, "\u041a\u0430\u0440\u0442\u043e\u0439"

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string p2, "\u041d\u0430\u043b\u0438\u0447\u043d\u044b\u043c\u0438"

    const/4 v0, 0x1

    aput-object p2, p1, v0

    const-string p2, "\u041f\u0435\u0440\u0435\u0432\u043e\u0434\u043e\u043c"

    const/4 v0, 0x2

    aput-object p2, p1, v0

    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/refill/UserFeedRefillPagerAdapter;->_tabCaptions:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final canBack()Z
    .locals 2

    .line 72
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/refill/UserFeedRefillPagerAdapter;->_currentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/refill/UserFeedRefillPagerAdapter;->_currentPrimaryItem:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lru/rocketbank/r2d2/IHostFragment;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/refill/UserFeedRefillPagerAdapter;->_currentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type ru.rocketbank.r2d2.IHostFragment"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Lru/rocketbank/r2d2/IHostFragment;

    invoke-interface {v0}, Lru/rocketbank/r2d2/IHostFragment;->canBack()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final getCount()I
    .locals 1

    .line 36
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/refill/UserFeedRefillPagerAdapter;->_tabCaptions:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Landroid/support/v4/app/Fragment;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 29
    :pswitch_0
    new-instance p1, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;

    invoke-direct {p1}, Lru/rocketbank/r2d2/fragments/refill/bank/AccountDetailsFragment;-><init>()V

    check-cast p1, Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 27
    :pswitch_1
    new-instance p1, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;

    invoke-direct {p1}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;-><init>()V

    check-cast p1, Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 25
    :pswitch_2
    sget-object p1, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;->Companion:Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment$Companion;->newInstance()Lru/rocketbank/r2d2/fragments/refill/card/RefillFromCardFragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 64
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/refill/UserFeedRefillPagerAdapter;->_tabCaptions:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 65
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/refill/UserFeedRefillPagerAdapter;->_tabCaptions:[Ljava/lang/String;

    aget-object p1, v0, p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final moveBack()V
    .locals 2

    .line 82
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/refill/UserFeedRefillPagerAdapter;->_currentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/refill/UserFeedRefillPagerAdapter;->_currentPrimaryItem:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lru/rocketbank/r2d2/IHostFragment;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/refill/UserFeedRefillPagerAdapter;->_currentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type ru.rocketbank.r2d2.IHostFragment"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Lru/rocketbank/r2d2/IHostFragment;

    invoke-interface {v0}, Lru/rocketbank/r2d2/IHostFragment;->moveBack()V

    :cond_1
    return-void
.end method

.method public final setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "object"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-super {p0, p1, p2, p3}, Lru/rocketbank/core/utils/RocketPageAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 42
    check-cast p3, Landroid/support/v4/app/Fragment;

    iput-object p3, p0, Lru/rocketbank/r2d2/adapters/refill/UserFeedRefillPagerAdapter;->_currentPrimaryItem:Landroid/support/v4/app/Fragment;

    .line 44
    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/refill/UserFeedRefillPagerAdapter;->_currentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 48
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/refill/UserFeedRefillPagerAdapter;->_lastCurentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/refill/UserFeedRefillPagerAdapter;->_lastCurentPrimaryItem:Landroid/support/v4/app/Fragment;

    iget-object p3, p0, Lru/rocketbank/r2d2/adapters/refill/UserFeedRefillPagerAdapter;->_currentPrimaryItem:Landroid/support/v4/app/Fragment;

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 52
    :cond_2
    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/refill/UserFeedRefillPagerAdapter;->_currentPrimaryItem:Landroid/support/v4/app/Fragment;

    instance-of p1, p1, Lru/rocketbank/r2d2/fragments/TabFragmentListener;

    if-eqz p1, :cond_4

    .line 53
    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/refill/UserFeedRefillPagerAdapter;->_currentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-nez p1, :cond_3

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.r2d2.fragments.TabFragmentListener"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    check-cast p1, Lru/rocketbank/r2d2/fragments/TabFragmentListener;

    invoke-interface {p1}, Lru/rocketbank/r2d2/fragments/TabFragmentListener;->onSelected()V

    :cond_4
    if-eqz p2, :cond_5

    .line 57
    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/refill/UserFeedRefillPagerAdapter;->activity:Landroid/app/Activity;

    invoke-static {p1}, Lru/rocketbank/r2d2/Utils;->closeKeyboardIfExists(Landroid/app/Activity;)V

    .line 60
    :cond_5
    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/refill/UserFeedRefillPagerAdapter;->_currentPrimaryItem:Landroid/support/v4/app/Fragment;

    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/refill/UserFeedRefillPagerAdapter;->_lastCurentPrimaryItem:Landroid/support/v4/app/Fragment;

    return-void
.end method
