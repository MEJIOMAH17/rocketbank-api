.class Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$TransferPagerAdapter;
.super Lru/rocketbank/core/utils/RocketPageAdapter;
.source "TransferTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransferPagerAdapter"
.end annotation


# instance fields
.field private _currentPrimaryItem:Landroid/support/v4/app/Fragment;

.field private _lastCurentPrimaryItem:Landroid/support/v4/app/Fragment;

.field private fragments:[Landroid/support/v4/app/Fragment;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;

.field private titles:[Ljava/lang/String;


# direct methods
.method varargs constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;Landroid/support/v4/app/FragmentManager;[Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 157
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$TransferPagerAdapter;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;

    .line 158
    invoke-direct {p0, p2}, Lru/rocketbank/core/utils/RocketPageAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 159
    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$TransferPagerAdapter;->fragments:[Landroid/support/v4/app/Fragment;

    const/4 p2, 0x2

    .line 160
    new-array p2, p2, [Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f110486

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p2, v0

    .line 162
    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f110489

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, p2, p3

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$TransferPagerAdapter;->titles:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 200
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$TransferPagerAdapter;->titles:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 168
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$TransferPagerAdapter;->fragments:[Landroid/support/v4/app/Fragment;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 205
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$TransferPagerAdapter;->titles:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 206
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$TransferPagerAdapter;->titles:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 173
    invoke-super {p0, p1, p2, p3}, Lru/rocketbank/core/utils/RocketPageAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 176
    check-cast p3, Landroid/support/v4/app/Fragment;

    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$TransferPagerAdapter;->_currentPrimaryItem:Landroid/support/v4/app/Fragment;

    .line 178
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$TransferPagerAdapter;->_currentPrimaryItem:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 182
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$TransferPagerAdapter;->_lastCurentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$TransferPagerAdapter;->_lastCurentPrimaryItem:Landroid/support/v4/app/Fragment;

    iget-object p3, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$TransferPagerAdapter;->_currentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-ne p1, p3, :cond_1

    return-void

    .line 186
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$TransferPagerAdapter;->_currentPrimaryItem:Landroid/support/v4/app/Fragment;

    instance-of p1, p1, Lru/rocketbank/r2d2/fragments/TabFragmentListener;

    if-eqz p1, :cond_2

    .line 187
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$TransferPagerAdapter;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;

    iget-object p3, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$TransferPagerAdapter;->_currentPrimaryItem:Landroid/support/v4/app/Fragment;

    invoke-static {p1, p3}, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->access$002(Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    .line 188
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$TransferPagerAdapter;->_currentPrimaryItem:Landroid/support/v4/app/Fragment;

    check-cast p1, Lru/rocketbank/r2d2/fragments/TabFragmentListener;

    invoke-interface {p1}, Lru/rocketbank/r2d2/fragments/TabFragmentListener;->onSelected()V

    :cond_2
    if-eqz p2, :cond_3

    .line 192
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$TransferPagerAdapter;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lru/rocketbank/r2d2/Utils;->closeKeyboardIfExists(Landroid/app/Activity;)V

    .line 195
    :cond_3
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$TransferPagerAdapter;->_currentPrimaryItem:Landroid/support/v4/app/Fragment;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferTabFragment$TransferPagerAdapter;->_lastCurentPrimaryItem:Landroid/support/v4/app/Fragment;

    return-void
.end method
