.class public Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;
.super Landroid/databinding/ViewDataBinding;
.source "AtmsMapFragmentBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl3;,
        Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl2;,
        Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl1;,
        Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final bottomSheetHolder:Landroid/widget/LinearLayout;

.field public final buttonLocation:Landroid/widget/Button;

.field public final commissionAtms:Landroid/support/v7/widget/CardView;

.field public final commissionAtmsSwitcher:Landroid/support/v7/widget/SwitchCompat;

.field public final commissionAtmsTextView:Lru/rocketbank/core/widgets/RocketTextView;

.field public final content:Landroid/widget/LinearLayout;

.field public final fab:Landroid/support/design/widget/FloatingActionButton;

.field public final header:Landroid/widget/LinearLayout;

.field private mData:Lru/rocketbank/r2d2/data/binding/MapData;

.field private mDirtyFlags:J

.field private mZoom:Lru/rocketbank/r2d2/data/binding/MapActionListener;

.field private mZoomNavigateMeAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl1;

.field private mZoomOnLocationAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl3;

.field private mZoomOnScaleDownAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl2;

.field private mZoomOnScaleUpAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl;

.field private final mboundView0:Landroid/support/design/widget/CoordinatorLayout;

.field private final mboundView1:Landroid/widget/FrameLayout;

.field private final mboundView10:Landroid/widget/LinearLayout;

.field private final mboundView11:Landroid/widget/LinearLayout;

.field private final mboundView12:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mboundView13:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mboundView2:Landroid/widget/Button;

.field private final mboundView3:Landroid/widget/Button;

.field private final mboundView6:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mboundView7:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mboundView8:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mboundView9:Landroid/widget/LinearLayout;

.field public final zoomPanel:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09042c

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900fa

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900f9

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090087

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901ae

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090105

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/16 v0, 0x8

    .line 81
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 628
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mDirtyFlags:J

    .line 82
    sget-object v1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0x15

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/16 v1, 0x12

    .line 83
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->bottomSheetHolder:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    .line 84
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->buttonLocation:Landroid/widget/Button;

    .line 85
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->buttonLocation:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x5

    .line 86
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/v7/widget/CardView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->commissionAtms:Landroid/support/v7/widget/CardView;

    .line 87
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->commissionAtms:Landroid/support/v7/widget/CardView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/CardView;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x11

    .line 88
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/v7/widget/SwitchCompat;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->commissionAtmsSwitcher:Landroid/support/v7/widget/SwitchCompat;

    const/16 v1, 0x10

    .line 89
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->commissionAtmsTextView:Lru/rocketbank/core/widgets/RocketTextView;

    const/16 v1, 0x14

    .line 90
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->content:Landroid/widget/LinearLayout;

    const/16 v1, 0xe

    .line 91
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/design/widget/FloatingActionButton;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->fab:Landroid/support/design/widget/FloatingActionButton;

    .line 92
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/FloatingActionButton;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x13

    .line 93
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->header:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 94
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mboundView0:Landroid/support/design/widget/CoordinatorLayout;

    .line 95
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mboundView0:Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CoordinatorLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 96
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mboundView1:Landroid/widget/FrameLayout;

    .line 97
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mboundView1:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0xa

    .line 98
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mboundView10:Landroid/widget/LinearLayout;

    .line 99
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mboundView10:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0xb

    .line 100
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mboundView11:Landroid/widget/LinearLayout;

    .line 101
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mboundView11:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0xc

    .line 102
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mboundView12:Lru/rocketbank/core/widgets/RocketTextView;

    .line 103
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mboundView12:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0xd

    .line 104
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mboundView13:Lru/rocketbank/core/widgets/RocketTextView;

    .line 105
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mboundView13:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x2

    .line 106
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mboundView2:Landroid/widget/Button;

    .line 107
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mboundView2:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x3

    .line 108
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mboundView3:Landroid/widget/Button;

    .line 109
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mboundView3:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x6

    .line 110
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mboundView6:Lru/rocketbank/core/widgets/RocketTextView;

    .line 111
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mboundView6:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x7

    .line 112
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mboundView7:Lru/rocketbank/core/widgets/RocketTextView;

    .line 113
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mboundView7:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 114
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mboundView8:Lru/rocketbank/core/widgets/RocketTextView;

    .line 115
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mboundView8:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x9

    .line 116
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mboundView9:Landroid/widget/LinearLayout;

    .line 117
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mboundView9:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xf

    .line 118
    aget-object p1, p1, v0

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->zoomPanel:Landroid/widget/LinearLayout;

    .line 119
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->setRootTag(Landroid/view/View;)V

    .line 121
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;
    .locals 1

    .line 648
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;
    .locals 2

    const-string v0, "layout/atms_map_fragment_0"

    .line 652
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 653
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

    .line 655
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;
    .locals 1

    .line 640
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;
    .locals 3

    const v0, 0x7f0c0075

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 644
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;
    .locals 1

    .line 632
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;
    .locals 1

    const v0, 0x7f0c0075

    .line 636
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;

    return-object p0
