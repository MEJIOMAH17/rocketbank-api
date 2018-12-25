.class public Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;
.super Landroid/databinding/ViewDataBinding;
.source "FeedItemTransferToSafeAccountBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding$OnClickListenerImpl1;,
        Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final confirmButton:Lru/rocketbank/core/widgets/RocketTextView;

.field public final headerText:Lru/rocketbank/core/widgets/RocketTextView;

.field public final infoButton:Lru/rocketbank/core/widgets/RocketTextView;

.field private mData:Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSaveData;

.field private mDirtyFlags:J

.field private mListener:Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSafeListener;

.field private mListenerConfirmClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding$OnClickListenerImpl1;

.field private mListenerInfoClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding$OnClickListenerImpl;

.field private final mboundView0:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x3

    .line 39
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 372
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->mDirtyFlags:J

    .line 40
    sget-object v1, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x4

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    .line 41
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->confirmButton:Lru/rocketbank/core/widgets/RocketTextView;

    .line 42
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->confirmButton:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 43
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->headerText:Lru/rocketbank/core/widgets/RocketTextView;

    .line 44
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->headerText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 45
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->infoButton:Lru/rocketbank/core/widgets/RocketTextView;

    .line 46
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->infoButton:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 47
    aget-object p1, p1, v0

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 48
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->mboundView0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->setRootTag(Landroid/view/View;)V

    .line 51
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;
    .locals 1

    .line 392
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;
    .locals 2

    const-string v0, "layout/feed_item_transfer_to_safe_account_0"

    .line 396
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
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

    .line 399
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;
    .locals 1

    .line 384
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;
    .locals 3

    const v0, 0x7f0c00be

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 388
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;
    .locals 1

    .line 376
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;
    .locals 1

    const v0, 0x7f0c00be

    .line 380
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;

    return-object p0
.end method

.method private onChangeDataGoButtonText(Landroid/databinding/ObservableField;I)Z
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
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->mDirtyFlags:J

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

.method private onChangeDataInfoButtonText(Landroid/databinding/ObservableField;I)Z
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

    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->mDirtyFlags:J

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

.method private onChangeDataText(Landroid/databinding/ObservableField;I)Z
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

    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->mDirtyFlags:J

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


