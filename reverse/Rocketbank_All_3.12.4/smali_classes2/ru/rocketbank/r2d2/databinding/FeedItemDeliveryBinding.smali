.class public Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;
.super Landroid/databinding/ViewDataBinding;
.source "FeedItemDeliveryBinding.java"

# interfaces
.implements Landroid/databinding/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final backgroundImage:Landroid/widget/ImageView;

.field public final buttonText:Lru/rocketbank/core/widgets/RocketTextView;

.field public final descriptionText:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mCallback22:Landroid/view/View$OnClickListener;

.field private mData:Lru/rocketbank/r2d2/data/binding/feed/FeedDeliveryHolderData;

.field private mDirtyFlags:J

.field private mListener:Lru/rocketbank/r2d2/data/binding/feed/DeliveryItemClickListener;

.field private final mboundView0:Landroid/widget/LinearLayout;

.field public final titleText:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09006a

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x3

    .line 42
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 279
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->mDirtyFlags:J

    .line 43
    sget-object v1, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x5

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x4

    .line 44
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->backgroundImage:Landroid/widget/ImageView;

    .line 45
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->buttonText:Lru/rocketbank/core/widgets/RocketTextView;

    .line 46
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->buttonText:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 47
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->descriptionText:Lru/rocketbank/core/widgets/RocketTextView;

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->descriptionText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 49
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 50
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->mboundView0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 51
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->titleText:Lru/rocketbank/core/widgets/RocketTextView;

    .line 52
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->titleText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->setRootTag(Landroid/view/View;)V

    .line 55
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->mCallback22:Landroid/view/View$OnClickListener;

    .line 56
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;
    .locals 1

    .line 299
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;
    .locals 2

    const-string v0, "layout/feed_item_delivery_0"

    .line 303
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
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

    .line 306
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;
    .locals 1

    .line 291
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;
    .locals 3

    const v0, 0x7f0c00b0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 295
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;
    .locals 1

    .line 283
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;
    .locals 1

    const v0, 0x7f0c00b0

    .line 287
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;

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

    .line 149
    monitor-enter p0

    .line 150
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->mDirtyFlags:J

    .line 151
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

.method private onChangeDataDescription(Landroid/databinding/ObservableField;I)Z
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

    .line 140
    monitor-enter p0

    .line 141
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->mDirtyFlags:J

    .line 142
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

.method private onChangeDataTitle(Landroid/databinding/ObservableField;I)Z
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

    .line 131
    monitor-enter p0

    .line 132
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->mDirtyFlags:J

    .line 133
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
    .locals 0

    .line 267
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->mListener:Lru/rocketbank/r2d2/data/binding/feed/DeliveryItemClickListener;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 275
    invoke-interface {p1}, Lru/rocketbank/r2d2/data/binding/feed/DeliveryItemClickListener;->onDeliveryClicked()V

    :cond_1
    return-void
.end method

