.class public Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;
.super Landroid/databinding/ViewDataBinding;
.source "LayoutMessageOutOperationBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final icon:Landroid/widget/ImageView;

.field private mData:Lru/rocketbank/r2d2/root/chat/base/TextMessageData;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

.field public final messageBody:Landroid/widget/LinearLayout;

.field public final operationLogo:Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

.field public final operationName:Lru/rocketbank/core/widgets/RocketTextView;

.field public final operationTotal:Lru/rocketbank/core/widgets/RocketAutofitTextView;

.field public final retry:Lru/rocketbank/core/widgets/RocketTextView;

.field public final who:Lru/rocketbank/core/widgets/RocketAutofitTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901bf

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090419

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090296

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090297

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090298

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0902e2

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x4

    .line 51
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 292
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->mDirtyFlags:J

    .line 52
    sget-object v1, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0x9

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x3

    .line 53
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->icon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 54
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 55
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->mboundView0:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x2

    .line 56
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    .line 57
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 58
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->messageBody:Landroid/widget/LinearLayout;

    .line 59
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->messageBody:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x5

    .line 60
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->operationLogo:Lru/rocketbank/r2d2/widgets/operations/OperationIconView;

    const/4 v1, 0x6

    .line 61
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->operationName:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v1, 0x7

    .line 62
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketAutofitTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->operationTotal:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    const/16 v1, 0x8

    .line 63
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->retry:Lru/rocketbank/core/widgets/RocketTextView;

    .line 64
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketAutofitTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->who:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    .line 65
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->setRootTag(Landroid/view/View;)V

    .line 67
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;
    .locals 1

    .line 312
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;
    .locals 2

    const-string v0, "layout/layout_message_out_operation_0"

    .line 316
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
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

    .line 319
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;
    .locals 1

    .line 304
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;
    .locals 3

    const v0, 0x7f0c0127

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 308
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;
    .locals 1

    .line 296
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;
    .locals 1

    const v0, 0x7f0c0127

    .line 300
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;

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

    .line 138
    monitor-enter p0

    .line 139
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->mDirtyFlags:J

    .line 140
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

    .line 147
    monitor-enter p0

    .line 148
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->mDirtyFlags:J

    .line 149
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

    .line 156
    monitor-enter p0

    .line 157
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->mDirtyFlags:J

    .line 158
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

    .line 129
    monitor-enter p0

    .line 130
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->mDirtyFlags:J

    .line 131
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
    .locals 25

    move-object/from16 v1, p0

    .line 167
    monitor-enter p0

    .line 168
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 169
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->mDirtyFlags:J

    .line 170
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->mData:Lru/rocketbank/r2d2/root/chat/base/TextMessageData;

    const-wide/16 v8, 0x3f

    and-long v10, v2, v8

    cmp-long v8, v10, v4

    const-wide/16 v9, 0x38

    const-wide/16 v11, 0x34

    const-wide/16 v13, 0x32

    const-wide/16 v15, 0x31

    const/4 v6, 0x0

    const/16 v18, 0x0

    if-eqz v8, :cond_10

    and-long v19, v2, v15

    cmp-long v8, v19, v4

    if-eqz v8, :cond_5

    if-eqz v7, :cond_0

    .line 190
    invoke-virtual {v7}, Lru/rocketbank/r2d2/root/chat/base/TextMessageData;->getStatusVisible()Landroid/databinding/ObservableBoolean;

    move-result-object v8

    goto :goto_0

    :cond_0
    move-object/from16 v8, v18

    .line 192
    :goto_0
    invoke-virtual {v1, v6, v8}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v8, :cond_1

    .line 197
    invoke-virtual {v8}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v8

    goto :goto_1

    :cond_1
    move v8, v6

    :goto_1
    cmp-long v21, v19, v4

    if-eqz v21, :cond_3

    if-eqz v8, :cond_2

    const-wide/16 v19, 0x80

    or-long v21, v2, v19

    :goto_2
    move-wide/from16 v2, v21

    goto :goto_3

    :cond_2
    const-wide/16 v19, 0x40

    or-long v21, v2, v19

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    const/16 v8, 0x8

    goto :goto_5

    :cond_5
    :goto_4
    move v8, v6

    :goto_5
    and-long v19, v2, v13

    cmp-long v21, v19, v4

    if-eqz v21, :cond_7

    if-eqz v7, :cond_6

    .line 216
    invoke-virtual {v7}, Lru/rocketbank/r2d2/root/chat/base/TextMessageData;->getBackground()Landroid/databinding/ObservableField;

    move-result-object v19

    move-object/from16 v6, v19

    goto :goto_6

    :cond_6
    move-object/from16 v6, v18

    :goto_6
    const/4 v13, 0x1

    .line 218
    invoke-virtual {v1, v13, v6}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v6, :cond_7

    .line 223
    invoke-virtual {v6}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable;

    goto :goto_7

    :cond_7
    move-object/from16 v6, v18

    :goto_7
    and-long v13, v2, v11

    cmp-long v19, v13, v4

    if-eqz v19, :cond_d

    if-eqz v7, :cond_8

    .line 230
    invoke-virtual {v7}, Lru/rocketbank/r2d2/root/chat/base/TextMessageData;->getFirstMessage()Landroid/databinding/ObservableBoolean;

    move-result-object v17

    move-object/from16 v11, v17

    goto :goto_8

    :cond_8
    move-object/from16 v11, v18

    :goto_8
    const/4 v12, 0x2

    .line 232
    invoke-virtual {v1, v12, v11}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v11, :cond_9

    .line 237
    invoke-virtual {v11}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v11

    move/from16 v23, v11

    goto :goto_9

    :cond_9
    const/16 v23, 0x0

    :goto_9
    cmp-long v11, v13, v4

    if-eqz v11, :cond_b

    if-eqz v23, :cond_a

    const-wide/16 v11, 0x200

    or-long v13, v2, v11

    goto :goto_a

    :cond_a
    const-wide/16 v11, 0x100

    or-long v13, v2, v11

    goto :goto_a

    :cond_b
    move-wide v13, v2

    :goto_a
    if-eqz v23, :cond_c

    .line 250
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->messageBody:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070182

    :goto_b
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_c

    :cond_c
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->messageBody:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070183

    goto :goto_b

    :goto_c
    move/from16 v17, v2

    move-wide v2, v13

    goto :goto_d

    :cond_d
    const/16 v17, 0x0

    :goto_d
    and-long v11, v2, v9

    cmp-long v13, v11, v4

    if-eqz v13, :cond_f

    if-eqz v7, :cond_e

    .line 256
    invoke-virtual {v7}, Lru/rocketbank/r2d2/root/chat/base/TextMessageData;->getStatusText()Landroid/databinding/ObservableField;

    move-result-object v7

    goto :goto_e

    :cond_e
    move-object/from16 v7, v18

    :goto_e
    const/4 v11, 0x3

    .line 258
    invoke-virtual {v1, v11, v7}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_f

    .line 263
    invoke-virtual {v7}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v18, v7

    check-cast v18, Ljava/lang/String;

    :cond_f
    move-object v11, v6

    move/from16 v7, v17

    move-object/from16 v6, v18

    goto :goto_f

    :cond_10
    move-object/from16 v6, v18

    move-object v11, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_f
    and-long v12, v2, v9

    cmp-long v9, v12, v4

    if-eqz v9, :cond_11

    .line 271
    iget-object v9, v1, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v9, v6}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_11
    and-long v9, v2, v15

    cmp-long v6, v9, v4

    if-eqz v6, :cond_12

    .line 276
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v6, v8}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    :cond_12
    const-wide/16 v8, 0x34

    and-long v12, v2, v8

    cmp-long v6, v12, v4

    if-eqz v6, :cond_13

    .line 281
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->messageBody:Landroid/widget/LinearLayout;

    invoke-static {v6, v7}, Lru/rocketbank/r2d2/root/chat/adapter/LinearBindingAdapter;->setMarginRight(Landroid/widget/LinearLayout;F)V

    :cond_13
    const-wide/16 v6, 0x32

    and-long v8, v2, v6

    cmp-long v2, v8, v4

    if-eqz v2, :cond_14

    .line 286
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->messageBody:Landroid/widget/LinearLayout;

    invoke-static {v2, v11}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_14
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 170
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getData()Lru/rocketbank/r2d2/root/chat/base/TextMessageData;
    .locals 1

    .line 110
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->mData:Lru/rocketbank/r2d2/root/chat/base/TextMessageData;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 82
    monitor-exit p0

    return v0

    .line 84
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

    .line 72
    monitor-enter p0

    const-wide/16 v0, 0x20

    .line 73
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->mDirtyFlags:J

    .line 74
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->requestRebind()V

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

    .line 123
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->onChangeDataStatusText(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 121
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->onChangeDataFirstMessage(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 119
    :pswitch_2
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->onChangeDataBackground(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 117
    :pswitch_3
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->onChangeDataStatusVisible(Landroid/databinding/ObservableBoolean;I)Z

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

.method public setData(Lru/rocketbank/r2d2/root/chat/base/TextMessageData;)V
    .locals 6

    .line 101
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->mData:Lru/rocketbank/r2d2/root/chat/base/TextMessageData;

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->mDirtyFlags:J

    .line 104
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 105
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->notifyPropertyChanged(I)V

    .line 106
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 104
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

    .line 92
    check-cast p2, Lru/rocketbank/r2d2/root/chat/base/TextMessageData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;->setData(Lru/rocketbank/r2d2/root/chat/base/TextMessageData;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
