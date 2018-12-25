.class public Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;
.super Landroid/databinding/ViewDataBinding;
.source "FragmentCheckBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/databinding/FragmentCheckBinding$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final cardPhoto:Lru/rocketbank/core/widgets/RocketTextView;

.field public final creditCard:Lru/rocketbank/core/widgets/CreditCardView;

.field private mAbility:Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

.field private mActions:Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;

.field private mActionsOnPressedPhotoAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentCheckBinding$OnClickListenerImpl;

.field private mDirtyFlags:J

.field private mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

.field private mToolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

.field public final nestedScrollView:Landroid/widget/ScrollView;

.field public final newNext:Landroid/widget/Button;

.field public final rocketTextView:Lru/rocketbank/core/widgets/RocketTextView;

.field public final textViewInputCardDigitsHint:Lru/rocketbank/core/widgets/RocketTextView;

.field public final toolbarInclude:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    .line 16
    sput-object v0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "layout_toolbar_with_button"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [I

    const/4 v5, 0x4

    aput v5, v3, v4

    new-array v1, v1, [I

    const v5, 0x7f0c0147

    aput v5, v1, v4

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 20
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 21
    sput-object v0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090270

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903a3

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090112

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090275

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x4

    .line 60
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 355
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mDirtyFlags:J

    .line 61
    sget-object v1, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0x9

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x3

    .line 62
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->cardPhoto:Lru/rocketbank/core/widgets/RocketTextView;

    .line 63
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->cardPhoto:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x7

    .line 64
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/CreditCardView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->creditCard:Lru/rocketbank/core/widgets/CreditCardView;

    const/4 v1, 0x0

    .line 65
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 66
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mboundView0:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x2

    .line 67
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    .line 68
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x5

    .line 69
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->nestedScrollView:Landroid/widget/ScrollView;

    const/16 v1, 0x8

    .line 70
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->newNext:Landroid/widget/Button;

    const/4 v1, 0x1

    .line 71
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->rocketTextView:Lru/rocketbank/core/widgets/RocketTextView;

    .line 72
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->rocketTextView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x6

    .line 73
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->textViewInputCardDigitsHint:Lru/rocketbank/core/widgets/RocketTextView;

    .line 74
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->toolbarInclude:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    .line 75
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->toolbarInclude:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    .line 76
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->setRootTag(Landroid/view/View;)V

    .line 78
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;
    .locals 1

    .line 375
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;
    .locals 2

    const-string v0, "layout/fragment_check_0"

    .line 379
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
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

    .line 382
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;
    .locals 1

    .line 367
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;
    .locals 3

    const v0, 0x7f0c00cd

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 371
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;
    .locals 1

    .line 359
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;
    .locals 1

    const v0, 0x7f0c00cd

    .line 363
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;

    return-object p0
.end method

.method private onChangeAbilityNfcVisible(Landroid/databinding/ObservableInt;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 222
    monitor-enter p0

    .line 223
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mDirtyFlags:J

    .line 224
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

.method private onChangeAbilityOrVisible(Landroid/databinding/ObservableInt;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 195
    monitor-enter p0

    .line 196
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mDirtyFlags:J

    .line 197
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

.method private onChangeAbilityPhotoVisible(Landroid/databinding/ObservableInt;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 213
    monitor-enter p0

    .line 214
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mDirtyFlags:J

    .line 215
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

.method private onChangeToolbarInclude(Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 204
    monitor-enter p0

    .line 205
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mDirtyFlags:J

    .line 206
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
    .locals 25

    move-object/from16 v1, p0

    .line 233
    monitor-enter p0

    .line 234
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 235
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mDirtyFlags:J

    .line 236
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mToolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    .line 241
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mActions:Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;

    .line 242
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    .line 244
    iget-object v9, v1, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mAbility:Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

    const-wide/16 v10, 0x120

    and-long v12, v2, v10

    cmp-long v10, v12, v4

    if-eqz v10, :cond_1

    if-eqz v7, :cond_1

    .line 257
    iget-object v10, v1, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mActionsOnPressedPhotoAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentCheckBinding$OnClickListenerImpl;

    if-nez v10, :cond_0

    new-instance v10, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding$OnClickListenerImpl;

    invoke-direct {v10}, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding$OnClickListenerImpl;-><init>()V

    iput-object v10, v1, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mActionsOnPressedPhotoAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentCheckBinding$OnClickListenerImpl;

    goto :goto_0

    :cond_0
    iget-object v10, v1, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mActionsOnPressedPhotoAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentCheckBinding$OnClickListenerImpl;

    :goto_0
    invoke-virtual {v10, v7}, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding$OnClickListenerImpl;->setValue(Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;)Lru/rocketbank/r2d2/databinding/FragmentCheckBinding$OnClickListenerImpl;

    move-result-object v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    const-wide/16 v14, 0x18d

    and-long v16, v2, v14

    cmp-long v10, v16, v4

    const-wide/16 v14, 0x188

    const-wide/16 v16, 0x184

    const-wide/16 v18, 0x181

    const/4 v11, 0x0

    if-eqz v10, :cond_8

    and-long v21, v2, v18

    cmp-long v10, v21, v4

    if-eqz v10, :cond_3

    if-eqz v9, :cond_2

    .line 269
    invoke-virtual {v9}, Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;->getOrVisible()Landroid/databinding/ObservableInt;

    move-result-object v10

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    .line 271
    :goto_2
    invoke-virtual {v1, v11, v10}, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v10, :cond_3

    .line 276
    invoke-virtual {v10}, Landroid/databinding/ObservableInt;->get()I

    move-result v10

    goto :goto_3

    :cond_3
    move v10, v11

    :goto_3
    and-long v21, v2, v16

    cmp-long v23, v21, v4

    if-eqz v23, :cond_5

    if-eqz v9, :cond_4

    .line 283
    invoke-virtual {v9}, Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;->getPhotoVisible()Landroid/databinding/ObservableInt;

    move-result-object v21

    move-object/from16 v11, v21

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    :goto_4
    const/4 v4, 0x2

    .line 285
    invoke-virtual {v1, v4, v11}, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v11, :cond_5

    .line 290
    invoke-virtual {v11}, Landroid/databinding/ObservableInt;->get()I

    move-result v4

    move v11, v4

    goto :goto_5

    :cond_5
    const/4 v11, 0x0

    :goto_5
    and-long v4, v2, v14

    const-wide/16 v21, 0x0

    cmp-long v23, v4, v21

    if-eqz v23, :cond_7

    if-eqz v9, :cond_6

    .line 297
    invoke-virtual {v9}, Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;->getNfcVisible()Landroid/databinding/ObservableInt;

    move-result-object v4

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    :goto_6
    const/4 v5, 0x3

    .line 299
    invoke-virtual {v1, v5, v4}, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v4, :cond_7

    .line 304
    invoke-virtual {v4}, Landroid/databinding/ObservableInt;->get()I

    move-result v4

    goto :goto_7

    :cond_7
    const/4 v4, 0x0

    :goto_7
    const-wide/16 v20, 0x0

    goto :goto_8

    :cond_8
    move-wide/from16 v20, v4

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_8
    cmp-long v5, v12, v20

    if-eqz v5, :cond_9

    .line 312
    iget-object v5, v1, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->cardPhoto:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v5, v7}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    and-long v12, v2, v16

    cmp-long v5, v12, v20

    if-eqz v5, :cond_a

    .line 317
    iget-object v5, v1, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->cardPhoto:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v5, v11}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    :cond_a
    and-long v11, v2, v18

    cmp-long v5, v11, v20

    if-eqz v5, :cond_b

    .line 322
    iget-object v5, v1, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v5, v10}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    :cond_b
    and-long v9, v2, v14

    cmp-long v5, v9, v20

    if-eqz v5, :cond_c

    .line 327
    iget-object v5, v1, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->rocketTextView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v5, v4}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    :cond_c
    const-wide/16 v4, 0x140

    and-long v9, v2, v4

    cmp-long v4, v9, v20

    if-eqz v4, :cond_d

    .line 332
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->toolbarInclude:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v4, v8}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V

    :cond_d
    const-wide/16 v4, 0x110

    and-long v7, v2, v4

    cmp-long v2, v7, v20

    if-eqz v2, :cond_e

    .line 337
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->toolbarInclude:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v2, v6}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;)V

    .line 339
    :cond_e
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->toolbarInclude:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-static {v2}, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 236
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getAbility()Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;
    .locals 1

    .line 170
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mAbility:Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

    return-object v0
