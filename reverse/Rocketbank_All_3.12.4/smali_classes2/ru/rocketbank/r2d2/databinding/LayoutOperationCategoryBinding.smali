.class public Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;
.super Landroid/databinding/ViewDataBinding;
.source "LayoutOperationCategoryBinding.java"

# interfaces
.implements Landroid/databinding/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final cancel:Lru/rocketbank/core/widgets/RocketTextView;

.field public final card:Landroid/support/v7/widget/CardView;

.field public final categoryName:Lru/rocketbank/core/widgets/RocketTextView;

.field public final comment:Lru/rocketbank/r2d2/friends/HashTagEditText;

.field public final icon:Lru/rocketbank/core/widgets/RocketIconView;

.field public final indeterminateProgress:Landroid/widget/ProgressBar;

.field private final mCallback4:Landroid/view/View$OnClickListener;

.field private final mCallback5:Landroid/view/View$OnClickListener;

.field private mData:Lru/rocketbank/r2d2/root/operation/vh/TagState;

.field private mDirtyFlags:J

.field private mHandler:Lru/rocketbank/r2d2/root/operation/vh/TagActions;

.field private mState:Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

.field private final mboundView0:Landroid/widget/FrameLayout;

.field private final mboundView2:Landroid/widget/LinearLayout;

.field public final save:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900b8

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901bf

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900f3

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x3

    .line 56
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 360
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mDirtyFlags:J

    .line 57
    sget-object v1, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0x9

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    .line 58
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->cancel:Lru/rocketbank/core/widgets/RocketTextView;

    .line 59
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->cancel:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x6

    .line 60
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->card:Landroid/support/v7/widget/CardView;

    const/4 v0, 0x1

    .line 61
    aget-object v2, p1, v0

    check-cast v2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->categoryName:Lru/rocketbank/core/widgets/RocketTextView;

    .line 62
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->categoryName:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/16 v2, 0x8

    .line 63
    aget-object v2, p1, v2

    check-cast v2, Lru/rocketbank/r2d2/friends/HashTagEditText;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->comment:Lru/rocketbank/r2d2/friends/HashTagEditText;

    const/4 v2, 0x7

    .line 64
    aget-object v2, p1, v2

    check-cast v2, Lru/rocketbank/core/widgets/RocketIconView;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->icon:Lru/rocketbank/core/widgets/RocketIconView;

    const/4 v2, 0x5

    .line 65
    aget-object v2, p1, v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->indeterminateProgress:Landroid/widget/ProgressBar;

    .line 66
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->indeterminateProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 67
    aget-object v2, p1, v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mboundView0:Landroid/widget/FrameLayout;

    .line 68
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mboundView0:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x2

    .line 69
    aget-object v3, p1, v2

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mboundView2:Landroid/widget/LinearLayout;

    .line 70
    iget-object v3, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mboundView2:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x4

    .line 71
    aget-object p1, p1, v3

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->save:Lru/rocketbank/core/widgets/RocketTextView;

    .line 72
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->save:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 73
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->setRootTag(Landroid/view/View;)V

    .line 75
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v2}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mCallback5:Landroid/view/View$OnClickListener;

    .line 76
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mCallback4:Landroid/view/View$OnClickListener;

    .line 77
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;
    .locals 1

    .line 380
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;
    .locals 2

    const-string v0, "layout/layout_operation_category_0"

    .line 384
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
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

    .line 387
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;
    .locals 1

    .line 372
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;
    .locals 3

    const v0, 0x7f0c0131

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 376
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;
    .locals 1

    .line 364
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;
    .locals 1

    const v0, 0x7f0c0131

    .line 368
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;

    return-object p0
.end method

.method private onChangeDataCategoryName(Landroid/databinding/ObservableField;I)Z
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
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mDirtyFlags:J

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

