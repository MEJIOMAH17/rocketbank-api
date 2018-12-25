.class public Lru/rocketbank/r2d2/databinding/FeedItemApBinding;
.super Landroid/databinding/ViewDataBinding;
.source "FeedItemApBinding.java"

# interfaces
.implements Landroid/databinding/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final androidPayCard:Landroid/support/v7/widget/CardView;

.field public final apIcon:Landroid/support/v7/widget/AppCompatImageView;

.field public final connectButton:Lru/rocketbank/core/widgets/RocketCompatButton;

.field private final mCallback21:Landroid/view/View$OnClickListener;

.field private mData:Lru/rocketbank/r2d2/data/binding/feed/FeedAPHolderData;

.field private mDirtyFlags:J

.field private mListener:Lru/rocketbank/r2d2/data/binding/feed/FeedOnCLickListener;

.field private final mboundView0:Landroid/widget/LinearLayout;

.field public final textView7:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090056

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090058

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x2

    .line 43
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 228
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->mDirtyFlags:J

    .line 44
    sget-object v1, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x5

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x3

    .line 45
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/v7/widget/CardView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->androidPayCard:Landroid/support/v7/widget/CardView;

    const/4 v1, 0x4

    .line 46
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/v7/widget/AppCompatImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->apIcon:Landroid/support/v7/widget/AppCompatImageView;

    .line 47
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketCompatButton;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->connectButton:Lru/rocketbank/core/widgets/RocketCompatButton;

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->connectButton:Lru/rocketbank/core/widgets/RocketCompatButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketCompatButton;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 49
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 50
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->mboundView0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 51
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->textView7:Lru/rocketbank/core/widgets/RocketTextView;

    .line 52
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->textView7:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->setRootTag(Landroid/view/View;)V

    .line 55
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->mCallback21:Landroid/view/View$OnClickListener;

    .line 56
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/FeedItemApBinding;
    .locals 1

    .line 248
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemApBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemApBinding;
    .locals 2

    const-string v0, "layout/feed_item_ap_0"

    .line 252
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
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

    .line 255
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/FeedItemApBinding;
    .locals 1

    .line 240
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemApBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemApBinding;
    .locals 3

    const v0, 0x7f0c00ae

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 244
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemApBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FeedItemApBinding;
    .locals 1

    .line 232
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemApBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FeedItemApBinding;
    .locals 1

    const v0, 0x7f0c00ae

    .line 236
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;

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

    .line 138
    monitor-enter p0

    .line 139
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->mDirtyFlags:J

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

    .line 129
    monitor-enter p0

    .line 130
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->mDirtyFlags:J

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
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 0

    .line 216
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->mListener:Lru/rocketbank/r2d2/data/binding/feed/FeedOnCLickListener;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 224
    invoke-interface {p1}, Lru/rocketbank/r2d2/data/binding/feed/FeedOnCLickListener;->onClick()V

    :cond_1
    return-void
.end method

.method protected executeBindings()V
    .locals 15

    .line 149
    monitor-enter p0

    .line 150
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 151
    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->mDirtyFlags:J

    .line 152
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->mData:Lru/rocketbank/r2d2/data/binding/feed/FeedAPHolderData;

    const-wide/16 v5, 0x1b

    and-long v7, v0, v5

    cmp-long v5, v7, v2

    const-wide/16 v6, 0x1a

    const-wide/16 v8, 0x19

    const/4 v10, 0x0

    if-eqz v5, :cond_3

    and-long v11, v0, v8

    cmp-long v5, v11, v2

    if-eqz v5, :cond_1

    if-eqz v4, :cond_0

    .line 167
    iget-object v5, v4, Lru/rocketbank/r2d2/data/binding/feed/FeedAPHolderData;->text:Landroid/databinding/ObservableField;

    goto :goto_0

    :cond_0
    move-object v5, v10

    :goto_0
    const/4 v11, 0x0

    .line 169
    invoke-virtual {p0, v11, v5}, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v5, :cond_1

    .line 174
    invoke-virtual {v5}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v5, v10

    :goto_1
    and-long v11, v0, v6

    cmp-long v13, v11, v2

    if-eqz v13, :cond_4

    if-eqz v4, :cond_2

    .line 181
    iget-object v4, v4, Lru/rocketbank/r2d2/data/binding/feed/FeedAPHolderData;->buttonText:Landroid/databinding/ObservableField;

    goto :goto_2

    :cond_2
    move-object v4, v10

    :goto_2
    const/4 v11, 0x1

    .line 183
    invoke-virtual {p0, v11, v4}, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v4, :cond_4

    .line 188
    invoke-virtual {v4}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, v10

    :cond_4
    :goto_3
    const-wide/16 v11, 0x10

    and-long v13, v0, v11

    cmp-long v4, v13, v2

    if-eqz v4, :cond_5

    .line 196
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->connectButton:Lru/rocketbank/core/widgets/RocketCompatButton;

    iget-object v11, p0, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->mCallback21:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v11}, Lru/rocketbank/core/widgets/RocketCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    and-long v11, v0, v6

    cmp-long v4, v11, v2

    if-eqz v4, :cond_6

    .line 201
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->connectButton:Lru/rocketbank/core/widgets/RocketCompatButton;

    invoke-static {v4, v10}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_6
    and-long v6, v0, v8

    cmp-long v0, v6, v2

    if-eqz v0, :cond_7

    .line 206
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->textView7:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v0, v5}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    .line 152
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getData()Lru/rocketbank/r2d2/data/binding/feed/FeedAPHolderData;
    .locals 1

    .line 114
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->mData:Lru/rocketbank/r2d2/data/binding/feed/FeedAPHolderData;

    return-object v0
.end method

.method public getListener()Lru/rocketbank/r2d2/data/binding/feed/FeedOnCLickListener;
    .locals 1

    .line 102
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->mListener:Lru/rocketbank/r2d2/data/binding/feed/FeedOnCLickListener;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->mDirtyFlags:J

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

    const-wide/16 v0, 0x10

    .line 62
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->mDirtyFlags:J

    .line 63
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->requestRebind()V

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

    .line 123
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->onChangeDataButtonText(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 121
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->onChangeDataText(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setData(Lru/rocketbank/r2d2/data/binding/feed/FeedAPHolderData;)V
    .locals 6

    .line 105
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->mData:Lru/rocketbank/r2d2/data/binding/feed/FeedAPHolderData;

    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->mDirtyFlags:J

    .line 108
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 109
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->notifyPropertyChanged(I)V

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

.method public setListener(Lru/rocketbank/r2d2/data/binding/feed/FeedOnCLickListener;)V
    .locals 6

    .line 93
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->mListener:Lru/rocketbank/r2d2/data/binding/feed/FeedOnCLickListener;

    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->mDirtyFlags:J

    .line 96
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x37

    .line 97
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->notifyPropertyChanged(I)V

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
    check-cast p2, Lru/rocketbank/r2d2/data/binding/feed/FeedOnCLickListener;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->setListener(Lru/rocketbank/r2d2/data/binding/feed/FeedOnCLickListener;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-ne v0, p1, :cond_1

    .line 84
    check-cast p2, Lru/rocketbank/r2d2/data/binding/feed/FeedAPHolderData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->setData(Lru/rocketbank/r2d2/data/binding/feed/FeedAPHolderData;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
