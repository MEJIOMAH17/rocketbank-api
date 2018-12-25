.class public Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;
.super Landroid/databinding/ViewDataBinding;
.source "LayoutMessageOutTextBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mData:Lru/rocketbank/r2d2/root/chat/base/TextMessageData;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView2:Landroid/widget/FrameLayout;

.field private final mboundView3:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mboundView5:Lru/rocketbank/core/widgets/RocketTextView;

.field public final messageBody:Landroid/widget/LinearLayout;

.field public final retry:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x6

    .line 39
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 357
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->mDirtyFlags:J

    .line 40
    sget-object v1, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    invoke-static {p1, p2, v0, v1, v2}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 41
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 42
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->mboundView0:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 43
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->mboundView2:Landroid/widget/FrameLayout;

    .line 44
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->mboundView2:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 45
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->mboundView3:Lru/rocketbank/core/widgets/RocketTextView;

    .line 46
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->mboundView3:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 47
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->mboundView5:Lru/rocketbank/core/widgets/RocketTextView;

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->mboundView5:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 49
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->messageBody:Landroid/widget/LinearLayout;

    .line 50
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->messageBody:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 51
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->retry:Lru/rocketbank/core/widgets/RocketTextView;

    .line 52
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->retry:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->setRootTag(Landroid/view/View;)V

    .line 55
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;
    .locals 1

    .line 377
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;
    .locals 2

    const-string v0, "layout/layout_message_out_text_0"

    .line 381
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
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

    .line 384
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;
    .locals 1

    .line 369
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;
    .locals 3

    const v0, 0x7f0c0129

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 373
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;
    .locals 1

    .line 361
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;
    .locals 1

    const v0, 0x7f0c0129

    .line 365
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;

    return-object p0
.end method

