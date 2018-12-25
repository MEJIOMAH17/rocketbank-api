.class public Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ActivityFirstRefillBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding$OnClickListenerImpl2;,
        Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding$OnClickListenerImpl1;,
        Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final cardAction:Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

.field public final cash:Landroid/support/v7/widget/CardView;

.field private mAbility:Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

.field private mActions:Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;

.field private mDirtyFlags:J

.field private mHandler:Lru/rocketbank/r2d2/data/binding/FirstRefillHandler;

.field private mHandlerOnCashPressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding$OnClickListenerImpl;

.field private mHandlerOnReqPressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding$OnClickListenerImpl2;

.field private mHandlerOnSupportPressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding$OnClickListenerImpl1;

.field private mToolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

.field private final mboundView0:Landroid/support/design/widget/CoordinatorLayout;

.field private final mboundView1:Landroid/widget/LinearLayout;

.field private final mboundView4:Landroid/support/v7/widget/CardView;

.field public final req:Landroid/support/v7/widget/CardView;

.field public final scroll:Landroid/support/v4/widget/NestedScrollView;

.field public final support:Lru/rocketbank/core/widgets/RocketTextView;

.field public final toolbarBlock:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 15
    new-instance v0, Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    .line 16
    sput-object v0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "layout_card_with_actions"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [I

    const/4 v5, 0x6

    aput v5, v3, v4

    new-array v5, v1, [I

    const v6, 0x7f0c011b

    aput v6, v5, v4

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 20
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "layout_toolbar_with_button"

    aput-object v3, v2, v4

    new-array v3, v1, [I

    const/4 v5, 0x5

    aput v5, v3, v4

    new-array v1, v1, [I

    const v5, 0x7f0c0147

    aput v5, v1, v4

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 24
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 25
    sput-object v0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090305

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090367

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x2

    .line 64
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 316
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mDirtyFlags:J

    .line 65
    sget-object v1, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0x9

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x6

    .line 66
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->cardAction:Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

    .line 67
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->cardAction:Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    .line 68
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->cash:Landroid/support/v7/widget/CardView;

    .line 69
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->cash:Landroid/support/v7/widget/CardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 70
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mboundView0:Landroid/support/design/widget/CoordinatorLayout;

    .line 71
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mboundView0:Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 72
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mboundView1:Landroid/widget/LinearLayout;

    .line 73
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mboundView1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 74
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mboundView4:Landroid/support/v7/widget/CardView;

    .line 75
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mboundView4:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 76
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->req:Landroid/support/v7/widget/CardView;

    .line 77
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->req:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x7

    .line 78
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->scroll:Landroid/support/v4/widget/NestedScrollView;

    const/16 v0, 0x8

    .line 79
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->support:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v0, 0x5

    .line 80
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->toolbarBlock:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    .line 81
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->toolbarBlock:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    .line 82
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->setRootTag(Landroid/view/View;)V

    .line 84
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;
    .locals 1

    .line 336
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;
    .locals 2

    const-string v0, "layout/activity_first_refill_0"

    .line 340
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "view tag isn\'t correct on view:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 343
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;
    .locals 1

    .line 328
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;
    .locals 3

    const v0, 0x7f0c003e

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 332
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;
    .locals 1

    .line 320
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;
    .locals 1

    const v0, 0x7f0c003e

    .line 324
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;

    return-object p0
.end method

.method private onChangeCardAction(Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 202
    monitor-enter p0

    .line 203
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mDirtyFlags:J

    .line 204
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeToolbarBlock(Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 211
    monitor-enter p0

    .line 212
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mDirtyFlags:J

    .line 213
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected executeBindings()V
    .locals 19

    move-object/from16 v1, p0

    .line 222
    monitor-enter p0

    .line 223
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 224
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mDirtyFlags:J

    .line 225
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mToolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    .line 228
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/FirstRefillHandler;

    .line 229
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mActions:Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;

    .line 231
    iget-object v9, v1, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mAbility:Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

    const-wide/16 v10, 0x48

    and-long v12, v2, v10

    cmp-long v10, v12, v4

    const/4 v11, 0x0

    if-eqz v10, :cond_3

    if-eqz v7, :cond_3

    .line 242
    iget-object v10, v1, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mHandlerOnCashPressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding$OnClickListenerImpl;

    if-nez v10, :cond_0

    new-instance v10, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding$OnClickListenerImpl;

    invoke-direct {v10}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding$OnClickListenerImpl;-><init>()V

    iput-object v10, v1, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mHandlerOnCashPressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding$OnClickListenerImpl;

    goto :goto_0

    :cond_0
    iget-object v10, v1, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mHandlerOnCashPressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding$OnClickListenerImpl;

    :goto_0
    invoke-virtual {v10, v7}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding$OnClickListenerImpl;->setValue(Lru/rocketbank/r2d2/data/binding/FirstRefillHandler;)Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding$OnClickListenerImpl;

    move-result-object v11

    .line 244
    iget-object v10, v1, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mHandlerOnSupportPressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding$OnClickListenerImpl1;

    if-nez v10, :cond_1

    new-instance v10, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding$OnClickListenerImpl1;

    invoke-direct {v10}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding$OnClickListenerImpl1;-><init>()V

    iput-object v10, v1, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mHandlerOnSupportPressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding$OnClickListenerImpl1;

    goto :goto_1

    :cond_1
    iget-object v10, v1, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mHandlerOnSupportPressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding$OnClickListenerImpl1;

    :goto_1
    invoke-virtual {v10, v7}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding$OnClickListenerImpl1;->setValue(Lru/rocketbank/r2d2/data/binding/FirstRefillHandler;)Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding$OnClickListenerImpl1;

    move-result-object v10

    .line 246
    iget-object v14, v1, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mHandlerOnReqPressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding$OnClickListenerImpl2;

    if-nez v14, :cond_2

    new-instance v14, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding$OnClickListenerImpl2;

    invoke-direct {v14}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding$OnClickListenerImpl2;-><init>()V

    iput-object v14, v1, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mHandlerOnReqPressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding$OnClickListenerImpl2;

    goto :goto_2

    :cond_2
    iget-object v14, v1, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mHandlerOnReqPressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding$OnClickListenerImpl2;

    :goto_2
    invoke-virtual {v14, v7}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding$OnClickListenerImpl2;->setValue(Lru/rocketbank/r2d2/data/binding/FirstRefillHandler;)Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding$OnClickListenerImpl2;

    move-result-object v14

    goto :goto_3

    :cond_3
    move-object v10, v11

    move-object v14, v10

    :goto_3
    const-wide/16 v15, 0x60

    and-long v17, v2, v15

    cmp-long v15, v17, v4

    if-eqz v15, :cond_4

    .line 257
    iget-object v15, v1, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->cardAction:Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

    invoke-virtual {v15, v9}, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->setAbility(Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;)V

    :cond_4
    const-wide/16 v15, 0x50

    and-long v17, v2, v15

    cmp-long v9, v17, v4

    if-eqz v9, :cond_5

    .line 262
    iget-object v9, v1, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->cardAction:Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

    invoke-virtual {v9, v8}, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->setActions(Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;)V

    :cond_5
    cmp-long v8, v12, v4

    if-eqz v8, :cond_6

    .line 267
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->cash:Landroid/support/v7/widget/CardView;

    invoke-virtual {v8, v11}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mboundView4:Landroid/support/v7/widget/CardView;

    invoke-virtual {v8, v10}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->req:Landroid/support/v7/widget/CardView;

    invoke-virtual {v8, v14}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->toolbarBlock:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v8, v7}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V

    :cond_6
    const-wide/16 v7, 0x44

    and-long v9, v2, v7

    cmp-long v2, v9, v4

    if-eqz v2, :cond_7

    .line 275
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->toolbarBlock:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v2, v6}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;)V

    .line 277
    :cond_7
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->toolbarBlock:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-static {v2}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    .line 278
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->cardAction:Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

    invoke-static {v2}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 225
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getAbility()Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;
    .locals 1

    .line 180
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mAbility:Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

    return-object v0
.end method

.method public getActions()Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;
    .locals 1

    .line 168
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mActions:Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;

    return-object v0
.end method

.method public getHandler()Lru/rocketbank/r2d2/data/binding/FirstRefillHandler;
    .locals 1

    .line 156
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/FirstRefillHandler;

    return-object v0
.end method

.method public getToolbarBinding()Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;
    .locals 1

    .line 144
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mToolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 99
    monitor-enter p0

    .line 100
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v0, 0x1

    if-eqz v4, :cond_0

    .line 101
    monitor-exit p0

    return v0

    .line 103
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->toolbarBlock:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->hasPendingBindings()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 107
    :cond_1
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->cardAction:Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->hasPendingBindings()Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 103
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 89
    monitor-enter p0

    const-wide/16 v0, 0x40

    .line 90
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mDirtyFlags:J

    .line 91
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->toolbarBlock:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->invalidateAll()V

    .line 93
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->cardAction:Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->invalidateAll()V

    .line 94
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 91
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 196
    :pswitch_0
    check-cast p2, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->onChangeToolbarBlock(Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;I)Z

    move-result p1

    return p1

    .line 194
    :pswitch_1
    check-cast p2, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->onChangeCardAction(Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAbility(Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;)V
    .locals 6

    .line 171
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mAbility:Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

    .line 172
    monitor-enter p0

    .line 173
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x20

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mDirtyFlags:J

    .line 174
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 175
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->notifyPropertyChanged(I)V

    .line 176
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 174
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setActions(Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;)V
    .locals 6

    .line 159
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mActions:Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;

    .line 160
    monitor-enter p0

    .line 161
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mDirtyFlags:J

    .line 162
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    .line 163
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->notifyPropertyChanged(I)V

    .line 164
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 162
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setHandler(Lru/rocketbank/r2d2/data/binding/FirstRefillHandler;)V
    .locals 6

    .line 147
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/FirstRefillHandler;

    .line 148
    monitor-enter p0

    .line 149
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mDirtyFlags:J

    .line 150
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x28

    .line 151
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->notifyPropertyChanged(I)V

    .line 152
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 150
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 185
    invoke-super {p0, p1}, Landroid/databinding/ViewDataBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 186
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->toolbarBlock:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 187
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->cardAction:Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;)V
    .locals 6

    .line 135
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mToolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    .line 136
    monitor-enter p0

    .line 137
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->mDirtyFlags:J

    .line 138
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x54

    .line 139
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->notifyPropertyChanged(I)V

    .line 140
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 138
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x54

    if-ne v1, p1, :cond_0

    .line 117
    check-cast p2, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x28

    if-ne v1, p1, :cond_1

    .line 120
    check-cast p2, Lru/rocketbank/r2d2/data/binding/FirstRefillHandler;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/FirstRefillHandler;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v1, p1, :cond_2

    .line 123
    check-cast p2, Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->setActions(Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;)V

    goto :goto_0

    :cond_2
    if-ne v0, p1, :cond_3

    .line 126
    check-cast p2, Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;->setAbility(Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
