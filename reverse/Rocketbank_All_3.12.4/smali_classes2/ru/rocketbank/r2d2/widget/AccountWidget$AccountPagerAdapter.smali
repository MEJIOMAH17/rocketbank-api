.class public final Lru/rocketbank/r2d2/widget/AccountWidget$AccountPagerAdapter;
.super Lru/rocketbank/r2d2/root/transfer/ProductPager;
.source "AccountWidget.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/widget/AccountWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccountPagerAdapter"
.end annotation


# instance fields
.field private currentFragment:Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment;

.field private final onSetPrimaryItem:Lrx/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/PublishSubject<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 1

    .line 129
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/transfer/ProductPager;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 130
    invoke-static {}, Lrx/subjects/PublishSubject;->create()Lrx/subjects/PublishSubject;

    move-result-object p1

    const-string v0, "PublishSubject.create()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/widget/AccountWidget$AccountPagerAdapter;->onSetPrimaryItem:Lrx/subjects/PublishSubject;

    return-void
.end method


# virtual methods
.method public final getCurrentFragment()Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment;
    .locals 1

    .line 136
    iget-object v0, p0, Lru/rocketbank/r2d2/widget/AccountWidget$AccountPagerAdapter;->currentFragment:Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment;

    return-object v0
.end method

.method public final getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2

    .line 133
    sget-object v0, Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment;->Companion:Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment$Companion;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/widget/AccountWidget$AccountPagerAdapter;->getProductsReady()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "productsReady[position]"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment$Companion;->newInstance(Ljava/lang/String;)Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method public final getOnSetPrimaryItem()Lrx/subjects/PublishSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/subjects/PublishSubject<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment;",
            ">;>;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lru/rocketbank/r2d2/widget/AccountWidget$AccountPagerAdapter;->onSetPrimaryItem:Lrx/subjects/PublishSubject;

    return-object v0
.end method

.method public final setCurrentFragment(Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lru/rocketbank/r2d2/widget/AccountWidget$AccountPagerAdapter;->currentFragment:Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment;

    return-void
.end method

.method public final setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "object"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lru/rocketbank/r2d2/widget/AccountWidget$AccountPagerAdapter;->currentFragment:Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment;

    if-eq v0, p3, :cond_0

    .line 140
    move-object v0, p3

    check-cast v0, Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment;

    .line 141
    iput-object v0, p0, Lru/rocketbank/r2d2/widget/AccountWidget$AccountPagerAdapter;->currentFragment:Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment;

    .line 142
    iget-object v1, p0, Lru/rocketbank/r2d2/widget/AccountWidget$AccountPagerAdapter;->onSetPrimaryItem:Lrx/subjects/PublishSubject;

    new-instance v2, Lkotlin/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lrx/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 144
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lru/rocketbank/r2d2/root/transfer/ProductPager;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method