.end method

.method public getActions()Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;
    .locals 1

    .line 146
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mActions:Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;

    return-object v0
.end method

.method public getHandler()Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;
    .locals 1

    .line 158
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    return-object v0
.end method

.method public getToolbarBinding()Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;
    .locals 1

    .line 134
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mToolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v0, 0x1

    if-eqz v4, :cond_0

    .line 94
    monitor-exit p0

    return v0

    .line 96
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->toolbarInclude:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->hasPendingBindings()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 96
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 83
    monitor-enter p0

    const-wide/16 v0, 0x100

    .line 84
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mDirtyFlags:J

    .line 85
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->toolbarInclude:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->invalidateAll()V

    .line 87
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 85
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

    .line 189
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->onChangeAbilityNfcVisible(Landroid/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 187
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->onChangeAbilityPhotoVisible(Landroid/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 185
    :pswitch_2
    check-cast p2, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->onChangeToolbarInclude(Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;I)Z

    move-result p1

    return p1

    .line 183
    :pswitch_3
    check-cast p2, Landroid/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->onChangeAbilityOrVisible(Landroid/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAbility(Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;)V
    .locals 6

    .line 161
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mAbility:Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

    .line 162
    monitor-enter p0

    .line 163
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mDirtyFlags:J

    .line 164
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 165
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->notifyPropertyChanged(I)V

    .line 166
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 164
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setActions(Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;)V
    .locals 6

    .line 137
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mActions:Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;

    .line 138
    monitor-enter p0

    .line 139
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x20

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mDirtyFlags:J

    .line 140
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    .line 141
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->notifyPropertyChanged(I)V

    .line 142
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 140
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V
    .locals 6

    .line 149
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    .line 150
    monitor-enter p0

    .line 151
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x40

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mDirtyFlags:J

    .line 152
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x28

    .line 153
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->notifyPropertyChanged(I)V

    .line 154
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 152
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 175
    invoke-super {p0, p1}, Landroid/databinding/ViewDataBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 176
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->toolbarInclude:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;)V
    .locals 6

    .line 125
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mToolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->mDirtyFlags:J

    .line 128
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x54

    .line 129
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->notifyPropertyChanged(I)V

    .line 130
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 128
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

    .line 107
    check-cast p2, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    .line 110
    check-cast p2, Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->setActions(Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x28

    if-ne v1, p1, :cond_2

    .line 113
    check-cast p2, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V

    goto :goto_0

    :cond_2
    if-ne v0, p1, :cond_3

    .line 116
    check-cast p2, Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;->setAbility(Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