.method private onChangeStateSaveActionsActive(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 176
    monitor-enter p0

    .line 177
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mDirtyFlags:J

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

.method private onChangeStateUpdateInProgress(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 167
    monitor-enter p0

    .line 168
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mDirtyFlags:J

    .line 169
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
    .locals 1

    const/4 p2, 0x0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 326
    :pswitch_0
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mHandler:Lru/rocketbank/r2d2/root/operation/vh/TagActions;

    if-eqz p1, :cond_0

    move p2, v0

    :cond_0
    if-eqz p2, :cond_2

    .line 336
    invoke-interface {p1}, Lru/rocketbank/r2d2/root/operation/vh/TagActions;->onSave()V

    return-void

    .line 343
    :pswitch_1
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mHandler:Lru/rocketbank/r2d2/root/operation/vh/TagActions;

    if-eqz p1, :cond_1

    move p2, v0

    :cond_1
    if-eqz p2, :cond_2

    .line 353
    invoke-interface {p1}, Lru/rocketbank/r2d2/root/operation/vh/TagActions;->onCancel()V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected executeBindings()V
    .locals 26

    move-object/from16 v1, p0

    .line 196
    monitor-enter p0

    .line 197
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 198
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mDirtyFlags:J

    .line 199
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mData:Lru/rocketbank/r2d2/root/operation/vh/TagState;

    .line 208
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mState:Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    const-wide/16 v8, 0x54

    and-long v10, v2, v8

    cmp-long v12, v10, v4

    if-eqz v12, :cond_1

    if-eqz v6, :cond_0

    .line 220
    invoke-virtual {v6}, Lru/rocketbank/r2d2/root/operation/vh/TagState;->getCategoryName()Landroid/databinding/ObservableField;

    move-result-object v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/4 v11, 0x2

    .line 222
    invoke-virtual {v1, v11, v6}, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v6, :cond_1

    .line 227
    invoke-virtual {v6}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    const-wide/16 v11, 0x63

    and-long v13, v2, v11

    cmp-long v11, v13, v4

    const-wide/16 v12, 0x62

    const-wide/16 v14, 0x61

    const/4 v10, 0x0

    if-eqz v11, :cond_10

    and-long v17, v2, v14

    cmp-long v11, v17, v4

    const/16 v19, 0x8

    if-eqz v11, :cond_9

    if-eqz v7, :cond_2

    .line 237
    invoke-virtual {v7}, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->getUpdateInProgress()Landroid/databinding/ObservableBoolean;

    move-result-object v11

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    .line 239
    :goto_2
    invoke-virtual {v1, v10, v11}, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v11, :cond_3

    .line 244
    invoke-virtual {v11}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v11

    goto :goto_3

    :cond_3
    move v11, v10

    :goto_3
    cmp-long v20, v17, v4

    if-eqz v20, :cond_5

    if-eqz v11, :cond_4

    const-wide/16 v17, 0x100

    or-long v20, v2, v17

    const-wide/16 v2, 0x400

    or-long v17, v20, v2

    const-wide/16 v2, 0x4000

    or-long v20, v17, v2

    goto :goto_4

    :cond_4
    const-wide/16 v17, 0x80

    or-long v20, v2, v17

    const-wide/16 v2, 0x200

    or-long v17, v20, v2

    const-wide/16 v2, 0x2000

    or-long v20, v17, v2

    goto :goto_4

    :cond_5
    move-wide/from16 v20, v2

    :goto_4
    if-eqz v11, :cond_6

    const v2, -0x555556

    goto :goto_5

    :cond_6
    const v2, -0x29006000

    :goto_5
    if-eqz v11, :cond_7

    const/4 v3, 0x4

    goto :goto_6

    :cond_7
    move v3, v10

    :goto_6
    if-eqz v11, :cond_8

    move v11, v10

    goto :goto_7

    :cond_8
    move/from16 v11, v19

    :goto_7
    move/from16 v17, v3

    move/from16 v18, v11

    move v11, v2

    move-wide/from16 v2, v20

    goto :goto_8

    :cond_9
    move v11, v10

    move/from16 v17, v11

    move/from16 v18, v17

    :goto_8
    and-long v20, v2, v12

    cmp-long v22, v20, v4

    if-eqz v22, :cond_f

    if-eqz v7, :cond_a

    .line 271
    invoke-virtual {v7}, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->getSaveActionsActive()Landroid/databinding/ObservableBoolean;

    move-result-object v7

    goto :goto_9

    :cond_a
    const/4 v7, 0x0

    :goto_9
    const/4 v10, 0x1

    .line 273
    invoke-virtual {v1, v10, v7}, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_b

    .line 278
    invoke-virtual {v7}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v10

    goto :goto_a

    :cond_b
    const/4 v10, 0x0

    :goto_a
    cmp-long v7, v20, v4

    if-eqz v7, :cond_d

    if-eqz v10, :cond_c

    const-wide/16 v20, 0x1000

    or-long v23, v2, v20

    :goto_b
    move-wide/from16 v2, v23

    goto :goto_c

    :cond_c
    const-wide/16 v20, 0x800

    or-long v23, v2, v20

    goto :goto_b

    :cond_d
    :goto_c
    if-eqz v10, :cond_e

    const/4 v10, 0x0

    goto :goto_d

    :cond_e
    move/from16 v10, v19

    :goto_d
    move/from16 v25, v10

    move/from16 v10, v17

    move/from16 v7, v18

    goto :goto_f

    :cond_f
    move/from16 v10, v17

    move/from16 v7, v18

    goto :goto_e

    :cond_10
    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_e
    const/16 v25, 0x0

    :goto_f
    and-long v16, v2, v14

    cmp-long v14, v16, v4

    if-eqz v14, :cond_11

    .line 298
    iget-object v14, v1, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->cancel:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v14, v11}, Lru/rocketbank/core/widgets/RocketTextView;->setTextColor(I)V

    .line 299
    iget-object v11, v1, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->indeterminateProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v11, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 300
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->save:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v7, v10}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    :cond_11
    const-wide/16 v10, 0x40

    and-long v14, v2, v10

    cmp-long v7, v14, v4

    if-eqz v7, :cond_12

    .line 305
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->cancel:Lru/rocketbank/core/widgets/RocketTextView;

    iget-object v10, v1, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mCallback4:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v10}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->save:Lru/rocketbank/core/widgets/RocketTextView;

    iget-object v10, v1, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mCallback5:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v10}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    and-long v10, v2, v8

    cmp-long v7, v10, v4

    if-eqz v7, :cond_13

    .line 311
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->categoryName:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v7, v6}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_13
    and-long v6, v2, v12

    cmp-long v2, v6, v4

    if-eqz v2, :cond_14

    .line 316
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mboundView2:Landroid/widget/LinearLayout;

    move/from16 v10, v25

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_14
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 199
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getData()Lru/rocketbank/r2d2/root/operation/vh/TagState;
    .locals 1

    .line 138
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mData:Lru/rocketbank/r2d2/root/operation/vh/TagState;

    return-object v0
