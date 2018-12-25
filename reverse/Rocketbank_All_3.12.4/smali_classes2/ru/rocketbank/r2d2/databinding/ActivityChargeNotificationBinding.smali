.class public Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ActivityChargeNotificationBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final buttonCheck:Lru/rocketbank/core/widgets/RocketButton;

.field public final content:Landroid/widget/LinearLayout;

.field public final editTextCtc:Lru/rocketbank/core/widgets/RocketEditText;

.field public final editTextDriverLicence:Lru/rocketbank/core/widgets/RocketEditText;

.field public final editTextInn:Lru/rocketbank/core/widgets/RocketEditText;

.field private mDirtyFlags:J

.field private mPenaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

.field private mPenaltyTaxNotificationEnabled:Ljava/lang/Boolean;

.field private mTaxCharge:Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

.field private final mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mboundView4:Lru/rocketbank/core/widgets/RocketTextView;

.field public final rocketTextView2:Lru/rocketbank/core/widgets/RocketTextView;

.field public final switcherPenaltyTax:Landroid/support/v7/widget/SwitchCompat;

.field public final toolbar:Landroid/support/v7/widget/Toolbar;

.field public final toolbarShadow:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090371

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0902f4

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090091

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903dc

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/16 v0, 0x8

    .line 57
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 574
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    .line 58
    sget-object v1, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0xb

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/16 v1, 0x9

    .line 59
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketButton;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->buttonCheck:Lru/rocketbank/core/widgets/RocketButton;

    const/4 v1, 0x0

    .line 60
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->content:Landroid/widget/LinearLayout;

    .line 61
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->content:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x3

    .line 62
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->editTextCtc:Lru/rocketbank/core/widgets/RocketEditText;

    .line 63
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->editTextCtc:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketEditText;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x5

    .line 64
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->editTextDriverLicence:Lru/rocketbank/core/widgets/RocketEditText;

    .line 65
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->editTextDriverLicence:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketEditText;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x6

    .line 66
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->editTextInn:Lru/rocketbank/core/widgets/RocketEditText;

    .line 67
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->editTextInn:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketEditText;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x2

    .line 68
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    .line 69
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x4

    .line 70
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mboundView4:Lru/rocketbank/core/widgets/RocketTextView;

    .line 71
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mboundView4:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 72
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->rocketTextView2:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v0, 0x7

    .line 73
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->switcherPenaltyTax:Landroid/support/v7/widget/SwitchCompat;

    const/4 v0, 0x1

    .line 74
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 75
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xa

    .line 76
    aget-object p1, p1, v0

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->toolbarShadow:Landroid/view/View;

    .line 77
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->setRootTag(Landroid/view/View;)V

    .line 79
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;
    .locals 1

    .line 594
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;
    .locals 2

    const-string v0, "layout/activity_charge_notification_0"

    .line 598
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 599
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

    .line 601
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;
    .locals 1

    .line 586
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;
    .locals 3

    const v0, 0x7f0c0031

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 590
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;
    .locals 1

    .line 578
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;
    .locals 1

    const v0, 0x7f0c0031

    .line 582
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;

    return-object p0
.end method

