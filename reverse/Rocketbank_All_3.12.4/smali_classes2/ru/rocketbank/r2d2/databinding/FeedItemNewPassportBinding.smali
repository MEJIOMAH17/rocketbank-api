.class public Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;
.super Landroid/databinding/ViewDataBinding;
.source "FeedItemNewPassportBinding.java"

# interfaces
.implements Landroid/databinding/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final cardBody:Landroid/support/v7/widget/CardView;

.field public final confirm:Lru/rocketbank/core/widgets/RocketTextView;

.field public final headerText:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mCallback12:Landroid/view/View$OnClickListener;

.field private mData:Lru/rocketbank/r2d2/root/feed/binding/FeedNewPassportData;

.field private mDirtyFlags:J

.field private mListener:Lru/rocketbank/r2d2/data/binding/feed/FeedOnCLickListener;

.field public final root:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900ba

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x2

    .line 40
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 274
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->mDirtyFlags:J

    .line 41
    sget-object v1, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x4

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x3

    .line 42
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/v7/widget/CardView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->cardBody:Landroid/support/v7/widget/CardView;

    .line 43
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->confirm:Lru/rocketbank/core/widgets/RocketTextView;

    .line 44
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->confirm:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 45
    aget-object v2, p1, v0

    check-cast v2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->headerText:Lru/rocketbank/core/widgets/RocketTextView;

    .line 46
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->headerText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 47
    aget-object p1, p1, v2

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->root:Landroid/widget/LinearLayout;

    .line 48
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->root:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->setRootTag(Landroid/view/View;)V

    .line 51
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->mCallback12:Landroid/view/View$OnClickListener;

    .line 52
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;
    .locals 1

    .line 294
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;
    .locals 2

    const-string v0, "layout/feed_item_new_passport_0"

    .line 298
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
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

    .line 301
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;
    .locals 1

    .line 286
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;
    .locals 3

    const v0, 0x7f0c00b5

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 290
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;
    .locals 1

    .line 278
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;
    .locals 1

    const v0, 0x7f0c00b5

    .line 282
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;

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

    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->mDirtyFlags:J

    .line 136
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

    .line 125
    monitor-enter p0

    .line 126
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->mDirtyFlags:J

    .line 127
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

    .line 262
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->mListener:Lru/rocketbank/r2d2/data/binding/feed/FeedOnCLickListener;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 270
    invoke-interface {p1}, Lru/rocketbank/r2d2/data/binding/feed/FeedOnCLickListener;->onClick()V

    :cond_1
    return-void
.end method

