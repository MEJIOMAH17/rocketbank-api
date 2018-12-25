.class public Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ActivityCardLimitBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final card:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

.field public final cash:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

.field public final cashAbroad:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

.field public final content:Landroid/widget/LinearLayout;

.field public final header:Landroid/widget/FrameLayout;

.field public final imageView2:Landroid/widget/ImageView;

.field public final includeToolbar:Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

.field public final internet:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

.field private mData:Lru/rocketbank/r2d2/activities/card/CardLimits;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView1:Landroid/widget/LinearLayout;

.field public final scrollView:Landroid/widget/ScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 15
    new-instance v0, Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    .line 16
    sput-object v0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "card_limit_item"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "card_limit_item"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "card_limit_item"

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "card_limit_item"

    const/4 v7, 0x3

    aput-object v3, v2, v7

    new-array v3, v1, [I

    fill-array-data v3, :array_0

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-virtual {v0, v5, v2, v3, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 20
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "include_toolbar"

    aput-object v2, v1, v4

    new-array v2, v5, [I

    aput v6, v2, v4

    new-array v3, v5, [I

    const v5, 0x7f0c010d

    aput v5, v3, v4

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 24
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 25
    sput-object v0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090308

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090105

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901ae

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901cd

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    :array_0
    .array-data 4
        0x3
        0x4
        0x5
        0x6
    .end array-data

    :array_1
    .array-data 4
        0x7f0c007d
        0x7f0c007d
        0x7f0c007d
        0x7f0c007d
    .end array-data
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x5

    .line 61
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 267
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->mDirtyFlags:J

    .line 62
    sget-object v1, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0xb

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x3

    .line 63
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->card:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    .line 64
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->card:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    .line 65
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->cash:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    .line 66
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->cash:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    const/4 v0, 0x6

    .line 67
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->cashAbroad:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    .line 68
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->cashAbroad:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    const/16 v0, 0x8

    .line 69
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->content:Landroid/widget/LinearLayout;

    const/16 v0, 0x9

    .line 70
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->header:Landroid/widget/FrameLayout;

    const/16 v0, 0xa

    .line 71
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->imageView2:Landroid/widget/ImageView;

    const/4 v0, 0x2

    .line 72
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->includeToolbar:Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    .line 73
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->includeToolbar:Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    const/4 v0, 0x4

    .line 74
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->internet:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    .line 75
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->internet:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    const/4 v0, 0x0

    .line 76
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 77
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->mboundView0:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 78
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->mboundView1:Landroid/widget/LinearLayout;

    .line 79
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->mboundView1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x7

    .line 80
    aget-object p1, p1, v0

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->scrollView:Landroid/widget/ScrollView;

    .line 81
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->setRootTag(Landroid/view/View;)V

    .line 83
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;
    .locals 1

    .line 287
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;
    .locals 2

    const-string v0, "layout/activity_card_limit_0"

    .line 291
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
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

    .line 294
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;
    .locals 1

    .line 279
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;
    .locals 3

    const v0, 0x7f0c002a

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 283
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;
    .locals 1

    .line 271
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;
    .locals 1

    const v0, 0x7f0c002a

    .line 275
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;

    return-object p0
.end method

.method private onChangeCard(Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 177
    monitor-enter p0

    .line 178
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->mDirtyFlags:J

    .line 179
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

.method private onChangeCash(Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 213
    monitor-enter p0

    .line 214
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->mDirtyFlags:J

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

.method private onChangeCashAbroad(Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 204
    monitor-enter p0

    .line 205
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->mDirtyFlags:J

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

.method private onChangeIncludeToolbar(Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 186
    monitor-enter p0

    .line 187
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->mDirtyFlags:J

    .line 188
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

.method private onChangeInternet(Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 195
    monitor-enter p0

    .line 196
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->mDirtyFlags:J

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


# virtual methods
.method protected executeBindings()V
    .locals 10

    .line 224
    monitor-enter p0

    .line 225
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 226
    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->mDirtyFlags:J

    .line 227
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->mData:Lru/rocketbank/r2d2/activities/card/CardLimits;

    const-wide/16 v5, 0x60

    and-long v7, v0, v5

    cmp-long v0, v7, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    .line 240
    invoke-virtual {v4}, Lru/rocketbank/r2d2/activities/card/CardLimits;->getCashAbroad()Lru/rocketbank/r2d2/activities/card/CardLimitData;

    move-result-object v1

    .line 242
    invoke-virtual {v4}, Lru/rocketbank/r2d2/activities/card/CardLimits;->getCash()Lru/rocketbank/r2d2/activities/card/CardLimitData;

    move-result-object v0

    .line 244
    invoke-virtual {v4}, Lru/rocketbank/r2d2/activities/card/CardLimits;->getInternet()Lru/rocketbank/r2d2/activities/card/CardLimitData;

    move-result-object v5

    .line 246
    invoke-virtual {v4}, Lru/rocketbank/r2d2/activities/card/CardLimits;->getCard()Lru/rocketbank/r2d2/activities/card/CardLimitData;

    move-result-object v4

    move-object v9, v4

    move-object v4, v1

    move-object v1, v9

    goto :goto_0

    :cond_0
    move-object v0, v1

    move-object v4, v0

    move-object v5, v4

    :goto_0
    cmp-long v6, v7, v2

    if-eqz v6, :cond_1

    .line 253
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->card:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    invoke-virtual {v2, v1}, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->setData(Lru/rocketbank/r2d2/activities/card/CardLimitData;)V

    .line 254
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->cash:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->setData(Lru/rocketbank/r2d2/activities/card/CardLimitData;)V

    .line 255
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->cashAbroad:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    invoke-virtual {v0, v4}, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->setData(Lru/rocketbank/r2d2/activities/card/CardLimitData;)V

    .line 256
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->internet:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    invoke-virtual {v0, v5}, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->setData(Lru/rocketbank/r2d2/activities/card/CardLimitData;)V

    .line 258
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->includeToolbar:Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    invoke-static {v0}, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    .line 259
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->card:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    invoke-static {v0}, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    .line 260
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->internet:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    invoke-static {v0}, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    .line 261
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->cash:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    invoke-static {v0}, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    .line 262
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->cashAbroad:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    invoke-static {v0}, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    return-void

    :catchall_0
    move-exception v0

    .line 227
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getData()Lru/rocketbank/r2d2/activities/card/CardLimits;
    .locals 1

    .line 146
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->mData:Lru/rocketbank/r2d2/activities/card/CardLimits;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v0, 0x1

    if-eqz v4, :cond_0

    .line 103
    monitor-exit p0

    return v0

    .line 105
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->includeToolbar:Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;->hasPendingBindings()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 109
    :cond_1
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->card:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->hasPendingBindings()Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 112
    :cond_2
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->internet:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->hasPendingBindings()Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    .line 115
    :cond_3
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->cash:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->hasPendingBindings()Z

    move-result v1

    if-eqz v1, :cond_4

    return v0

    .line 118
    :cond_4
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->cashAbroad:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->hasPendingBindings()Z

    move-result v1

    if-eqz v1, :cond_5

    return v0

    :cond_5
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 105
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 88
    monitor-enter p0

    const-wide/16 v0, 0x40

    .line 89
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->mDirtyFlags:J

    .line 90
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->includeToolbar:Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;->invalidateAll()V

    .line 92
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->card:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->invalidateAll()V

    .line 93
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->internet:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->invalidateAll()V

    .line 94
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->cash:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->invalidateAll()V

    .line 95
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->cashAbroad:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->invalidateAll()V

    .line 96
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 90
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

    .line 171
    :pswitch_0
    check-cast p2, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->onChangeCash(Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;I)Z

    move-result p1

    return p1

    .line 169
    :pswitch_1
    check-cast p2, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->onChangeCashAbroad(Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;I)Z

    move-result p1

    return p1

    .line 167
    :pswitch_2
    check-cast p2, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->onChangeInternet(Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;I)Z

    move-result p1

    return p1

    .line 165
    :pswitch_3
    check-cast p2, Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->onChangeIncludeToolbar(Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;I)Z

    move-result p1

    return p1

    .line 163
    :pswitch_4
    check-cast p2, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->onChangeCard(Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setData(Lru/rocketbank/r2d2/activities/card/CardLimits;)V
    .locals 6

    .line 137
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->mData:Lru/rocketbank/r2d2/activities/card/CardLimits;

    .line 138
    monitor-enter p0

    .line 139
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x20

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->mDirtyFlags:J

    .line 140
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 141
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->notifyPropertyChanged(I)V

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

.method public setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 151
    invoke-super {p0, p1}, Landroid/databinding/ViewDataBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 152
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->includeToolbar:Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 153
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->card:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 154
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->internet:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 155
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->cash:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 156
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->cashAbroad:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x18

    if-ne v0, p1, :cond_0

    .line 128
    check-cast p2, Lru/rocketbank/r2d2/activities/card/CardLimits;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->setData(Lru/rocketbank/r2d2/activities/card/CardLimits;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
