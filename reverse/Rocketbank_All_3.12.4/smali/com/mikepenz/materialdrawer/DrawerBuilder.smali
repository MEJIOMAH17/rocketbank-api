.class public final Lcom/mikepenz/materialdrawer/DrawerBuilder;
.super Ljava/lang/Object;
.source "DrawerBuilder.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;
.implements Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$OnClickListener;
.implements Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$OnLongClickListener;


# instance fields
.field protected mAccountHeaderSticky:Z

.field protected mActionBarDrawerToggleEnabled:Z

.field protected mActivity:Landroid/app/Activity;

.field protected mAdapter:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

.field protected mAnimateActionBarDrawerToggle:Z

.field protected mAppended:Z

.field protected mCloseOnClick:Z

.field protected mCurrentSelection:I

.field protected mCurrentStickyFooterSelection:I

.field protected mDelayDrawerClickEvent:I

.field protected mDelayOnDrawerClose:I

.field protected mDrawerGravity:Ljava/lang/Integer;

.field protected mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field protected mDrawerWidth:I

.field protected mFireInitialOnClick:Z

.field protected mFooterClickable:Z

.field protected mFooterDivider:Z

.field protected mFullscreen:Z

.field protected mGenerateMiniDrawer:Z

.field protected mHasStableIds:Z

.field protected mHeaderClickable:Z

.field protected mHeaderDivider:Z

.field protected mHeaderPadding:Z

.field protected mHeaderView:Landroid/view/View;

.field private mInnerShadow:Z

.field protected mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

.field protected mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field protected mMaterialize$5bafd4ee:Lcom/mikepenz/materialize/R;

.field protected mMiniDrawer:Lcom/mikepenz/materialdrawer/MiniDrawer;

.field protected mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

.field protected mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field protected mRootView:Landroid/view/ViewGroup;

.field protected mScrollToTopAfterClick:Z

.field protected mSelectedItemIdentifier:I

.field protected mSelectedItemPosition:I

.field protected mShowDrawerOnFirstLaunch:Z

.field protected mSliderBackgroundColor:I

.field protected mSliderBackgroundColorRes:I

.field protected mSliderBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field protected mSliderBackgroundDrawableRes:I

.field protected mSliderLayout:Landroid/widget/RelativeLayout;

.field protected mStatusBarColor:I

.field protected mStatusBarColorRes:I

.field protected mStickyDrawerItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mStickyFooterDivider:Z

.field protected mStickyFooterShadow:Z

.field protected mStickyFooterShadowView:Landroid/view/View;

.field protected mStickyFooterView:Landroid/view/ViewGroup;

.field protected mSystemUIHidden:Z

.field protected mTranslucentNavigationBar:Z

.field protected mTranslucentNavigationBarProgrammatically:Z

.field protected mTranslucentStatusBar:Z

.field protected mTranslucentStatusBarProgrammatically:Z

.field protected mTranslucentStatusBarShadow:Ljava/lang/Boolean;

