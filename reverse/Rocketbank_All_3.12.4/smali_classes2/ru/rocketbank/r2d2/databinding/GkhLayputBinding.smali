.class public Lru/rocketbank/r2d2/databinding/GkhLayputBinding;
.super Landroid/databinding/ViewDataBinding;
.source "GkhLayputBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final gkhAccountNumber:Lru/rocketbank/core/widgets/RocketEditText;

.field public final gkhDocNumber:Lru/rocketbank/core/widgets/RocketEditText;

.field public final gkhFields:Landroid/widget/LinearLayout;

.field public final gkhInfo:Lru/rocketbank/core/widgets/RocketTextView;

.field public final gkhPaymentDocumentId:Lru/rocketbank/core/widgets/RocketEditText;

.field public final gkhPeriod:Lru/rocketbank/core/widgets/RocketTextView;

.field private gkhPeriodandroidTextAttrChanged:Landroid/databinding/InverseBindingListener;

.field public final gkhServiceId:Lru/rocketbank/core/widgets/RocketEditText;

.field public final gkhSwitch:Landroid/support/v7/widget/CardView;

.field public final gkhUnitedFaceNumber:Lru/rocketbank/core/widgets/RocketEditText;

.field private mCorporate:Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

.field private mDirtyFlags:J

.field public final value:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901a3

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090403

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901a0

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    const/16 v0, 0xd

    .line 87
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    .line 48
    new-instance v0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding$1;-><init>(Lru/rocketbank/r2d2/databinding/GkhLayputBinding;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhPeriodandroidTextAttrChanged:Landroid/databinding/InverseBindingListener;

    const-wide/16 v0, -0x1

    .line 878
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    .line 88
    sget-object v0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xa

    invoke-static {p1, p2, v2, v0, v1}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    .line 89
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhAccountNumber:Lru/rocketbank/core/widgets/RocketEditText;

    .line 90
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhAccountNumber:Lru/rocketbank/core/widgets/RocketEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x6

    .line 91
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhDocNumber:Lru/rocketbank/core/widgets/RocketEditText;

    .line 92
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhDocNumber:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 93
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhFields:Landroid/widget/LinearLayout;

    .line 94
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhFields:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x9

    .line 95
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhInfo:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v0, 0x3

    .line 96
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhPaymentDocumentId:Lru/rocketbank/core/widgets/RocketEditText;

    .line 97
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhPaymentDocumentId:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 98
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhPeriod:Lru/rocketbank/core/widgets/RocketTextView;

    .line 99
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhPeriod:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 100
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhServiceId:Lru/rocketbank/core/widgets/RocketEditText;

    .line 101
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhServiceId:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x7

    .line 102
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhSwitch:Landroid/support/v7/widget/CardView;

    const/4 v0, 0x5

    .line 103
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhUnitedFaceNumber:Lru/rocketbank/core/widgets/RocketEditText;

    .line 104
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhUnitedFaceNumber:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x8

    .line 105
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->value:Lru/rocketbank/core/widgets/RocketTextView;

    .line 106
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->setRootTag(Landroid/view/View;)V

    .line 108
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->invalidateAll()V

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/databinding/GkhLayputBinding;)Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;
    .locals 0

    .line 8
    iget-object p0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mCorporate:Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    return-object p0
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/GkhLayputBinding;
    .locals 1

    .line 898
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/GkhLayputBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/GkhLayputBinding;
    .locals 2

    const-string v0, "layout/gkh_layput_0"

    .line 902
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 903
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

    .line 905
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/GkhLayputBinding;
    .locals 1

    .line 890
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/GkhLayputBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/GkhLayputBinding;
    .locals 3

    const v0, 0x7f0c010b

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 894
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/GkhLayputBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/GkhLayputBinding;
    .locals 1

    .line 882
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/GkhLayputBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/GkhLayputBinding;
    .locals 1

    const v0, 0x7f0c010b

    .line 886
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;

    return-object p0
.end method