.method private onChangeDataBackground(Landroid/databinding/ObservableField;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/ObservableField<",
            "Landroid/graphics/drawable/Drawable;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 148
    monitor-enter p0

    .line 149
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->mDirtyFlags:J

    .line 150
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

.method private onChangeDataFirstMessage(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 157
    monitor-enter p0

    .line 158
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->mDirtyFlags:J

    .line 159
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

.method private onChangeDataMessage(Landroid/databinding/ObservableField;I)Z
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

    .line 139
    monitor-enter p0

    .line 140
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->mDirtyFlags:J

    .line 141
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

.method private onChangeDataRetryVisible(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->mDirtyFlags:J

    .line 123
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

    .line 166
    monitor-enter p0

    .line 167
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->mDirtyFlags:J

    .line 168
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

.method private onChangeDataStatusVisible(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->mDirtyFlags:J

    .line 132
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

    .line 177
    monitor-enter p0

    .line 178
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 179
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->mDirtyFlags:J

    .line 180
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->mData:Lru/rocketbank/r2d2/root/chat/base/TextMessageData;

    const-wide/16 v8, 0xff

    and-long v10, v2, v8

    cmp-long v8, v10, v4

    const-wide/16 v11, 0xd0

    const-wide/16 v13, 0xc8

    const-wide/16 v15, 0xc4

    const-wide/16 v17, 0xc2

    const-wide/16 v19, 0xc1

    const/4 v6, 0x0

    const/16 v22, 0x0

    if-eqz v8, :cond_18

    and-long v23, v2, v19

    cmp-long v8, v23, v4

    const/16 v25, 0x8

    if-eqz v8, :cond_5

    if-eqz v7, :cond_0

    .line 205
    invoke-virtual {v7}, Lru/rocketbank/r2d2/root/chat/base/TextMessageData;->getRetryVisible()Landroid/databinding/ObservableBoolean;

    move-result-object v8

    goto :goto_0

    :cond_0
    move-object/from16 v8, v22

    .line 207
    :goto_0
    invoke-virtual {v1, v6, v8}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v8, :cond_1

    .line 212
    invoke-virtual {v8}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v8

    goto :goto_1

    :cond_1
    move v8, v6

    :goto_1
    cmp-long v26, v23, v4

    if-eqz v26, :cond_3

    if-eqz v8, :cond_2

    const-wide/16 v23, 0x2000

    or-long v26, v2, v23

    :goto_2
    move-wide/from16 v2, v26

    goto :goto_3

    :cond_2
    const-wide/16 v23, 0x1000

    or-long v26, v2, v23

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    move/from16 v8, v25

    goto :goto_5

    :cond_5
    :goto_4
    move v8, v6

    :goto_5
    and-long v23, v2, v17

    cmp-long v26, v23, v4

    if-eqz v26, :cond_b

    if-eqz v7, :cond_6

    .line 231
    invoke-virtual {v7}, Lru/rocketbank/r2d2/root/chat/base/TextMessageData;->getStatusVisible()Landroid/databinding/ObservableBoolean;

    move-result-object v26

    move-object/from16 v6, v26

    goto :goto_6

    :cond_6
    move-object/from16 v6, v22

    :goto_6
    const/4 v9, 0x1

    .line 233
    invoke-virtual {v1, v9, v6}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v6, :cond_7

    .line 238
    invoke-virtual {v6}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v6

    goto :goto_7

    :cond_7
    const/4 v6, 0x0

    :goto_7
    cmp-long v9, v23, v4

    if-eqz v9, :cond_9

    if-eqz v6, :cond_8

    const-wide/16 v9, 0x200

    or-long v23, v2, v9

    :goto_8
    move-wide/from16 v2, v23

    goto :goto_9

    :cond_8
    const-wide/16 v9, 0x100

    or-long v23, v2, v9

    goto :goto_8

    :cond_9
    :goto_9
    if-eqz v6, :cond_a

    const/16 v25, 0x0

    :cond_a
    move/from16 v6, v25

    goto :goto_a

    :cond_b
    const/4 v6, 0x0

    :goto_a
    and-long v9, v2, v15

    cmp-long v23, v9, v4

    if-eqz v23, :cond_d

    if-eqz v7, :cond_c

    .line 257
    invoke-virtual {v7}, Lru/rocketbank/r2d2/root/chat/base/TextMessageData;->getMessage()Landroid/databinding/ObservableField;

    move-result-object v9

    goto :goto_b

    :cond_c
    move-object/from16 v9, v22

    :goto_b
    const/4 v10, 0x2

    .line 259
    invoke-virtual {v1, v10, v9}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v9, :cond_d

    .line 264
    invoke-virtual {v9}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_c

    :cond_d
    move-object/from16 v9, v22

    :goto_c
    and-long v23, v2, v13

    cmp-long v10, v23, v4

    if-eqz v10, :cond_f

    if-eqz v7, :cond_e

    .line 271
    invoke-virtual {v7}, Lru/rocketbank/r2d2/root/chat/base/TextMessageData;->getBackground()Landroid/databinding/ObservableField;

    move-result-object v10

    goto :goto_d

    :cond_e
    move-object/from16 v10, v22

    :goto_d
    const/4 v15, 0x3

    .line 273
    invoke-virtual {v1, v15, v10}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v10, :cond_f

    .line 278
    invoke-virtual {v10}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/Drawable;

    goto :goto_e

    :cond_f
    move-object/from16 v10, v22

    :goto_e
    and-long v15, v2, v11

    cmp-long v23, v15, v4

    if-eqz v23, :cond_15

    if-eqz v7, :cond_10

    .line 285
    invoke-virtual {v7}, Lru/rocketbank/r2d2/root/chat/base/TextMessageData;->getFirstMessage()Landroid/databinding/ObservableBoolean;

    move-result-object v21

    move-object/from16 v11, v21

    goto :goto_f

    :cond_10
    move-object/from16 v11, v22

    :goto_f
    const/4 v12, 0x4

    .line 287
    invoke-virtual {v1, v12, v11}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v11, :cond_11

    .line 292
    invoke-virtual {v11}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v11

    goto :goto_10

    :cond_11
    const/4 v11, 0x0

    :goto_10
    cmp-long v12, v15, v4

    if-eqz v12, :cond_13

    if-eqz v11, :cond_12

    const-wide/16 v15, 0x800

    or-long v23, v2, v15

    goto :goto_11

    :cond_12
    const-wide/16 v15, 0x400

    or-long v23, v2, v15

    goto :goto_11

    :cond_13
    move-wide/from16 v23, v2

    :goto_11
    if-eqz v11, :cond_14

    .line 305
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->messageBody:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070182

    :goto_12
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_13

    :cond_14
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->messageBody:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070183

    goto :goto_12

    :goto_13
    move/from16 v21, v2

    move-wide/from16 v2, v23

    const-wide/16 v11, 0xe0

    goto :goto_14

    :cond_15
    const-wide/16 v11, 0xe0

    const/16 v21, 0x0

    :goto_14
    and-long v15, v2, v11

    cmp-long v11, v15, v4

    if-eqz v11, :cond_17

    if-eqz v7, :cond_16

    .line 311
    invoke-virtual {v7}, Lru/rocketbank/r2d2/root/chat/base/TextMessageData;->getStatusText()Landroid/databinding/ObservableField;

    move-result-object v7

    goto :goto_15

    :cond_16
    move-object/from16 v7, v22

    :goto_15
    const/4 v11, 0x5

    .line 313
    invoke-virtual {v1, v11, v7}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_17

    .line 318
    invoke-virtual {v7}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v22, v7

    check-cast v22, Ljava/lang/String;

    :cond_17
    move v7, v6

    move v11, v8

    move/from16 v8, v21

    move-object/from16 v6, v22

    goto :goto_16

    :cond_18
    move-object/from16 v6, v22

    move-object v9, v6

    move-object v10, v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_16
    and-long v15, v2, v13

    cmp-long v12, v15, v4

    if-eqz v12, :cond_19

    .line 326
    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->mboundView2:Landroid/widget/FrameLayout;

    invoke-static {v12, v10}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_19
    const-wide/16 v12, 0xc4

    and-long v14, v2, v12

    cmp-long v10, v14, v4

    if-eqz v10, :cond_1a

    .line 331
    iget-object v10, v1, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->mboundView3:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v10, v9}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1a
    const-wide/16 v9, 0xe0

    and-long v12, v2, v9

    cmp-long v9, v12, v4

    if-eqz v9, :cond_1b

    .line 336
    iget-object v9, v1, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->mboundView5:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v9, v6}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1b
    and-long v9, v2, v17

    cmp-long v6, v9, v4

    if-eqz v6, :cond_1c

    .line 341
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->mboundView5:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v6, v7}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    :cond_1c
    const-wide/16 v6, 0xd0

    and-long v9, v2, v6

    cmp-long v6, v9, v4

    if-eqz v6, :cond_1d

    .line 346
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->messageBody:Landroid/widget/LinearLayout;

    invoke-static {v6, v8}, Lru/rocketbank/r2d2/root/chat/adapter/LinearBindingAdapter;->setMarginRight(Landroid/widget/LinearLayout;F)V

    :cond_1d
    and-long v6, v2, v19

    cmp-long v2, v6, v4

    if-eqz v2, :cond_1e

    .line 351
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->retry:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v11}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    :cond_1e
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 180
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getData()Lru/rocketbank/r2d2/root/chat/base/TextMessageData;
    .locals 1

    .line 98
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->mData:Lru/rocketbank/r2d2/root/chat/base/TextMessageData;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->mDirtyFlags:J

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

    const-wide/16 v0, 0x80

    .line 61
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->mDirtyFlags:J

    .line 62
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->requestRebind()V

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

    .line 115
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->onChangeDataStatusText(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 113
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->onChangeDataFirstMessage(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 111
    :pswitch_2
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->onChangeDataBackground(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 109
    :pswitch_3
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->onChangeDataMessage(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 107
    :pswitch_4
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->onChangeDataStatusVisible(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 105
    :pswitch_5
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->onChangeDataRetryVisible(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setData(Lru/rocketbank/r2d2/root/chat/base/TextMessageData;)V
    .locals 6

    .line 89
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->mData:Lru/rocketbank/r2d2/root/chat/base/TextMessageData;

    .line 90
    monitor-enter p0

    .line 91
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x40

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->mDirtyFlags:J

    .line 92
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 93
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->notifyPropertyChanged(I)V

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
    check-cast p2, Lru/rocketbank/r2d2/root/chat/base/TextMessageData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;->setData(Lru/rocketbank/r2d2/root/chat/base/TextMessageData;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
