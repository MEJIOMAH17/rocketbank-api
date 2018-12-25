.class public Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;
.super Landroid/databinding/ViewDataBinding;
.source "RemittanceCheckInfoFragmentBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final edittextTransfersBankPurpose:Lru/rocketbank/core/widgets/RocketEditText;

.field public final fields:Landroid/widget/LinearLayout;

.field private mData:Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable;

.field private mDirtyFlags:J

.field private mEditMode:Ljava/lang/Boolean;

.field private final mboundView0:Landroid/widget/ScrollView;

.field private final mboundView1:Landroid/widget/FrameLayout;

.field private final mboundView2:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090174

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x3

    .line 40
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 337
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->mDirtyFlags:J

    .line 41
    sget-object v1, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x5

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    .line 42
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->edittextTransfersBankPurpose:Lru/rocketbank/core/widgets/RocketEditText;

    .line 43
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->edittextTransfersBankPurpose:Lru/rocketbank/core/widgets/RocketEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 44
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->fields:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 45
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->mboundView0:Landroid/widget/ScrollView;

    .line 46
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->mboundView0:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 47
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->mboundView1:Landroid/widget/FrameLayout;

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->mboundView1:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 49
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    .line 50
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->setRootTag(Landroid/view/View;)V

    .line 53
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;
    .locals 1

    .line 357
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;
    .locals 2

    const-string v0, "layout/remittance_check_info_fragment_0"

    .line 361
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
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

    .line 364
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;
    .locals 1

    .line 349
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;
    .locals 3

    const v0, 0x7f0c0197

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 353
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;
    .locals 1

    .line 341
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;
    .locals 1

    const v0, 0x7f0c0197

    .line 345
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;

    return-object p0
.end method

