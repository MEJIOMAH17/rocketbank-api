.class public Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;
.super Landroid/databinding/ViewDataBinding;
.source "IndividualTransferBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final editTextIndividualPurpose:Lru/rocketbank/core/widgets/RocketEditText;

.field public final editTextIndividualRecipientName:Lru/rocketbank/core/widgets/RocketEditText;

.field public final individualView:Landroid/widget/LinearLayout;

.field private mDirtyFlags:J

.field private mIndividual:Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;

.field public final materialAssistTypeSpinner:Landroid/widget/Spinner;

.field private final mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mboundView4:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x5

    .line 39
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 446
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mDirtyFlags:J

    .line 40
    sget-object v1, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x6

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    .line 41
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->editTextIndividualPurpose:Lru/rocketbank/core/widgets/RocketEditText;

    .line 42
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->editTextIndividualPurpose:Lru/rocketbank/core/widgets/RocketEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 43
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->editTextIndividualRecipientName:Lru/rocketbank/core/widgets/RocketEditText;

    .line 44
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->editTextIndividualRecipientName:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 45
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->individualView:Landroid/widget/LinearLayout;

    .line 46
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->individualView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 47
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->materialAssistTypeSpinner:Landroid/widget/Spinner;

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->materialAssistTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 49
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    .line 50
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 51
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mboundView4:Lru/rocketbank/core/widgets/RocketTextView;

    .line 52
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mboundView4:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->setRootTag(Landroid/view/View;)V

    .line 55
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;
    .locals 1

    .line 466
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;
    .locals 2

    const-string v0, "layout/individual_transfer_0"

    .line 470
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
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

    .line 473
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;
    .locals 1

    .line 458
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;
    .locals 3

    const v0, 0x7f0c010e

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 462
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;
    .locals 1

    .line 450
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;
    .locals 1

    const v0, 0x7f0c010e

    .line 454
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;

    return-object p0
.end method

