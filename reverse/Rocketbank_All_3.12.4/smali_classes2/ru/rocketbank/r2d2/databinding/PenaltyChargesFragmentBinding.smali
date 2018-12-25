.class public Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;
.super Landroid/databinding/ViewDataBinding;
.source "PenaltyChargesFragmentBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final editTextCtc:Lru/rocketbank/core/widgets/RocketEditText;

.field public final editTextDriverLicence:Lru/rocketbank/core/widgets/RocketEditText;

.field public final editTextUin:Lru/rocketbank/core/widgets/RocketEditText;

.field private mDirtyFlags:J

.field private mPenaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView1:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mboundView4:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mboundView6:Lru/rocketbank/core/widgets/RocketTextView;

.field public final switcher:Landroid/support/v7/widget/SwitchCompat;

.field public final value:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090403

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090370

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x7

    .line 49
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 532
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    .line 50
    sget-object v1, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0xa

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x3

    .line 51
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->editTextCtc:Lru/rocketbank/core/widgets/RocketEditText;

    .line 52
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->editTextCtc:Lru/rocketbank/core/widgets/RocketEditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketEditText;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x5

    .line 53
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->editTextDriverLicence:Lru/rocketbank/core/widgets/RocketEditText;

    .line 54
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->editTextDriverLicence:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketEditText;->setTag(Ljava/lang/Object;)V

    .line 55
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->editTextUin:Lru/rocketbank/core/widgets/RocketEditText;

    .line 56
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->editTextUin:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketEditText;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 57
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 58
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mboundView0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 59
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mboundView1:Lru/rocketbank/core/widgets/RocketTextView;

    .line 60
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mboundView1:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 61
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    .line 62
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 63
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mboundView4:Lru/rocketbank/core/widgets/RocketTextView;

    .line 64
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mboundView4:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x6

    .line 65
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mboundView6:Lru/rocketbank/core/widgets/RocketTextView;

    .line 66
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mboundView6:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x9

    .line 67
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->switcher:Landroid/support/v7/widget/SwitchCompat;

    const/16 v0, 0x8

    .line 68
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->value:Lru/rocketbank/core/widgets/RocketTextView;

    .line 69
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->setRootTag(Landroid/view/View;)V

    .line 71
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;
    .locals 1

    .line 552
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;
    .locals 2

    const-string v0, "layout/penalty_charges_fragment_0"

    .line 556
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
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

    .line 559
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;
    .locals 1

    .line 544
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;
    .locals 3

    const v0, 0x7f0c0188

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 548
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;
    .locals 1

    .line 536
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;
    .locals 1

    const v0, 0x7f0c0188

    .line 540
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;

    return-object p0
.end method