.method protected executeBindings()V
    .locals 22

    move-object/from16 v1, p0

    .line 160
    monitor-enter p0

    .line 161
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 162
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->mDirtyFlags:J

    .line 163
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->mData:Lru/rocketbank/r2d2/data/binding/feed/FeedDeliveryHolderData;

    const-wide/16 v7, 0x37

    and-long v9, v2, v7

    cmp-long v7, v9, v4

    const-wide/16 v8, 0x34

    const-wide/16 v10, 0x32

    const-wide/16 v12, 0x31

    const/4 v14, 0x0

    if-eqz v7, :cond_b

    and-long v16, v2, v12

    cmp-long v7, v16, v4

    const/4 v15, 0x1

    if-eqz v7, :cond_6

    if-eqz v6, :cond_0

    .line 182
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/feed/FeedDeliveryHolderData;->getTitle()Landroid/databinding/ObservableField;

    move-result-object v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 184
    :goto_0
    invoke-virtual {v1, v14, v7}, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_1

    .line 189
    invoke-virtual {v7}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_2

    move/from16 v18, v15

    goto :goto_2

    :cond_2
    move/from16 v18, v14

    :goto_2
    cmp-long v19, v16, v4

    if-eqz v19, :cond_4

    if-eqz v18, :cond_3

    const-wide/16 v16, 0x80

    or-long v19, v2, v16

    goto :goto_3

    :cond_3
    const-wide/16 v16, 0x40

    or-long v19, v2, v16

    goto :goto_3

    :cond_4
    move-wide/from16 v19, v2

    :goto_3
    if-eqz v18, :cond_5

    goto :goto_4

    :cond_5
    const/16 v14, 0x8

    :goto_4
    move-wide/from16 v2, v19

    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    :goto_5
    and-long v16, v2, v10

    cmp-long v18, v16, v4

    if-eqz v18, :cond_8

    if-eqz v6, :cond_7

    .line 212
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/feed/FeedDeliveryHolderData;->getDescription()Landroid/databinding/ObservableField;

    move-result-object v16

    move-object/from16 v12, v16

    goto :goto_6

    :cond_7
    const/4 v12, 0x0

    .line 214
    :goto_6
    invoke-virtual {v1, v15, v12}, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v12, :cond_8

    .line 219
    invoke-virtual {v12}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v15, v12

    goto :goto_7

    :cond_8
    const/4 v15, 0x0

    :goto_7
    and-long v12, v2, v8

    cmp-long v16, v12, v4

    if-eqz v16, :cond_a

    if-eqz v6, :cond_9

    .line 226
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/feed/FeedDeliveryHolderData;->getButtonText()Landroid/databinding/ObservableField;

    move-result-object v6

    goto :goto_8

    :cond_9
    const/4 v6, 0x0

    :goto_8
    const/4 v12, 0x2

    .line 228
    invoke-virtual {v1, v12, v6}, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v6, :cond_a

    .line 233
    invoke-virtual {v6}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_9

    :cond_a
    const/4 v6, 0x0

    goto :goto_9

    :cond_b
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    :goto_9
    const-wide/16 v12, 0x20

    and-long v16, v2, v12

    cmp-long v12, v16, v4

    if-eqz v12, :cond_c

    .line 241
    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->buttonText:Lru/rocketbank/core/widgets/RocketTextView;

    iget-object v13, v1, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->mCallback22:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    and-long v12, v2, v8

    cmp-long v8, v12, v4

    if-eqz v8, :cond_d

    .line 246
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->buttonText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v8, v6}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_d
    and-long v8, v2, v10

    cmp-long v6, v8, v4

    if-eqz v6, :cond_e

    .line 251
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->descriptionText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v6, v15}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_e
    const-wide/16 v8, 0x31

    and-long v10, v2, v8

    cmp-long v2, v10, v4

    if-eqz v2, :cond_f

    .line 256
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->titleText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v7}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 257
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->titleText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v14}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    :cond_f
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 163
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getData()Lru/rocketbank/r2d2/data/binding/feed/FeedDeliveryHolderData;
    .locals 1

    .line 114
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->mData:Lru/rocketbank/r2d2/data/binding/feed/FeedDeliveryHolderData;

    return-object v0
.end method

.method public getListener()Lru/rocketbank/r2d2/data/binding/feed/DeliveryItemClickListener;
    .locals 1

    .line 102
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->mListener:Lru/rocketbank/r2d2/data/binding/feed/DeliveryItemClickListener;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 71
    monitor-exit p0

    return v0

    .line 73
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

    .line 61
    monitor-enter p0

    const-wide/16 v0, 0x20

    .line 62
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->mDirtyFlags:J

    .line 63
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 63
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

    .line 125
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->onChangeDataButtonText(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 123
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->onChangeDataDescription(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 121
    :pswitch_2
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->onChangeDataTitle(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setData(Lru/rocketbank/r2d2/data/binding/feed/FeedDeliveryHolderData;)V
    .locals 6

    .line 105
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->mData:Lru/rocketbank/r2d2/data/binding/feed/FeedDeliveryHolderData;

    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->mDirtyFlags:J

    .line 108
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 109
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->notifyPropertyChanged(I)V

    .line 110
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 108
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setListener(Lru/rocketbank/r2d2/data/binding/feed/DeliveryItemClickListener;)V
    .locals 6

    .line 93
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->mListener:Lru/rocketbank/r2d2/data/binding/feed/DeliveryItemClickListener;

    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->mDirtyFlags:J

    .line 96
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x37

    .line 97
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->notifyPropertyChanged(I)V

    .line 98
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 96
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

    .line 81
    check-cast p2, Lru/rocketbank/r2d2/data/binding/feed/DeliveryItemClickListener;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->setListener(Lru/rocketbank/r2d2/data/binding/feed/DeliveryItemClickListener;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-ne v0, p1, :cond_1

    .line 84
    check-cast p2, Lru/rocketbank/r2d2/data/binding/feed/FeedDeliveryHolderData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->setData(Lru/rocketbank/r2d2/data/binding/feed/FeedDeliveryHolderData;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