.field protected mUsed:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mUsed:Z

    const/4 v1, -0x1

    .line 64
    iput v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mCurrentSelection:I

    .line 65
    iput v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mCurrentStickyFooterSelection:I

    .line 66
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAppended:Z

    const/4 v2, 0x1

    .line 139
    iput-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mTranslucentStatusBar:Z

    .line 172
    iput-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mTranslucentStatusBarProgrammatically:Z

    const/4 v3, 0x0

    .line 190
    iput-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mTranslucentStatusBarShadow:Ljava/lang/Boolean;

    .line 203
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mInnerShadow:Z

    .line 232
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mTranslucentNavigationBar:Z

    .line 252
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mTranslucentNavigationBarProgrammatically:Z

    .line 271
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFullscreen:Z

    .line 292
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSystemUIHidden:Z

    .line 365
    iput v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStatusBarColor:I

    .line 366
    iput v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStatusBarColorRes:I

    .line 391
    iput v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundColor:I

    .line 392
    iput v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundColorRes:I

    .line 393
    iput-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 394
    iput v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundDrawableRes:I

    .line 447
    iput v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerWidth:I

    const v1, 0x800003

    .line 491
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerGravity:Ljava/lang/Integer;

    .line 506
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAccountHeaderSticky:Z

    .line 534
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAnimateActionBarDrawerToggle:Z

    .line 551
    iput-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActionBarDrawerToggleEnabled:Z

    .line 580
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mScrollToTopAfterClick:Z

    .line 596
    iput-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderDivider:Z

    .line 597
    iput-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderPadding:Z

    .line 598
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderClickable:Z

    .line 698
    iput-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFooterDivider:Z

    .line 699
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFooterClickable:Z

    .line 756
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterDivider:Z

    .line 760
    iput-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterShadow:Z

    .line 815
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFireInitialOnClick:Z

    .line 829
    iput v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSelectedItemPosition:I

    .line 843
    iput v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSelectedItemIdentifier:I

    .line 872
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHasStableIds:Z

    .line 937
    iput-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    .line 973
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyDrawerItems:Ljava/util/ArrayList;

    .line 1063
    iput-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mCloseOnClick:Z

    const/16 v1, 0x32

    .line 1077
    iput v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDelayOnDrawerClose:I

    .line 1094
    iput v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDelayDrawerClickEvent:I

    .line 1167
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mShowDrawerOnFirstLaunch:Z

    .line 1181
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mGenerateMiniDrawer:Z

    .line 1182
    iput-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mMiniDrawer:Lcom/mikepenz/materialdrawer/MiniDrawer;

    .line 81
    invoke-static {}, Lcom/mikepenz/materialdrawer/util/RecyclerViewCacheUtil;->getInstance()Lcom/mikepenz/materialdrawer/util/RecyclerViewCacheUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/util/RecyclerViewCacheUtil;->clear()V

    return-void
.end method


