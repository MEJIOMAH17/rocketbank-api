.class public Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ActivityDiscountDetailsBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding$OnClickListenerImpl1;,
        Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final howGet:Lru/rocketbank/core/widgets/RocketTextView;

.field public final imageView:Landroid/widget/ImageView;

.field public final include:Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

.field private mData:Lru/rocketbank/r2d2/data/binding/discount/DiscountData;

.field private mDirtyFlags:J

.field private mListener:Lru/rocketbank/r2d2/data/binding/discount/DiscountListener;

.field private mListenerDiscountButtonClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding$OnClickListenerImpl;

.field private mListenerLinkClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding$OnClickListenerImpl1;

.field private final mboundView0:Landroid/widget/FrameLayout;

.field public final observableScrollView:Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;

.field public final promoCodeText:Lru/rocketbank/core/widgets/RocketTextView;

.field public final promoDescription:Lru/rocketbank/core/widgets/RocketTextView;

.field public final promoLayout:Landroid/widget/LinearLayout;

.field public final promoTitle:Lru/rocketbank/core/widgets/RocketTextView;

.field public final promoTitleCopy:Lru/rocketbank/core/widgets/RocketTextView;

.field public final promocodeText:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    .line 16
    sput-object v0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "include_toolbar"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [I

    const/4 v5, 0x7

    aput v5, v3, v4

    new-array v1, v1, [I

    const v5, 0x7f0c010d

    aput v5, v1, v4

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 20
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 21
    sput-object v0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090286

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901cc

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901bd

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x7

    .line 60
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 439
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mDirtyFlags:J

    .line 61
    sget-object v1, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0xb

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/16 v1, 0xa

    .line 62
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->howGet:Lru/rocketbank/core/widgets/RocketTextView;

    const/16 v1, 0x9

    .line 63
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->imageView:Landroid/widget/ImageView;

    .line 64
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->include:Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    .line 65
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->include:Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    const/4 v0, 0x0

    .line 66
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mboundView0:Landroid/widget/FrameLayout;

    .line 67
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mboundView0:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x8

    .line 68
    aget-object v0, p1, v0

    check-cast v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->observableScrollView:Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollView;

    const/4 v0, 0x5

    .line 69
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->promoCodeText:Lru/rocketbank/core/widgets/RocketTextView;

    .line 70
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->promoCodeText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 71
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->promoDescription:Lru/rocketbank/core/widgets/RocketTextView;

    .line 72
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->promoDescription:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 73
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->promoLayout:Landroid/widget/LinearLayout;

    .line 74
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->promoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 75
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->promoTitle:Lru/rocketbank/core/widgets/RocketTextView;

    .line 76
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->promoTitle:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 77
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->promoTitleCopy:Lru/rocketbank/core/widgets/RocketTextView;

    .line 78
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->promoTitleCopy:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x6

    .line 79
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->promocodeText:Lru/rocketbank/core/widgets/RocketTextView;

    .line 80
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->promocodeText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 81
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->setRootTag(Landroid/view/View;)V

    .line 83
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;
    .locals 1

    .line 459
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;
    .locals 2

    const-string v0, "layout/activity_discount_details_0"

    .line 463
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
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

    .line 466
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;
    .locals 1

    .line 451
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;
    .locals 3

    const v0, 0x7f0c0039

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 455
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;
    .locals 1

    .line 443
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;
    .locals 1

    const v0, 0x7f0c0039

    .line 447
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;

    return-object p0
.end method

.method private onChangeDataPromoCode(Landroid/databinding/ObservableField;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 176
    monitor-enter p0

    .line 177
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mDirtyFlags:J

    .line 178
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

.method private onChangeDataPromoCodeVisibility(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 194
    monitor-enter p0

    .line 195
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mDirtyFlags:J

    .line 196
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

.method private onChangeDataPromoDescription(Landroid/databinding/ObservableField;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 230
    monitor-enter p0

    .line 231
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x40

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mDirtyFlags:J

    .line 232
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

.method private onChangeDataPromoLink(Landroid/databinding/ObservableField;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 203
    monitor-enter p0

    .line 204
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mDirtyFlags:J

    .line 205
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

.method private onChangeDataPromoTextCopy(Landroid/databinding/ObservableField;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 221
    monitor-enter p0

    .line 222
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mDirtyFlags:J

    .line 223
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

.method private onChangeDataPromoTitle(Landroid/databinding/ObservableField;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 185
    monitor-enter p0

    .line 186
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mDirtyFlags:J

    .line 187
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

.method private onChangeInclude(Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 212
    monitor-enter p0

    .line 213
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mDirtyFlags:J

    .line 214
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
    .locals 33

    move-object/from16 v1, p0

    .line 241
    monitor-enter p0

    .line 242
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 243
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mDirtyFlags:J

    .line 244
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mListener:Lru/rocketbank/r2d2/data/binding/discount/DiscountListener;

    .line 258
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mData:Lru/rocketbank/r2d2/data/binding/discount/DiscountData;

    const-wide/16 v8, 0x280

    and-long v10, v2, v8

    cmp-long v12, v10, v4

    if-eqz v12, :cond_2

    if-eqz v6, :cond_2

    .line 269
    iget-object v11, v1, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mListenerDiscountButtonClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding$OnClickListenerImpl;

    if-nez v11, :cond_0

    new-instance v11, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding$OnClickListenerImpl;

    invoke-direct {v11}, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding$OnClickListenerImpl;-><init>()V

    iput-object v11, v1, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mListenerDiscountButtonClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding$OnClickListenerImpl;

    goto :goto_0

    :cond_0
    iget-object v11, v1, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mListenerDiscountButtonClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding$OnClickListenerImpl;

    :goto_0
    invoke-virtual {v11, v6}, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding$OnClickListenerImpl;->setValue(Lru/rocketbank/r2d2/data/binding/discount/DiscountListener;)Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding$OnClickListenerImpl;

    move-result-object v11

    .line 271
    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mListenerLinkClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding$OnClickListenerImpl1;

    if-nez v12, :cond_1

    new-instance v12, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding$OnClickListenerImpl1;

    invoke-direct {v12}, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding$OnClickListenerImpl1;-><init>()V

    iput-object v12, v1, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mListenerLinkClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding$OnClickListenerImpl1;

    goto :goto_1

    :cond_1
    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mListenerLinkClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding$OnClickListenerImpl1;

    :goto_1
    invoke-virtual {v12, v6}, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding$OnClickListenerImpl1;->setValue(Lru/rocketbank/r2d2/data/binding/discount/DiscountListener;)Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding$OnClickListenerImpl1;

    move-result-object v6

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_2
    const-wide/16 v12, 0x36f

    and-long v14, v2, v12

    cmp-long v12, v14, v4

    const-wide/16 v15, 0x320

    const-wide/16 v17, 0x308

    const-wide/16 v19, 0x304

    const-wide/16 v21, 0x302

    const-wide/16 v23, 0x301

    const/4 v10, 0x0

    if-eqz v12, :cond_13

    and-long v26, v2, v23

    cmp-long v12, v26, v4

    if-eqz v12, :cond_4

    if-eqz v7, :cond_3

    .line 281
    iget-object v12, v7, Lru/rocketbank/r2d2/data/binding/discount/DiscountData;->promoCode:Landroid/databinding/ObservableField;

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    .line 283
    :goto_3
    invoke-virtual {v1, v10, v12}, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v12, :cond_4

    .line 288
    invoke-virtual {v12}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    goto :goto_4

    :cond_4
    const/4 v12, 0x0

    :goto_4
    and-long v26, v2, v21

    cmp-long v28, v26, v4

    if-eqz v28, :cond_6

    if-eqz v7, :cond_5

    .line 295
    iget-object v10, v7, Lru/rocketbank/r2d2/data/binding/discount/DiscountData;->promoTitle:Landroid/databinding/ObservableField;

    goto :goto_5

    :cond_5
    const/4 v10, 0x0

    :goto_5
    const/4 v8, 0x1

    .line 297
    invoke-virtual {v1, v8, v10}, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v10, :cond_6

    .line 302
    invoke-virtual {v10}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v10, v8

    goto :goto_6

    :cond_6
    const/4 v10, 0x0

    :goto_6
    and-long v8, v2, v19

    cmp-long v26, v8, v4

    if-eqz v26, :cond_c

    if-eqz v7, :cond_7

    .line 309
    iget-object v13, v7, Lru/rocketbank/r2d2/data/binding/discount/DiscountData;->promoCodeVisibility:Landroid/databinding/ObservableBoolean;

    goto :goto_7

    :cond_7
    const/4 v13, 0x0

    :goto_7
    const/4 v14, 0x2

    .line 311
    invoke-virtual {v1, v14, v13}, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v13, :cond_8

    .line 316
    invoke-virtual {v13}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v13

    goto :goto_8

    :cond_8
    const/4 v13, 0x0

    :goto_8
    cmp-long v14, v8, v4

    if-eqz v14, :cond_a

    if-eqz v13, :cond_9

    const-wide/16 v8, 0x800

    or-long v26, v2, v8

    :goto_9
    move-wide/from16 v2, v26

    goto :goto_a

    :cond_9
    const-wide/16 v8, 0x400

    or-long v26, v2, v8

    goto :goto_9

    :cond_a
    :goto_a
    if-eqz v13, :cond_b

    const/16 v29, 0x0

    goto :goto_b

    :cond_b
    const/16 v8, 0x8

    move/from16 v29, v8

    :goto_b
    move/from16 v8, v29

    move/from16 v29, v13

    goto :goto_c

    :cond_c
    const/4 v8, 0x0

    const/16 v29, 0x0

    :goto_c
    and-long v13, v2, v17

    cmp-long v9, v13, v4

    if-eqz v9, :cond_e

    if-eqz v7, :cond_d

    .line 335
    iget-object v9, v7, Lru/rocketbank/r2d2/data/binding/discount/DiscountData;->promoLink:Landroid/databinding/ObservableField;

    goto :goto_d

    :cond_d
    const/4 v9, 0x0

    :goto_d
    const/4 v13, 0x3

    .line 337
    invoke-virtual {v1, v13, v9}, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v9, :cond_e

    .line 342
    invoke-virtual {v9}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_e

    :cond_e
    const/4 v9, 0x0

    :goto_e
    and-long v13, v2, v15

    cmp-long v26, v13, v4

    if-eqz v26, :cond_10

    if-eqz v7, :cond_f

    .line 349
    iget-object v13, v7, Lru/rocketbank/r2d2/data/binding/discount/DiscountData;->promoTextCopy:Landroid/databinding/ObservableField;

    goto :goto_f

    :cond_f
    const/4 v13, 0x0

    :goto_f
    const/4 v14, 0x5

    .line 351
    invoke-virtual {v1, v14, v13}, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v13, :cond_10

    .line 356
    invoke-virtual {v13}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    goto :goto_10

    :cond_10
    const/4 v13, 0x0

    :goto_10
    const-wide/16 v26, 0x340

    and-long v30, v2, v26

    cmp-long v14, v30, v4

    if-eqz v14, :cond_12

    if-eqz v7, :cond_11

    .line 363
    iget-object v7, v7, Lru/rocketbank/r2d2/data/binding/discount/DiscountData;->promoDescription:Landroid/databinding/ObservableField;

    goto :goto_11

    :cond_11
    const/4 v7, 0x0

    :goto_11
    const/4 v14, 0x6

    .line 365
    invoke-virtual {v1, v14, v7}, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_12

    .line 370
    invoke-virtual {v7}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v14, v9

    move-object v9, v7

    move/from16 v7, v29

    goto :goto_12

    :cond_12
    move-object v14, v9

    move/from16 v7, v29

    const/4 v9, 0x0

    goto :goto_12

    :cond_13
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_12
    and-long v25, v2, v19

    cmp-long v19, v25, v4

    if-eqz v19, :cond_14

    .line 378
    iget-object v15, v1, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->promoCodeText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v15, v7}, Lru/rocketbank/core/widgets/RocketTextView;->setEnabled(Z)V

    .line 379
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->promoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_14
    const-wide/16 v7, 0x280

    and-long v15, v2, v7

    cmp-long v7, v15, v4

    if-eqz v7, :cond_15

    .line 384
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->promoCodeText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v7, v11}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->promocodeText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v7, v6}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_15
    and-long v6, v2, v23

    cmp-long v8, v6, v4

    if-eqz v8, :cond_16

    .line 390
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->promoCodeText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v6, v12}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_16
    const-wide/16 v6, 0x340

    and-long v11, v2, v6

    cmp-long v6, v11, v4

    if-eqz v6, :cond_17

    .line 395
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->promoDescription:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v6, v9}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_17
    and-long v6, v2, v21

    cmp-long v8, v6, v4

    if-eqz v8, :cond_18

    .line 400
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->promoTitle:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v6, v10}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_18
    const-wide/16 v6, 0x320

    and-long v8, v2, v6

    cmp-long v6, v8, v4

    if-eqz v6, :cond_19

    .line 405
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->promoTitleCopy:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v6, v13}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_19
    and-long v6, v2, v17

    cmp-long v2, v6, v4

    if-eqz v2, :cond_1a

    .line 410
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->promocodeText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v14}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 412
    :cond_1a
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->include:Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    invoke-static {v2}, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 244
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getData()Lru/rocketbank/r2d2/data/binding/discount/DiscountData;
    .locals 1

    .line 145
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mData:Lru/rocketbank/r2d2/data/binding/discount/DiscountData;

    return-object v0
.end method

.method public getListener()Lru/rocketbank/r2d2/data/binding/discount/DiscountListener;
    .locals 1

    .line 133
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mListener:Lru/rocketbank/r2d2/data/binding/discount/DiscountListener;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v0, 0x1

    if-eqz v4, :cond_0

    .line 99
    monitor-exit p0

    return v0

    .line 101
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->include:Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;->hasPendingBindings()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 101
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

    const-wide/16 v0, 0x200

    .line 89
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mDirtyFlags:J

    .line 90
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->include:Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;->invalidateAll()V

    .line 92
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->requestRebind()V

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

    .line 170
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->onChangeDataPromoDescription(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 168
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->onChangeDataPromoTextCopy(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 166
    :pswitch_2
    check-cast p2, Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->onChangeInclude(Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;I)Z

    move-result p1

    return p1

    .line 164
    :pswitch_3
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->onChangeDataPromoLink(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 162
    :pswitch_4
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->onChangeDataPromoCodeVisibility(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 160
    :pswitch_5
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->onChangeDataPromoTitle(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 158
    :pswitch_6
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->onChangeDataPromoCode(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setData(Lru/rocketbank/r2d2/data/binding/discount/DiscountData;)V
    .locals 6

    .line 136
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mData:Lru/rocketbank/r2d2/data/binding/discount/DiscountData;

    .line 137
    monitor-enter p0

    .line 138
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x100

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mDirtyFlags:J

    .line 139
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 140
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->notifyPropertyChanged(I)V

    .line 141
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 139
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 150
    invoke-super {p0, p1}, Landroid/databinding/ViewDataBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 151
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->include:Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setListener(Lru/rocketbank/r2d2/data/binding/discount/DiscountListener;)V
    .locals 6

    .line 124
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mListener:Lru/rocketbank/r2d2/data/binding/discount/DiscountListener;

    .line 125
    monitor-enter p0

    .line 126
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->mDirtyFlags:J

    .line 127
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x37

    .line 128
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->notifyPropertyChanged(I)V

    .line 129
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 127
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x37

    if-ne v0, p1, :cond_0

    .line 112
    check-cast p2, Lru/rocketbank/r2d2/data/binding/discount/DiscountListener;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->setListener(Lru/rocketbank/r2d2/data/binding/discount/DiscountListener;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-ne v0, p1, :cond_1

    .line 115
    check-cast p2, Lru/rocketbank/r2d2/data/binding/discount/DiscountData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;->setData(Lru/rocketbank/r2d2/data/binding/discount/DiscountData;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
