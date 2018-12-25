.class public Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;
.super Landroid/databinding/ViewDataBinding;
.source "FragmentTariffDetailsBinding.java"

# interfaces
.implements Landroid/databinding/generated/callback/OnClickListener$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final activate:Lru/rocketbank/core/widgets/RocketAutofitTextView;

.field public final descriptionLink:Lru/rocketbank/core/widgets/RocketTextView;

.field public final headerTariff:Landroid/widget/FrameLayout;

.field public final imageViewInfinity:Landroid/widget/ImageView;

.field public final item1:Lru/rocketbank/r2d2/databinding/TariffItemBinding;

.field public final item2:Lru/rocketbank/r2d2/databinding/TariffItemBinding;

.field public final item3:Lru/rocketbank/r2d2/databinding/TariffItemBinding;

.field public final itemsContainer:Landroid/widget/LinearLayout;

.field private final mCallback2:Landroid/view/View$OnClickListener;

.field private mData:Lru/rocketbank/r2d2/data/binding/tariff/TariffData;

.field private mDirtyFlags:J

.field private mItems:Landroid/databinding/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableList<",
            "Lru/rocketbank/r2d2/data/binding/tariff/TariffItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lru/rocketbank/r2d2/data/binding/tariff/TariffEventsListener;

.field private mListenerOnLinkClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding$OnClickListenerImpl;

.field private final mboundView0:Landroid/widget/FrameLayout;

.field public final month:Lru/rocketbank/core/widgets/RocketTextView;

.field public final price:Lru/rocketbank/core/widgets/RocketTextView;

.field public final tariff:Lru/rocketbank/core/widgets/RocketTextView;

.field public final tariffImg:Landroid/widget/ImageView;

.field public final tariffName:Lme/grantland/widget/AutofitTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    .line 16
    sput-object v0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "tariff_item"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "tariff_item"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "tariff_item"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_0

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 20
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 21
    sput-object v0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901b6

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090378

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090375

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090267

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7
        0x8
        0x9
    .end array-data

    :array_1
    .array-data 4
        0x7f0c01b6
        0x7f0c01b6
        0x7f0c01b6
    .end array-data
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/16 v0, 0xa

    .line 70
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 545
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mDirtyFlags:J

    .line 71
    sget-object v1, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0xe

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x6

    .line 72
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketAutofitTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->activate:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    .line 73
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->activate:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketAutofitTextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x5

    .line 74
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->descriptionLink:Lru/rocketbank/core/widgets/RocketTextView;

    .line 75
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->descriptionLink:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 76
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->headerTariff:Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    .line 77
    aget-object v1, p1, v0

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->imageViewInfinity:Landroid/widget/ImageView;

    .line 78
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->imageViewInfinity:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x7

    .line 79
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/r2d2/databinding/TariffItemBinding;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->item1:Lru/rocketbank/r2d2/databinding/TariffItemBinding;

    .line 80
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->item1:Lru/rocketbank/r2d2/databinding/TariffItemBinding;

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    const/16 v1, 0x8

    .line 81
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/r2d2/databinding/TariffItemBinding;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->item2:Lru/rocketbank/r2d2/databinding/TariffItemBinding;

    .line 82
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->item2:Lru/rocketbank/r2d2/databinding/TariffItemBinding;

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    const/16 v1, 0x9

    .line 83
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/r2d2/databinding/TariffItemBinding;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->item3:Lru/rocketbank/r2d2/databinding/TariffItemBinding;

    .line 84
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->item3:Lru/rocketbank/r2d2/databinding/TariffItemBinding;

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    const/4 v1, 0x4

    .line 85
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->itemsContainer:Landroid/widget/LinearLayout;

    .line 86
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->itemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 87
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mboundView0:Landroid/widget/FrameLayout;

    .line 88
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mboundView0:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0xd

    .line 89
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->month:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v1, 0x3

    .line 90
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->price:Lru/rocketbank/core/widgets/RocketTextView;

    .line 91
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->price:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0xc

    .line 92
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->tariff:Lru/rocketbank/core/widgets/RocketTextView;

    const/16 v1, 0xb

    .line 93
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->tariffImg:Landroid/widget/ImageView;

    const/4 v1, 0x2

    .line 94
    aget-object p1, p1, v1

    check-cast p1, Lme/grantland/widget/AutofitTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->tariffName:Lme/grantland/widget/AutofitTextView;

    .line 95
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->tariffName:Lme/grantland/widget/AutofitTextView;

    invoke-virtual {p1, v2}, Lme/grantland/widget/AutofitTextView;->setTag(Ljava/lang/Object;)V

    .line 96
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->setRootTag(Landroid/view/View;)V

    .line 98
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mCallback2:Landroid/view/View$OnClickListener;

    .line 99
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;
    .locals 1

    .line 565
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;
    .locals 2

    const-string v0, "layout/fragment_tariff_details_0"

    .line 569
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 570
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

    .line 572
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;
    .locals 1

    .line 557
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;
    .locals 3

    const v0, 0x7f0c00fd

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 561
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;
    .locals 1

    .line 549
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;
    .locals 1

    const v0, 0x7f0c00fd

    .line 553
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;

    return-object p0