.end method

.method public getHandler()Lru/rocketbank/r2d2/root/operation/vh/TagActions;
    .locals 1

    .line 126
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mHandler:Lru/rocketbank/r2d2/root/operation/vh/TagActions;

    return-object v0
.end method

.method public getState()Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;
    .locals 1

    .line 150
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mState:Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 90
    monitor-enter p0

    .line 91
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 92
    monitor-exit p0

    return v0

    .line 94
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

    .line 82
    monitor-enter p0

    const-wide/16 v0, 0x40

    .line 83
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mDirtyFlags:J

    .line 84
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 84
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

    .line 161
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->onChangeDataCategoryName(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 159
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->onChangeStateSaveActionsActive(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 157
    :pswitch_2
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->onChangeStateUpdateInProgress(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setData(Lru/rocketbank/r2d2/root/operation/vh/TagState;)V
    .locals 6

    .line 129
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mData:Lru/rocketbank/r2d2/root/operation/vh/TagState;

    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mDirtyFlags:J

    .line 132
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 133
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->notifyPropertyChanged(I)V

    .line 134
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 132
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setHandler(Lru/rocketbank/r2d2/root/operation/vh/TagActions;)V
    .locals 6

    .line 117
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mHandler:Lru/rocketbank/r2d2/root/operation/vh/TagActions;

    .line 118
    monitor-enter p0

    .line 119
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mDirtyFlags:J

    .line 120
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x28

    .line 121
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->notifyPropertyChanged(I)V

    .line 122
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 120
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setState(Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;)V
    .locals 6

    .line 141
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mState:Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    .line 142
    monitor-enter p0

    .line 143
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x20

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->mDirtyFlags:J

    .line 144
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x4b

    .line 145
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->notifyPropertyChanged(I)V

    .line 146
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 144
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x28

    if-ne v0, p1, :cond_0

    .line 102
    check-cast p2, Lru/rocketbank/r2d2/root/operation/vh/TagActions;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->setHandler(Lru/rocketbank/r2d2/root/operation/vh/TagActions;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-ne v0, p1, :cond_1

    .line 105
    check-cast p2, Lru/rocketbank/r2d2/root/operation/vh/TagState;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->setData(Lru/rocketbank/r2d2/root/operation/vh/TagState;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x4b

    if-ne v0, p1, :cond_2

    .line 108
    check-cast p2, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;->setState(Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
