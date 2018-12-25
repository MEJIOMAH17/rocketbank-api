.class public final Lcom/mikepenz/materialdrawer/Drawer;
.super Ljava/lang/Object;
.source "Drawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;
    }
.end annotation


# instance fields
.field private mContentView:Landroid/widget/FrameLayout;

.field protected final mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

.field private mKeyboardUtil:Lcom/mikepenz/materialdrawer/util/KeyboardUtil;

.field private originalDrawerItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field private originalDrawerSelection:I


# direct methods
.method protected constructor <init>(Lcom/mikepenz/materialdrawer/DrawerBuilder;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mKeyboardUtil:Lcom/mikepenz/materialdrawer/util/KeyboardUtil;

    const/4 v0, -0x1

    .line 903
    iput v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalDrawerSelection:I

    .line 62
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    return-void
.end method

.method private getContent()Landroid/widget/FrameLayout;
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mContentView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x7f090108

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mContentView:Landroid/widget/FrameLayout;

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mContentView:Landroid/widget/FrameLayout;

    return-object v0
.end method


# virtual methods
.method public final closeDrawer()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v1, v1, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerGravity:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    :cond_0
    return-void
.end method

.method public final getDrawerItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getAdapter()Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->getDrawerItems()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final getDrawerLayout()Landroid/support/v4/widget/DrawerLayout;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    return-object v0
.end method

.method public final getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public final isDrawerOpen()Z
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v1, v1, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerGravity:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final keyboardSupportEnabled$3ef676ad(Landroid/app/Activity;)V
    .locals 3

    .line 220
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getContent()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getContent()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mKeyboardUtil:Lcom/mikepenz/materialdrawer/util/KeyboardUtil;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Lcom/mikepenz/materialdrawer/util/KeyboardUtil;

    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getContent()Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/mikepenz/materialdrawer/util/KeyboardUtil;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mKeyboardUtil:Lcom/mikepenz/materialdrawer/util/KeyboardUtil;

    .line 223
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/Drawer;->mKeyboardUtil:Lcom/mikepenz/materialdrawer/util/KeyboardUtil;

    invoke-virtual {p1}, Lcom/mikepenz/materialdrawer/util/KeyboardUtil;->disable()V

    .line 227
    :cond_0
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/Drawer;->mKeyboardUtil:Lcom/mikepenz/materialdrawer/util/KeyboardUtil;

    invoke-virtual {p1}, Lcom/mikepenz/materialdrawer/util/KeyboardUtil;->enable()V

    :cond_1
    return-void
.end method

.method public final openDrawer()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v1, v1, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerGravity:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    :cond_0
    return-void
.end method

.method public final setItems(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;)V"
        }
    .end annotation

    .line 747
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/util/IdDistributor;->checkIds(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 2758
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalDrawerItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2759
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalDrawerItems:Ljava/util/ArrayList;

    .line 2760
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    const/4 v0, -0x1

    iput v0, p1, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mCurrentSelection:I

    goto :goto_0

    .line 2762
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getAdapter()Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->setDrawerItems(Ljava/util/ArrayList;)V

    .line 2765
    :goto_0
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object p1, p1, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

    invoke-virtual {p1}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final setSelection$7a7ce801(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z
    .locals 1

    .line 1387
    invoke-interface {p1}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->getIdentifier()I

    move-result p1

    .line 1397
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-static {v0, p1}, Lcom/mikepenz/materialdrawer/DrawerUtils;->getPositionByIdentifier(Lcom/mikepenz/materialdrawer/DrawerBuilder;I)I

    move-result p1

    .line 1543
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 1544
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-virtual {v0, p1}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getDrawerItem(I)Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    invoke-static {v0, p1}, Lcom/mikepenz/materialdrawer/DrawerUtils;->setRecyclerViewSelection$4633d628(Lcom/mikepenz/materialdrawer/DrawerBuilder;I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final updateItem(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)V
    .locals 2

    .line 2387
    invoke-interface {p1}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->getIdentifier()I

    move-result v0

    .line 2397
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-static {v1, v0}, Lcom/mikepenz/materialdrawer/DrawerUtils;->getPositionByIdentifier(Lcom/mikepenz/materialdrawer/DrawerBuilder;I)I

    move-result v0

    .line 2635
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-virtual {v1, v0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->checkDrawerItem$256326a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2636
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-virtual {v1}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getAdapter()Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->setDrawerItem(ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)V

    :cond_0
    return-void
.end method