.end method

.method private onChangeDataAtmsAddress(Landroid/databinding/ObservableField;I)Z
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
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mDirtyFlags:J

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

.method private onChangeDataAtmsName(Landroid/databinding/ObservableField;I)Z
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

    .line 269
    monitor-enter p0

    .line 270
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x80

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mDirtyFlags:J

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

.method private onChangeDataAtmsWorkingTime(Landroid/databinding/ObservableField;I)Z
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

    .line 206
    monitor-enter p0

    .line 207
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mDirtyFlags:J

    .line 208
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

.method private onChangeDataCommissionAtmsSwitcherVisible(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 224
    monitor-enter p0

    .line 225
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mDirtyFlags:J

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

.method private onChangeDataDetailsHeight(Landroid/databinding/ObservableInt;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 251
    monitor-enter p0

    .line 252
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mDirtyFlags:J

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

.method private onChangeDataInstructionType(Landroid/databinding/ObservableField;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/ObservableField<",
            "Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 260
    monitor-enter p0

    .line 261
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x40

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mDirtyFlags:J

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

.method private onChangeDataLimits(Landroid/databinding/ObservableField;I)Z
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
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mDirtyFlags:J

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

.method private onChangeDataShowMyLocation(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 215
    monitor-enter p0

    .line 216
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mDirtyFlags:J

    .line 217
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
    .locals 50

    move-object/from16 v1, p0

    .line 280
    monitor-enter p0

    .line 281
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 282
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mDirtyFlags:J

    .line 283
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mZoom:Lru/rocketbank/r2d2/data/binding/MapActionListener;

    .line 301
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mData:Lru/rocketbank/r2d2/data/binding/MapData;

    const-wide/16 v8, 0x500

    and-long v10, v2, v8

    cmp-long v12, v10, v4

    if-eqz v12, :cond_4

    if-eqz v6, :cond_4

    .line 323
    iget-object v11, v1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mZoomOnScaleUpAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl;

    if-nez v11, :cond_0

    new-instance v11, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl;

    invoke-direct {v11}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl;-><init>()V

    iput-object v11, v1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mZoomOnScaleUpAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl;

    goto :goto_0

    :cond_0
    iget-object v11, v1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mZoomOnScaleUpAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl;

    :goto_0
    invoke-virtual {v11, v6}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl;->setValue(Lru/rocketbank/r2d2/data/binding/MapActionListener;)Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl;

    move-result-object v11

    .line 325
    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mZoomNavigateMeAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl1;

    if-nez v12, :cond_1

    new-instance v12, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl1;

    invoke-direct {v12}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl1;-><init>()V

    iput-object v12, v1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mZoomNavigateMeAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl1;

    goto :goto_1

    :cond_1
    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mZoomNavigateMeAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl1;

    :goto_1
    invoke-virtual {v12, v6}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl1;->setValue(Lru/rocketbank/r2d2/data/binding/MapActionListener;)Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl1;

    move-result-object v12

    .line 327
    iget-object v13, v1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mZoomOnScaleDownAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl2;

    if-nez v13, :cond_2

    new-instance v13, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl2;

    invoke-direct {v13}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl2;-><init>()V

    iput-object v13, v1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mZoomOnScaleDownAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl2;

    goto :goto_2

    :cond_2
    iget-object v13, v1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mZoomOnScaleDownAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl2;

    :goto_2
    invoke-virtual {v13, v6}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl2;->setValue(Lru/rocketbank/r2d2/data/binding/MapActionListener;)Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl2;

    move-result-object v13

    .line 329
    iget-object v14, v1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mZoomOnLocationAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl3;

    if-nez v14, :cond_3

    new-instance v14, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl3;

    invoke-direct {v14}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl3;-><init>()V

    iput-object v14, v1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mZoomOnLocationAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl3;

    goto :goto_3

    :cond_3
    iget-object v14, v1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mZoomOnLocationAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl3;

    :goto_3
    invoke-virtual {v14, v6}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl3;->setValue(Lru/rocketbank/r2d2/data/binding/MapActionListener;)Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding$OnClickListenerImpl3;

    move-result-object v6

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_4
    const-wide/16 v14, 0x6ff

    and-long v16, v2, v14

    cmp-long v14, v16, v4

    const-wide/16 v17, 0x620

    const-wide/16 v19, 0x610

    const-wide/16 v21, 0x608

    const-wide/16 v23, 0x604

    const-wide/16 v25, 0x602

    const-wide/16 v27, 0x601

    const-wide/16 v29, 0x640

    const/4 v10, 0x0

    if-eqz v14, :cond_30

    and-long v32, v2, v27

    cmp-long v14, v32, v4

    if-eqz v14, :cond_6

    if-eqz v7, :cond_5

    .line 339
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/MapData;->getAtmsWorkingTime()Landroid/databinding/ObservableField;

    move-result-object v14

    goto :goto_5

    :cond_5
    const/4 v14, 0x0

    .line 341
    :goto_5
    invoke-virtual {v1, v10, v14}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v14, :cond_6

    .line 346
    invoke-virtual {v14}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    goto :goto_6

    :cond_6
    const/4 v14, 0x0

    :goto_6
    and-long v32, v2, v25

    cmp-long v34, v32, v4

    const/4 v10, 0x1

    const/16 v36, 0x8

    if-eqz v34, :cond_c

    if-eqz v7, :cond_7

    .line 353
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/MapData;->getShowMyLocation()Landroid/databinding/ObservableBoolean;

    move-result-object v34

    move-object/from16 v8, v34

    goto :goto_7

    :cond_7
    const/4 v8, 0x0

    .line 355
    :goto_7
    invoke-virtual {v1, v10, v8}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v8, :cond_8

    .line 360
    invoke-virtual {v8}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v8

    goto :goto_8

    :cond_8
    const/4 v8, 0x0

    :goto_8
    cmp-long v9, v32, v4

    if-eqz v9, :cond_a

    if-eqz v8, :cond_9

    const-wide/16 v32, 0x1000

    or-long v37, v2, v32

    :goto_9
    move-wide/from16 v2, v37

    goto :goto_a

    :cond_9
    const-wide/16 v32, 0x800

    or-long v37, v2, v32

    goto :goto_9

    :cond_a
    :goto_a
    if-eqz v8, :cond_b

    goto :goto_b

    :cond_b
    move/from16 v8, v36

    goto :goto_c

    :cond_c
    :goto_b
    const/4 v8, 0x0

    :goto_c
    and-long v32, v2, v23

    cmp-long v9, v32, v4

    if-eqz v9, :cond_12

    if-eqz v7, :cond_d

    .line 379
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/MapData;->getCommissionAtmsSwitcherVisible()Landroid/databinding/ObservableBoolean;

    move-result-object v9

    goto :goto_d

    :cond_d
    const/4 v9, 0x0

    :goto_d
    const/4 v10, 0x2

    .line 381
    invoke-virtual {v1, v10, v9}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v9, :cond_e

    .line 386
    invoke-virtual {v9}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v10

    goto :goto_e

    :cond_e
    const/4 v10, 0x0

    :goto_e
    cmp-long v9, v32, v4

    if-eqz v9, :cond_10

    if-eqz v10, :cond_f

    const-wide/32 v32, 0x40000

    or-long v37, v2, v32

    :goto_f
    move-wide/from16 v2, v37

    goto :goto_10

    :cond_f
    const-wide/32 v32, 0x20000

    or-long v37, v2, v32

    goto :goto_f

    :cond_10
    :goto_10
    if-eqz v10, :cond_11

    const/4 v9, 0x0

    goto :goto_11

    :cond_11
    move/from16 v9, v36

    :goto_11
    move v10, v9

    goto :goto_12

    :cond_12
    const/4 v10, 0x0

    :goto_12
    and-long v32, v2, v21

    cmp-long v9, v32, v4

    if-eqz v9, :cond_19

    if-eqz v7, :cond_13

    .line 405
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/MapData;->getLimits()Landroid/databinding/ObservableField;

    move-result-object v9

    goto :goto_13

    :cond_13
    const/4 v9, 0x0

    :goto_13
    const/4 v15, 0x3

    .line 407
    invoke-virtual {v1, v15, v9}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v9, :cond_14

    .line 412
    invoke-virtual {v9}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_14

    :cond_14
    const/4 v9, 0x0

    :goto_14
    if-eqz v9, :cond_15

    const/4 v15, 0x1

    goto :goto_15

    :cond_15
    const/4 v15, 0x0

    :goto_15
    cmp-long v16, v32, v4

    if-eqz v16, :cond_17

    if-eqz v15, :cond_16

    const-wide/32 v32, 0x10000

    or-long v37, v2, v32

    :goto_16
    move-wide/from16 v2, v37

    goto :goto_17

    :cond_16
    const-wide/32 v32, 0x8000

    or-long v37, v2, v32

    goto :goto_16

    :cond_17
    :goto_17
    if-eqz v15, :cond_18

    goto :goto_18

    :cond_18
    move/from16 v15, v36

    goto :goto_19

    :cond_19
    const/4 v9, 0x0

    :goto_18
    const/4 v15, 0x0

    :goto_19
    and-long v32, v2, v19

    cmp-long v16, v32, v4

    if-eqz v16, :cond_1b

    if-eqz v7, :cond_1a

    .line 435
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/MapData;->getAtmsAddress()Landroid/databinding/ObservableField;

    move-result-object v16

    move-object/from16 v4, v16

    goto :goto_1a

    :cond_1a
    const/4 v4, 0x0

    :goto_1a
    const/4 v5, 0x4

    .line 437
    invoke-virtual {v1, v5, v4}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v4, :cond_1b

    .line 442
    invoke-virtual {v4}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1b

    :cond_1b
    const/4 v4, 0x0

    :goto_1b
    and-long v32, v2, v17

    const-wide/16 v37, 0x0

    cmp-long v5, v32, v37

    if-eqz v5, :cond_1d

    if-eqz v7, :cond_1c

    .line 449
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/MapData;->getDetailsHeight()Landroid/databinding/ObservableInt;

    move-result-object v5

    move-object/from16 v42, v4

    goto :goto_1c

    :cond_1c
    move-object/from16 v42, v4

    const/4 v5, 0x0

    :goto_1c
    const/4 v4, 0x5

    .line 451
    invoke-virtual {v1, v4, v5}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v5, :cond_1e

    .line 456
    invoke-virtual {v5}, Landroid/databinding/ObservableInt;->get()I

    move-result v4

    goto :goto_1d

    :cond_1d
    move-object/from16 v42, v4

    :cond_1e
    const/4 v4, 0x0

    :goto_1d
    and-long v32, v2, v29

    const-wide/16 v37, 0x0

    cmp-long v5, v32, v37

    if-eqz v5, :cond_2d

    if-eqz v7, :cond_1f

    .line 463
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/MapData;->getInstructionType()Landroid/databinding/ObservableField;

    move-result-object v5

    move/from16 v43, v4

    goto :goto_1e

    :cond_1f
    move/from16 v43, v4

    const/4 v5, 0x0

    :goto_1e
    const/4 v4, 0x6

    .line 465
    invoke-virtual {v1, v4, v5}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v5, :cond_20

    .line 470
    invoke-virtual {v5}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;

    goto :goto_1f

    :cond_20
    const/4 v4, 0x0

    .line 475
    :goto_1f
    sget-object v5, Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;->ATM:Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;

    if-ne v4, v5, :cond_21

    move/from16 v44, v8

    const/4 v5, 0x1

    goto :goto_20

    :cond_21
    move/from16 v44, v8

    const/4 v5, 0x0

    .line 477
    :goto_20
    sget-object v8, Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;->TERMINAL:Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;

    if-ne v4, v8, :cond_22

    move-object/from16 v45, v9

    const/4 v8, 0x1

    goto :goto_21

    :cond_22
    move-object/from16 v45, v9

    const/4 v8, 0x0

    .line 479
    :goto_21
    sget-object v9, Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;->OFFICE:Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;

    if-ne v4, v9, :cond_23

    const-wide/16 v37, 0x0

    const/16 v39, 0x1

    goto :goto_22

    :cond_23
    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    :goto_22
    cmp-long v4, v32, v37

    if-eqz v4, :cond_25

    if-eqz v5, :cond_24

    const-wide/32 v32, 0x400000

    or-long v40, v2, v32

    goto :goto_23

    :cond_24
    const-wide/32 v32, 0x200000

    or-long v40, v2, v32

    goto :goto_23

    :cond_25
    move-wide/from16 v40, v2

    :goto_23
    and-long v2, v40, v29

    cmp-long v4, v2, v37

    if-eqz v4, :cond_27

    if-eqz v8, :cond_26

    const-wide/32 v2, 0x100000

    or-long v32, v40, v2

    goto :goto_24

    :cond_26
    const-wide/32 v2, 0x80000

    or-long v32, v40, v2

    goto :goto_24

    :cond_27
    move-wide/from16 v32, v40

    :goto_24
    and-long v2, v32, v29

    cmp-long v4, v2, v37

    if-eqz v4, :cond_29

    if-eqz v39, :cond_28

    const-wide/16 v2, 0x4000

    or-long v37, v32, v2

    goto :goto_25

    :cond_28
    const-wide/16 v2, 0x2000

    or-long v37, v32, v2

    goto :goto_25

    :cond_29
    move-wide/from16 v37, v32

    :goto_25
    if-eqz v5, :cond_2a

    const/4 v2, 0x0

    goto :goto_26

    :cond_2a
    move/from16 v2, v36

    :goto_26
    if-eqz v8, :cond_2b

    const/4 v3, 0x0

    goto :goto_27

    :cond_2b
    move/from16 v3, v36

    :goto_27
    if-eqz v39, :cond_2c

    const/16 v35, 0x0

    goto :goto_28

    :cond_2c
    move/from16 v35, v36

    :goto_28
    move v4, v2

    move/from16 v5, v35

    const-wide/16 v8, 0x680

    move/from16 v35, v3

    move-wide/from16 v2, v37

    goto :goto_29

    :cond_2d
    move/from16 v43, v4

    move/from16 v44, v8

    move-object/from16 v45, v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v8, 0x680

    const/16 v35, 0x0

    :goto_29
    and-long v32, v2, v8

    const-wide/16 v8, 0x0

    cmp-long v16, v32, v8

    if-eqz v16, :cond_2f

    if-eqz v7, :cond_2e

    .line 517
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/MapData;->getAtmsName()Landroid/databinding/ObservableField;

    move-result-object v7

    goto :goto_2a

    :cond_2e
    const/4 v7, 0x0

    :goto_2a
    const/4 v8, 0x7

    .line 519
    invoke-virtual {v1, v8, v7}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_2f

    .line 524
    invoke-virtual {v7}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move v9, v4

    move v8, v5

    move-object/from16 v46, v7

    move-object/from16 v48, v14

    move/from16 v7, v35

    move-object/from16 v47, v42

    move/from16 v5, v43

    move/from16 v4, v44

    move-object/from16 v14, v45

    const-wide/16 v31, 0x500

    goto :goto_2b

    :cond_2f
    move v9, v4

    move v8, v5

    move-object/from16 v48, v14

    move/from16 v7, v35

    move-object/from16 v47, v42

    move/from16 v5, v43

    move/from16 v4, v44

    move-object/from16 v14, v45

    const-wide/16 v31, 0x500

    const/16 v46, 0x0

    goto :goto_2b

    :cond_30
    move-wide/from16 v31, v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    :goto_2b
    and-long v33, v2, v31

    const-wide/16 v31, 0x0

    cmp-long v16, v33, v31

    if-eqz v16, :cond_31

    move-object/from16 v49, v14

    .line 532
    iget-object v14, v1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->buttonLocation:Landroid/widget/Button;

    invoke-virtual {v14, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v6, v12}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mboundView2:Landroid/widget/Button;

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 535
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mboundView3:Landroid/widget/Button;

    invoke-virtual {v6, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2c

    :cond_31
    move-object/from16 v49, v14

    :goto_2c
    and-long v11, v2, v25

    const-wide/16 v13, 0x0

    cmp-long v6, v11, v13

    if-eqz v6, :cond_32

    .line 540
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->buttonLocation:Landroid/widget/Button;

    invoke-virtual {v6, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_32
    and-long v11, v2, v23

    cmp-long v4, v11, v13

    if-eqz v4, :cond_33

    .line 545
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->commissionAtms:Landroid/support/v7/widget/CardView;

    invoke-virtual {v4, v10}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    :cond_33
    and-long v10, v2, v17

    cmp-long v4, v10, v13

    if-eqz v4, :cond_34

    .line 550
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mboundView1:Landroid/widget/FrameLayout;

    int-to-float v5, v5

    invoke-static {v4, v5}, Landroid/databinding/adapters/ViewBindingAdapter;->setPaddingBottom(Landroid/view/View;F)V

    :cond_34
    and-long v4, v2, v29

    cmp-long v6, v4, v13

    if-eqz v6, :cond_35

    .line 555
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mboundView10:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 556
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mboundView11:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 557
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mboundView9:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_35
    and-long v4, v2, v21

    cmp-long v6, v4, v13

    if-eqz v6, :cond_36

    .line 562
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mboundView12:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v4, v15}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 563
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mboundView13:Lru/rocketbank/core/widgets/RocketTextView;

    move-object/from16 v5, v49

    invoke-static {v4, v5}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_36
    const-wide/16 v4, 0x680

    and-long v6, v2, v4

    cmp-long v4, v6, v13

    if-eqz v4, :cond_37

    .line 568
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mboundView6:Lru/rocketbank/core/widgets/RocketTextView;

    move-object/from16 v7, v46

    invoke-static {v4, v7}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_37
    and-long v4, v2, v19

    cmp-long v6, v4, v13

    if-eqz v6, :cond_38

    .line 573
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mboundView7:Lru/rocketbank/core/widgets/RocketTextView;

    move-object/from16 v5, v47

    invoke-static {v4, v5}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_38
    and-long v4, v2, v27

    cmp-long v2, v4, v13

    if-eqz v2, :cond_39

    .line 578
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mboundView8:Lru/rocketbank/core/widgets/RocketTextView;

    move-object/from16 v14, v48

    invoke-static {v2, v14}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_39
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 283
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getData()Lru/rocketbank/r2d2/data/binding/MapData;
    .locals 1

    .line 179
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mData:Lru/rocketbank/r2d2/data/binding/MapData;

    return-object v0
.end method

.method public getZoom()Lru/rocketbank/r2d2/data/binding/MapActionListener;
    .locals 1

    .line 167
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mZoom:Lru/rocketbank/r2d2/data/binding/MapActionListener;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 136
    monitor-exit p0

    return v0

    .line 138
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 126
    monitor-enter p0

    const-wide/16 v0, 0x400

    .line 127
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mDirtyFlags:J

    .line 128
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 128
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

    .line 200
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->onChangeDataAtmsName(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 198
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->onChangeDataInstructionType(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 196
    :pswitch_2
    check-cast p2, Landroid/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->onChangeDataDetailsHeight(Landroid/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 194
    :pswitch_3
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->onChangeDataAtmsAddress(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 192
    :pswitch_4
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->onChangeDataLimits(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 190
    :pswitch_5
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->onChangeDataCommissionAtmsSwitcherVisible(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 188
    :pswitch_6
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->onChangeDataShowMyLocation(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 186
    :pswitch_7
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->onChangeDataAtmsWorkingTime(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public setData(Lru/rocketbank/r2d2/data/binding/MapData;)V
    .locals 6

    .line 170
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mData:Lru/rocketbank/r2d2/data/binding/MapData;

    .line 171
    monitor-enter p0

    .line 172
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x200

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mDirtyFlags:J

    .line 173
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 174
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->notifyPropertyChanged(I)V

    .line 175
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 173
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x5a

    if-ne v0, p1, :cond_0

    .line 146
    check-cast p2, Lru/rocketbank/r2d2/data/binding/MapActionListener;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->setZoom(Lru/rocketbank/r2d2/data/binding/MapActionListener;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-ne v0, p1, :cond_1

    .line 149
    check-cast p2, Lru/rocketbank/r2d2/data/binding/MapData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->setData(Lru/rocketbank/r2d2/data/binding/MapData;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public setZoom(Lru/rocketbank/r2d2/data/binding/MapActionListener;)V
    .locals 6

    .line 158
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mZoom:Lru/rocketbank/r2d2/data/binding/MapActionListener;

    .line 159
    monitor-enter p0

    .line 160
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x100

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->mDirtyFlags:J

    .line 161
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x5a

    .line 162
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;->notifyPropertyChanged(I)V

    .line 163
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 161
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