.method private onChangeIndividual(Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 150
    monitor-enter p0

    .line 151
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mDirtyFlags:J

    .line 152
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/16 v0, 0x46

    if-ne p2, v0, :cond_1

    .line 156
    monitor-enter p0

    .line 157
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mDirtyFlags:J

    .line 158
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const/16 v0, 0x38

    if-ne p2, v0, :cond_2

    .line 162
    monitor-enter p0

    .line 163
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mDirtyFlags:J

    .line 164
    monitor-exit p0

    return p1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_2
    const/16 v0, 0x43

    if-ne p2, v0, :cond_3

    .line 168
    monitor-enter p0

    .line 169
    :try_start_3
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mDirtyFlags:J

    .line 170
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

.method private onChangeIndividualFieldsPurpose(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 141
    monitor-enter p0

    .line 142
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mDirtyFlags:J

    .line 143
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

.method private onChangeIndividualFieldsRecipientName(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 177
    monitor-enter p0

    .line 178
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mDirtyFlags:J

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

.method private onChangeIndividualPurpose(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 120
    monitor-enter p0

    .line 121
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mDirtyFlags:J

    .line 122
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

    .line 126
    monitor-enter p0

    .line 127
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x20

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mDirtyFlags:J

    .line 128
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

    .line 132
    monitor-enter p0

    .line 133
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x40

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mDirtyFlags:J

    .line 134
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

.method private onChangeIndividualRecipientName(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 186
    monitor-enter p0

    .line 187
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mDirtyFlags:J

    .line 188
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

    .line 192
    monitor-enter p0

    .line 193
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x100

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mDirtyFlags:J

    .line 194
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

    .line 198
    monitor-enter p0

    .line 199
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x200

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mDirtyFlags:J

    .line 200
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
    .locals 34

    move-object/from16 v1, p0

    .line 209
    monitor-enter p0

    .line 210
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 211
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mDirtyFlags:J

    .line 212
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mIndividual:Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;

    const-wide/16 v7, 0x7ff

    and-long v9, v2, v7

    cmp-long v7, v9, v4

    const-wide/16 v14, 0x40c

    const-wide/16 v16, 0x406

    const-wide/16 v18, 0x1000

    const-wide/16 v20, 0x425

    const-wide/16 v22, 0x445

    const/4 v8, 0x0

    if-eqz v7, :cond_20

    const-wide/16 v26, 0x465

    and-long v28, v2, v26

    cmp-long v7, v28, v4

    const/4 v9, 0x1

    const v10, 0x7f080294

    const v11, 0x7f080296

    if-eqz v7, :cond_c

    if-eqz v6, :cond_0

    .line 243
    invoke-virtual {v6}, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;->getPurpose()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 245
    :goto_0
    invoke-virtual {v1, v8, v7}, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    and-long v26, v2, v22

    cmp-long v28, v26, v4

    if-eqz v28, :cond_5

    if-eqz v7, :cond_1

    .line 251
    invoke-virtual {v7}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v28

    goto :goto_1

    :cond_1
    move/from16 v28, v8

    :goto_1
    cmp-long v29, v26, v4

    if-eqz v29, :cond_3

    if-eqz v28, :cond_2

    const-wide/16 v26, 0x4000

    or-long v30, v2, v26

    :goto_2
    move-wide/from16 v2, v30

    goto :goto_3

    :cond_2
    const-wide/16 v26, 0x2000

    or-long v30, v2, v26

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz v28, :cond_4

    .line 264
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->editTextIndividualPurpose:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v8, v11}, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto :goto_4

    :cond_4
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->editTextIndividualPurpose:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v8, v10}, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    :goto_4
    and-long v26, v2, v20

    cmp-long v28, v26, v4

    if-eqz v28, :cond_b

    if-eqz v7, :cond_6

    .line 270
    invoke-virtual {v7}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    :goto_5
    if-eqz v7, :cond_7

    .line 276
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v28

    move/from16 v10, v28

    goto :goto_6

    :cond_7
    const/4 v10, 0x0

    :goto_6
    const/16 v11, 0x64

    if-lt v10, v11, :cond_8

    move v11, v9

    goto :goto_7

    :cond_8
    const/4 v11, 0x0

    :goto_7
    cmp-long v28, v26, v4

    if-eqz v28, :cond_a

    if-eqz v11, :cond_9

    or-long v26, v2, v18

    move-wide/from16 v2, v26

    goto :goto_8

    :cond_9
    const-wide/16 v26, 0x800

    or-long v28, v2, v26

    move-wide/from16 v2, v28

    :cond_a
    :goto_8
    move/from16 v33, v10

    move-object v10, v7

    move-object v7, v8

    move v8, v11

    move/from16 v11, v33

    goto :goto_a

    :cond_b
    move-object v7, v8

    goto :goto_9

    :cond_c
    const/4 v7, 0x0

    :goto_9
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_a
    const-wide/16 v26, 0x40e

    and-long v28, v2, v26

    cmp-long v26, v28, v4

    if-eqz v26, :cond_11

    if-eqz v6, :cond_d

    .line 296
    invoke-virtual {v6}, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;->getFields()Ljava/util/HashMap;

    move-result-object v26

    move-object/from16 v12, v26

    goto :goto_b

    :cond_d
    const/4 v12, 0x0

    :goto_b
    and-long v26, v2, v16

    cmp-long v13, v26, v4

    if-eqz v13, :cond_f

    if-eqz v12, :cond_e

    const-string v13, "purpose"

    .line 303
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    goto :goto_c

    :cond_e
    const/4 v13, 0x0

    .line 305
    :goto_c
    invoke-virtual {v1, v9, v13}, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v13, :cond_f

    .line 310
    invoke-virtual {v13}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getWatcher()Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    move-result-object v9

    goto :goto_d

    :cond_f
    const/4 v9, 0x0

    :goto_d
    and-long v26, v2, v14

    cmp-long v13, v26, v4

    if-eqz v13, :cond_12

    if-eqz v12, :cond_10

    const-string v13, "recipient_name"

    .line 317
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    goto :goto_e

    :cond_10
    const/4 v12, 0x0

    :goto_e
    const/4 v13, 0x3

    .line 319
    invoke-virtual {v1, v13, v12}, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v12, :cond_12

    .line 324
    invoke-virtual {v12}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getWatcher()Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    move-result-object v12

    goto :goto_f

    :cond_11
    const/4 v9, 0x0

    :cond_12
    const/4 v12, 0x0

    :goto_f
    const-wide/16 v26, 0x484

    and-long v28, v2, v26

    cmp-long v13, v28, v4

    if-eqz v13, :cond_17

    if-eqz v6, :cond_13

    .line 332
    invoke-virtual {v6}, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;->getMaterialAssistance()Ljava/lang/Boolean;

    move-result-object v13

    goto :goto_10

    :cond_13
    const/4 v13, 0x0

    .line 337
    :goto_10
    invoke-static {v13}, Landroid/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v13

    cmp-long v26, v28, v4

    if-eqz v26, :cond_15

    if-eqz v13, :cond_14

    const-wide/32 v26, 0x10000

    or-long v28, v2, v26

    goto :goto_11

    :cond_14
    const-wide/32 v26, 0x8000

    or-long v28, v2, v26

    goto :goto_11

    :cond_15
    move-wide/from16 v28, v2

    :goto_11
    if-eqz v13, :cond_16

    const/4 v2, 0x0

    goto :goto_12

    :cond_16
    const/16 v2, 0x8

    :goto_12
    move v13, v2

    move-wide/from16 v2, v28

    goto :goto_13

    :cond_17
    const/4 v13, 0x0

    :goto_13
    const-wide/16 v26, 0x714

    and-long v28, v2, v26

    cmp-long v26, v28, v4

    if-eqz v26, :cond_1f

    if-eqz v6, :cond_18

    .line 355
    invoke-virtual {v6}, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;->getRecipient_name()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v6

    goto :goto_14

    :cond_18
    const/4 v6, 0x0

    :goto_14
    const/4 v14, 0x4

    .line 357
    invoke-virtual {v1, v14, v6}, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    const-wide/16 v14, 0x614

    and-long v26, v2, v14

    cmp-long v14, v26, v4

    if-eqz v14, :cond_19

    if-eqz v6, :cond_19

    .line 363
    invoke-virtual {v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v14

    goto :goto_15

    :cond_19
    const/4 v14, 0x0

    :goto_15
    const-wide/16 v24, 0x514

    and-long v26, v2, v24

    cmp-long v15, v26, v4

    if-eqz v15, :cond_1e

    if-eqz v6, :cond_1a

    .line 370
    invoke-virtual {v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v6

    move/from16 v32, v6

    goto :goto_16

    :cond_1a
    const/16 v32, 0x0

    :goto_16
    cmp-long v6, v26, v4

    if-eqz v6, :cond_1c

    if-eqz v32, :cond_1b

    const-wide/32 v26, 0x40000

    or-long v28, v2, v26

    :goto_17
    move-wide/from16 v2, v28

    goto :goto_18

    :cond_1b
    const-wide/32 v26, 0x20000

    or-long v28, v2, v26

    goto :goto_17

    :cond_1c
    :goto_18
    if-eqz v32, :cond_1d

    .line 383
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->editTextIndividualRecipientName:Lru/rocketbank/core/widgets/RocketEditText;

    const v15, 0x7f080296

    :goto_19
    invoke-static {v6, v15}, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_1b

    :cond_1d
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->editTextIndividualRecipientName:Lru/rocketbank/core/widgets/RocketEditText;

    const v15, 0x7f080294

    goto :goto_19

    :cond_1e
    const/4 v6, 0x0

    goto :goto_1b

    :cond_1f
    const/4 v6, 0x0

    goto :goto_1a

    :cond_20
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1a
    const/4 v14, 0x0

    :goto_1b
    and-long v26, v2, v18

    cmp-long v15, v26, v4

    if-eqz v15, :cond_21

    rsub-int v11, v11, 0xd2

    .line 396
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_1c

    :cond_21
    const/4 v11, 0x0

    :goto_1c
    and-long v18, v2, v20

    cmp-long v15, v18, v4

    if-eqz v15, :cond_23

    if-eqz v8, :cond_22

    move-object v8, v11

    goto :goto_1d

    :cond_22
    const-string v8, ""

    goto :goto_1d

    :cond_23
    const/4 v8, 0x0

    :goto_1d
    and-long v20, v2, v16

    cmp-long v11, v20, v4

    if-eqz v11, :cond_24

    .line 408
    iget-object v11, v1, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->editTextIndividualPurpose:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v11, v9}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_24
    and-long v15, v2, v22

    cmp-long v9, v15, v4

    if-eqz v9, :cond_25

    .line 413
    iget-object v9, v1, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->editTextIndividualPurpose:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v9, v7}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_25
    cmp-long v7, v18, v4

    if-eqz v7, :cond_26

    .line 418
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->editTextIndividualPurpose:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v7, v10}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 419
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mboundView4:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v7, v8}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_26
    const-wide/16 v7, 0x40c

    and-long v9, v2, v7

    cmp-long v7, v9, v4

    if-eqz v7, :cond_27

    .line 424
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->editTextIndividualRecipientName:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v7, v12}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_27
    const-wide/16 v7, 0x514

    and-long v9, v2, v7

    cmp-long v7, v9, v4

    if-eqz v7, :cond_28

    .line 429
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->editTextIndividualRecipientName:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v7, v6}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_28
    const-wide/16 v6, 0x614

    and-long v8, v2, v6

    cmp-long v6, v8, v4

    if-eqz v6, :cond_29

    .line 434
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->editTextIndividualRecipientName:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v6, v14}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_29
    const-wide/16 v6, 0x484

    and-long v8, v2, v6

    cmp-long v2, v8, v4

    if-eqz v2, :cond_2a

    .line 439
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->materialAssistTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v13}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 440
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v13}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    :cond_2a
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 212
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getIndividual()Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;
    .locals 1

    .line 99
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mIndividual:Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 70
    monitor-exit p0

    return v0

    .line 72
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

    .line 60
    monitor-enter p0

    const-wide/16 v0, 0x400

    .line 61
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mDirtyFlags:J

    .line 62
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 62
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

    .line 114
    :pswitch_0
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->onChangeIndividualRecipientName(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 112
    :pswitch_1
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->onChangeIndividualFieldsRecipientName(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 110
    :pswitch_2
    check-cast p2, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->onChangeIndividual(Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;I)Z

    move-result p1

    return p1

    .line 108
    :pswitch_3
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->onChangeIndividualFieldsPurpose(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 106
    :pswitch_4
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->onChangeIndividualPurpose(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

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

.method public setIndividual(Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;)V
    .locals 6

    const/4 v0, 0x2

    .line 89
    invoke-virtual {p0, v0, p1}, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    .line 90
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mIndividual:Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->mDirtyFlags:J

    .line 93
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x2d

    .line 94
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->notifyPropertyChanged(I)V

    .line 95
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 93
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x2d

    if-ne v0, p1, :cond_0

    .line 80
    check-cast p2, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->setIndividual(Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
