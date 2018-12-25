.class public final Lru/rocketbank/r2d2/shop/order/ShopInfoActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "ShopInfoActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/shop/order/ShopInfoActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/shop/order/ShopInfoActivity$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/shop/order/ShopInfoActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/shop/order/ShopInfoActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/shop/order/ShopInfoActivity;->Companion:Lru/rocketbank/r2d2/shop/order/ShopInfoActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopInfoActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopInfoActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopInfoActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopInfoActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/ShopInfoActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/shop/order/ShopInfoActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 17
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c005c

    .line 18
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/order/ShopInfoActivity;->setContentView(I)V

    .line 19
    sget p1, Lru/rocketbank/r2d2/R$id;->toolbar:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/order/ShopInfoActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/order/ShopInfoActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const p1, 0x7f110421

    .line 20
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/order/ShopInfoActivity;->setTitle(I)V

    .line 21
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/order/ShopInfoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 22
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/order/ShopInfoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 23
    :cond_1
    sget p1, Lru/rocketbank/r2d2/R$id;->supportButton:I

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/order/ShopInfoActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    new-instance v0, Lru/rocketbank/r2d2/shop/order/ShopInfoActivity$onCreate$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/shop/order/ShopInfoActivity$onCreate$1;-><init>(Lru/rocketbank/r2d2/shop/order/ShopInfoActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onSupportClick()V
    .locals 2

    .line 27
    sget-object v0, Lru/rocketbank/r2d2/activities/SupportChatActivity;->Companion:Lru/rocketbank/r2d2/activities/SupportChatActivity$Companion;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/activities/SupportChatActivity$Companion;->start(Landroid/content/Context;)V

    return-void
.end method
