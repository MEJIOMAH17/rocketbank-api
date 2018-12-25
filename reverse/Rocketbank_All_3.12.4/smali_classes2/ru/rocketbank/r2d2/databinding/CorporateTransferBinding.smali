.class public Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;
.super Landroid/databinding/ViewDataBinding;
.source "CorporateTransferBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final corporateView:Landroid/widget/LinearLayout;

.field public final editTextCorporatePurpose:Lru/rocketbank/core/widgets/RocketEditText;

.field public final includeGkh:Lru/rocketbank/r2d2/databinding/GkhLayputBinding;

.field public final inn:Lru/rocketbank/core/widgets/RocketEditText;

.field public final innProgressBar:Landroid/widget/ProgressBar;

.field public final kpp:Lru/rocketbank/core/widgets/RocketEditText;

.field private mCorporate:Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

.field private mDirtyFlags:J

.field private final mboundView4:Lru/rocketbank/core/widgets/RocketTextView;

.field public final recipientName:Lru/rocketbank/core/widgets/RocketEditText;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    .line 16
    sput-object v0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "gkh_layput"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [I

    const/4 v5, 0x6

    aput v5, v3, v4

    new-array v1, v1, [I

    const v5, 0x7f0c010b

    aput v5, v1, v4

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 20
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 21
    sput-object v0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901f1

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    const/16 v0, 0xa

    .line 48
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v0, -0x1

    .line 667
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    .line 49
    sget-object v0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x8

    invoke-static {p1, p2, v2, v0, v1}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 50
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->corporateView:Landroid/widget/LinearLayout;

    .line 51
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->corporateView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 52
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->editTextCorporatePurpose:Lru/rocketbank/core/widgets/RocketEditText;

    .line 53
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->editTextCorporatePurpose:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x6

    .line 54
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->includeGkh:Lru/rocketbank/r2d2/databinding/GkhLayputBinding;

    .line 55
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->includeGkh:Lru/rocketbank/r2d2/databinding/GkhLayputBinding;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    const/4 v0, 0x1

    .line 56
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->inn:Lru/rocketbank/core/widgets/RocketEditText;

    .line 57
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->inn:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x7

    .line 58
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->innProgressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x2

    .line 59
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->kpp:Lru/rocketbank/core/widgets/RocketEditText;

    .line 60
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->kpp:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 61
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mboundView4:Lru/rocketbank/core/widgets/RocketTextView;

    .line 62
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mboundView4:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 63
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->recipientName:Lru/rocketbank/core/widgets/RocketEditText;

    .line 64
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->recipientName:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {p1, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setTag(Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->setRootTag(Landroid/view/View;)V

    .line 67
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;
    .locals 1

    .line 687
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;
    .locals 2

    const-string v0, "layout/corporate_transfer_0"

    .line 691
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 692
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

    .line 694
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;
    .locals 1

    .line 679
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;
    .locals 3

    const v0, 0x7f0c008b

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 683
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;
    .locals 1

    .line 671
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;
    .locals 1

    const v0, 0x7f0c008b

    .line 675
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;

    return-object p0
.end method

.method private onChangeCorporate(Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 251
    monitor-enter p0

    .line 252
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    .line 253
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

    .line 257
    monitor-enter p0

    .line 258
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    .line 259
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const/16 v0, 0x35

    if-ne p2, v0, :cond_2

    .line 263
    monitor-enter p0

    .line 264
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    .line 265
    monitor-exit p0

    return p1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_2
    const/16 v0, 0x46

    if-ne p2, v0, :cond_3

    .line 269
    monitor-enter p0

    .line 270
    :try_start_3
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    .line 271
    monitor-exit p0

    return p1

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    :cond_3
    const/16 v0, 0x43

    if-ne p2, v0, :cond_4

    .line 275
    monitor-enter p0

    .line 276
    :try_start_4
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x200

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    .line 277
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

.method private onChangeCorporateFieldsInn(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 233
    monitor-enter p0

    .line 234
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

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

.method private onChangeCorporateFieldsKpp(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 242
    monitor-enter p0

    .line 243
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x40

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

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

.method private onChangeCorporateFieldsPurpose(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 152
    monitor-enter p0

    .line 153
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    .line 154
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

.method private onChangeCorporateFieldsRecipientName(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 161
    monitor-enter p0

    .line 162
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    .line 163
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

.method private onChangeCorporateInn(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 170
    monitor-enter p0

    .line 171
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    .line 172
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

    .line 176
    monitor-enter p0

    .line 177
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x400

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    .line 178
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

    .line 182
    monitor-enter p0

    .line 183
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x800

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    .line 184
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

.method private onChangeCorporateKpp(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 212
    monitor-enter p0

    .line 213
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

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
    const/16 v0, 0x58

    if-ne p2, v0, :cond_1

    .line 218
    monitor-enter p0

    .line 219
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

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
    const/16 v0, 0x59

    if-ne p2, v0, :cond_2

    .line 224
    monitor-enter p0

    .line 225
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x8000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    .line 226
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

.method private onChangeCorporatePurpose(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 293
    monitor-enter p0

    .line 294
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x200

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    .line 295
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/16 v0, 0x59

    if-ne p2, v0, :cond_1

    .line 299
    monitor-enter p0

    .line 300
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x10000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    .line 301
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const/16 v0, 0x58

    if-ne p2, v0, :cond_2

    .line 305
    monitor-enter p0

    .line 306
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x20000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    .line 307
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

.method private onChangeCorporateRecipientName(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 191
    monitor-enter p0

    .line 192
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    .line 193
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

    .line 197
    monitor-enter p0

    .line 198
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    .line 199
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

    .line 203
    monitor-enter p0

    .line 204
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    .line 205
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

.method private onChangeIncludeGkh(Lru/rocketbank/r2d2/databinding/GkhLayputBinding;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 284
    monitor-enter p0

    .line 285
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x100

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    .line 286
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
    .locals 45

    move-object/from16 v1, p0

    .line 316
    monitor-enter p0

    .line 317
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 318
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    .line 319
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mCorporate:Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    const-wide/32 v7, 0x7feff

    and-long v9, v2, v7

    cmp-long v7, v9, v4

    const-wide/32 v14, 0x44090

    const-wide/32 v16, 0x48090

    const-wide/32 v18, 0x42088

    const-wide/32 v20, 0x41088

    const-wide/32 v22, 0x40884

    const-wide/32 v24, 0x40484

    if-eqz v7, :cond_31

    const-wide/32 v28, 0x40c84

    and-long v30, v2, v28

    cmp-long v7, v30, v4

    const v9, 0x7f080294

    const v10, 0x7f080296

    if-eqz v7, :cond_7

    if-eqz v6, :cond_0

    .line 359
    invoke-virtual {v6}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->getInn()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const/4 v11, 0x2

    .line 361
    invoke-virtual {v1, v11, v7}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    and-long v28, v2, v24

    cmp-long v11, v28, v4

    if-eqz v11, :cond_5

    if-eqz v7, :cond_1

    .line 367
    invoke-virtual {v7}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v11

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    cmp-long v30, v28, v4

    if-eqz v30, :cond_3

    if-eqz v11, :cond_2

    const-wide/32 v28, 0x10000000

    or-long v30, v2, v28

    goto :goto_2

    :cond_2
    const-wide/32 v28, 0x8000000

    or-long v30, v2, v28

    goto :goto_2

    :cond_3
    move-wide/from16 v30, v2

    :goto_2
    if-eqz v11, :cond_4

    .line 380
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->inn:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v2, v10}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_3

    :cond_4
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->inn:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v2, v9}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_3
    move-object v11, v2

    move-wide/from16 v2, v30

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    :goto_4
    and-long v28, v2, v22

    cmp-long v30, v28, v4

    if-eqz v30, :cond_6

    if-eqz v7, :cond_6

    .line 386
    invoke-virtual {v7}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    const/4 v11, 0x0

    :goto_5
    const-wide/32 v28, 0x43088

    and-long v30, v2, v28

    cmp-long v28, v30, v4

    if-eqz v28, :cond_f

    if-eqz v6, :cond_8

    .line 394
    invoke-virtual {v6}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->getRecipient_name()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v28

    move-object/from16 v8, v28

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    :goto_6
    const/4 v12, 0x3

    .line 396
    invoke-virtual {v1, v12, v8}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    and-long v12, v2, v20

    cmp-long v28, v12, v4

    if-eqz v28, :cond_d

    if-eqz v8, :cond_9

    .line 402
    invoke-virtual {v8}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v28

    goto :goto_7

    :cond_9
    const/16 v28, 0x0

    :goto_7
    cmp-long v29, v12, v4

    if-eqz v29, :cond_b

    if-eqz v28, :cond_a

    const-wide/32 v12, 0x400000

    or-long v29, v2, v12

    goto :goto_8

    :cond_a
    const-wide/32 v12, 0x200000

    or-long v29, v2, v12

    goto :goto_8

    :cond_b
    move-wide/from16 v29, v2

    :goto_8
    if-eqz v28, :cond_c

    .line 415
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->recipientName:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v2, v10}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_9

    :cond_c
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->recipientName:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v2, v9}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_9
    move-object v12, v2

    move-wide/from16 v2, v29

    goto :goto_a

    :cond_d
    const/4 v12, 0x0

    :goto_a
    and-long v28, v2, v18

    cmp-long v13, v28, v4

    if-eqz v13, :cond_e

    if-eqz v8, :cond_e

    .line 421
    invoke-virtual {v8}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v8

    goto :goto_b

    :cond_e
    const/4 v8, 0x0

    goto :goto_b

    :cond_f
    const/4 v8, 0x0

    const/4 v12, 0x0

    :goto_b
    const-wide/32 v28, 0x4c090

    and-long v30, v2, v28

    cmp-long v13, v30, v4

    if-eqz v13, :cond_17

    if-eqz v6, :cond_10

    .line 429
    invoke-virtual {v6}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->getKpp()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v13

    goto :goto_c

    :cond_10
    const/4 v13, 0x0

    :goto_c
    const/4 v9, 0x4

    .line 431
    invoke-virtual {v1, v9, v13}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    and-long v28, v2, v16

    cmp-long v9, v28, v4

    if-eqz v9, :cond_11

    if-eqz v13, :cond_11

    .line 437
    invoke-virtual {v13}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v9

    goto :goto_d

    :cond_11
    const/4 v9, 0x0

    :goto_d
    and-long v28, v2, v14

    cmp-long v30, v28, v4

    if-eqz v30, :cond_16

    if-eqz v13, :cond_12

    .line 444
    invoke-virtual {v13}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v13

    goto :goto_e

    :cond_12
    const/4 v13, 0x0

    :goto_e
    cmp-long v30, v28, v4

    if-eqz v30, :cond_14

    if-eqz v13, :cond_13

    const-wide/32 v28, 0x4000000

    or-long v30, v2, v28

    goto :goto_f

    :cond_13
    const-wide/32 v28, 0x2000000

    or-long v30, v2, v28

    goto :goto_f

    :cond_14
    move-wide/from16 v30, v2

    :goto_f
    if-eqz v13, :cond_15

    .line 457
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->kpp:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v2, v10}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_10

    :cond_15
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->kpp:Lru/rocketbank/core/widgets/RocketEditText;

    const v3, 0x7f080294

    invoke-static {v2, v3}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_10
    move-object v13, v9

    move-object v9, v2

    move-wide/from16 v2, v30

    goto :goto_11

    :cond_16
    move-object v13, v9

    const/4 v9, 0x0

    goto :goto_11

    :cond_17
    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_11
    const-wide/32 v28, 0x400e3

    and-long v30, v2, v28

    cmp-long v28, v30, v4

    if-eqz v28, :cond_22

    if-eqz v6, :cond_18

    .line 464
    invoke-virtual {v6}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->getFields()Ljava/util/HashMap;

    move-result-object v15

    goto :goto_12

    :cond_18
    const/4 v15, 0x0

    :goto_12
    const-wide/32 v28, 0x40081

    and-long v30, v2, v28

    cmp-long v28, v30, v4

    if-eqz v28, :cond_1a

    if-eqz v15, :cond_19

    const-string v10, "purpose"

    .line 471
    invoke-virtual {v15, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    goto :goto_13

    :cond_19
    const/4 v10, 0x0

    :goto_13
    const/4 v14, 0x0

    .line 473
    invoke-virtual {v1, v14, v10}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v10, :cond_1b

    .line 478
    invoke-virtual {v10}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getWatcher()Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    move-result-object v10

    goto :goto_14

    :cond_1a
    const/4 v14, 0x0

    :cond_1b
    const/4 v10, 0x0

    :goto_14
    const-wide/32 v28, 0x40082

    and-long v30, v2, v28

    cmp-long v28, v30, v4

    if-eqz v28, :cond_1d

    if-eqz v15, :cond_1c

    const-string v14, "recipient_name"

    .line 485
    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const/4 v4, 0x1

    goto :goto_15

    :cond_1c
    const/4 v4, 0x1

    const/4 v14, 0x0

    .line 487
    :goto_15
    invoke-virtual {v1, v4, v14}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v14, :cond_1e

    .line 492
    invoke-virtual {v14}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getWatcher()Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    move-result-object v5

    goto :goto_16

    :cond_1d
    const/4 v4, 0x1

    :cond_1e
    const/4 v5, 0x0

    :goto_16
    const-wide/32 v26, 0x400a0

    and-long v28, v2, v26

    const-wide/16 v30, 0x0

    cmp-long v14, v28, v30

    if-eqz v14, :cond_20

    if-eqz v15, :cond_1f

    const-string v14, "inn"

    .line 499
    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    goto :goto_17

    :cond_1f
    const/4 v14, 0x0

    :goto_17
    const/4 v4, 0x5

    .line 501
    invoke-virtual {v1, v4, v14}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v14, :cond_20

    .line 506
    invoke-virtual {v14}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getWatcher()Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    move-result-object v4

    goto :goto_18

    :cond_20
    const/4 v4, 0x0

    :goto_18
    const-wide/32 v28, 0x400c0

    and-long v30, v2, v28

    const-wide/16 v28, 0x0

    cmp-long v14, v30, v28

    if-eqz v14, :cond_23

    if-eqz v15, :cond_21

    const-string v14, "kpp"

    .line 513
    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    goto :goto_19

    :cond_21
    const/4 v14, 0x0

    :goto_19
    const/4 v15, 0x6

    .line 515
    invoke-virtual {v1, v15, v14}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v14, :cond_23

    .line 520
    invoke-virtual {v14}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getWatcher()Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    move-result-object v14

    goto :goto_1a

    :cond_22
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    :cond_23
    const/4 v14, 0x0

    :goto_1a
    const-wide/32 v28, 0x70280

    and-long v30, v2, v28

    const-wide/16 v28, 0x0

    cmp-long v15, v30, v28

    if-eqz v15, :cond_30

    if-eqz v6, :cond_24

    .line 528
    invoke-virtual {v6}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->getPurpose()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v15

    move-object/from16 v39, v4

    goto :goto_1b

    :cond_24
    move-object/from16 v39, v4

    const/4 v15, 0x0

    :goto_1b
    const/16 v4, 0x9

    .line 530
    invoke-virtual {v1, v4, v15}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    const-wide/32 v30, 0x60280

    and-long v36, v2, v30

    cmp-long v4, v36, v28

    if-eqz v4, :cond_29

    if-eqz v15, :cond_25

    .line 536
    invoke-virtual {v15}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v4

    goto :goto_1c

    :cond_25
    const/4 v4, 0x0

    :goto_1c
    cmp-long v30, v36, v28

    if-eqz v30, :cond_27

    if-eqz v4, :cond_26

    const-wide/32 v28, 0x100000

    or-long v30, v2, v28

    goto :goto_1d

    :cond_26
    const-wide/32 v28, 0x80000

    or-long v30, v2, v28

    goto :goto_1d

    :cond_27
    move-wide/from16 v30, v2

    :goto_1d
    if-eqz v4, :cond_28

    .line 549
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->editTextCorporatePurpose:Lru/rocketbank/core/widgets/RocketEditText;

    const v3, 0x7f080296

    :goto_1e
    invoke-static {v2, v3}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1f

    :cond_28
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->editTextCorporatePurpose:Lru/rocketbank/core/widgets/RocketEditText;

    const v3, 0x7f080294

    goto :goto_1e

    :goto_1f
    move-object v4, v2

    move-wide/from16 v2, v30

    goto :goto_20

    :cond_29
    const/4 v4, 0x0

    :goto_20
    const-wide/32 v28, 0x50280

    and-long v30, v2, v28

    const-wide/16 v28, 0x0

    cmp-long v32, v30, v28

    if-eqz v32, :cond_2f

    if-eqz v15, :cond_2a

    .line 555
    invoke-virtual {v15}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v15

    goto :goto_21

    :cond_2a
    const/4 v15, 0x0

    :goto_21
    if-eqz v15, :cond_2b

    .line 561
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v28

    move-object/from16 v40, v4

    move-object/from16 v41, v5

    move/from16 v4, v28

    goto :goto_22

    :cond_2b
    move-object/from16 v40, v4

    move-object/from16 v41, v5

    const/4 v4, 0x0

    :goto_22
    const/16 v5, 0x64

    if-lt v4, v5, :cond_2c

    const-wide/16 v28, 0x0

    const/16 v38, 0x1

    goto :goto_23

    :cond_2c
    const-wide/16 v28, 0x0

    const/16 v38, 0x0

    :goto_23
    cmp-long v5, v30, v28

    if-eqz v5, :cond_2e

    if-eqz v38, :cond_2d

    const-wide/32 v28, 0x1000000

    or-long v30, v2, v28

    :goto_24
    move-object/from16 v43, v8

    move-object/from16 v42, v12

    move-wide/from16 v2, v30

    goto :goto_25

    :cond_2d
    const-wide/32 v28, 0x800000

    or-long v30, v2, v28

    goto :goto_24

    :cond_2e
    move-object/from16 v43, v8

    move-object/from16 v42, v12

    :goto_25
    move-object/from16 v5, v40

    move-object/from16 v12, v41

    goto :goto_27

    :cond_2f
    move-object/from16 v40, v4

    move-object/from16 v41, v5

    move-object/from16 v43, v8

    move-object/from16 v42, v12

    move-object/from16 v5, v40

    move-object/from16 v12, v41

    const/4 v4, 0x0

    goto :goto_26

    :cond_30
    move-object/from16 v39, v4

    move-object/from16 v41, v5

    move-object/from16 v43, v8

    move-object/from16 v42, v12

    move-object/from16 v12, v41

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_26
    const/4 v15, 0x0

    const/16 v38, 0x0

    :goto_27
    move-object v8, v7

    move-object/from16 v7, v39

    goto :goto_28

    :cond_31
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v38, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    :goto_28
    const-wide/32 v28, 0x1000000

    and-long v30, v2, v28

    const-wide/16 v28, 0x0

    cmp-long v32, v30, v28

    if-eqz v32, :cond_32

    rsub-int v4, v4, 0xd2

    .line 587
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_29

    :cond_32
    const/4 v4, 0x0

    :goto_29
    const-wide/32 v30, 0x50280

    and-long v34, v2, v30

    cmp-long v30, v34, v28

    if-eqz v30, :cond_34

    if-eqz v38, :cond_33

    goto :goto_2a

    :cond_33
    const-string v4, ""

    goto :goto_2a

    :cond_34
    const/4 v4, 0x0

    :goto_2a
    const-wide/32 v30, 0x40081

    and-long v32, v2, v30

    cmp-long v30, v32, v28

    if-eqz v30, :cond_35

    move-object/from16 v44, v12

    .line 599
    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->editTextCorporatePurpose:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v12, v10}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_2b

    :cond_35
    move-object/from16 v44, v12

    :goto_2b
    const-wide/32 v30, 0x60280

    and-long v32, v2, v30

    cmp-long v10, v32, v28

    if-eqz v10, :cond_36

    .line 604
    iget-object v10, v1, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->editTextCorporatePurpose:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v10, v5}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_36
    cmp-long v5, v34, v28

    if-eqz v5, :cond_37

    .line 609
    iget-object v5, v1, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->editTextCorporatePurpose:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v5, v15}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 610
    iget-object v5, v1, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mboundView4:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v5, v4}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_37
    const-wide/32 v4, 0x40080

    and-long v30, v2, v4

    cmp-long v4, v30, v28

    if-eqz v4, :cond_38

    .line 615
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->includeGkh:Lru/rocketbank/r2d2/databinding/GkhLayputBinding;

    invoke-virtual {v4, v6}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->setCorporate(Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;)V

    :cond_38
    const-wide/32 v4, 0x400a0

    and-long v26, v2, v4

    cmp-long v4, v26, v28

    if-eqz v4, :cond_39

    .line 620
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->inn:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v4, v7}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_39
    and-long v4, v2, v24

    cmp-long v6, v4, v28

    if-eqz v6, :cond_3a

    .line 625
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->inn:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v4, v11}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_3a
    and-long v4, v2, v22

    cmp-long v6, v4, v28

    if-eqz v6, :cond_3b

    .line 630
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->inn:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v4, v8}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_3b
    const-wide/32 v4, 0x400c0

    and-long v6, v2, v4

    cmp-long v4, v6, v28

    if-eqz v4, :cond_3c

    .line 635
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->kpp:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v4, v14}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_3c
    const-wide/32 v4, 0x44090

    and-long v6, v2, v4

    cmp-long v4, v6, v28

    if-eqz v4, :cond_3d

    .line 640
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->kpp:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v4, v9}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_3d
    and-long v4, v2, v16

    cmp-long v6, v4, v28

    if-eqz v6, :cond_3e

    .line 645
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->kpp:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v4, v13}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_3e
    const-wide/32 v4, 0x40082

    and-long v6, v2, v4

    cmp-long v4, v6, v28

    if-eqz v4, :cond_3f

    .line 650
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->recipientName:Lru/rocketbank/core/widgets/RocketEditText;

    move-object/from16 v5, v44

    invoke-virtual {v4, v5}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_3f
    and-long v4, v2, v20

    cmp-long v6, v4, v28

    if-eqz v6, :cond_40

    .line 655
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->recipientName:Lru/rocketbank/core/widgets/RocketEditText;

    move-object/from16 v12, v42

    invoke-static {v4, v12}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_40
    and-long v4, v2, v18

    cmp-long v2, v4, v28

    if-eqz v2, :cond_41

    .line 660
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->recipientName:Lru/rocketbank/core/widgets/RocketEditText;

    move-object/from16 v8, v43

    invoke-static {v2, v8}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 662
    :cond_41
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->includeGkh:Lru/rocketbank/r2d2/databinding/GkhLayputBinding;

    invoke-static {v2}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

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

