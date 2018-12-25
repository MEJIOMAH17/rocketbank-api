.class public Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;
.super Landroid/databinding/ViewDataBinding;
.source "FragmentSmallAccountChooseBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final amount:Lru/rocketbank/core/widgets/RocketAutofitTextView;

.field public final card:Landroid/support/v7/widget/CardView;

.field public final icon:Landroid/widget/ImageView;

.field private mData:Lru/rocketbank/r2d2/root/transfer/SmallAccountData;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/FrameLayout;

.field public final name:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900b8

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x3

    .line 38
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 218
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->mDirtyFlags:J

    .line 39
    sget-object v1, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x5

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    .line 40
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketAutofitTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->amount:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    .line 41
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->amount:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketAutofitTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 42
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->card:Landroid/support/v7/widget/CardView;

    const/4 v0, 0x1

    .line 43
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->icon:Landroid/widget/ImageView;

    .line 44
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 45
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->mboundView0:Landroid/widget/FrameLayout;

    .line 46
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->mboundView0:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 47
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->name:Lru/rocketbank/core/widgets/RocketTextView;

    .line 48
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->name:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->setRootTag(Landroid/view/View;)V

    .line 51
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;
    .locals 1

    .line 238
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;
    .locals 2

    const-string v0, "layout/fragment_small_account_choose_0"

    .line 242
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
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

    .line 245
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;
    .locals 1

    .line 230
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;
    .locals 3

    const v0, 0x7f0c00fc

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 234
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;
    .locals 1

    .line 222
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;
    .locals 1

    const v0, 0x7f0c00fc

    .line 226
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;

    return-object p0
.end method

.method private onChangeDataAmount(Landroid/databinding/ObservableField;I)Z
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

    .line 111
    monitor-enter p0

    .line 112
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->mDirtyFlags:J

    .line 113
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

.method private onChangeDataImage(Landroid/databinding/ObservableField;I)Z
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

    .line 120
    monitor-enter p0

    .line 121
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->mDirtyFlags:J

    .line 122
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

.method private onChangeDataName(Landroid/databinding/ObservableField;I)Z
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
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->mDirtyFlags:J

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
    .locals 19

    move-object/from16 v1, p0

    .line 140
    monitor-enter p0

    .line 141
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 142
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->mDirtyFlags:J

    .line 143
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->mData:Lru/rocketbank/r2d2/root/transfer/SmallAccountData;

    const-wide/16 v7, 0x1f

    and-long v9, v2, v7

    cmp-long v7, v9, v4

    const-wide/16 v8, 0x1c

    const-wide/16 v10, 0x1a

    const-wide/16 v12, 0x19

    if-eqz v7, :cond_6

    and-long v15, v2, v12

    cmp-long v7, v15, v4

    if-eqz v7, :cond_1

    if-eqz v6, :cond_0

    .line 159
    invoke-virtual {v6}, Lru/rocketbank/r2d2/root/transfer/SmallAccountData;->getAmount()Landroid/databinding/ObservableField;

    move-result-object v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const/4 v15, 0x0

    .line 161
    invoke-virtual {v1, v15, v7}, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_1

    .line 166
    invoke-virtual {v7}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    and-long v15, v2, v10

    cmp-long v17, v15, v4

    if-eqz v17, :cond_3

    if-eqz v6, :cond_2

    .line 173
    invoke-virtual {v6}, Lru/rocketbank/r2d2/root/transfer/SmallAccountData;->getImage()Landroid/databinding/ObservableField;

    move-result-object v15

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    :goto_2
    const/4 v14, 0x1

    .line 175
    invoke-virtual {v1, v14, v15}, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v15, :cond_3

    .line 180
    invoke-virtual {v15}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    :goto_3
    and-long v15, v2, v8

    cmp-long v17, v15, v4

    if-eqz v17, :cond_5

    if-eqz v6, :cond_4

    .line 187
    invoke-virtual {v6}, Lru/rocketbank/r2d2/root/transfer/SmallAccountData;->getName()Landroid/databinding/ObservableField;

    move-result-object v6

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    const/4 v15, 0x2

    .line 189
    invoke-virtual {v1, v15, v6}, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v6, :cond_5

    .line 194
    invoke-virtual {v6}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x0

    :goto_5
    and-long v15, v2, v12

    cmp-long v12, v15, v4

    if-eqz v12, :cond_7

    .line 202
    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->amount:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    invoke-static {v12, v7}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_7
    and-long v12, v2, v10

    cmp-long v7, v12, v4

    if-eqz v7, :cond_8

    .line 207
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->icon:Landroid/widget/ImageView;

    invoke-static {v7, v14}, Landroid/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_8
    and-long v10, v2, v8

    cmp-long v2, v10, v4

    if-eqz v2, :cond_9

    .line 212
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->name:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v6}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_9
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 143
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getData()Lru/rocketbank/r2d2/root/transfer/SmallAccountData;
    .locals 1

    .line 94
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->mData:Lru/rocketbank/r2d2/root/transfer/SmallAccountData;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->mDirtyFlags:J

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

    const-wide/16 v0, 0x10

    .line 57
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->mDirtyFlags:J

    .line 58
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->requestRebind()V

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

    .line 105
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->onChangeDataName(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 103
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->onChangeDataImage(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 101
    :pswitch_2
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->onChangeDataAmount(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setData(Lru/rocketbank/r2d2/root/transfer/SmallAccountData;)V
    .locals 6

    .line 85
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->mData:Lru/rocketbank/r2d2/root/transfer/SmallAccountData;

    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->mDirtyFlags:J

    .line 88
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 89
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->notifyPropertyChanged(I)V

    .line 90
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 88
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

    .line 76
    check-cast p2, Lru/rocketbank/r2d2/root/transfer/SmallAccountData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->setData(Lru/rocketbank/r2d2/root/transfer/SmallAccountData;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
