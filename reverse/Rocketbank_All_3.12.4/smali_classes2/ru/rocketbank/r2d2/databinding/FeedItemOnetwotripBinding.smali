.class public Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;
.super Landroid/databinding/ViewDataBinding;
.source "FeedItemOnetwotripBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final background:Landroid/widget/ImageView;

.field public final button:Lru/rocketbank/core/widgets/RocketTextView;

.field private mData:Lru/rocketbank/r2d2/data/binding/feed/FeedOnetwotripHolderData;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;

.field public final tariffCode:Lru/rocketbank/core/widgets/RocketTextView;

.field public final tariffDescription:Lru/rocketbank/core/widgets/RocketTextView;

.field public final tariffText:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090069

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

    .line 254
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->mDirtyFlags:J

    .line 41
    sget-object v1, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x6

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x5

    .line 42
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->background:Landroid/widget/ImageView;

    .line 43
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->button:Lru/rocketbank/core/widgets/RocketTextView;

    .line 44
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->button:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 45
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 46
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->mboundView0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 47
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->tariffCode:Lru/rocketbank/core/widgets/RocketTextView;

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->tariffCode:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 49
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->tariffDescription:Lru/rocketbank/core/widgets/RocketTextView;

    .line 50
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->tariffDescription:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 51
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->tariffText:Lru/rocketbank/core/widgets/RocketTextView;

    .line 52
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->tariffText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->setRootTag(Landroid/view/View;)V

    .line 55
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;
    .locals 1

    .line 274
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;
    .locals 2

    const-string v0, "layout/feed_item_onetwotrip_0"

    .line 278
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
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

    .line 281
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;
    .locals 1

    .line 266
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;
    .locals 3

    const v0, 0x7f0c00b7

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 270
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;
    .locals 1

    .line 258
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;
    .locals 1

    const v0, 0x7f0c00b7

    .line 262
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;

    return-object p0
.end method

.method private onChangeDataButtonText(Landroid/databinding/ObservableField;I)Z
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
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->mDirtyFlags:J

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

.method private onChangeDataTariffDescription(Landroid/databinding/ObservableField;I)Z
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
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->mDirtyFlags:J

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

.method private onChangeDataTariffText(Landroid/databinding/ObservableField;I)Z
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
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->mDirtyFlags:J

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

.method private onChangeDataUid(Landroid/databinding/ObservableField;I)Z
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
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->mDirtyFlags:J

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


# virtual methods
.method protected executeBindings()V
    .locals 20

    move-object/from16 v1, p0

    .line 155
    monitor-enter p0

    .line 156
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 157
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->mDirtyFlags:J

    .line 158
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->mData:Lru/rocketbank/r2d2/data/binding/feed/FeedOnetwotripHolderData;

    const-wide/16 v7, 0x3f

    and-long v9, v2, v7

    cmp-long v7, v9, v4

    const-wide/16 v8, 0x38

    const-wide/16 v10, 0x34

    const-wide/16 v12, 0x32

    const-wide/16 v14, 0x31

    const/16 v16, 0x0

    if-eqz v7, :cond_8

    and-long v17, v2, v14

    cmp-long v7, v17, v4

    if-eqz v7, :cond_1

    if-eqz v6, :cond_0

    .line 176
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/feed/FeedOnetwotripHolderData;->getUid()Landroid/databinding/ObservableField;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object/from16 v7, v16

    :goto_0
    const/4 v14, 0x0

    .line 178
    invoke-virtual {v1, v14, v7}, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_1

    .line 183
    invoke-virtual {v7}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v7, v16

    :goto_1
    and-long v14, v2, v12

    cmp-long v17, v14, v4

    if-eqz v17, :cond_3

    if-eqz v6, :cond_2

    .line 190
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/feed/FeedOnetwotripHolderData;->getTariffDescription()Landroid/databinding/ObservableField;

    move-result-object v14

    goto :goto_2

    :cond_2
    move-object/from16 v14, v16

    :goto_2
    const/4 v15, 0x1

    .line 192
    invoke-virtual {v1, v15, v14}, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v14, :cond_3

    .line 197
    invoke-virtual {v14}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v14, v16

    :goto_3
    and-long v17, v2, v10

    cmp-long v15, v17, v4

    if-eqz v15, :cond_5

    if-eqz v6, :cond_4

    .line 204
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/feed/FeedOnetwotripHolderData;->getTariffText()Landroid/databinding/ObservableField;

    move-result-object v15

    goto :goto_4

    :cond_4
    move-object/from16 v15, v16

    :goto_4
    const/4 v10, 0x2

    .line 206
    invoke-virtual {v1, v10, v15}, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v15, :cond_5

    .line 211
    invoke-virtual {v15}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v10, v16

    :goto_5
    and-long v17, v2, v8

    cmp-long v11, v17, v4

    if-eqz v11, :cond_7

    if-eqz v6, :cond_6

    .line 218
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/feed/FeedOnetwotripHolderData;->getButtonText()Landroid/databinding/ObservableField;

    move-result-object v6

    goto :goto_6

    :cond_6
    move-object/from16 v6, v16

    :goto_6
    const/4 v11, 0x3

    .line 220
    invoke-virtual {v1, v11, v6}, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v6, :cond_7

    .line 225
    invoke-virtual {v6}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v16, v6

    check-cast v16, Ljava/lang/String;

    :cond_7
    move-object/from16 v6, v16

    goto :goto_7

    :cond_8
    move-object/from16 v6, v16

    move-object v7, v6

    move-object v10, v7

    move-object v14, v10

    :goto_7
    and-long v15, v2, v8

    cmp-long v8, v15, v4

    if-eqz v8, :cond_9

    .line 233
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->button:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v8, v6}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_9
    const-wide/16 v8, 0x31

    and-long v15, v2, v8

    cmp-long v6, v15, v4

    if-eqz v6, :cond_a

    .line 238
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->tariffCode:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v6, v7}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_a
    and-long v6, v2, v12

    cmp-long v8, v6, v4

    if-eqz v8, :cond_b

    .line 243
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->tariffDescription:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v6, v14}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_b
    const-wide/16 v6, 0x34

    and-long v8, v2, v6

    cmp-long v2, v8, v4

    if-eqz v2, :cond_c

    .line 248
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->tariffText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v10}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_c
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

.method public getData()Lru/rocketbank/r2d2/data/binding/feed/FeedOnetwotripHolderData;
    .locals 1

    .line 98
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->mData:Lru/rocketbank/r2d2/data/binding/feed/FeedOnetwotripHolderData;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->mDirtyFlags:J

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
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->mDirtyFlags:J

    .line 62
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->requestRebind()V

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

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->onChangeDataButtonText(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 109
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->onChangeDataTariffText(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 107
    :pswitch_2
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->onChangeDataTariffDescription(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 105
    :pswitch_3
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->onChangeDataUid(Landroid/databinding/ObservableField;I)Z

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

.method public setData(Lru/rocketbank/r2d2/data/binding/feed/FeedOnetwotripHolderData;)V
    .locals 6

    .line 89
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->mData:Lru/rocketbank/r2d2/data/binding/feed/FeedOnetwotripHolderData;

    .line 90
    monitor-enter p0

    .line 91
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->mDirtyFlags:J

    .line 92
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 93
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->notifyPropertyChanged(I)V

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
    check-cast p2, Lru/rocketbank/r2d2/data/binding/feed/FeedOnetwotripHolderData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->setData(Lru/rocketbank/r2d2/data/binding/feed/FeedOnetwotripHolderData;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