# virtual methods
.method protected executeBindings()V
    .locals 31

    move-object/from16 v1, p0

    .line 155
    monitor-enter p0

    .line 156
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 157
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->mDirtyFlags:J

    .line 158
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->mListener:Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSafeListener;

    .line 168
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->mData:Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSaveData;

    const-wide/16 v8, 0x28

    and-long v10, v2, v8

    cmp-long v12, v10, v4

    if-eqz v12, :cond_2

    if-eqz v6, :cond_2

    .line 186
    iget-object v11, v1, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->mListenerInfoClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding$OnClickListenerImpl;

    if-nez v11, :cond_0

    new-instance v11, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding$OnClickListenerImpl;

    invoke-direct {v11}, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding$OnClickListenerImpl;-><init>()V

    iput-object v11, v1, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->mListenerInfoClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding$OnClickListenerImpl;

    goto :goto_0

    :cond_0
    iget-object v11, v1, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->mListenerInfoClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding$OnClickListenerImpl;

    :goto_0
    invoke-virtual {v11, v6}, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding$OnClickListenerImpl;->setValue(Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSafeListener;)Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding$OnClickListenerImpl;

    move-result-object v11

    .line 188
    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->mListenerConfirmClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding$OnClickListenerImpl1;

    if-nez v12, :cond_1

    new-instance v12, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding$OnClickListenerImpl1;

    invoke-direct {v12}, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding$OnClickListenerImpl1;-><init>()V

    iput-object v12, v1, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->mListenerConfirmClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding$OnClickListenerImpl1;

    goto :goto_1

    :cond_1
    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->mListenerConfirmClickedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding$OnClickListenerImpl1;

    :goto_1
    invoke-virtual {v12, v6}, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding$OnClickListenerImpl1;->setValue(Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSafeListener;)Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding$OnClickListenerImpl1;

    move-result-object v6

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_2
    const-wide/16 v12, 0x37

    and-long v14, v2, v12

    cmp-long v12, v14, v4

    const-wide/16 v13, 0x2000

    const-wide/16 v15, 0x32

    const-wide/16 v17, 0x200

    const-wide/16 v19, 0x34

    const-wide/16 v21, 0x31

    const/4 v10, 0x1

    const/4 v8, 0x0

    if-eqz v12, :cond_10

    and-long v24, v2, v21

    cmp-long v9, v24, v4

    if-eqz v9, :cond_7

    if-eqz v7, :cond_3

    .line 198
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSaveData;->getInfoButtonText()Landroid/databinding/ObservableField;

    move-result-object v9

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    .line 200
    :goto_3
    invoke-virtual {v1, v8, v9}, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v9, :cond_4

    .line 205
    invoke-virtual {v9}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    if-eqz v9, :cond_5

    move v12, v10

    goto :goto_5

    :cond_5
    move v12, v8

    :goto_5
    cmp-long v26, v24, v4

    if-eqz v26, :cond_8

    if-eqz v12, :cond_6

    or-long v24, v2, v17

    move-wide/from16 v2, v24

    goto :goto_6

    :cond_6
    const-wide/16 v24, 0x100

    or-long v26, v2, v24

    move-wide/from16 v2, v26

    goto :goto_6

    :cond_7
    move v12, v8

    const/4 v9, 0x0

    :cond_8
    :goto_6
    and-long v24, v2, v15

    cmp-long v26, v24, v4

    if-eqz v26, :cond_a

    if-eqz v7, :cond_9

    .line 224
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSaveData;->getText()Landroid/databinding/ObservableField;

    move-result-object v24

    move-object/from16 v8, v24

    goto :goto_7

    :cond_9
    const/4 v8, 0x0

    .line 226
    :goto_7
    invoke-virtual {v1, v10, v8}, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v8, :cond_a

    .line 231
    invoke-virtual {v8}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_8

    :cond_a
    const/4 v8, 0x0

    :goto_8
    and-long v24, v2, v19

    cmp-long v26, v24, v4

    if-eqz v26, :cond_f

    if-eqz v7, :cond_b

    .line 238
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSaveData;->getGoButtonText()Landroid/databinding/ObservableField;

    move-result-object v7

    goto :goto_9

    :cond_b
    const/4 v7, 0x0

    :goto_9
    const/4 v10, 0x2

    .line 240
    invoke-virtual {v1, v10, v7}, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_c

    .line 245
    invoke-virtual {v7}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Ljava/lang/String;

    goto :goto_a

    :cond_c
    const/4 v10, 0x0

    :goto_a
    if-eqz v10, :cond_d

    const/4 v7, 0x1

    goto :goto_b

    :cond_d
    const/4 v7, 0x0

    :goto_b
    cmp-long v23, v24, v4

    if-eqz v23, :cond_11

    if-eqz v7, :cond_e

    or-long v24, v2, v13

    move-wide/from16 v2, v24

    goto :goto_c

    :cond_e
    const-wide/16 v24, 0x1000

    or-long v26, v2, v24

    move-wide/from16 v2, v26

    goto :goto_c

    :cond_f
    const/4 v7, 0x0

    const/4 v10, 0x0

    goto :goto_c

    :cond_10
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    :cond_11
    :goto_c
    and-long v24, v2, v13

    cmp-long v13, v24, v4

    if-eqz v13, :cond_13

    if-eqz v10, :cond_12

    .line 267
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    goto :goto_d

    :cond_12
    const/4 v13, 0x0

    :goto_d
    if-nez v13, :cond_13

    const/4 v13, 0x1

    goto :goto_e

    :cond_13
    const/4 v13, 0x0

    :goto_e
    and-long v24, v2, v17

    cmp-long v14, v24, v4

    if-eqz v14, :cond_15

    if-eqz v9, :cond_14

    .line 278
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    goto :goto_f

    :cond_14
    const/4 v14, 0x0

    :goto_f
    if-nez v14, :cond_15

    const/16 v29, 0x1

    goto :goto_10

    :cond_15
    const/16 v29, 0x0

    :goto_10
    and-long v17, v2, v21

    cmp-long v14, v17, v4

    const/16 v23, 0x8

    if-eqz v14, :cond_1a

    if-eqz v12, :cond_16

    goto :goto_11

    :cond_16
    const/16 v29, 0x0

    :goto_11
    cmp-long v12, v17, v4

    if-eqz v12, :cond_18

    if-eqz v29, :cond_17

    const-wide/16 v17, 0x80

    or-long v24, v2, v17

    :goto_12
    move-wide/from16 v2, v24

    goto :goto_13

    :cond_17
    const-wide/16 v17, 0x40

    or-long v24, v2, v17

    goto :goto_12

    :cond_18
    :goto_13
    if-eqz v29, :cond_19

    const/4 v12, 0x0

    goto :goto_14

    :cond_19
    move/from16 v12, v23

    :goto_14
    move v14, v12

    move/from16 v12, v29

    goto :goto_15

    :cond_1a
    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_15
    and-long v17, v2, v19

    cmp-long v24, v17, v4

    if-eqz v24, :cond_1f

    if-eqz v7, :cond_1b

    goto :goto_16

    :cond_1b
    const/4 v13, 0x0

    :goto_16
    cmp-long v7, v17, v4

    if-eqz v7, :cond_1d

    if-eqz v13, :cond_1c

    const-wide/16 v17, 0x800

    or-long v24, v2, v17

    :goto_17
    move-wide/from16 v2, v24

    goto :goto_18

    :cond_1c
    const-wide/16 v17, 0x400

    or-long v24, v2, v17

    goto :goto_17

    :cond_1d
    :goto_18
    if-eqz v13, :cond_1e

    const/16 v28, 0x0

    goto :goto_19

    :cond_1e
    move/from16 v28, v23

    :goto_19
    move/from16 v7, v28

    goto :goto_1a

    :cond_1f
    const/4 v7, 0x0

    const/4 v13, 0x0

    :goto_1a
    and-long v17, v2, v19

    cmp-long v19, v17, v4

    if-eqz v19, :cond_20

    .line 324
    iget-object v15, v1, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->confirmButton:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v15, v13}, Lru/rocketbank/core/widgets/RocketTextView;->setEnabled(Z)V

    .line 325
    iget-object v13, v1, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->confirmButton:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v13, v10}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 326
    iget-object v10, v1, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->confirmButton:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v10, v7}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    :cond_20
    const-wide/16 v15, 0x28

    and-long v17, v2, v15

    cmp-long v7, v17, v4

    if-eqz v7, :cond_21

    .line 331
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->confirmButton:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v7, v6}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->infoButton:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v6, v11}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_21
    const-wide/16 v6, 0x32

    and-long v10, v2, v6

    cmp-long v6, v10, v4

    if-eqz v6, :cond_22

    .line 337
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->headerText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v6, v8}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_22
    and-long v6, v2, v21

    cmp-long v2, v6, v4

    if-eqz v2, :cond_23

    .line 342
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->infoButton:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v12}, Lru/rocketbank/core/widgets/RocketTextView;->setEnabled(Z)V

    .line 343
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->infoButton:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v9}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 344
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->infoButton:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v14}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    :cond_23
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

