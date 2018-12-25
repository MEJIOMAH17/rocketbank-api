.class public final Lcom/mikepenz/materialize/MaterializeBuilder;
.super Ljava/lang/Object;
.source "MaterializeBuilder.java"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mContainer:Landroid/view/ViewGroup;

.field protected mContainerLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field protected mContentRoot:Landroid/view/ViewGroup;

.field protected mFullscreen:Z

.field protected mRootView:Landroid/view/ViewGroup;

.field protected mScrimInsetsLayout:Lcom/mikepenz/materialize/view/IScrimInsetsLayout;

.field protected mStatusBarColor:I

.field protected mStatusBarColorRes:I

.field protected mSystemUIHidden:Z

.field protected mTintNavigationBar:Z

.field protected mTintStatusBar:Z

.field protected mTranslucentActionBarCompatibility:Z

.field protected mTranslucentNavigationBar:Z

.field protected mTranslucentNavigationBarProgrammatically:Z

.field protected mTranslucentStatusBar:Z

.field protected mTranslucentStatusBarProgrammatically:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mStatusBarColor:I

    const/4 v1, -0x1

    .line 85
    iput v1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mStatusBarColorRes:I

    .line 111
    iput-boolean v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTranslucentActionBarCompatibility:Z

    const/4 v1, 0x1

    .line 126
    iput-boolean v1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTranslucentStatusBar:Z

    .line 146
    iput-boolean v1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTranslucentStatusBarProgrammatically:Z

    .line 165
    iput-boolean v1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTintStatusBar:Z

    .line 179
    iput-boolean v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTranslucentNavigationBar:Z

    .line 199
    iput-boolean v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTranslucentNavigationBarProgrammatically:Z

    .line 217
    iput-boolean v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTintNavigationBar:Z

    .line 236
    iput-boolean v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mFullscreen:Z

    .line 260
    iput-boolean v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mSystemUIHidden:Z

    const/4 v0, 0x0

    .line 280
    iput-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContainer:Landroid/view/ViewGroup;

    .line 294
    iput-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContainerLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method