.method private onChangePenaltyCharge(Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 185
    monitor-enter p0

    .line 186
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    .line 187
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

    .line 191
    monitor-enter p0

    .line 192
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x200

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    .line 193
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

    .line 197
    monitor-enter p0

    .line 198
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x20

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    .line 199
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

    .line 203
    monitor-enter p0

    .line 204
    :try_start_3
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    .line 205
    monitor-exit p0

    return p1

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private onChangePenaltyChargeCtc(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 257
    monitor-enter p0

    .line 258
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x20

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    .line 259
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

    .line 263
    monitor-enter p0

    .line 264
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    .line 265
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

    .line 269
    monitor-enter p0

    .line 270
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    .line 271
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

    .line 287
    monitor-enter p0

    .line 288
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    .line 289
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

    .line 293
    monitor-enter p0

    .line 294
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    .line 295
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

    .line 299
    monitor-enter p0

    .line 300
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x8000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    .line 301
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

    .line 248
    monitor-enter p0

    .line 249
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    .line 250
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

    .line 278
    monitor-enter p0

    .line 279
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x40

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

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

.method private onChangeTaxCharge(Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 212
    monitor-enter p0

    .line 213
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    .line 214
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/16 v0, 0x2e

    if-ne p2, v0, :cond_1

    .line 218
    monitor-enter p0

    .line 219
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    .line 220
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeTaxChargeGetFieldJavaLangStringInn(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 176
    monitor-enter p0

    .line 177
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

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

.method private onChangeTaxChargeInn(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 227
    monitor-enter p0

    .line 228
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    .line 229
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

    .line 233
    monitor-enter p0

    .line 234
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x400

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    .line 235
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

    .line 239
    monitor-enter p0

    .line 240
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x800

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    .line 241
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
    .locals 39

    move-object/from16 v1, p0

    .line 310
    monitor-enter p0

    .line 311
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 312
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    .line 313
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mPenaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    .line 320
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mTaxCharge:Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

    const-wide/32 v8, 0x1f2f2

    and-long v10, v2, v8

    cmp-long v8, v10, v4

    const-wide/32 v15, 0x12022

    const-wide/32 v17, 0x11022

    const-wide/32 v19, 0x10012

    const-wide/32 v21, 0x10202

    const v9, 0x7f080294

    const v10, 0x7f080296

    if-eqz v8, :cond_18

    and-long v25, v2, v21

    cmp-long v8, v25, v4

    if-eqz v8, :cond_3

    if-eqz v6, :cond_0

    .line 345
    invoke-virtual {v6}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getIKnowNum()Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 350
    :goto_0
    invoke-static {v8}, Landroid/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v8

    cmp-long v27, v25, v4

    if-eqz v27, :cond_2

    if-eqz v8, :cond_1

    const-wide/32 v25, 0x1000000

    or-long v27, v2, v25

    :goto_1
    move-wide/from16 v2, v27

    goto :goto_2

    :cond_1
    const-wide/32 v25, 0x800000

    or-long v27, v2, v25

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v8, :cond_3

    const/16 v8, 0x8

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    and-long v25, v2, v19

    cmp-long v27, v25, v4

    if-eqz v27, :cond_5

    if-eqz v6, :cond_4

    const-string v12, "ctc"

    .line 368
    invoke-virtual {v6, v12}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getField(Ljava/lang/String;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v12

    goto :goto_4

    :cond_4
    const/4 v12, 0x0

    :goto_4
    const/4 v11, 0x4

    .line 370
    invoke-virtual {v1, v11, v12}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v12, :cond_5

    .line 375
    invoke-virtual {v12}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getWatcher()Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    move-result-object v11

    move-object v12, v11

    goto :goto_5

    :cond_5
    const/4 v12, 0x0

    :goto_5
    const-wide/32 v25, 0x13022

    and-long v27, v2, v25

    cmp-long v11, v27, v4

    if-eqz v11, :cond_d

    if-eqz v6, :cond_6

    .line 382
    invoke-virtual {v6}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getCtc()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v11

    goto :goto_6

    :cond_6
    const/4 v11, 0x0

    :goto_6
    const/4 v13, 0x5

    .line 384
    invoke-virtual {v1, v13, v11}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    and-long v13, v2, v17

    cmp-long v25, v13, v4

    if-eqz v25, :cond_b

    if-eqz v11, :cond_7

    .line 390
    invoke-virtual {v11}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v25

    goto :goto_7

    :cond_7
    const/16 v25, 0x0

    :goto_7
    cmp-long v26, v13, v4

    if-eqz v26, :cond_9

    if-eqz v25, :cond_8

    const-wide/32 v13, 0x100000

    or-long v26, v2, v13

    :goto_8
    move-wide/from16 v2, v26

    goto :goto_9

    :cond_8
    const-wide/32 v13, 0x80000

    or-long v26, v2, v13

    goto :goto_8

    :cond_9
    :goto_9
    if-eqz v25, :cond_a

    .line 403
    iget-object v13, v1, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->editTextCtc:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v13, v10}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    goto :goto_a

    :cond_a
    iget-object v13, v1, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->editTextCtc:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v13, v9}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    goto :goto_a

    :cond_b
    const/4 v13, 0x0

    :goto_a
    and-long v25, v2, v15

    cmp-long v14, v25, v4

    if-eqz v14, :cond_c

    if-eqz v11, :cond_c

    .line 409
    invoke-virtual {v11}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v11

    goto :goto_b

    :cond_c
    const/4 v11, 0x0

    goto :goto_b

    :cond_d
    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_b
    const-wide/32 v25, 0x10042

    and-long v27, v2, v25

    cmp-long v14, v27, v4

    if-eqz v14, :cond_f

    if-eqz v6, :cond_e

    const-string v14, "driver_licence"

    .line 417
    invoke-virtual {v6, v14}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getField(Ljava/lang/String;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v14

    goto :goto_c

    :cond_e
    const/4 v14, 0x0

    :goto_c
    const/4 v15, 0x6

    .line 419
    invoke-virtual {v1, v15, v14}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v14, :cond_f

    .line 424
    invoke-virtual {v14}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getWatcher()Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    move-result-object v14

    goto :goto_d

    :cond_f
    const/4 v14, 0x0

    :goto_d
    const-wide/32 v15, 0x1c082

    and-long v25, v2, v15

    cmp-long v15, v25, v4

    if-eqz v15, :cond_17

    if-eqz v6, :cond_10

    .line 431
    invoke-virtual {v6}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getDriver_licence()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v6

    goto :goto_e

    :cond_10
    const/4 v6, 0x0

    :goto_e
    const/4 v15, 0x7

    .line 433
    invoke-virtual {v1, v15, v6}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    const-wide/32 v15, 0x18082

    and-long v25, v2, v15

    cmp-long v15, v25, v4

    if-eqz v15, :cond_11

    if-eqz v6, :cond_11

    .line 439
    invoke-virtual {v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v15

    goto :goto_f

    :cond_11
    const/4 v15, 0x0

    :goto_f
    const-wide/32 v23, 0x14082

    and-long v25, v2, v23

    cmp-long v16, v25, v4

    if-eqz v16, :cond_16

    if-eqz v6, :cond_12

    .line 446
    invoke-virtual {v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v6

    goto :goto_10

    :cond_12
    const/4 v6, 0x0

    :goto_10
    cmp-long v16, v25, v4

    if-eqz v16, :cond_14

    if-eqz v6, :cond_13

    const-wide/32 v25, 0x400000

    or-long v27, v2, v25

    :goto_11
    move-wide/from16 v2, v27

    goto :goto_12

    :cond_13
    const-wide/32 v25, 0x200000

    or-long v27, v2, v25

    goto :goto_11

    :cond_14
    :goto_12
    if-eqz v6, :cond_15

    .line 459
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->editTextDriverLicence:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v6, v10}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_14

    :cond_15
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->editTextDriverLicence:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v6, v9}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_14

    :cond_16
    const/4 v6, 0x0

    goto :goto_14

    :cond_17
    const/4 v6, 0x0

    goto :goto_13

    :cond_18
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_13
    const/4 v15, 0x0

    :goto_14
    const-wide/32 v25, 0x10c0d

    and-long v27, v2, v25

    cmp-long v16, v27, v4

    const-wide/32 v25, 0x1080c

    const-wide/32 v27, 0x1040c

    const-wide/32 v31, 0x10005

    if-eqz v16, :cond_24

    and-long v33, v2, v31

    cmp-long v16, v33, v4

    if-eqz v16, :cond_1a

    if-eqz v7, :cond_19

    const-string v9, "inn"

    .line 470
    invoke-virtual {v7, v9}, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;->getField(Ljava/lang/String;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v9

    goto :goto_15

    :cond_19
    const/4 v9, 0x0

    :goto_15
    const/4 v10, 0x0

    .line 472
    invoke-virtual {v1, v10, v9}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v9, :cond_1b

    .line 477
    invoke-virtual {v9}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getWatcher()Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    move-result-object v9

    goto :goto_16

    :cond_1a
    const/4 v10, 0x0

    :cond_1b
    const/4 v9, 0x0

    :goto_16
    const-wide/32 v33, 0x10c0c

    and-long v35, v2, v33

    cmp-long v16, v35, v4

    if-eqz v16, :cond_23

    if-eqz v7, :cond_1c

    .line 484
    invoke-virtual {v7}, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;->getInn()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v7

    goto :goto_17

    :cond_1c
    const/4 v7, 0x0

    :goto_17
    const/4 v10, 0x3

    .line 486
    invoke-virtual {v1, v10, v7}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    and-long v33, v2, v27

    cmp-long v10, v33, v4

    if-eqz v10, :cond_21

    if-eqz v7, :cond_1d

    .line 492
    invoke-virtual {v7}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v10

    move/from16 v37, v10

    goto :goto_18

    :cond_1d
    const/16 v37, 0x0

    :goto_18
    cmp-long v10, v33, v4

    if-eqz v10, :cond_1f

    if-eqz v37, :cond_1e

    const-wide/32 v33, 0x40000

    or-long v35, v2, v33

    goto :goto_19

    :cond_1e
    const-wide/32 v33, 0x20000

    or-long v35, v2, v33

    goto :goto_19

    :cond_1f
    move-wide/from16 v35, v2

    :goto_19
    if-eqz v37, :cond_20

    .line 505
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->editTextInn:Lru/rocketbank/core/widgets/RocketEditText;

    const v3, 0x7f080296

    :goto_1a
    invoke-static {v2, v3}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1b

    :cond_20
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->editTextInn:Lru/rocketbank/core/widgets/RocketEditText;

    const v3, 0x7f080294

    goto :goto_1a

    :goto_1b
    move-object v10, v2

    move-wide/from16 v2, v35

    goto :goto_1c

    :cond_21
    const/4 v10, 0x0

    :goto_1c
    and-long v33, v2, v25

    cmp-long v16, v33, v4

    if-eqz v16, :cond_22

    if-eqz v7, :cond_22

    .line 511
    invoke-virtual {v7}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v7

    goto :goto_1e

    :cond_22
    const/4 v7, 0x0

    goto :goto_1e

    :cond_23
    const/4 v7, 0x0

    goto :goto_1d

    :cond_24
    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_1d
    const/4 v10, 0x0

    :goto_1e
    and-long v29, v2, v19

    cmp-long v16, v29, v4

    if-eqz v16, :cond_25

    .line 520
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->editTextCtc:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v4, v12}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_25
    and-long v4, v2, v17

    const-wide/16 v16, 0x0

    cmp-long v12, v4, v16

    if-eqz v12, :cond_26

    .line 525
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->editTextCtc:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v4, v13}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_26
    const-wide/32 v4, 0x12022

    and-long v12, v2, v4

    cmp-long v4, v12, v16

    if-eqz v4, :cond_27

    .line 530
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->editTextCtc:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v4, v11}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_27
    and-long v4, v2, v21

    cmp-long v11, v4, v16

    if-eqz v11, :cond_28

    .line 535
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->editTextCtc:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v4, v8}, Lru/rocketbank/core/widgets/RocketEditText;->setVisibility(I)V

    .line 536
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->editTextDriverLicence:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v4, v8}, Lru/rocketbank/core/widgets/RocketEditText;->setVisibility(I)V

    .line 537
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v4, v8}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 538
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mboundView4:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v4, v8}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    :cond_28
    const-wide/32 v4, 0x10042

    and-long v11, v2, v4

    const-wide/16 v4, 0x0

    cmp-long v8, v11, v4

    if-eqz v8, :cond_29

    .line 543
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->editTextDriverLicence:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v8, v14}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_29
    const-wide/32 v11, 0x14082

    and-long v13, v2, v11

    cmp-long v8, v13, v4

    if-eqz v8, :cond_2a

    .line 548
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->editTextDriverLicence:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v8, v6}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_2a
    const-wide/32 v11, 0x18082

    and-long v13, v2, v11

    cmp-long v6, v13, v4

    if-eqz v6, :cond_2b

    .line 553
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->editTextDriverLicence:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v6, v15}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_2b
    and-long v11, v2, v31

    cmp-long v6, v11, v4

    if-eqz v6, :cond_2c

    .line 558
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->editTextInn:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v6, v9}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2c
    and-long v8, v2, v27

    cmp-long v6, v8, v4

    if-eqz v6, :cond_2d

    .line 563
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->editTextInn:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v6, v10}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_2d
    and-long v8, v2, v25

    cmp-long v2, v8, v4

    if-eqz v2, :cond_2e

    .line 568
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->editTextInn:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v2, v7}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_2e
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 313
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getPenaltyCharge()Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;
    .locals 1

    .line 129
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mPenaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    return-object v0
.end method

.method public getPenaltyTaxNotificationEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 149
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mPenaltyTaxNotificationEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTaxCharge()Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;
    .locals 1

    .line 142
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mTaxCharge:Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 94
    monitor-exit p0

    return v0

    .line 96
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

    .line 84
    monitor-enter p0

    const-wide/32 v0, 0x10000

    .line 85
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    .line 86
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 86
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
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->onChangePenaltyChargeDriverLicence(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 168
    :pswitch_1
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->onChangePenaltyChargeGetFieldJavaLangStringDriverLicence(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 166
    :pswitch_2
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->onChangePenaltyChargeCtc(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 164
    :pswitch_3
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->onChangePenaltyChargeGetFieldJavaLangStringCtc(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 162
    :pswitch_4
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->onChangeTaxChargeInn(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 160
    :pswitch_5
    check-cast p2, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->onChangeTaxCharge(Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;I)Z

    move-result p1

    return p1

    .line 158
    :pswitch_6
    check-cast p2, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->onChangePenaltyCharge(Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;I)Z

    move-result p1

    return p1

    .line 156
    :pswitch_7
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->onChangeTaxChargeGetFieldJavaLangStringInn(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

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

.method public setPenaltyCharge(Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;)V
    .locals 6

    const/4 v0, 0x1

    .line 119
    invoke-virtual {p0, v0, p1}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    .line 120
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mPenaltyCharge:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    .line 123
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x3e

    .line 124
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->notifyPropertyChanged(I)V

    .line 125
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 123
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setPenaltyTaxNotificationEnabled(Ljava/lang/Boolean;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mPenaltyTaxNotificationEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public setTaxCharge(Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;)V
    .locals 6

    const/4 v0, 0x2

    .line 132
    invoke-virtual {p0, v0, p1}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    .line 133
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mTaxCharge:Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->mDirtyFlags:J

    .line 136
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x4e

    .line 137
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->notifyPropertyChanged(I)V

    .line 138
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 136
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

    .line 104
    check-cast p2, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->setPenaltyCharge(Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x4e

    if-ne v0, p1, :cond_1

    .line 107
    check-cast p2, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->setTaxCharge(Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x3f

    if-ne v0, p1, :cond_2

    .line 110
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;->setPenaltyTaxNotificationEnabled(Ljava/lang/Boolean;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