.method private onChangeCorporate(Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 312
    monitor-enter p0

    .line 313
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    .line 314
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/16 v0, 0x22

    if-ne p2, v0, :cond_1

    .line 318
    monitor-enter p0

    .line 319
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    .line 320
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const/16 v0, 0x27

    if-ne p2, v0, :cond_2

    .line 324
    monitor-enter p0

    .line 325
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x100

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    .line 326
    monitor-exit p0

    return p1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_2
    const/16 v0, 0x25

    if-ne p2, v0, :cond_3

    .line 330
    monitor-enter p0

    .line 331
    :try_start_3
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    .line 332
    monitor-exit p0

    return p1

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    :cond_3
    const/16 v0, 0x24

    if-ne p2, v0, :cond_4

    .line 336
    monitor-enter p0

    .line 337
    :try_start_4
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    .line 338
    monitor-exit p0

    return p1

    :catchall_4
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw p1

    :cond_4
    const/16 v0, 0x23

    if-ne p2, v0, :cond_5

    .line 342
    monitor-enter p0

    .line 343
    :try_start_5
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    .line 344
    monitor-exit p0

    return p1

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw p1

    :cond_5
    const/16 v0, 0x26

    if-ne p2, v0, :cond_6

    .line 348
    monitor-enter p0

    .line 349
    :try_start_6
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x40

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    .line 350
    monitor-exit p0

    return p1

    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeCorporateFieldsGkhAccountNumber(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 378
    monitor-enter p0

    .line 379
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x200

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    .line 380
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

.method private onChangeCorporateFieldsGkhEls(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 189
    monitor-enter p0

    .line 190
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    .line 191
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

.method private onChangeCorporateFieldsGkhMcServiceId(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 282
    monitor-enter p0

    .line 283
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    .line 284
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

.method private onChangeCorporateFieldsGkhPaymentDocumentId(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 387
    monitor-enter p0

    .line 388
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x400

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    .line 389
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

.method private onChangeCorporateFieldsGkhPaymentDocumentNumber(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 396
    monitor-enter p0

    .line 397
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x800

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    .line 398
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

.method private onChangeCorporateGkhAccountNumber(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 261
    monitor-enter p0

    .line 262
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    .line 263
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

    .line 267
    monitor-enter p0

    .line 268
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x80000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    .line 269
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

    .line 273
    monitor-enter p0

    .line 274
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x100000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    .line 275
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

.method private onChangeCorporateGkhEls(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 198
    monitor-enter p0

    .line 199
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    .line 200
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

    .line 204
    monitor-enter p0

    .line 205
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    .line 206
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

    .line 210
    monitor-enter p0

    .line 211
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    .line 212
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

.method private onChangeCorporateGkhMcServiceId(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 219
    monitor-enter p0

    .line 220
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    .line 221
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

    .line 225
    monitor-enter p0

    .line 226
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x8000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    .line 227
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

    .line 231
    monitor-enter p0

    .line 232
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x10000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    .line 233
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

.method private onChangeCorporateGkhPaymentDocumentId(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 240
    monitor-enter p0

    .line 241
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    .line 242
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

    .line 246
    monitor-enter p0

    .line 247
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x20000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    .line 248
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

    .line 252
    monitor-enter p0

    .line 253
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x40000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    .line 254
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

.method private onChangeCorporateGkhPaymentDocumentNumber(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 291
    monitor-enter p0

    .line 292
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x40

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    .line 293
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

    .line 297
    monitor-enter p0

    .line 298
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x200000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    .line 299
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

    .line 303
    monitor-enter p0

    .line 304
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x400000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    .line 305
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

.method private onChangeCorporateGkhPeriod(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 357
    monitor-enter p0

    .line 358
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x100

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    .line 359
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

    .line 363
    monitor-enter p0

    .line 364
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x800000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    .line 365
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

    .line 369
    monitor-enter p0

    .line 370
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x1000000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    .line 371
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

.method private onChangeCorporateGkhVisible(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 405
    monitor-enter p0

    .line 406
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1000

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    .line 407
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
    .locals 62

    move-object/from16 v1, p0

    .line 416
    monitor-enter p0

    .line 417
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 418
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    .line 419
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mCorporate:Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    const-wide/32 v7, 0x3ffffff

    and-long v9, v2, v7

    cmp-long v7, v9, v4

    const-wide/32 v16, 0x2020088

    const-wide/32 v18, 0x2040088

    const-wide/32 v20, 0x2008084

    const-wide/32 v22, 0x2010084

    const-wide/32 v24, 0x2002082

    const-wide/32 v26, 0x2004082

    if-eqz v7, :cond_46

    const-wide/32 v30, 0x2006082

    and-long v32, v2, v30

    cmp-long v7, v32, v4

    const v9, 0x7f080294

    const v8, 0x7f080296

    if-eqz v7, :cond_7

    if-eqz v6, :cond_0

    .line 467
    invoke-virtual {v6}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->getGkh_els()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const/4 v10, 0x1

    .line 469
    invoke-virtual {v1, v10, v7}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    and-long v10, v2, v26

    cmp-long v30, v10, v4

    if-eqz v30, :cond_1

    if-eqz v7, :cond_1

    .line 475
    invoke-virtual {v7}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    and-long v30, v2, v24

    cmp-long v11, v30, v4

    if-eqz v11, :cond_6

    if-eqz v7, :cond_2

    .line 482
    invoke-virtual {v7}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v7

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    cmp-long v11, v30, v4

    if-eqz v11, :cond_4

    if-eqz v7, :cond_3

    const-wide/32 v30, 0x8000000

    or-long v32, v2, v30

    :goto_3
    move-wide/from16 v2, v32

    goto :goto_4

    :cond_3
    const-wide/32 v30, 0x4000000

    or-long v32, v2, v30

    goto :goto_3

    :cond_4
    :goto_4
    if-eqz v7, :cond_5

    .line 495
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhUnitedFaceNumber:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v7, v8}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_5

    :cond_5
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhUnitedFaceNumber:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v7, v9}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_5
    const-wide/32 v30, 0x2018084

    and-long v32, v2, v30

    cmp-long v11, v32, v4

    if-eqz v11, :cond_f

    if-eqz v6, :cond_8

    .line 502
    invoke-virtual {v6}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->getGkh_mc_service_id()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v11

    goto :goto_6

    :cond_8
    const/4 v11, 0x0

    :goto_6
    const/4 v12, 0x2

    .line 504
    invoke-virtual {v1, v12, v11}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    and-long v12, v2, v22

    cmp-long v30, v12, v4

    if-eqz v30, :cond_9

    if-eqz v11, :cond_9

    .line 510
    invoke-virtual {v11}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v12

    goto :goto_7

    :cond_9
    const/4 v12, 0x0

    :goto_7
    and-long v30, v2, v20

    cmp-long v13, v30, v4

    if-eqz v13, :cond_e

    if-eqz v11, :cond_a

    .line 517
    invoke-virtual {v11}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v11

    goto :goto_8

    :cond_a
    const/4 v11, 0x0

    :goto_8
    cmp-long v13, v30, v4

    if-eqz v13, :cond_c

    if-eqz v11, :cond_b

    const-wide v30, 0x80000000L

    or-long v32, v2, v30

    :goto_9
    move-wide/from16 v2, v32

    goto :goto_a

    :cond_b
    const-wide/32 v30, 0x40000000

    or-long v32, v2, v30

    goto :goto_9

    :cond_c
    :goto_a
    if-eqz v11, :cond_d

    .line 530
    iget-object v11, v1, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhServiceId:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v11, v8}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    goto :goto_b

    :cond_d
    iget-object v11, v1, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhServiceId:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v11, v9}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    goto :goto_b

    :cond_e
    const/4 v11, 0x0

    goto :goto_b

    :cond_f
    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_b
    const-wide/32 v30, 0x2060088

    and-long v32, v2, v30

    cmp-long v13, v32, v4

    if-eqz v13, :cond_17

    if-eqz v6, :cond_10

    .line 537
    invoke-virtual {v6}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->getGkh_payment_document_id()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v13

    goto :goto_c

    :cond_10
    const/4 v13, 0x0

    :goto_c
    const/4 v14, 0x3

    .line 539
    invoke-virtual {v1, v14, v13}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    and-long v14, v2, v18

    cmp-long v30, v14, v4

    if-eqz v30, :cond_11

    if-eqz v13, :cond_11

    .line 545
    invoke-virtual {v13}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v14

    goto :goto_d

    :cond_11
    const/4 v14, 0x0

    :goto_d
    and-long v30, v2, v16

    cmp-long v15, v30, v4

    if-eqz v15, :cond_16

    if-eqz v13, :cond_12

    .line 552
    invoke-virtual {v13}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v13

    goto :goto_e

    :cond_12
    const/4 v13, 0x0

    :goto_e
    cmp-long v15, v30, v4

    if-eqz v15, :cond_14

    if-eqz v13, :cond_13

    const-wide/32 v30, 0x20000000

    or-long v32, v2, v30

    :goto_f
    move-wide/from16 v2, v32

    goto :goto_10

    :cond_13
    const-wide/32 v30, 0x10000000

    or-long v32, v2, v30

    goto :goto_f

    :cond_14
    :goto_10
    if-eqz v13, :cond_15

    .line 565
    iget-object v13, v1, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhPaymentDocumentId:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v13, v8}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    goto :goto_11

    :cond_15
    iget-object v13, v1, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhPaymentDocumentId:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v13, v9}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    goto :goto_11

    :cond_16
    const/4 v13, 0x0

    goto :goto_11

    :cond_17
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_11
    const-wide/32 v30, 0x2180090

    and-long v32, v2, v30

    cmp-long v15, v32, v4

    if-eqz v15, :cond_1f

    if-eqz v6, :cond_18

    .line 572
    invoke-virtual {v6}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->getGkh_account_number()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v15

    goto :goto_12

    :cond_18
    const/4 v15, 0x0

    :goto_12
    const/4 v9, 0x4

    .line 574
    invoke-virtual {v1, v9, v15}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    const-wide/32 v30, 0x2080090

    and-long v32, v2, v30

    cmp-long v9, v32, v4

    if-eqz v9, :cond_1d

    if-eqz v15, :cond_19

    .line 580
    invoke-virtual {v15}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v9

    goto :goto_13

    :cond_19
    const/4 v9, 0x0

    :goto_13
    cmp-long v30, v32, v4

    if-eqz v30, :cond_1b

    if-eqz v9, :cond_1a

    const-wide v30, 0x800000000L

    or-long v32, v2, v30

    goto :goto_14

    :cond_1a
    const-wide v30, 0x400000000L

    or-long v32, v2, v30

    goto :goto_14

    :cond_1b
    move-wide/from16 v32, v2

    :goto_14
    if-eqz v9, :cond_1c

    .line 593
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhAccountNumber:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v2, v8}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_15
    move-object v9, v2

    goto :goto_16

    :cond_1c
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhAccountNumber:Lru/rocketbank/core/widgets/RocketEditText;

    const v3, 0x7f080294

    invoke-static {v2, v3}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_15

    :goto_16
    move-wide/from16 v2, v32

    goto :goto_17

    :cond_1d
    const/4 v9, 0x0

    :goto_17
    const-wide/32 v30, 0x2100090

    and-long v32, v2, v30

    cmp-long v30, v32, v4

    if-eqz v30, :cond_1e

    if-eqz v15, :cond_1e

    .line 599
    invoke-virtual {v15}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v61, v15

    move-object v15, v9

    move-object/from16 v9, v61

    goto :goto_18

    :cond_1e
    move-object v15, v9

    const/4 v9, 0x0

    goto :goto_18

    :cond_1f
    const/4 v9, 0x0

    const/4 v15, 0x0

    :goto_18
    const-wide/32 v30, 0x26000c0

    and-long v32, v2, v30

    cmp-long v30, v32, v4

    if-eqz v30, :cond_27

    if-eqz v6, :cond_20

    .line 607
    invoke-virtual {v6}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->getGkh_payment_document_number()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v30

    move-object/from16 v8, v30

    goto :goto_19

    :cond_20
    const/4 v8, 0x0

    :goto_19
    const/4 v4, 0x6

    .line 609
    invoke-virtual {v1, v4, v8}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    const-wide/32 v4, 0x24000c0

    and-long v30, v2, v4

    const-wide/16 v4, 0x0

    cmp-long v32, v30, v4

    if-eqz v32, :cond_21

    if-eqz v8, :cond_21

    .line 615
    invoke-virtual {v8}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v30

    const-wide/32 v28, 0x22000c0

    goto :goto_1a

    :cond_21
    const-wide/32 v28, 0x22000c0

    const/16 v30, 0x0

    :goto_1a
    and-long v31, v2, v28

    cmp-long v33, v31, v4

    if-eqz v33, :cond_26

    if-eqz v8, :cond_22

    .line 622
    invoke-virtual {v8}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v8

    goto :goto_1b

    :cond_22
    const/4 v8, 0x0

    :goto_1b
    cmp-long v33, v31, v4

    if-eqz v33, :cond_24

    if-eqz v8, :cond_23

    const-wide v4, 0x2000000000L

    or-long v31, v2, v4

    :goto_1c
    move-wide/from16 v2, v31

    goto :goto_1d

    :cond_23
    const-wide v4, 0x1000000000L

    or-long v31, v2, v4

    goto :goto_1c

    :cond_24
    :goto_1d
    if-eqz v8, :cond_25

    .line 635
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhDocNumber:Lru/rocketbank/core/widgets/RocketEditText;

    const v5, 0x7f080296

    :goto_1e
    invoke-static {v4, v5}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_1f

    :cond_25
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhDocNumber:Lru/rocketbank/core/widgets/RocketEditText;

    const v5, 0x7f080294

    goto :goto_1e

    :cond_26
    const/4 v4, 0x0

    goto :goto_1f

    :cond_27
    const/4 v4, 0x0

    const/16 v30, 0x0

    :goto_1f
    const-wide/32 v31, 0x3800180

    and-long v43, v2, v31

    const-wide/16 v31, 0x0

    cmp-long v5, v43, v31

    if-eqz v5, :cond_2f

    if-eqz v6, :cond_28

    .line 642
    invoke-virtual {v6}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->getGkh_period()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v5

    goto :goto_20

    :cond_28
    const/4 v5, 0x0

    :goto_20
    const/16 v8, 0x8

    .line 644
    invoke-virtual {v1, v8, v5}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    const-wide/32 v41, 0x2800180

    and-long v43, v2, v41

    cmp-long v8, v43, v31

    if-eqz v8, :cond_2d

    if-eqz v5, :cond_29

    .line 650
    invoke-virtual {v5}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v8

    goto :goto_21

    :cond_29
    const/4 v8, 0x0

    :goto_21
    cmp-long v33, v43, v31

    if-eqz v33, :cond_2b

    if-eqz v8, :cond_2a

    const-wide v31, 0x200000000L

    or-long v43, v2, v31

    :goto_22
    move-wide/from16 v2, v43

    goto :goto_23

    :cond_2a
    const-wide v31, 0x100000000L

    or-long v43, v2, v31

    goto :goto_22

    :cond_2b
    :goto_23
    if-eqz v8, :cond_2c

    .line 663
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhPeriod:Lru/rocketbank/core/widgets/RocketTextView;

    move-wide/from16 v45, v2

    const v2, 0x7f080296

    invoke-static {v8, v2}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_24

    :cond_2c
    move-wide/from16 v45, v2

    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhPeriod:Lru/rocketbank/core/widgets/RocketTextView;

    const v3, 0x7f080294

    invoke-static {v2, v3}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_24

    :cond_2d
    move-wide/from16 v45, v2

    const/4 v2, 0x0

    :goto_24
    const-wide/32 v31, 0x3000180

    and-long v39, v45, v31

    const-wide/16 v31, 0x0

    cmp-long v3, v39, v31

    if-eqz v3, :cond_2e

    if-eqz v5, :cond_2e

    .line 669
    invoke-virtual {v5}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object v8, v2

    move-object v5, v3

    move-wide/from16 v2, v45

    goto :goto_25

    :cond_2e
    move-object v8, v2

    move-wide/from16 v2, v45

    const/4 v5, 0x0

    goto :goto_25

    :cond_2f
    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_25
    const-wide/32 v39, 0x2000ea1

    and-long v41, v2, v39

    cmp-long v33, v41, v31

    if-eqz v33, :cond_3f

    if-eqz v6, :cond_30

    .line 677
    invoke-virtual {v6}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->getFields()Ljava/util/HashMap;

    move-result-object v33

    move-object/from16 v47, v4

    move-object/from16 v4, v33

    goto :goto_26

    :cond_30
    move-object/from16 v47, v4

    const/4 v4, 0x0

    :goto_26
    const-wide/32 v39, 0x2000081

    and-long v41, v2, v39

    cmp-long v33, v41, v31

    if-eqz v33, :cond_32

    if-eqz v4, :cond_31

    move-object/from16 v48, v5

    const-string v5, "gkh_els"

    .line 684
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-object/from16 v49, v7

    goto :goto_27

    :cond_31
    move-object/from16 v48, v5

    move-object/from16 v49, v7

    const/4 v5, 0x0

    :goto_27
    const/4 v7, 0x0

    .line 686
    invoke-virtual {v1, v7, v5}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v5, :cond_33

    .line 691
    invoke-virtual {v5}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getWatcher()Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    move-result-object v5

    goto :goto_28

    :cond_32
    move-object/from16 v48, v5

    move-object/from16 v49, v7

    const/4 v7, 0x0

    :cond_33
    const/4 v5, 0x0

    :goto_28
    const-wide/32 v31, 0x20000a0

    and-long v39, v2, v31

    const-wide/16 v31, 0x0

    cmp-long v33, v39, v31

    if-eqz v33, :cond_35

    if-eqz v4, :cond_34

    const-string v7, "gkh_mc_service_id"

    .line 698
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-object/from16 v51, v5

    goto :goto_29

    :cond_34
    move-object/from16 v51, v5

    const/4 v7, 0x0

    :goto_29
    const/4 v5, 0x5

    .line 700
    invoke-virtual {v1, v5, v7}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_36

    .line 705
    invoke-virtual {v7}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getWatcher()Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    move-result-object v5

    goto :goto_2a

    :cond_35
    move-object/from16 v51, v5

    :cond_36
    const/4 v5, 0x0

    :goto_2a
    const-wide/32 v31, 0x2000280

    and-long v39, v2, v31

    const-wide/16 v31, 0x0

    cmp-long v7, v39, v31

    if-eqz v7, :cond_38

    if-eqz v4, :cond_37

    const-string v7, "gkh_account_number"

    .line 712
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-object/from16 v52, v5

    goto :goto_2b

    :cond_37
    move-object/from16 v52, v5

    const/4 v7, 0x0

    :goto_2b
    const/16 v5, 0x9

    .line 714
    invoke-virtual {v1, v5, v7}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_39

    .line 719
    invoke-virtual {v7}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getWatcher()Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    move-result-object v5

    goto :goto_2c

    :cond_38
    move-object/from16 v52, v5

    :cond_39
    const/4 v5, 0x0

    :goto_2c
    const-wide/32 v31, 0x2000480

    and-long v39, v2, v31

    const-wide/16 v31, 0x0

    cmp-long v7, v39, v31

    if-eqz v7, :cond_3b

    if-eqz v4, :cond_3a

    const-string v7, "gkh_payment_document_id"

    .line 726
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-object/from16 v53, v5

    goto :goto_2d

    :cond_3a
    move-object/from16 v53, v5

    const/4 v7, 0x0

    :goto_2d
    const/16 v5, 0xa

    .line 728
    invoke-virtual {v1, v5, v7}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_3c

    .line 733
    invoke-virtual {v7}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getWatcher()Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    move-result-object v5

    goto :goto_2e

    :cond_3b
    move-object/from16 v53, v5

    :cond_3c
    const/4 v5, 0x0

    :goto_2e
    const-wide/32 v31, 0x2000880

    and-long v39, v2, v31

    const-wide/16 v31, 0x0

    cmp-long v7, v39, v31

    if-eqz v7, :cond_3e

    if-eqz v4, :cond_3d

    const-string v7, "gkh_payment_document_number"

    .line 740
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    goto :goto_2f

    :cond_3d
    const/4 v4, 0x0

    :goto_2f
    const/16 v7, 0xb

    .line 742
    invoke-virtual {v1, v7, v4}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v4, :cond_3e

    .line 747
    invoke-virtual {v4}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getWatcher()Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    move-result-object v4

    goto :goto_30

    :cond_3e
    const/4 v4, 0x0

    goto :goto_30

    :cond_3f
    move-object/from16 v47, v4

    move-object/from16 v48, v5

    move-object/from16 v49, v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    :goto_30
    const-wide/32 v31, 0x2001080

    and-long v39, v2, v31

    const-wide/16 v31, 0x0

    cmp-long v7, v39, v31

    if-eqz v7, :cond_45

    if-eqz v6, :cond_40

    .line 755
    invoke-virtual {v6}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->getGkhVisible()Landroid/databinding/ObservableBoolean;

    move-result-object v6

    goto :goto_31

    :cond_40
    const/4 v6, 0x0

    :goto_31
    const/16 v7, 0xc

    .line 757
    invoke-virtual {v1, v7, v6}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v6, :cond_41

    .line 762
    invoke-virtual {v6}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v6

    goto :goto_32

    :cond_41
    const/4 v6, 0x0

    :goto_32
    const-wide/16 v31, 0x0

    cmp-long v7, v39, v31

    if-eqz v7, :cond_43

    if-eqz v6, :cond_42

    const-wide v31, 0x8000000000L

    or-long v39, v2, v31

    :goto_33
    move-wide/from16 v2, v39

    goto :goto_34

    :cond_42
    const-wide v31, 0x4000000000L

    or-long v39, v2, v31

    goto :goto_33

    :cond_43
    :goto_34
    if-eqz v6, :cond_44

    const/16 v50, 0x0

    goto :goto_35

    :cond_44
    const/16 v6, 0x8

    move/from16 v50, v6

    :goto_35
    move-object/from16 v59, v10

    move-object/from16 v55, v11

    move-object/from16 v56, v12

    move-object/from16 v7, v30

    move-object/from16 v6, v47

    move-object/from16 v12, v48

    move-object/from16 v58, v49

    move-object/from16 v57, v51

    move-object/from16 v54, v52

    move-object v10, v5

    move-object v11, v8

    move/from16 v8, v50

    goto :goto_36

    :cond_45
    move-object/from16 v59, v10

    move-object/from16 v55, v11

    move-object/from16 v56, v12

    move-object/from16 v7, v30

    move-object/from16 v6, v47

    move-object/from16 v12, v48

    move-object/from16 v58, v49

    move-object/from16 v57, v51

    move-object/from16 v54, v52

    move-object v10, v5

    move-object v11, v8

    const/4 v8, 0x0

    :goto_36
    move-object v5, v4

    move-object/from16 v4, v53

    goto :goto_37

    :cond_46
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    :goto_37
    const-wide/32 v30, 0x2000280

    and-long v32, v2, v30

    const-wide/16 v30, 0x0

    cmp-long v34, v32, v30

    if-eqz v34, :cond_47

    move-object/from16 v60, v12

    .line 782
    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhAccountNumber:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v12, v4}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_38

    :cond_47
    move-object/from16 v60, v12

    :goto_38
    const-wide/32 v32, 0x2080090

    and-long v37, v2, v32

    cmp-long v4, v37, v30

    if-eqz v4, :cond_48

    .line 787
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhAccountNumber:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v4, v15}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_48
    const-wide/32 v32, 0x2100090

    and-long v35, v2, v32

    cmp-long v4, v35, v30

    if-eqz v4, :cond_49

    .line 792
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhAccountNumber:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v4, v9}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_49
    const-wide/32 v32, 0x2000880

    and-long v35, v2, v32

    cmp-long v4, v35, v30

    if-eqz v4, :cond_4a

    .line 797
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhDocNumber:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v4, v5}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_4a
    const-wide/32 v4, 0x22000c0

    and-long v28, v2, v4

    cmp-long v4, v28, v30

    if-eqz v4, :cond_4b

    .line 802
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhDocNumber:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v4, v6}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_4b
    const-wide/32 v4, 0x24000c0

    and-long v28, v2, v4

    cmp-long v4, v28, v30

    if-eqz v4, :cond_4c

    .line 807
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhDocNumber:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v4, v7}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_4c
    const-wide/32 v4, 0x2001080

    and-long v6, v2, v4

    cmp-long v4, v6, v30

    if-eqz v4, :cond_4d

    .line 812
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhFields:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4d
    const-wide/32 v4, 0x2000480

    and-long v6, v2, v4

    cmp-long v4, v6, v30

    if-eqz v4, :cond_4e

    .line 817
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhPaymentDocumentId:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v4, v10}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_4e
    and-long v4, v2, v16

    cmp-long v6, v4, v30

    if-eqz v6, :cond_4f

    .line 822
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhPaymentDocumentId:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v4, v13}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_4f
    and-long v4, v2, v18

    cmp-long v6, v4, v30

    if-eqz v6, :cond_50

    .line 827
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhPaymentDocumentId:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v4, v14}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_50
    const-wide/32 v4, 0x2800180

    and-long v6, v2, v4

    cmp-long v4, v6, v30

    if-eqz v4, :cond_51

    .line 832
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhPeriod:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v4, v11}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_51
    const-wide/32 v4, 0x3000180

    and-long v6, v2, v4

    cmp-long v4, v6, v30

    if-eqz v4, :cond_52

    .line 837
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhPeriod:Lru/rocketbank/core/widgets/RocketTextView;

    move-object/from16 v5, v60

    invoke-static {v4, v5}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_52
    const-wide/32 v4, 0x2000000

    and-long v6, v2, v4

    cmp-long v4, v6, v30

    if-eqz v4, :cond_53

    .line 842
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhPeriod:Lru/rocketbank/core/widgets/RocketTextView;

    iget-object v5, v1, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhPeriodandroidTextAttrChanged:Landroid/databinding/InverseBindingListener;

    const/4 v6, 0x0

    invoke-static {v4, v6, v6, v6, v5}, Landroid/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroid/databinding/InverseBindingListener;)V

    :cond_53
    const-wide/32 v4, 0x20000a0

    and-long v6, v2, v4

    cmp-long v4, v6, v30

    if-eqz v4, :cond_54

    .line 847
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhServiceId:Lru/rocketbank/core/widgets/RocketEditText;

    move-object/from16 v5, v54

    invoke-virtual {v4, v5}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_54
    and-long v4, v2, v20

    cmp-long v6, v4, v30

    if-eqz v6, :cond_55

    .line 852
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhServiceId:Lru/rocketbank/core/widgets/RocketEditText;

    move-object/from16 v11, v55

    invoke-static {v4, v11}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_55
    and-long v4, v2, v22

    cmp-long v6, v4, v30

    if-eqz v6, :cond_56

    .line 857
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhServiceId:Lru/rocketbank/core/widgets/RocketEditText;

    move-object/from16 v12, v56

    invoke-static {v4, v12}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_56
    const-wide/32 v4, 0x2000081

    and-long v6, v2, v4

    cmp-long v4, v6, v30

    if-eqz v4, :cond_57

    .line 862
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhUnitedFaceNumber:Lru/rocketbank/core/widgets/RocketEditText;

    move-object/from16 v5, v57

    invoke-virtual {v4, v5}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_57
    and-long v4, v2, v24

    cmp-long v6, v4, v30

    if-eqz v6, :cond_58

    .line 867
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhUnitedFaceNumber:Lru/rocketbank/core/widgets/RocketEditText;

    move-object/from16 v5, v58

    invoke-static {v4, v5}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_58
    and-long v4, v2, v26

    cmp-long v2, v4, v30

    if-eqz v2, :cond_59

    .line 872
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhUnitedFaceNumber:Lru/rocketbank/core/widgets/RocketEditText;

    move-object/from16 v10, v59

    invoke-static {v2, v10}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_59
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 419
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getCorporate()Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;
    .locals 1

    .line 152
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mCorporate:Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 123
    monitor-exit p0

    return v0

    .line 125
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

    .line 113
    monitor-enter p0

    const-wide/32 v0, 0x2000000

    .line 114
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    .line 115
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 115
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

    .line 183
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->onChangeCorporateGkhVisible(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 181
    :pswitch_1
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->onChangeCorporateFieldsGkhPaymentDocumentNumber(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 179
    :pswitch_2
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->onChangeCorporateFieldsGkhPaymentDocumentId(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 177
    :pswitch_3
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->onChangeCorporateFieldsGkhAccountNumber(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 175
    :pswitch_4
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->onChangeCorporateGkhPeriod(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 173
    :pswitch_5
    check-cast p2, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->onChangeCorporate(Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;I)Z

    move-result p1

    return p1

    .line 171
    :pswitch_6
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->onChangeCorporateGkhPaymentDocumentNumber(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 169
    :pswitch_7
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->onChangeCorporateFieldsGkhMcServiceId(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 167
    :pswitch_8
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->onChangeCorporateGkhAccountNumber(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 165
    :pswitch_9
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->onChangeCorporateGkhPaymentDocumentId(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 163
    :pswitch_a
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->onChangeCorporateGkhMcServiceId(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 161
    :pswitch_b
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->onChangeCorporateGkhEls(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 159
    :pswitch_c
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->onChangeCorporateFieldsGkhEls(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

.method public setCorporate(Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;)V
    .locals 6

    const/4 v0, 0x7

    .line 142
    invoke-virtual {p0, v0, p1}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    .line 143
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mCorporate:Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    .line 144
    monitor-enter p0

    .line 145
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->mDirtyFlags:J

    .line 146
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x13

    .line 147
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->notifyPropertyChanged(I)V

    .line 148
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 146
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x13

    if-ne v0, p1, :cond_0

    .line 133
    check-cast p2, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->setCorporate(Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