# virtual methods
.method public final varargs addDrawerItems([Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 2

    .line 1911
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

    if-nez v0, :cond_0

    .line 1912
    new-instance v0, Lcom/mikepenz/materialdrawer/adapter/DrawerAdapter;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/adapter/DrawerAdapter;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

    .line 1913
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->setHasStableIds(Z)V

    .line 1915
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

    .line 968
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/util/IdDistributor;->checkIds([Lcom/mikepenz/materialdrawer/model/interfaces/Identifyable;)[Lcom/mikepenz/materialdrawer/model/interfaces/Identifyable;

    move-result-object p1

    check-cast p1, [Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    invoke-virtual {v0, p1}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->addDrawerItems([Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)V

    return-object p0
.end method

.method public final build()Lcom/mikepenz/materialdrawer/Drawer;
    .locals 8

    .line 1237
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mUsed:Z

    if-eqz v0, :cond_0

    .line 1238
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "you must not reuse a DrawerBuilder builder"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1240
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 1241
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "please pass an activity"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    .line 1245
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mUsed:Z

    .line 1248
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 2351
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_2

    .line 2352
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "please pass an activity first to use this call"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2358
    :cond_2
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0c0155

    iget-object v4, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/DrawerLayout;

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 1253
    :cond_3
    new-instance v1, Lcom/mikepenz/materialize/MaterializeBuilder;

    invoke-direct {v1}, Lcom/mikepenz/materialize/MaterializeBuilder;-><init>()V

    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    .line 1254
    invoke-virtual {v1, v3}, Lcom/mikepenz/materialize/MaterializeBuilder;->withActivity(Landroid/app/Activity;)Lcom/mikepenz/materialize/MaterializeBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRootView:Landroid/view/ViewGroup;

    .line 1255
    invoke-virtual {v1, v3}, Lcom/mikepenz/materialize/MaterializeBuilder;->withRootView(Landroid/view/ViewGroup;)Lcom/mikepenz/materialize/MaterializeBuilder;

    move-result-object v1

    .line 1256
    invoke-virtual {v1}, Lcom/mikepenz/materialize/MaterializeBuilder;->withFullscreen$3b9f1fca()Lcom/mikepenz/materialize/MaterializeBuilder;

    move-result-object v1

    .line 1257
    invoke-virtual {v1}, Lcom/mikepenz/materialize/MaterializeBuilder;->withSystemUIHidden$3b9f1fca()Lcom/mikepenz/materialize/MaterializeBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mTranslucentStatusBar:Z

    .line 1258
    invoke-virtual {v1, v3}, Lcom/mikepenz/materialize/MaterializeBuilder;->withTranslucentStatusBar(Z)Lcom/mikepenz/materialize/MaterializeBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mTranslucentStatusBarProgrammatically:Z

    .line 1259
    invoke-virtual {v1, v3}, Lcom/mikepenz/materialize/MaterializeBuilder;->withTranslucentStatusBarProgrammatically(Z)Lcom/mikepenz/materialize/MaterializeBuilder;

    move-result-object v1

    .line 1260
    invoke-virtual {v1}, Lcom/mikepenz/materialize/MaterializeBuilder;->withTranslucentNavigationBar$3b9f1fca()Lcom/mikepenz/materialize/MaterializeBuilder;

    move-result-object v1

    .line 1261
    invoke-virtual {v1}, Lcom/mikepenz/materialize/MaterializeBuilder;->withTranslucentNavigationBarProgrammatically$3b9f1fca()Lcom/mikepenz/materialize/MaterializeBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 1262
    invoke-virtual {v1, v3}, Lcom/mikepenz/materialize/MaterializeBuilder;->withContainer(Landroid/view/ViewGroup;)Lcom/mikepenz/materialize/MaterializeBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStatusBarColor:I

    .line 1263
    invoke-virtual {v1, v3}, Lcom/mikepenz/materialize/MaterializeBuilder;->withStatusBarColor(I)Lcom/mikepenz/materialize/MaterializeBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStatusBarColorRes:I

    .line 1264
    invoke-virtual {v1, v3}, Lcom/mikepenz/materialize/MaterializeBuilder;->withStatusBarColorRes(I)Lcom/mikepenz/materialize/MaterializeBuilder;

    move-result-object v1

    .line 1265
    invoke-virtual {v1}, Lcom/mikepenz/materialize/MaterializeBuilder;->build$2985112f()Lcom/mikepenz/materialize/R;

    move-result-object v1

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mMaterialize$5bafd4ee:Lcom/mikepenz/materialize/R;

    .line 3354
    new-instance v1, Lcom/mikepenz/materialdrawer/DrawerBuilder$1;

    invoke-direct {v1, p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder$1;-><init>(Lcom/mikepenz/materialdrawer/DrawerBuilder;)V

    .line 3422
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, p0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 3459
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0c0166

    iget-object v4, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Landroid/widget/RelativeLayout;

    .line 3460
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    .line 5033
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 5034
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x7f04019e

    invoke-virtual {v5, v6, v4, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5035
    iget v4, v4, Landroid/util/TypedValue;->data:I

    goto :goto_0

    :cond_4
    move v4, v2

    :goto_0
    if-nez v4, :cond_5

    .line 4051
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600b4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 3460
    :cond_5
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 3462
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    if-eqz v1, :cond_6

    .line 3465
    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerGravity:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 3467
    invoke-static {p0, v1}, Lcom/mikepenz/materialdrawer/DrawerUtils;->processDrawerLayoutParams(Lcom/mikepenz/materialdrawer/DrawerBuilder;Landroid/support/v4/widget/DrawerLayout$LayoutParams;)Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-result-object v1

    .line 3469
    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5572
    :cond_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v1, v3, :cond_8

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v1, :cond_8

    .line 5573
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerGravity:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v4, 0x800003

    if-ne v1, v4, :cond_7

    .line 5574
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v4, 0x7f0801b5

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerGravity:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/widget/DrawerLayout;->setDrawerShadow(II)V

    goto :goto_1

    .line 5576
    :cond_7
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v4, 0x7f0801b4

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerGravity:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/widget/DrawerLayout;->setDrawerShadow(II)V

    .line 5581
    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_a

    .line 5582
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f0c0165

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 5585
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v4}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 5590
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setFadingEdgeLength(I)V

    .line 5594
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setClipToPadding(Z)V

    .line 5596
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 5599
    iget-boolean v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mTranslucentStatusBar:Z

    if-eqz v1, :cond_9

    .line 5600
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    .line 6156
    invoke-static {v1, v2}, Lcom/mikepenz/materialize/util/UIUtils;->getStatusBarHeight(Landroid/content/Context;Z)I

    move-result v1

    goto :goto_2

    :cond_9
    move v1, v2

    .line 5607
    :goto_2
    iget-object v4, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v2, v1, v2, v2}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 5610
    :cond_a
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x3f800000    # 1.0f

    .line 5614
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 5615
    iget-object v5, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v6, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5618
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f090247

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 5619
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 5620
    iget-object v6, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-static {v6, v0}, Lcom/mikepenz/materialize/util/UIUtils;->getStatusBarHeight(Landroid/content/Context;Z)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 5621
    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5637
    iget v5, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundColorRes:I

    if-eq v5, v4, :cond_b

    .line 5638
    iget-object v4, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    iget v6, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundColorRes:I

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_3

    .line 5641
    :cond_b
    iget v5, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundDrawableRes:I

    if-eq v5, v4, :cond_d

    .line 5642
    iget-object v4, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Landroid/widget/RelativeLayout;

    iget v5, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundColorRes:I

    .line 7078
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/mikepenz/materialize/util/UIUtils;->getCompatDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 8064
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-ge v6, v7, :cond_c

    .line 8065
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 8067
    :cond_c
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5646
    :cond_d
    :goto_3
    iget-boolean v4, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mTranslucentStatusBar:Z

    const/16 v5, 0x8

    if-eqz v4, :cond_f

    .line 5649
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v3, :cond_e

    .line 5651
    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    goto :goto_4

    .line 5654
    :cond_e
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 5662
    :cond_f
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 5671
    :goto_4
    invoke-static {p0}, Lcom/mikepenz/materialdrawer/DrawerUtils;->handleHeaderView(Lcom/mikepenz/materialdrawer/DrawerBuilder;)V

    .line 5674
    new-instance v1, Lcom/mikepenz/materialdrawer/DrawerBuilder$4;

    invoke-direct {v1, p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder$4;-><init>(Lcom/mikepenz/materialdrawer/DrawerBuilder;)V

    invoke-static {p0, v1}, Lcom/mikepenz/materialdrawer/DrawerUtils;->handleFooterView(Lcom/mikepenz/materialdrawer/DrawerBuilder;Landroid/view/View$OnClickListener;)V

    .line 5686
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 8911
    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

    if-nez v3, :cond_10

    .line 8912
    new-instance v3, Lcom/mikepenz/materialdrawer/adapter/DrawerAdapter;

    invoke-direct {v3}, Lcom/mikepenz/materialdrawer/adapter/DrawerAdapter;-><init>()V

    iput-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

    .line 8913
    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

    invoke-virtual {v3, v2}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->setHasStableIds(Z)V

    .line 8915
    :cond_10
    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

    .line 5686
    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 5695
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderView:Landroid/view/View;

    if-eqz v1, :cond_11

    iget v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSelectedItemPosition:I

    if-nez v1, :cond_11

    .line 5696
    iput v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSelectedItemPosition:I

    .line 5698
    :cond_11
    iget v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSelectedItemPosition:I

    .line 9087
    invoke-static {p0, v1}, Lcom/mikepenz/materialdrawer/DrawerUtils;->setRecyclerViewSelection$4633d628(Lcom/mikepenz/materialdrawer/DrawerBuilder;I)Z

    .line 5701
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

    invoke-virtual {v1, p0}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->setOnClickListener(Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$OnClickListener;)V

    .line 5739
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

    invoke-virtual {v1, p0}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->setOnLongClickListener(Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$OnLongClickListener;)V

    .line 5749
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_12

    .line 5750
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 3476
    :cond_12
    new-instance v1, Lcom/mikepenz/materialdrawer/Drawer;

    invoke-direct {v1, p0}, Lcom/mikepenz/materialdrawer/Drawer;-><init>(Lcom/mikepenz/materialdrawer/DrawerBuilder;)V

    const/4 v2, 0x0

    .line 3497
    iput-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    .line 1274
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f090248

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 1276
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/widget/DrawerLayout;->addView(Landroid/view/View;I)V

    return-object v1
.end method

.method protected final checkDrawerItem$256326a(I)Z
    .locals 2

    .line 10911
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 10912
    new-instance v0, Lcom/mikepenz/materialdrawer/adapter/DrawerAdapter;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/adapter/DrawerAdapter;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

    .line 10913
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->setHasStableIds(Z)V

    .line 10915
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

    .line 1810
    invoke-virtual {v0, p1}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->getItem(I)Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method protected final closeDrawerDelayed()V
    .locals 4

    .line 1774
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mCloseOnClick:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_1

    .line 1775
    iget v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDelayOnDrawerClose:I

    if-ltz v0, :cond_0

    .line 1776
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mikepenz/materialdrawer/DrawerBuilder$7;

    invoke-direct {v1, p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder$7;-><init>(Lcom/mikepenz/materialdrawer/DrawerBuilder;)V

    iget v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDelayOnDrawerClose:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1787
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    :cond_1
    return-void
.end method

.method protected final getAdapter()Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;
    .locals 2

    .line 911
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

    if-nez v0, :cond_0

    .line 912
    new-instance v0, Lcom/mikepenz/materialdrawer/adapter/DrawerAdapter;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/adapter/DrawerAdapter;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

    .line 913
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->setHasStableIds(Z)V

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

    return-object v0
.end method

.method protected final getDrawerItem(I)Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;
    .locals 2

    .line 9911
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

    if-nez v0, :cond_0

    .line 9912
    new-instance v0, Lcom/mikepenz/materialdrawer/adapter/DrawerAdapter;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/adapter/DrawerAdapter;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

    .line 9913
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->setHasStableIds(Z)V

    .line 9915
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;

    .line 1799
    invoke-virtual {v0, p1}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->getItem(I)Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public final onClick(Landroid/view/View;ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)V
    .locals 2

    if-eqz p3, :cond_0

    .line 11704
    instance-of v0, p3, Lcom/mikepenz/materialdrawer/model/interfaces/Selectable;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/mikepenz/materialdrawer/model/interfaces/Selectable;

    invoke-interface {v0}, Lcom/mikepenz/materialdrawer/model/interfaces/Selectable;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11705
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->resetStickyFooterSelection()V

    .line 11706
    iput p2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mCurrentSelection:I

    const/4 v0, -0x1

    .line 11707
    iput v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mCurrentStickyFooterSelection:I

    :cond_1
    const/4 v0, 0x0

    .line 11713
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    if-eqz v1, :cond_2

    .line 11722
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;->onItemClick(Landroid/view/View;ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z

    move-result v0

    :cond_2
    if-nez v0, :cond_3

    .line 11733
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->closeDrawerDelayed()V

    :cond_3
    return-void
.end method

.method public final onDrawerClosed(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onDrawerOpened(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onDrawerSlide(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public final onDrawerStateChanged(I)V
    .locals 0

    return-void
.end method

.method protected final resetStickyFooterSelection()V
    .locals 4

    .line 1817
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterView:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    .line 1818
    :goto_0
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1819
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 1820
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setActivated(Z)V

    .line 1822
    :cond_0
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final withActionBarDrawerToggle$4dbba9b3()Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 560
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActionBarDrawerToggleEnabled:Z

    return-object p0
.end method

.method public final withActivity(Landroid/app/Activity;)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 1

    const v0, 0x1020002

    .line 103
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRootView:Landroid/view/ViewGroup;

    .line 104
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    .line 105
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object p0
.end method

.method public final withHeader(Landroid/view/View;)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 607
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderView:Landroid/view/View;

    return-object p0
.end method

.method public final withHeaderClickable$4dbba9b3()Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 637
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderClickable:Z

    return-object p0
.end method

.method public final withHeaderDivider$4dbba9b3()Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 648
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderDivider:Z

    return-object p0
.end method

.method public final withOnDrawerItemClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 1134
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    return-object p0
.end method

.method public final withSliderBackgroundColorRes$90ebf22()Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 1

    const v0, 0x106000b

    .line 416
    iput v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundColorRes:I

    return-object p0
.end method

.method public final withStatusBarColor(I)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 375
    iput p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStatusBarColor:I

    return-object p0
.end method

.method public final withTranslucentStatusBar$4dbba9b3()Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mTranslucentStatusBar:Z

    .line 152
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mTranslucentStatusBarProgrammatically:Z

    return-object p0
.end method