.method protected executeBindings()V
    .locals 22

    move-object/from16 v1, p0

    .line 145
    monitor-enter p0

    .line 146
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 147
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->mDirtyFlags:J

    .line 148
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->mData:Lru/rocketbank/r2d2/root/feed/binding/FeedNewPassportData;

    const-wide/16 v7, 0x1b

    and-long v9, v2, v7

    cmp-long v7, v9, v4

    const-wide/16 v8, 0x40

    const-wide/16 v10, 0x19

    const/4 v12, 0x1

    const-wide/16 v13, 0x1a

    const/4 v15, 0x0

    if-eqz v7, :cond_8

    and-long v17, v2, v10

    cmp-long v7, v17, v4

    if-eqz v7, :cond_1

    if-eqz v6, :cond_0

    .line 168
    invoke-virtual {v6}, Lru/rocketbank/r2d2/root/feed/binding/FeedNewPassportData;->getText()Landroid/databinding/ObservableField;

    move-result-object v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 170
    :goto_0
    invoke-virtual {v1, v15, v7}, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_1

    .line 175
    invoke-virtual {v7}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    and-long v17, v2, v13

    cmp-long v19, v17, v4

    if-eqz v19, :cond_7

    if-eqz v6, :cond_2

    .line 182
    invoke-virtual {v6}, Lru/rocketbank/r2d2/root/feed/binding/FeedNewPassportData;->getButtonText()Landroid/databinding/ObservableField;

    move-result-object v6

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 184
    :goto_2
    invoke-virtual {v1, v12, v6}, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v6, :cond_3

    .line 189
    invoke-virtual {v6}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v16, v6

    goto :goto_3

    :cond_3
    const/16 v16, 0x0

    :goto_3
    if-eqz v16, :cond_4

    move v6, v12

    goto :goto_4

    :cond_4
    move v6, v15

    :goto_4
    cmp-long v19, v17, v4

    if-eqz v19, :cond_6

    if-eqz v6, :cond_5

    or-long v17, v2, v8

    move-object v12, v7

    move-wide/from16 v2, v17

    goto :goto_5

    :cond_5
    const-wide/16 v17, 0x20

    or-long v19, v2, v17

    move-object v12, v7

    move-wide/from16 v2, v19

    goto :goto_5

    :cond_6
    move-object v12, v7

    :goto_5
    move v7, v6

    move-object/from16 v6, v16

    goto :goto_6

    :cond_7
    move-object v12, v7

    move v7, v15

    const/4 v6, 0x0

    goto :goto_6

    :cond_8
    move v7, v15

    const/4 v6, 0x0

    const/4 v12, 0x0

    :goto_6
    and-long v16, v2, v8

    cmp-long v8, v16, v4

    if-eqz v8, :cond_a

    if-eqz v6, :cond_9

    .line 211
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    goto :goto_7

    :cond_9
    move v8, v15

    :goto_7
    if-nez v8, :cond_a

    const/16 v21, 0x1

    goto :goto_8

    :cond_a
    move/from16 v21, v15

    :goto_8
    and-long v8, v2, v13

    cmp-long v16, v8, v4

    if-eqz v16, :cond_f

    if-eqz v7, :cond_b

    goto :goto_9

    :cond_b
    move/from16 v21, v15

    :goto_9
    cmp-long v7, v8, v4

    if-eqz v7, :cond_d

    if-eqz v21, :cond_c

    const-wide/16 v7, 0x100

    or-long v16, v2, v7

    :goto_a
    move-wide/from16 v2, v16

    goto :goto_b

    :cond_c
    const-wide/16 v7, 0x80

    or-long v16, v2, v7

    goto :goto_a

    :cond_d
    :goto_b
    if-eqz v21, :cond_e

    goto :goto_c

    :cond_e
    const/16 v7, 0x8

    move v15, v7

    :goto_c
    move v7, v15

    move/from16 v15, v21

    goto :goto_d

    :cond_f
    move v7, v15

    :goto_d
    and-long v8, v2, v13

    cmp-long v13, v8, v4

    if-eqz v13, :cond_10

    .line 240
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->confirm:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v8, v15}, Lru/rocketbank/core/widgets/RocketTextView;->setEnabled(Z)V

    .line 241
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->confirm:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v8, v6}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 242
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->confirm:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v6, v7}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    :cond_10
    const-wide/16 v6, 0x10

    and-long v8, v2, v6

    cmp-long v6, v8, v4

    if-eqz v6, :cond_11

    .line 247
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->confirm:Lru/rocketbank/core/widgets/RocketTextView;

    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->mCallback12:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11
    and-long v6, v2, v10

    cmp-long v2, v6, v4

    if-eqz v2, :cond_12

    .line 252
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->headerText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v12}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_12
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 148
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getData()Lru/rocketbank/r2d2/root/feed/binding/FeedNewPassportData;
    .locals 1

    .line 110
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->mData:Lru/rocketbank/r2d2/root/feed/binding/FeedNewPassportData;

    return-object v0
.end method

.method public getListener()Lru/rocketbank/r2d2/data/binding/feed/FeedOnCLickListener;
    .locals 1

    .line 98
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->mListener:Lru/rocketbank/r2d2/data/binding/feed/FeedOnCLickListener;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 65
    monitor-enter p0

    .line 66
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 67
    monitor-exit p0

    return v0

    .line 69
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

    .line 57
    monitor-enter p0

    const-wide/16 v0, 0x10

    .line 58
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->mDirtyFlags:J

    .line 59
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 59
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

    .line 119
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->onChangeDataButtonText(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 117
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->onChangeDataText(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setData(Lru/rocketbank/r2d2/root/feed/binding/FeedNewPassportData;)V
    .locals 6

    .line 101
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->mData:Lru/rocketbank/r2d2/root/feed/binding/FeedNewPassportData;

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->mDirtyFlags:J

    .line 104
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 105
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->notifyPropertyChanged(I)V

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

.method public setListener(Lru/rocketbank/r2d2/data/binding/feed/FeedOnCLickListener;)V
    .locals 6

    .line 89
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->mListener:Lru/rocketbank/r2d2/data/binding/feed/FeedOnCLickListener;

    .line 90
    monitor-enter p0

    .line 91
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->mDirtyFlags:J

    .line 92
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x37

    .line 93
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->notifyPropertyChanged(I)V

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

    const/16 v0, 0x37

    if-ne v0, p1, :cond_0

    .line 77
    check-cast p2, Lru/rocketbank/r2d2/data/binding/feed/FeedOnCLickListener;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->setListener(Lru/rocketbank/r2d2/data/binding/feed/FeedOnCLickListener;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-ne v0, p1, :cond_1

    .line 80
    check-cast p2, Lru/rocketbank/r2d2/root/feed/binding/FeedNewPassportData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->setData(Lru/rocketbank/r2d2/root/feed/binding/FeedNewPassportData;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