.method public getData()Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSaveData;
    .locals 1

    .line 109
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->mData:Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSaveData;

    return-object v0
.end method

.method public getListener()Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSafeListener;
    .locals 1

    .line 97
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->mListener:Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSafeListener;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 66
    monitor-exit p0

    return v0

    .line 68
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

    .line 56
    monitor-enter p0

    const-wide/16 v0, 0x20

    .line 57
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->mDirtyFlags:J

    .line 58
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 58
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

    .line 120
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->onChangeDataGoButtonText(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 118
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->onChangeDataText(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 116
    :pswitch_2
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->onChangeDataInfoButtonText(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setData(Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSaveData;)V
    .locals 6

    .line 100
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->mData:Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSaveData;

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->mDirtyFlags:J

    .line 103
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 104
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->notifyPropertyChanged(I)V

    .line 105
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 103
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setListener(Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSafeListener;)V
    .locals 6

    .line 88
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->mListener:Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSafeListener;

    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->mDirtyFlags:J

    .line 91
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x37

    .line 92
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->notifyPropertyChanged(I)V

    .line 93
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 91
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

    .line 76
    check-cast p2, Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSafeListener;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->setListener(Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSafeListener;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-ne v0, p1, :cond_1

    .line 79
    check-cast p2, Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSaveData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->setData(Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSaveData;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