.method public getCorporate()Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;
    .locals 1

    .line 115
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mCorporate:Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v0, 0x1

    if-eqz v4, :cond_0

    .line 83
    monitor-exit p0

    return v0

    .line 85
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->includeGkh:Lru/rocketbank/r2d2/databinding/GkhLayputBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->hasPendingBindings()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 85
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 72
    monitor-enter p0

    const-wide/32 v0, 0x40000

    .line 73
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    .line 74
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->includeGkh:Lru/rocketbank/r2d2/databinding/GkhLayputBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->invalidateAll()V

    .line 76
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 74
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

    .line 146
    :pswitch_0
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->onChangeCorporatePurpose(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 144
    :pswitch_1
    check-cast p2, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->onChangeIncludeGkh(Lru/rocketbank/r2d2/databinding/GkhLayputBinding;I)Z

    move-result p1

    return p1

    .line 142
    :pswitch_2
    check-cast p2, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->onChangeCorporate(Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;I)Z

    move-result p1

    return p1

    .line 140
    :pswitch_3
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->onChangeCorporateFieldsKpp(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 138
    :pswitch_4
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->onChangeCorporateFieldsInn(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 136
    :pswitch_5
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->onChangeCorporateKpp(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 134
    :pswitch_6
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->onChangeCorporateRecipientName(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 132
    :pswitch_7
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->onChangeCorporateInn(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 130
    :pswitch_8
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->onChangeCorporateFieldsRecipientName(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 128
    :pswitch_9
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->onChangeCorporateFieldsPurpose(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

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

.method public setCorporate(Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;)V
    .locals 6

    const/4 v0, 0x7

    .line 105
    invoke-virtual {p0, v0, p1}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    .line 106
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mCorporate:Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->mDirtyFlags:J

    .line 109
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x13

    .line 110
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->notifyPropertyChanged(I)V

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

.method public setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 120
    invoke-super {p0, p1}, Landroid/databinding/ViewDataBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 121
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->includeGkh:Lru/rocketbank/r2d2/databinding/GkhLayputBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x13

    if-ne v0, p1, :cond_0

    .line 96
    check-cast p2, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->setCorporate(Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
