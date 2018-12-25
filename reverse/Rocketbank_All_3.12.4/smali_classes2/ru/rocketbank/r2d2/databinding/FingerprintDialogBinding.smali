.class public Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;
.super Landroid/databinding/ViewDataBinding;
.source "FingerprintDialogBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final frameLayout:Landroid/widget/FrameLayout;

.field public final helpText:Lru/rocketbank/core/widgets/RocketTextView;

.field public final loader:Lru/rocketbank/core/widgets/RocketLoader;

.field private mData:Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/support/constraint/ConstraintLayout;

.field public final statusText:Lru/rocketbank/core/widgets/RocketTextView;

.field public final swirlView:Lcom/mattprecious/swirl/SwirlView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090190

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x4

    .line 40
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 316
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->mDirtyFlags:J

    .line 41
    sget-object v1, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x6

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x5

    .line 42
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x2

    .line 43
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->helpText:Lru/rocketbank/core/widgets/RocketTextView;

    .line 44
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->helpText:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 45
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketLoader;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->loader:Lru/rocketbank/core/widgets/RocketLoader;

    .line 46
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->loader:Lru/rocketbank/core/widgets/RocketLoader;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketLoader;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 47
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->mboundView0:Landroid/support/constraint/ConstraintLayout;

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->mboundView0:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 49
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->statusText:Lru/rocketbank/core/widgets/RocketTextView;

    .line 50
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->statusText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 51
    aget-object p1, p1, v0

    check-cast p1, Lcom/mattprecious/swirl/SwirlView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->swirlView:Lcom/mattprecious/swirl/SwirlView;

    .line 52
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->swirlView:Lcom/mattprecious/swirl/SwirlView;

    invoke-virtual {p1, v2}, Lcom/mattprecious/swirl/SwirlView;->setTag(Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->setRootTag(Landroid/view/View;)V

    .line 55
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;
    .locals 1

    .line 336
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;
    .locals 2

    const-string v0, "layout/fingerprint_dialog_0"

    .line 340
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
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

    .line 343
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;
    .locals 1

    .line 328
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;
    .locals 3

    const v0, 0x7f0c00c0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 332
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;
    .locals 1

    .line 320
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;
    .locals 1

    const v0, 0x7f0c00c0

    .line 324
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;

    return-object p0
.end method

.method private onChangeDataHelperText(Landroid/databinding/ObservableField;I)Z
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

    .line 117
    monitor-enter p0

    .line 118
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->mDirtyFlags:J

    .line 119
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

.method private onChangeDataIsError(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->mDirtyFlags:J

    .line 137
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

.method private onChangeDataIsLoading(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->mDirtyFlags:J

    .line 128
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

.method private onChangeDataStatusText(Landroid/databinding/ObservableField;I)Z
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

    .line 144
    monitor-enter p0

    .line 145
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->mDirtyFlags:J

    .line 146
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
    .locals 29

    move-object/from16 v1, p0

    .line 155
    monitor-enter p0

    .line 156
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 157
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->mDirtyFlags:J

    .line 158
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->mData:Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;

    const-wide/16 v7, 0x3f

    and-long v9, v2, v7

    cmp-long v7, v9, v4

    const-wide/16 v10, 0x34

    const-wide/16 v12, 0x31

    const-wide/16 v14, 0x32

    const/16 v16, 0x0

    const/4 v8, 0x0

    if-eqz v7, :cond_19

    and-long v17, v2, v12

    cmp-long v7, v17, v4

    const/4 v9, 0x1

    if-eqz v7, :cond_6

    if-eqz v6, :cond_0

    .line 182
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;->getHelperText()Landroid/databinding/ObservableField;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object/from16 v7, v16

    .line 184
    :goto_0
    invoke-virtual {v1, v8, v7}, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_1

    .line 189
    invoke-virtual {v7}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v7, v16

    :goto_1
    if-eqz v7, :cond_2

    move/from16 v20, v9

    goto :goto_2

    :cond_2
    move/from16 v20, v8

    :goto_2
    cmp-long v21, v17, v4

    if-eqz v21, :cond_4

    if-eqz v20, :cond_3

    const-wide/16 v17, 0x800

    or-long v21, v2, v17

    :goto_3
    move-wide/from16 v2, v21

    goto :goto_4

    :cond_3
    const-wide/16 v17, 0x400

    or-long v21, v2, v17

    goto :goto_3

    :cond_4
    :goto_4
    if-eqz v20, :cond_5

    move/from16 v17, v8

    goto :goto_5

    :cond_5
    const/16 v17, 0x8

    goto :goto_5

    :cond_6
    move/from16 v17, v8

    move-object/from16 v7, v16

    :goto_5
    and-long v20, v2, v14

    cmp-long v18, v20, v4

    if-eqz v18, :cond_10

    if-eqz v6, :cond_7

    .line 212
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;->isLoading()Landroid/databinding/ObservableBoolean;

    move-result-object v18

    move-object/from16 v8, v18

    goto :goto_6

    :cond_7
    move-object/from16 v8, v16

    .line 214
    :goto_6
    invoke-virtual {v1, v9, v8}, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v8, :cond_8

    .line 219
    invoke-virtual {v8}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v8

    goto :goto_7

    :cond_8
    const/4 v8, 0x0

    :goto_7
    cmp-long v18, v20, v4

    if-eqz v18, :cond_a

    if-eqz v8, :cond_9

    const-wide/16 v20, 0x80

    or-long v24, v2, v20

    goto :goto_8

    :cond_9
    const-wide/16 v20, 0x40

    or-long v24, v2, v20

    goto :goto_8

    :cond_a
    move-wide/from16 v24, v2

    :goto_8
    if-eqz v8, :cond_b

    const/4 v2, 0x0

    goto :goto_9

    :cond_b
    const/16 v2, 0x8

    :goto_9
    if-nez v8, :cond_c

    goto :goto_a

    :cond_c
    const/4 v9, 0x0

    :goto_a
    and-long v20, v24, v14

    cmp-long v3, v20, v4

    if-eqz v3, :cond_e

    if-eqz v9, :cond_d

    const-wide/16 v20, 0x2000

    or-long v26, v24, v20

    goto :goto_b

    :cond_d
    const-wide/16 v20, 0x1000

    or-long v26, v24, v20

    goto :goto_b

    :cond_e
    move-wide/from16 v26, v24

    :goto_b
    if-eqz v9, :cond_f

    const/16 v19, 0x0

    goto :goto_c

    :cond_f
    const/16 v19, 0x8

    :goto_c
    move v9, v2

    move/from16 v8, v19

    move-wide/from16 v2, v26

    goto :goto_d

    :cond_10
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_d
    and-long v18, v2, v10

    cmp-long v20, v18, v4

    if-eqz v20, :cond_16

    if-eqz v6, :cond_11

    .line 252
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;->isError()Landroid/databinding/ObservableBoolean;

    move-result-object v20

    move-object/from16 v10, v20

    goto :goto_e

    :cond_11
    move-object/from16 v10, v16

    :goto_e
    const/4 v11, 0x2

    .line 254
    invoke-virtual {v1, v11, v10}, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v10, :cond_12

    .line 259
    invoke-virtual {v10}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v10

    move/from16 v23, v10

    goto :goto_f

    :cond_12
    const/16 v23, 0x0

    :goto_f
    cmp-long v10, v18, v4

    if-eqz v10, :cond_14

    if-eqz v23, :cond_13

    const-wide/16 v10, 0x200

    or-long v18, v2, v10

    goto :goto_10

    :cond_13
    const-wide/16 v10, 0x100

    or-long v18, v2, v10

    goto :goto_10

    :cond_14
    move-wide/from16 v18, v2

    :goto_10
    if-eqz v23, :cond_15

    .line 272
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->statusText:Lru/rocketbank/core/widgets/RocketTextView;

    const v3, 0x7f060220

    :goto_11
    invoke-static {v2, v3}, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->getColorFromResource(Landroid/view/View;I)I

    move-result v2

    goto :goto_12

    :cond_15
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->statusText:Lru/rocketbank/core/widgets/RocketTextView;

    const v3, 0x7f06002e

    goto :goto_11

    :goto_12
    move/from16 v23, v2

    move-wide/from16 v2, v18

    const-wide/16 v10, 0x38

    goto :goto_13

    :cond_16
    const-wide/16 v10, 0x38

    const/16 v23, 0x0

    :goto_13
    and-long v18, v2, v10

    cmp-long v10, v18, v4

    if-eqz v10, :cond_18

    if-eqz v6, :cond_17

    .line 278
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;->getStatusText()Landroid/databinding/ObservableField;

    move-result-object v6

    goto :goto_14

    :cond_17
    move-object/from16 v6, v16

    :goto_14
    const/4 v10, 0x3

    .line 280
    invoke-virtual {v1, v10, v6}, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v6, :cond_18

    .line 285
    invoke-virtual {v6}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v16, v6

    check-cast v16, Ljava/lang/String;

    :cond_18
    move-object/from16 v10, v16

    move/from16 v6, v17

    move/from16 v11, v23

    goto :goto_15

    :cond_19
    move-object/from16 v7, v16

    move-object v10, v7

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_15
    and-long v17, v2, v12

    cmp-long v12, v17, v4

    if-eqz v12, :cond_1a

    .line 293
    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->helpText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v12, v7}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 294
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->helpText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v7, v6}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    :cond_1a
    and-long v6, v2, v14

    cmp-long v12, v6, v4

    if-eqz v12, :cond_1b

    .line 299
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->loader:Lru/rocketbank/core/widgets/RocketLoader;

    invoke-virtual {v6, v9}, Lru/rocketbank/core/widgets/RocketLoader;->setVisibility(I)V

    .line 300
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->swirlView:Lcom/mattprecious/swirl/SwirlView;

    invoke-virtual {v6, v8}, Lcom/mattprecious/swirl/SwirlView;->setVisibility(I)V

    :cond_1b
    const-wide/16 v6, 0x38

    and-long v8, v2, v6

    cmp-long v6, v8, v4

    if-eqz v6, :cond_1c

    .line 305
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->statusText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v6, v10}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1c
    const-wide/16 v6, 0x34

    and-long v8, v2, v6

    cmp-long v2, v8, v4

    if-eqz v2, :cond_1d

    .line 310
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->statusText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v11}, Lru/rocketbank/core/widgets/RocketTextView;->setTextColor(I)V

    :cond_1d
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 158
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getData()Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;
    .locals 1

    .line 98
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->mData:Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->mDirtyFlags:J

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

    const-wide/16 v0, 0x20

    .line 61
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->mDirtyFlags:J

    .line 62
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->requestRebind()V

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

    .line 111
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->onChangeDataStatusText(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 109
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->onChangeDataIsError(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 107
    :pswitch_2
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->onChangeDataIsLoading(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 105
    :pswitch_3
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->onChangeDataHelperText(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setData(Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;)V
    .locals 6

    .line 89
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->mData:Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;

    .line 90
    monitor-enter p0

    .line 91
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->mDirtyFlags:J

    .line 92
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 93
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->notifyPropertyChanged(I)V

    .line 94
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 92
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x18

    if-ne v0, p1, :cond_0

    .line 80
    check-cast p2, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->setData(Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