# virtual methods
.method public final build$2985112f()Lcom/mikepenz/materialize/R;
    .locals 11

    .line 323
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 324
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "please pass an activity"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0167

    iget-object v2, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mRootView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;

    iput-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mScrimInsetsLayout:Lcom/mikepenz/materialize/view/IScrimInsetsLayout;

    .line 331
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f09024d

    const/4 v4, 0x1

    if-ne v1, v2, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v3

    .line 341
    :goto_0
    iget v5, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mStatusBarColor:I

    const/4 v6, -0x1

    if-nez v5, :cond_3

    iget v5, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mStatusBarColorRes:I

    if-eq v5, v6, :cond_3

    .line 342
    iget-object v5, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v7, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mStatusBarColorRes:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mStatusBarColor:I

    goto :goto_2

    .line 343
    :cond_3
    iget v5, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mStatusBarColor:I

    if-nez v5, :cond_6

    .line 344
    iget-object v5, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mActivity:Landroid/app/Activity;

    .line 5033
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 5034
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x7f040086

    invoke-virtual {v8, v9, v7, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 5035
    iget v7, v7, Landroid/util/TypedValue;->data:I

    goto :goto_1

    :cond_4
    move v7, v3

    :goto_1
    if-nez v7, :cond_5

    .line 4051
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0600d4

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 344
    :cond_5
    iput v7, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mStatusBarColor:I

    .line 348
    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mScrimInsetsLayout:Lcom/mikepenz/materialize/view/IScrimInsetsLayout;

    iget v7, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mStatusBarColor:I

    invoke-interface {v5, v7}, Lcom/mikepenz/materialize/view/IScrimInsetsLayout;->setInsetForeground(I)V

    .line 349
    iget-object v5, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mScrimInsetsLayout:Lcom/mikepenz/materialize/view/IScrimInsetsLayout;

    iget-boolean v7, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTintStatusBar:Z

    invoke-interface {v5, v7}, Lcom/mikepenz/materialize/view/IScrimInsetsLayout;->setTintStatusBar(Z)V

    .line 350
    iget-object v5, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mScrimInsetsLayout:Lcom/mikepenz/materialize/view/IScrimInsetsLayout;

    invoke-interface {v5}, Lcom/mikepenz/materialize/view/IScrimInsetsLayout;->setTintNavigationBar$1385ff()V

    .line 353
    iget-object v5, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mScrimInsetsLayout:Lcom/mikepenz/materialize/view/IScrimInsetsLayout;

    invoke-interface {v5, v4}, Lcom/mikepenz/materialize/view/IScrimInsetsLayout;->setSystemUIVisible(Z)V

    if-nez v1, :cond_b

    .line 356
    iget-boolean v5, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTranslucentStatusBar:Z

    if-eqz v5, :cond_b

    .line 357
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v7, 0x4000000

    const/16 v8, 0x15

    const/16 v9, 0x13

    if-lt v5, v9, :cond_7

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v5, v8, :cond_7

    .line 358
    iget-object v5, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mActivity:Landroid/app/Activity;

    .line 5217
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v9, :cond_7

    .line 5218
    invoke-static {v5, v7, v4}, Lcom/mikepenz/materialize/util/UIUtils;->setFlag(Landroid/app/Activity;IZ)V

    .line 360
    :cond_7
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v9, :cond_8

    .line 361
    iget-boolean v4, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTranslucentStatusBarProgrammatically:Z

    if-eqz v4, :cond_8

    .line 362
    iget-object v4, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x500

    invoke-virtual {v4, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 365
    :cond_8
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v8, :cond_a

    .line 366
    iget-object v4, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mActivity:Landroid/app/Activity;

    .line 6217
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v9, :cond_9

    .line 6218
    invoke-static {v4, v7, v3}, Lcom/mikepenz/materialize/util/UIUtils;->setFlag(Landroid/app/Activity;IZ)V

    .line 367
    :cond_9
    iget-boolean v4, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTranslucentStatusBarProgrammatically:Z

    if-eqz v4, :cond_a

    .line 368
    iget-object v4, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 371
    :cond_a
    iget-object v4, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mScrimInsetsLayout:Lcom/mikepenz/materialize/view/IScrimInsetsLayout;

    invoke-interface {v4}, Lcom/mikepenz/materialize/view/IScrimInsetsLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mActivity:Landroid/app/Activity;

    .line 7156
    invoke-static {v5, v3}, Lcom/mikepenz/materialize/util/UIUtils;->getStatusBarHeight(Landroid/content/Context;Z)I

    move-result v5

    .line 371
    invoke-virtual {v4, v3, v5, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_b
    if-nez v1, :cond_c

    .line 408
    iget-object v1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_3

    .line 411
    :cond_c
    iget-object v1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 415
    :goto_3
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 426
    iget-object v3, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mScrimInsetsLayout:Lcom/mikepenz/materialize/view/IScrimInsetsLayout;

    invoke-interface {v3}, Lcom/mikepenz/materialize/view/IScrimInsetsLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mScrimInsetsLayout:Lcom/mikepenz/materialize/view/IScrimInsetsLayout;

    invoke-interface {v0}, Lcom/mikepenz/materialize/view/IScrimInsetsLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContentRoot:Landroid/view/ViewGroup;

    .line 430
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_d

    .line 431
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContainer:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContentRoot:Landroid/view/ViewGroup;

    .line 432
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContentRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mScrimInsetsLayout:Lcom/mikepenz/materialize/view/IScrimInsetsLayout;

    invoke-interface {v1}, Lcom/mikepenz/materialize/view/IScrimInsetsLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    :cond_d
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setId(I)V

    .line 442
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContainerLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-nez v0, :cond_e

    .line 443
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContainerLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 449
    :cond_e
    iget-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContentRoot:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContainerLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 452
    iput-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mActivity:Landroid/app/Activity;

    .line 455
    new-instance v0, Lcom/mikepenz/materialize/R;

    invoke-direct {v0, p0}, Lcom/mikepenz/materialize/R;-><init>(Lcom/mikepenz/materialize/MaterializeBuilder;)V

    return-object v0

    .line 332
    :cond_f
    :goto_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You have to set your layout for this activity with setContentView() first. Or you build the drawer on your own with .buildView()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final withActivity(Landroid/app/Activity;)Lcom/mikepenz/materialize/MaterializeBuilder;
    .locals 1

    const v0, 0x1020002

    .line 49
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mRootView:Landroid/view/ViewGroup;

    .line 50
    iput-object p1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public final withContainer(Landroid/view/ViewGroup;)Lcom/mikepenz/materialize/MaterializeBuilder;
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final withFullscreen$3b9f1fca()Lcom/mikepenz/materialize/MaterializeBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 246
    iput-boolean v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mFullscreen:Z

    return-object p0
.end method

.method public final withRootView(Landroid/view/ViewGroup;)Lcom/mikepenz/materialize/MaterializeBuilder;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mRootView:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    .line 1135
    iput-boolean p1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTranslucentStatusBar:Z

    .line 1139
    iput-boolean p1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTranslucentStatusBarProgrammatically:Z

    return-object p0
.end method

.method public final withStatusBarColor(I)Lcom/mikepenz/materialize/MaterializeBuilder;
    .locals 0

    .line 94
    iput p1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mStatusBarColor:I

    return-object p0
.end method

.method public final withStatusBarColorRes(I)Lcom/mikepenz/materialize/MaterializeBuilder;
    .locals 0

    .line 105
    iput p1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mStatusBarColorRes:I

    return-object p0
.end method

.method public final withSystemUIHidden$3b9f1fca()Lcom/mikepenz/materialize/MaterializeBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 270
    iput-boolean v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mSystemUIHidden:Z

    return-object p0
.end method

.method public final withTranslucentNavigationBar$3b9f1fca()Lcom/mikepenz/materialize/MaterializeBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 188
    iput-boolean v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTranslucentNavigationBar:Z

    .line 192
    iput-boolean v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTranslucentNavigationBarProgrammatically:Z

    return-object p0
.end method

.method public final withTranslucentNavigationBarProgrammatically$3b9f1fca()Lcom/mikepenz/materialize/MaterializeBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 208
    iput-boolean v0, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTranslucentNavigationBarProgrammatically:Z

    return-object p0
.end method

.method public final withTranslucentStatusBar(Z)Lcom/mikepenz/materialize/MaterializeBuilder;
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTranslucentStatusBar:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 139
    iput-boolean p1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTranslucentStatusBarProgrammatically:Z

    :cond_0
    return-object p0
.end method

.method public final withTranslucentStatusBarProgrammatically(Z)Lcom/mikepenz/materialize/MaterializeBuilder;
    .locals 0

    .line 156
    iput-boolean p1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTranslucentStatusBarProgrammatically:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 159
    iput-boolean p1, p0, Lcom/mikepenz/materialize/MaterializeBuilder;->mTranslucentStatusBar:Z

    :cond_0
    return-object p0
.end method