.method private onChangeData(Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 150
    monitor-enter p0

    .line 151
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->mDirtyFlags:J

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
    const/16 v0, 0x43

    if-ne p2, v0, :cond_1

    .line 156
    monitor-enter p0

    .line 157
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->mDirtyFlags:J

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
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeDataFieldsPurpose(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 165
    monitor-enter p0

    .line 166
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->mDirtyFlags:J

    .line 167
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

.method private onChangeDataPurpose(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 129
    monitor-enter p0

    .line 130
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->mDirtyFlags:J

    .line 131
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

    .line 135
    monitor-enter p0

    .line 136
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->mDirtyFlags:J

    .line 137
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

    .line 141
    monitor-enter p0

    .line 142
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x20

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->mDirtyFlags:J

    .line 143
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
    .locals 27

    move-object/from16 v1, p0

    .line 176
    monitor-enter p0

    .line 177
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 178
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->mDirtyFlags:J

    .line 179
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->mEditMode:Ljava/lang/Boolean;

    .line 190
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->mData:Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable;

    const-wide/16 v8, 0x48

    and-long v10, v2, v8

    cmp-long v12, v10, v4

    const/4 v13, 0x0

    if-eqz v12, :cond_3

    .line 202
    invoke-static {v6}, Landroid/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v6

    cmp-long v12, v10, v4

    if-eqz v12, :cond_1

    if-eqz v6, :cond_0

    const-wide/16 v10, 0x1000

    or-long v14, v2, v10

    :goto_0
    move-wide v2, v14

    goto :goto_1

    :cond_0
    const-wide/16 v10, 0x800

    or-long v14, v2, v10

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    const/16 v6, 0x8

    goto :goto_3

    :cond_3
    :goto_2
    move v6, v13

    :goto_3
    const-wide/16 v10, 0x77

    and-long v14, v2, v10

    cmp-long v10, v14, v4

    const-wide/16 v11, 0x46

    const-wide/16 v14, 0x63

    const-wide/16 v16, 0x100

    const-wide/16 v18, 0x53

    const/16 v20, 0x0

    if-eqz v10, :cond_14

    const-wide/16 v21, 0x73

    and-long v23, v2, v21

    cmp-long v10, v23, v4

    if-eqz v10, :cond_10

    if-eqz v7, :cond_4

    .line 223
    invoke-virtual {v7}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable;->getPurpose()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v10

    goto :goto_4

    :cond_4
    move-object/from16 v10, v20

    .line 225
    :goto_4
    invoke-virtual {v1, v13, v10}, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    and-long v21, v2, v18

    cmp-long v23, v21, v4

    if-eqz v23, :cond_9

    if-eqz v10, :cond_5

    .line 231
    invoke-virtual {v10}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v13, v23

    goto :goto_5

    :cond_5
    move-object/from16 v13, v20

    :goto_5
    if-eqz v13, :cond_6

    .line 237
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v8, v23

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    :goto_6
    const/16 v9, 0x64

    if-lt v8, v9, :cond_7

    const/4 v9, 0x1

    goto :goto_7

    :cond_7
    const/4 v9, 0x0

    :goto_7
    cmp-long v23, v21, v4

    if-eqz v23, :cond_a

    if-eqz v9, :cond_8

    or-long v21, v2, v16

    move-wide/from16 v2, v21

    goto :goto_8

    :cond_8
    const-wide/16 v21, 0x80

    or-long v23, v2, v21

    move-wide/from16 v2, v23

    goto :goto_8

    :cond_9
    move-object/from16 v13, v20

    const/4 v8, 0x0

    const/4 v9, 0x0

    :cond_a
    :goto_8
    and-long v21, v2, v14

    cmp-long v23, v21, v4

    if-eqz v23, :cond_f

    if-eqz v10, :cond_b

    .line 256
    invoke-virtual {v10}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v10

    move/from16 v25, v10

    goto :goto_9

    :cond_b
    const/16 v25, 0x0

    :goto_9
    cmp-long v10, v21, v4

    if-eqz v10, :cond_d

    if-eqz v25, :cond_c

    const-wide/16 v21, 0x400

    or-long v23, v2, v21

    goto :goto_a

    :cond_c
    const-wide/16 v21, 0x200

    or-long v23, v2, v21

    goto :goto_a

    :cond_d
    move-wide/from16 v23, v2

    :goto_a
    if-eqz v25, :cond_e

    .line 269
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->edittextTransfersBankPurpose:Lru/rocketbank/core/widgets/RocketEditText;

    const v3, 0x7f080296

    :goto_b
    invoke-static {v2, v3}, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_c

    :cond_e
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->edittextTransfersBankPurpose:Lru/rocketbank/core/widgets/RocketEditText;

    const v3, 0x7f080294

    goto :goto_b

    :goto_c
    move-object v10, v13

    move v13, v8

    move-object v8, v2

    move-wide/from16 v2, v23

    goto :goto_d

    :cond_f
    move-object v10, v13

    move v13, v8

    move-object/from16 v8, v20

    goto :goto_d

    :cond_10
    move-object/from16 v8, v20

    move-object v10, v8

    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_d
    and-long v21, v2, v11

    cmp-long v23, v21, v4

    if-eqz v23, :cond_13

    if-eqz v7, :cond_11

    .line 276
    invoke-virtual {v7}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable;->getFields()Ljava/util/HashMap;

    move-result-object v7

    goto :goto_e

    :cond_11
    move-object/from16 v7, v20

    :goto_e
    if-eqz v7, :cond_12

    const-string v14, "purpose"

    .line 282
    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    goto :goto_f

    :cond_12
    move-object/from16 v7, v20

    :goto_f
    const/4 v14, 0x2

    .line 284
    invoke-virtual {v1, v14, v7}, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_13

    .line 289
    invoke-virtual {v7}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getWatcher()Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    move-result-object v7

    goto :goto_10

    :cond_13
    move-object/from16 v7, v20

    goto :goto_10

    :cond_14
    move-object/from16 v7, v20

    move-object v8, v7

    move-object v10, v8

    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_10
    and-long v14, v2, v16

    cmp-long v16, v14, v4

    if-eqz v16, :cond_15

    rsub-int v13, v13, 0xd2

    .line 302
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_11

    :cond_15
    move-object/from16 v13, v20

    :goto_11
    and-long v14, v2, v18

    cmp-long v16, v14, v4

    if-eqz v16, :cond_17

    if-eqz v9, :cond_16

    move-object/from16 v20, v13

    goto :goto_12

    :cond_16
    const-string v9, ""

    move-object/from16 v20, v9

    :cond_17
    :goto_12
    move-object/from16 v9, v20

    and-long v16, v2, v11

    cmp-long v11, v16, v4

    if-eqz v11, :cond_18

    .line 314
    iget-object v11, v1, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->edittextTransfersBankPurpose:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v11, v7}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_18
    const-wide/16 v11, 0x63

    and-long v16, v2, v11

    cmp-long v7, v16, v4

    if-eqz v7, :cond_19

    .line 319
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->edittextTransfersBankPurpose:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v7, v8}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_19
    cmp-long v7, v14, v4

    if-eqz v7, :cond_1a

    .line 324
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->edittextTransfersBankPurpose:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v7, v10}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 325
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v7, v9}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1a
    const-wide/16 v7, 0x48

    and-long v9, v2, v7

    cmp-long v2, v9, v4

    if-eqz v2, :cond_1b

    .line 330
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->edittextTransfersBankPurpose:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v2, v6}, Lru/rocketbank/core/widgets/RocketEditText;->setVisibility(I)V

    .line 331
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->mboundView1:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1b
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 179
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getData()Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable;
    .locals 1

    .line 112
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->mData:Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable;

    return-object v0
.end method

.method public getEditMode()Ljava/lang/Boolean;
    .locals 1

    .line 99
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->mEditMode:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 66
    monitor-enter p0

    .line 67
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 68
    monitor-exit p0

    return v0

    .line 70
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

    .line 58
    monitor-enter p0

    const-wide/16 v0, 0x40

    .line 59
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->mDirtyFlags:J

    .line 60
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 60
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

    .line 123
    :pswitch_0
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->onChangeDataFieldsPurpose(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 121
    :pswitch_1
    check-cast p2, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->onChangeData(Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable;I)Z

    move-result p1

    return p1

    .line 119
    :pswitch_2
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->onChangeDataPurpose(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setData(Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable;)V
    .locals 6

    const/4 v0, 0x1

    .line 102
    invoke-virtual {p0, v0, p1}, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    .line 103
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->mData:Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable;

    .line 104
    monitor-enter p0

    .line 105
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->mDirtyFlags:J

    .line 106
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 107
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->notifyPropertyChanged(I)V

    .line 108
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 106
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setEditMode(Ljava/lang/Boolean;)V
    .locals 6

    .line 90
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->mEditMode:Ljava/lang/Boolean;

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->mDirtyFlags:J

    .line 93
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1e

    .line 94
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->notifyPropertyChanged(I)V

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

    const/16 v0, 0x1e

    if-ne v0, p1, :cond_0

    .line 78
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->setEditMode(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-ne v0, p1, :cond_1

    .line 81
    check-cast p2, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->setData(Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