.end method

.method private onChangeDataButtonColor(Landroid/databinding/ObservableField;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/ObservableField<",
            "Landroid/graphics/drawable/Drawable;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 224
    monitor-enter p0

    .line 225
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mDirtyFlags:J

    .line 226
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

.method private onChangeDataButtonText(Landroid/databinding/ObservableField;I)Z
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

    .line 287
    monitor-enter p0

    .line 288
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x80

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mDirtyFlags:J

    .line 289
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

.method private onChangeDataIsButtonActivate(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 305
    monitor-enter p0

    .line 306
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x200

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mDirtyFlags:J

    .line 307
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

.method private onChangeDataIsSalary(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 251
    monitor-enter p0

    .line 252
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mDirtyFlags:J

    .line 253
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

.method private onChangeDataName(Landroid/databinding/ObservableField;I)Z
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

    .line 242
    monitor-enter p0

    .line 243
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mDirtyFlags:J

    .line 244
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

.method private onChangeDataPriceLabel(Landroid/databinding/ObservableField;I)Z
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

    .line 233
    monitor-enter p0

    .line 234
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mDirtyFlags:J

    .line 235
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

.method private onChangeItem1(Lru/rocketbank/r2d2/databinding/TariffItemBinding;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 278
    monitor-enter p0

    .line 279
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x40

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mDirtyFlags:J

    .line 280
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

.method private onChangeItem2(Lru/rocketbank/r2d2/databinding/TariffItemBinding;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 260
    monitor-enter p0

    .line 261
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mDirtyFlags:J

    .line 262
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

.method private onChangeItem3(Lru/rocketbank/r2d2/databinding/TariffItemBinding;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 269
    monitor-enter p0

    .line 270
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mDirtyFlags:J

    .line 271
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

.method private onChangeItems(Landroid/databinding/ObservableList;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/ObservableList<",
            "Lru/rocketbank/r2d2/data/binding/tariff/TariffItemData;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 296
    monitor-enter p0

    .line 297
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x100

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mDirtyFlags:J

    .line 298
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
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 0

    .line 533
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mListener:Lru/rocketbank/r2d2/data/binding/tariff/TariffEventsListener;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 541
    invoke-interface {p1}, Lru/rocketbank/r2d2/data/binding/tariff/TariffEventsListener;->onChangeTariffClicked()V

    :cond_1
    return-void
.end method

.method protected executeBindings()V
    .locals 32

    move-object/from16 v1, p0

    .line 316
    monitor-enter p0

    .line 317
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 318
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mDirtyFlags:J

    .line 319
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mListener:Lru/rocketbank/r2d2/data/binding/tariff/TariffEventsListener;

    .line 330
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mData:Lru/rocketbank/r2d2/data/binding/tariff/TariffData;

    .line 337
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mItems:Landroid/databinding/ObservableList;

    const-wide/16 v9, 0x1400

    and-long v11, v2, v9

    cmp-long v13, v11, v4

    if-eqz v13, :cond_1

    if-eqz v6, :cond_1

    .line 347
    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mListenerOnLinkClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding$OnClickListenerImpl;

    if-nez v12, :cond_0

    new-instance v12, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding$OnClickListenerImpl;

    invoke-direct {v12}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding$OnClickListenerImpl;-><init>()V

    iput-object v12, v1, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mListenerOnLinkClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding$OnClickListenerImpl;

    goto :goto_0

    :cond_0
    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mListenerOnLinkClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding$OnClickListenerImpl;

    :goto_0
    invoke-virtual {v12, v6}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding$OnClickListenerImpl;->setValue(Lru/rocketbank/r2d2/data/binding/tariff/TariffEventsListener;)Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding$OnClickListenerImpl;

    move-result-object v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    const-wide/16 v12, 0x1a8f

    and-long v14, v2, v12

    cmp-long v12, v14, v4

    const-wide/16 v15, 0x1880

    const-wide/16 v17, 0x1808

    const/4 v11, 0x2

    const-wide/16 v19, 0x1804

    const/4 v9, 0x1

    const-wide/16 v21, 0x1802

    const-wide/16 v23, 0x1801

    const/4 v10, 0x0

    if-eqz v12, :cond_12

    and-long v25, v2, v23

    cmp-long v12, v25, v4

    if-eqz v12, :cond_3

    if-eqz v7, :cond_2

    .line 357
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/tariff/TariffData;->getButtonColor()Landroid/databinding/ObservableField;

    move-result-object v12

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    .line 359
    :goto_2
    invoke-virtual {v1, v10, v12}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v12, :cond_3

    .line 364
    invoke-virtual {v12}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    :goto_3
    and-long v25, v2, v21

    cmp-long v27, v25, v4

    if-eqz v27, :cond_5

    if-eqz v7, :cond_4

    .line 371
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/tariff/TariffData;->getPriceLabel()Landroid/databinding/ObservableField;

    move-result-object v25

    move-object/from16 v10, v25

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    .line 373
    :goto_4
    invoke-virtual {v1, v9, v10}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v10, :cond_5

    .line 378
    invoke-virtual {v10}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    goto :goto_5

    :cond_5
    const/4 v10, 0x0

    :goto_5
    and-long v25, v2, v19

    cmp-long v27, v25, v4

    if-eqz v27, :cond_7

    if-eqz v7, :cond_6

    .line 385
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/tariff/TariffData;->getName()Landroid/databinding/ObservableField;

    move-result-object v25

    move-object/from16 v9, v25

    goto :goto_6

    :cond_6
    const/4 v9, 0x0

    .line 387
    :goto_6
    invoke-virtual {v1, v11, v9}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v9, :cond_7

    .line 392
    invoke-virtual {v9}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_7

    :cond_7
    const/4 v9, 0x0

    :goto_7
    and-long v25, v2, v17

    cmp-long v27, v25, v4

    if-eqz v27, :cond_d

    if-eqz v7, :cond_8

    .line 399
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/tariff/TariffData;->isSalary()Landroid/databinding/ObservableBoolean;

    move-result-object v27

    move-object/from16 v11, v27

    goto :goto_8

    :cond_8
    const/4 v11, 0x0

    :goto_8
    const/4 v13, 0x3

    .line 401
    invoke-virtual {v1, v13, v11}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v11, :cond_9

    .line 406
    invoke-virtual {v11}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v11

    goto :goto_9

    :cond_9
    const/4 v11, 0x0

    :goto_9
    cmp-long v13, v25, v4

    if-eqz v13, :cond_b

    if-eqz v11, :cond_a

    const-wide/16 v13, 0x4000

    or-long v25, v2, v13

    goto :goto_a

    :cond_a
    const-wide/16 v13, 0x2000

    or-long v25, v2, v13

    goto :goto_a

    :cond_b
    move-wide/from16 v25, v2

    :goto_a
    if-eqz v11, :cond_c

    const/4 v2, 0x0

    goto :goto_b

    :cond_c
    const/4 v2, 0x4

    :goto_b
    move v11, v2

    move-wide/from16 v2, v25

    goto :goto_c

    :cond_d
    const/4 v11, 0x0

    :goto_c
    and-long v13, v2, v15

    cmp-long v25, v13, v4

    if-eqz v25, :cond_f

    if-eqz v7, :cond_e

    .line 425
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/tariff/TariffData;->getButtonText()Landroid/databinding/ObservableField;

    move-result-object v13

    goto :goto_d

    :cond_e
    const/4 v13, 0x0

    :goto_d
    const/4 v14, 0x7

    .line 427
    invoke-virtual {v1, v14, v13}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v13, :cond_f

    .line 432
    invoke-virtual {v13}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    goto :goto_e

    :cond_f
    const/4 v13, 0x0

    :goto_e
    const-wide/16 v25, 0x1a00

    and-long v29, v2, v25

    cmp-long v14, v29, v4

    if-eqz v14, :cond_11

    if-eqz v7, :cond_10

    .line 439
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/tariff/TariffData;->isButtonActivate()Landroid/databinding/ObservableBoolean;

    move-result-object v7

    goto :goto_f

    :cond_10
    const/4 v7, 0x0

    :goto_f
    const/16 v14, 0x9

    .line 441
    invoke-virtual {v1, v14, v7}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_11

    .line 446
    invoke-virtual {v7}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v7

    goto :goto_10

    :cond_11
    const/4 v7, 0x0

    goto :goto_10

    :cond_12
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_10
    const-wide/16 v25, 0x1100

    and-long v29, v2, v25

    cmp-long v14, v29, v4

    if-eqz v14, :cond_13

    if-eqz v8, :cond_13

    const/4 v14, 0x1

    .line 456
    invoke-static {v8, v14}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->getFromList(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lru/rocketbank/r2d2/data/binding/tariff/TariffItemData;

    const/4 v15, 0x0

    .line 458
    invoke-static {v8, v15}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->getFromList(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lru/rocketbank/r2d2/data/binding/tariff/TariffItemData;

    const/4 v4, 0x2

    .line 460
    invoke-static {v8, v4}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->getFromList(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/rocketbank/r2d2/data/binding/tariff/TariffItemData;

    goto :goto_11

    :cond_13
    const/4 v4, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_11
    and-long v25, v2, v23

    const-wide/16 v23, 0x0

    cmp-long v5, v25, v23

    if-eqz v5, :cond_14

    .line 467
    iget-object v5, v1, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->activate:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    invoke-static {v5, v12}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_14
    const-wide/16 v25, 0x1a00

    and-long v27, v2, v25

    cmp-long v5, v27, v23

    if-eqz v5, :cond_15

    .line 472
    iget-object v5, v1, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->activate:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    invoke-virtual {v5, v7}, Lru/rocketbank/core/widgets/RocketAutofitTextView;->setEnabled(Z)V

    :cond_15
    const-wide/16 v7, 0x1000

    and-long v25, v2, v7

    cmp-long v5, v25, v23

    if-eqz v5, :cond_16

    .line 477
    iget-object v5, v1, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->activate:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mCallback2:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v7}, Lru/rocketbank/core/widgets/RocketAutofitTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_16
    const-wide/16 v7, 0x1880

    and-long v25, v2, v7

    cmp-long v5, v25, v23

    if-eqz v5, :cond_17

    .line 482
    iget-object v5, v1, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->activate:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    invoke-static {v5, v13}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_17
    const-wide/16 v7, 0x1400

    and-long v12, v2, v7

    cmp-long v5, v12, v23

    if-eqz v5, :cond_18

    .line 487
    iget-object v5, v1, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->descriptionLink:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v5, v6}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_18
    and-long v5, v2, v17

    cmp-long v7, v5, v23

    if-eqz v7, :cond_19

    .line 492
    iget-object v5, v1, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->imageViewInfinity:Landroid/widget/ImageView;

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_19
    cmp-long v5, v29, v23

    if-eqz v5, :cond_1a

    .line 497
    iget-object v5, v1, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->item1:Lru/rocketbank/r2d2/databinding/TariffItemBinding;

    invoke-virtual {v5, v15}, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->setTariffItem(Lru/rocketbank/r2d2/data/binding/tariff/TariffItemData;)V

    .line 498
    iget-object v5, v1, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->item2:Lru/rocketbank/r2d2/databinding/TariffItemBinding;

    invoke-virtual {v5, v14}, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->setTariffItem(Lru/rocketbank/r2d2/data/binding/tariff/TariffItemData;)V

    .line 499
    iget-object v5, v1, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->item3:Lru/rocketbank/r2d2/databinding/TariffItemBinding;

    invoke-virtual {v5, v4}, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->setTariffItem(Lru/rocketbank/r2d2/data/binding/tariff/TariffItemData;)V

    :cond_1a
    and-long v4, v2, v21

    cmp-long v6, v4, v23

    if-eqz v6, :cond_1b

    .line 504
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->price:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v4, v10}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1b
    and-long v4, v2, v19

    cmp-long v2, v4, v23

    if-eqz v2, :cond_1c

    .line 509
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->tariffName:Lme/grantland/widget/AutofitTextView;

    invoke-static {v2, v9}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 511
    :cond_1c
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->item1:Lru/rocketbank/r2d2/databinding/TariffItemBinding;

    invoke-static {v2}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    .line 512
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->item2:Lru/rocketbank/r2d2/databinding/TariffItemBinding;

    invoke-static {v2}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    .line 513
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->item3:Lru/rocketbank/r2d2/databinding/TariffItemBinding;

    invoke-static {v2}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 319
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getData()Lru/rocketbank/r2d2/data/binding/tariff/TariffData;
    .locals 1

    .line 172
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mData:Lru/rocketbank/r2d2/data/binding/tariff/TariffData;

    return-object v0
.end method

.method public getItems()Landroid/databinding/ObservableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableList<",
            "Lru/rocketbank/r2d2/data/binding/tariff/TariffItemData;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mItems:Landroid/databinding/ObservableList;

    return-object v0
.end method

.method public getListener()Lru/rocketbank/r2d2/data/binding/tariff/TariffEventsListener;
    .locals 1

    .line 160
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mListener:Lru/rocketbank/r2d2/data/binding/tariff/TariffEventsListener;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v0, 0x1

    if-eqz v4, :cond_0

    .line 117
    monitor-exit p0

    return v0

    .line 119
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->item1:Lru/rocketbank/r2d2/databinding/TariffItemBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->hasPendingBindings()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 123
    :cond_1
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->item2:Lru/rocketbank/r2d2/databinding/TariffItemBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->hasPendingBindings()Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 126
    :cond_2
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->item3:Lru/rocketbank/r2d2/databinding/TariffItemBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->hasPendingBindings()Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 119
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 104
    monitor-enter p0

    const-wide/16 v0, 0x1000

    .line 105
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mDirtyFlags:J

    .line 106
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->item1:Lru/rocketbank/r2d2/databinding/TariffItemBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->invalidateAll()V

    .line 108
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->item2:Lru/rocketbank/r2d2/databinding/TariffItemBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->invalidateAll()V

    .line 109
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->item3:Lru/rocketbank/r2d2/databinding/TariffItemBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->invalidateAll()V

    .line 110
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 106
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

    .line 218
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->onChangeDataIsButtonActivate(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 216
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableList;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->onChangeItems(Landroid/databinding/ObservableList;I)Z

    move-result p1

    return p1

    .line 214
    :pswitch_2
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->onChangeDataButtonText(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 212
    :pswitch_3
    check-cast p2, Lru/rocketbank/r2d2/databinding/TariffItemBinding;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->onChangeItem1(Lru/rocketbank/r2d2/databinding/TariffItemBinding;I)Z

    move-result p1

    return p1

    .line 210
    :pswitch_4
    check-cast p2, Lru/rocketbank/r2d2/databinding/TariffItemBinding;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->onChangeItem3(Lru/rocketbank/r2d2/databinding/TariffItemBinding;I)Z

    move-result p1

    return p1

    .line 208
    :pswitch_5
    check-cast p2, Lru/rocketbank/r2d2/databinding/TariffItemBinding;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->onChangeItem2(Lru/rocketbank/r2d2/databinding/TariffItemBinding;I)Z

    move-result p1

    return p1

    .line 206
    :pswitch_6
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->onChangeDataIsSalary(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 204
    :pswitch_7
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->onChangeDataName(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 202
    :pswitch_8
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->onChangeDataPriceLabel(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 200
    :pswitch_9
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->onChangeDataButtonColor(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setData(Lru/rocketbank/r2d2/data/binding/tariff/TariffData;)V
    .locals 6

    .line 163
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mData:Lru/rocketbank/r2d2/data/binding/tariff/TariffData;

    .line 164
    monitor-enter p0

    .line 165
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x800

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mDirtyFlags:J

    .line 166
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 167
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->notifyPropertyChanged(I)V

    .line 168
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 166
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setItems(Landroid/databinding/ObservableList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/ObservableList<",
            "Lru/rocketbank/r2d2/data/binding/tariff/TariffItemData;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x8

    .line 175
    invoke-virtual {p0, v0, p1}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->updateRegistration(ILandroid/databinding/ObservableList;)Z

    .line 176
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mItems:Landroid/databinding/ObservableList;

    .line 177
    monitor-enter p0

    .line 178
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x100

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mDirtyFlags:J

    .line 179
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x32

    .line 180
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->notifyPropertyChanged(I)V

    .line 181
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 179
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 190
    invoke-super {p0, p1}, Landroid/databinding/ViewDataBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 191
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->item1:Lru/rocketbank/r2d2/databinding/TariffItemBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 192
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->item2:Lru/rocketbank/r2d2/databinding/TariffItemBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 193
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->item3:Lru/rocketbank/r2d2/databinding/TariffItemBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setListener(Lru/rocketbank/r2d2/data/binding/tariff/TariffEventsListener;)V
    .locals 6

    .line 151
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mListener:Lru/rocketbank/r2d2/data/binding/tariff/TariffEventsListener;

    .line 152
    monitor-enter p0

    .line 153
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x400

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->mDirtyFlags:J

    .line 154
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x37

    .line 155
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->notifyPropertyChanged(I)V

    .line 156
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 154
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

    .line 136
    check-cast p2, Lru/rocketbank/r2d2/data/binding/tariff/TariffEventsListener;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->setListener(Lru/rocketbank/r2d2/data/binding/tariff/TariffEventsListener;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-ne v0, p1, :cond_1

    .line 139
    check-cast p2, Lru/rocketbank/r2d2/data/binding/tariff/TariffData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->setData(Lru/rocketbank/r2d2/data/binding/tariff/TariffData;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x32

    if-ne v0, p1, :cond_2

    .line 142
    check-cast p2, Landroid/databinding/ObservableList;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->setItems(Landroid/databinding/ObservableList;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