.method private onChangePenaltyCharge(Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 140
    monitor-enter p0

    .line 141
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    .line 142
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/16 v0, 0x2a

    if-ne p2, v0, :cond_1

    .line 146
    monitor-enter p0

    .line 147
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    .line 148
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const/16 v0, 0x17

    if-ne p2, v0, :cond_2

    .line 152
    monitor-enter p0

    .line 153
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    .line 154
    monitor-exit p0

    return p1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_2
    const/16 v0, 0x1d

    if-ne p2, v0, :cond_3

    .line 158
    monitor-enter p0

    .line 159
    :try_start_3
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x20

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    .line 160
    monitor-exit p0

    return p1

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    :cond_3
    const/16 v0, 0x57

    if-ne p2, v0, :cond_4

    .line 164
    monitor-enter p0

    .line 165
    :try_start_4
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    .line 166
    monitor-exit p0

    return p1

    :catchall_4
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private onChangePenaltyChargeCtc(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 182
    monitor-enter p0

    .line 183
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    .line 184
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/16 v0, 0x58

    if-ne p2, v0, :cond_1

    .line 188
    monitor-enter p0

    .line 189
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x100

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    .line 190
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const/16 v0, 0x59

    if-ne p2, v0, :cond_2

    .line 194
    monitor-enter p0

    .line 195
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x200

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    .line 196
    monitor-exit p0

    return p1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private onChangePenaltyChargeDriverLicence(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 233
    monitor-enter p0

    .line 234
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x20

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    .line 235
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/16 v0, 0x58

    if-ne p2, v0, :cond_1

    .line 239
    monitor-enter p0

    .line 240
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    .line 241
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const/16 v0, 0x59

    if-ne p2, v0, :cond_2

    .line 245
    monitor-enter p0

    .line 246
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    .line 247
    monitor-exit p0

    return p1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private onChangePenaltyChargeGetFieldJavaLangStringCtc(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 173
    monitor-enter p0

    .line 174
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    .line 175
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

.method private onChangePenaltyChargeGetFieldJavaLangStringDriverLicence(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 224
    monitor-enter p0

    .line 225
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

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

.method private onChangePenaltyChargeGetFieldJavaLangStringUin(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 254
    monitor-enter p0

    .line 255
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x40

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    .line 256
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

.method private onChangePenaltyChargeUin(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 203
    monitor-enter p0

    .line 204
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    .line 205
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/16 v0, 0x58

    if-ne p2, v0, :cond_1

    .line 209
    monitor-enter p0

    .line 210
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x400

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    .line 211
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const/16 v0, 0x59

    if-ne p2, v0, :cond_2

    .line 215
    monitor-enter p0

    .line 216
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x800

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    .line 217
    monitor-exit p0

    return p1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected executeBindings()V
    .locals 36

    move-object/from16 v1, p0

    .line 265
    monitor-enter p0

    .line 266
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 267
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    .line 268
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mPenaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    const-wide/16 v7, 0x7fff

    and-long v9, v2, v7

    cmp-long v7, v9, v4

    const-wide/16 v14, 0x4409

    const-wide/16 v16, 0x4809

    const-wide/16 v18, 0x4205

    const-wide/16 v20, 0x4105

    const-wide/16 v22, 0x4003

    const-wide/16 v24, 0x4081

    const/16 v26, 0x0

    const/16 v27, 0x0

    if-eqz v7, :cond_24

    and-long v28, v2, v24

    cmp-long v7, v28, v4

    if-eqz v7, :cond_5

    if-eqz v6, :cond_0

    .line 300
    invoke-virtual {v6}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getIKnowNum()Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object/from16 v7, v27

    .line 305
    :goto_0
    invoke-static {v7}, Landroid/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v7

    cmp-long v30, v28, v4

    if-eqz v30, :cond_2

    if-eqz v7, :cond_1

    const-wide/32 v28, 0x10000

    or-long v30, v2, v28

    const-wide/32 v2, 0x1000000

    or-long v28, v30, v2

    :goto_1
    move-wide/from16 v2, v28

    goto :goto_2

    :cond_1
    const-wide/32 v28, 0x8000

    or-long v30, v2, v28

    const-wide/32 v2, 0x800000

    or-long v28, v30, v2

    goto :goto_1

    :cond_2
    :goto_2
    const/16 v28, 0x8

    if-eqz v7, :cond_3

    move/from16 v29, v26

    goto :goto_3

    :cond_3
    move/from16 v29, v28

    :goto_3
    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    move/from16 v28, v26

    goto :goto_4

    :cond_5
    move/from16 v28, v26

    move/from16 v29, v28

    :goto_4
    and-long v30, v2, v22

    cmp-long v7, v30, v4

    if-eqz v7, :cond_7

    if-eqz v6, :cond_6

    const-string v7, "ctc"

    .line 327
    invoke-virtual {v6, v7}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getField(Ljava/lang/String;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v7

    goto :goto_5

    :cond_6
    move-object/from16 v7, v27

    :goto_5
    const/4 v8, 0x1

    .line 329
    invoke-virtual {v1, v8, v7}, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_7

    .line 334
    invoke-virtual {v7}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getWatcher()Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    move-result-object v7

    goto :goto_6

    :cond_7
    move-object/from16 v7, v27

    :goto_6
    const-wide/16 v8, 0x4305

    and-long v30, v2, v8

    cmp-long v8, v30, v4

    const v9, 0x7f080294

    const v10, 0x7f080296

    if-eqz v8, :cond_f

    if-eqz v6, :cond_8

    .line 341
    invoke-virtual {v6}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getCtc()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v8

    goto :goto_7

    :cond_8
    move-object/from16 v8, v27

    :goto_7
    const/4 v11, 0x2

    .line 343
    invoke-virtual {v1, v11, v8}, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    and-long v30, v2, v20

    cmp-long v11, v30, v4

    if-eqz v11, :cond_d

    if-eqz v8, :cond_9

    .line 349
    invoke-virtual {v8}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v11

    goto :goto_8

    :cond_9
    move/from16 v11, v26

    :goto_8
    cmp-long v32, v30, v4

    if-eqz v32, :cond_b

    if-eqz v11, :cond_a

    const-wide/32 v30, 0x100000

    or-long v32, v2, v30

    goto :goto_9

    :cond_a
    const-wide/32 v30, 0x80000

    or-long v32, v2, v30

    goto :goto_9

    :cond_b
    move-wide/from16 v32, v2

    :goto_9
    if-eqz v11, :cond_c

    .line 362
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->editTextCtc:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v2, v10}, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_a

    :cond_c
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->editTextCtc:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v2, v9}, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_a
    move-object v11, v2

    move-wide/from16 v2, v32

    goto :goto_b

    :cond_d
    move-object/from16 v11, v27

    :goto_b
    and-long v30, v2, v18

    cmp-long v32, v30, v4

    if-eqz v32, :cond_e

    if-eqz v8, :cond_e

    .line 368
    invoke-virtual {v8}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v8

    goto :goto_c

    :cond_e
    move-object/from16 v8, v27

    goto :goto_c

    :cond_f
    move-object/from16 v8, v27

    move-object v11, v8

    :goto_c
    const-wide/16 v30, 0x4c09

    and-long v32, v2, v30

    cmp-long v30, v32, v4

    if-eqz v30, :cond_17

    if-eqz v6, :cond_10

    .line 376
    invoke-virtual {v6}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getUin()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v30

    move-object/from16 v12, v30

    goto :goto_d

    :cond_10
    move-object/from16 v12, v27

    :goto_d
    const/4 v13, 0x3

    .line 378
    invoke-virtual {v1, v13, v12}, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    and-long v30, v2, v16

    cmp-long v13, v30, v4

    if-eqz v13, :cond_11

    if-eqz v12, :cond_11

    .line 384
    invoke-virtual {v12}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v13

    goto :goto_e

    :cond_11
    move-object/from16 v13, v27

    :goto_e
    and-long v30, v2, v14

    cmp-long v32, v30, v4

    if-eqz v32, :cond_16

    if-eqz v12, :cond_12

    .line 391
    invoke-virtual {v12}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v12

    goto :goto_f

    :cond_12
    move/from16 v12, v26

    :goto_f
    cmp-long v32, v30, v4

    if-eqz v32, :cond_14

    if-eqz v12, :cond_13

    const-wide/32 v30, 0x40000

    or-long v32, v2, v30

    :goto_10
    move-wide/from16 v2, v32

    goto :goto_11

    :cond_13
    const-wide/32 v30, 0x20000

    or-long v32, v2, v30

    goto :goto_10

    :cond_14
    :goto_11
    if-eqz v12, :cond_15

    .line 404
    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->editTextUin:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v12, v10}, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    goto :goto_12

    :cond_15
    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->editTextUin:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v12, v9}, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    goto :goto_12

    :cond_16
    move-object/from16 v12, v27

    goto :goto_12

    :cond_17
    move-object/from16 v12, v27

    move-object v13, v12

    :goto_12
    const-wide/16 v30, 0x4011

    and-long v32, v2, v30

    cmp-long v30, v32, v4

    if-eqz v30, :cond_19

    if-eqz v6, :cond_18

    const-string v14, "driver_licence"

    .line 411
    invoke-virtual {v6, v14}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getField(Ljava/lang/String;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v14

    goto :goto_13

    :cond_18
    move-object/from16 v14, v27

    :goto_13
    const/4 v15, 0x4

    .line 413
    invoke-virtual {v1, v15, v14}, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v14, :cond_19

    .line 418
    invoke-virtual {v14}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getWatcher()Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    move-result-object v14

    goto :goto_14

    :cond_19
    move-object/from16 v14, v27

    :goto_14
    const-wide/16 v30, 0x7021

    and-long v32, v2, v30

    cmp-long v15, v32, v4

    if-eqz v15, :cond_21

    if-eqz v6, :cond_1a

    .line 425
    invoke-virtual {v6}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getDriver_licence()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v15

    goto :goto_15

    :cond_1a
    move-object/from16 v15, v27

    :goto_15
    const/4 v9, 0x5

    .line 427
    invoke-virtual {v1, v9, v15}, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    const-wide/16 v30, 0x6021

    and-long v32, v2, v30

    cmp-long v9, v32, v4

    if-eqz v9, :cond_1b

    if-eqz v15, :cond_1b

    .line 433
    invoke-virtual {v15}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v9

    goto :goto_16

    :cond_1b
    move-object/from16 v9, v27

    :goto_16
    const-wide/16 v30, 0x5021

    and-long v32, v2, v30

    cmp-long v30, v32, v4

    if-eqz v30, :cond_20

    if-eqz v15, :cond_1c

    .line 440
    invoke-virtual {v15}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v26

    :cond_1c
    cmp-long v15, v32, v4

    if-eqz v15, :cond_1e

    if-eqz v26, :cond_1d

    const-wide/32 v30, 0x400000

    or-long v32, v2, v30

    goto :goto_17

    :cond_1d
    const-wide/32 v30, 0x200000

    or-long v32, v2, v30

    goto :goto_17

    :cond_1e
    move-wide/from16 v32, v2

    :goto_17
    if-eqz v26, :cond_1f

    .line 453
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->editTextDriverLicence:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v2, v10}, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_18

    :cond_1f
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->editTextDriverLicence:Lru/rocketbank/core/widgets/RocketEditText;

    const v3, 0x7f080294

    invoke-static {v2, v3}, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_18
    move-object v10, v9

    move-object v9, v2

    move-wide/from16 v2, v32

    goto :goto_19

    :cond_20
    move-object v10, v9

    move-object/from16 v9, v27

    goto :goto_19

    :cond_21
    move-object/from16 v9, v27

    move-object v10, v9

    :goto_19
    const-wide/16 v30, 0x4041

    and-long v32, v2, v30

    cmp-long v15, v32, v4

    if-eqz v15, :cond_23

    if-eqz v6, :cond_22

    const-string v15, "uin"

    .line 460
    invoke-virtual {v6, v15}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getField(Ljava/lang/String;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v6

    goto :goto_1a

    :cond_22
    move-object/from16 v6, v27

    :goto_1a
    const/4 v15, 0x6

    .line 462
    invoke-virtual {v1, v15, v6}, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v6, :cond_23

    .line 467
    invoke-virtual {v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getWatcher()Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    move-result-object v27

    :cond_23
    move-object v15, v12

    move-object/from16 v34, v13

    move-object/from16 v13, v27

    move/from16 v6, v28

    move-object v12, v10

    move-object v10, v9

    move/from16 v9, v29

    goto :goto_1b

    :cond_24
    move/from16 v6, v26

    move v9, v6

    move-object/from16 v7, v27

    move-object v8, v7

    move-object v10, v8

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v34, v15

    :goto_1b
    and-long v26, v2, v22

    cmp-long v22, v26, v4

    if-eqz v22, :cond_25

    .line 475
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->editTextCtc:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v4, v7}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_25
    and-long v4, v2, v20

    const-wide/16 v20, 0x0

    cmp-long v7, v4, v20

    if-eqz v7, :cond_26

    .line 480
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->editTextCtc:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v4, v11}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_26
    and-long v4, v2, v18

    cmp-long v7, v4, v20

    if-eqz v7, :cond_27

    .line 485
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->editTextCtc:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v4, v8}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_27
    and-long v4, v2, v24

    cmp-long v7, v4, v20

    if-eqz v7, :cond_28

    .line 490
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->editTextCtc:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v4, v6}, Lru/rocketbank/core/widgets/RocketEditText;->setVisibility(I)V

    .line 491
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->editTextDriverLicence:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v4, v6}, Lru/rocketbank/core/widgets/RocketEditText;->setVisibility(I)V

    .line 492
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->editTextUin:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v4, v9}, Lru/rocketbank/core/widgets/RocketEditText;->setVisibility(I)V

    .line 493
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mboundView1:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v4, v6}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 494
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v4, v6}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 495
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mboundView4:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v4, v6}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 496
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mboundView6:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v4, v9}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    :cond_28
    const-wide/16 v4, 0x4011

    and-long v6, v2, v4

    const-wide/16 v4, 0x0

    cmp-long v8, v6, v4

    if-eqz v8, :cond_29

    .line 501
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->editTextDriverLicence:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v6, v14}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_29
    const-wide/16 v6, 0x5021

    and-long v8, v2, v6

    cmp-long v6, v8, v4

    if-eqz v6, :cond_2a

    .line 506
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->editTextDriverLicence:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v6, v10}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_2a
    const-wide/16 v6, 0x6021

    and-long v8, v2, v6

    cmp-long v6, v8, v4

    if-eqz v6, :cond_2b

    .line 511
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->editTextDriverLicence:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v6, v12}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_2b
    const-wide/16 v6, 0x4041

    and-long v8, v2, v6

    cmp-long v6, v8, v4

    if-eqz v6, :cond_2c

    .line 516
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->editTextUin:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v6, v13}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2c
    const-wide/16 v6, 0x4409

    and-long v8, v2, v6

    cmp-long v6, v8, v4

    if-eqz v6, :cond_2d

    .line 521
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->editTextUin:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v6, v15}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_2d
    and-long v6, v2, v16

    cmp-long v2, v6, v4

    if-eqz v2, :cond_2e

    .line 526
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->editTextUin:Lru/rocketbank/core/widgets/RocketEditText;

    move-object/from16 v13, v34

    invoke-static {v2, v13}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_2e
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 268
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getPenaltyCharge()Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;
    .locals 1

    .line 115
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mPenaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 86
    monitor-exit p0

    return v0

    .line 88
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

    .line 76
    monitor-enter p0

    const-wide/16 v0, 0x4000

    .line 77
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    .line 78
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 78
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

    .line 134
    :pswitch_0
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->onChangePenaltyChargeGetFieldJavaLangStringUin(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 132
    :pswitch_1
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->onChangePenaltyChargeDriverLicence(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 130
    :pswitch_2
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->onChangePenaltyChargeGetFieldJavaLangStringDriverLicence(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 128
    :pswitch_3
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->onChangePenaltyChargeUin(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 126
    :pswitch_4
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->onChangePenaltyChargeCtc(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 124
    :pswitch_5
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->onChangePenaltyChargeGetFieldJavaLangStringCtc(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 122
    :pswitch_6
    check-cast p2, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->onChangePenaltyCharge(Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;I)Z

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

.method public setPenaltyCharge(Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;)V
    .locals 6

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, v0, p1}, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    .line 106
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mPenaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->mDirtyFlags:J

    .line 109
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x3e

    .line 110
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->notifyPropertyChanged(I)V

    .line 111
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 109
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x3e

    if-ne v0, p1, :cond_0

    .line 96
    check-cast p2, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;->setPenaltyCharge(Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
