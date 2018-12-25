.class public Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;
.super Landroid/databinding/ViewDataBinding;
.source "DiscountGameItemBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final gameImage:Lde/hdodenhof/circleimageview/CircleImageView;

.field private mData:Lru/rocketbank/r2d2/data/binding/discount/GameItemData;

.field private mDirtyFlags:J

.field private final mboundView0:Lru/rocketbank/core/widgets/SquareLayout;

.field private final mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

.field public final percentBackground:Lde/hdodenhof/circleimageview/CircleImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090199

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x2

    .line 36
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 205
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->mDirtyFlags:J

    .line 37
    sget-object v1, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x4

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x3

    .line 38
    aget-object v1, p1, v1

    check-cast v1, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->gameImage:Lde/hdodenhof/circleimageview/CircleImageView;

    const/4 v1, 0x0

    .line 39
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/SquareLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->mboundView0:Lru/rocketbank/core/widgets/SquareLayout;

    .line 40
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->mboundView0:Lru/rocketbank/core/widgets/SquareLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/SquareLayout;->setTag(Ljava/lang/Object;)V

    .line 41
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    .line 42
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 43
    aget-object p1, p1, v0

    check-cast p1, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->percentBackground:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 44
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->percentBackground:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {p1, v2}, Lde/hdodenhof/circleimageview/CircleImageView;->setTag(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->setRootTag(Landroid/view/View;)V

    .line 47
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;
    .locals 1

    .line 225
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;
    .locals 2

    const-string v0, "layout/discount_game_item_0"

    .line 229
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
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

    .line 232
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;
    .locals 1

    .line 217
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;
    .locals 3

    const v0, 0x7f0c00a5

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 221
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;
    .locals 1

    .line 209
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;
    .locals 1

    const v0, 0x7f0c00a5

    .line 213
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;

    return-object p0
.end method

.method private onChangeDataIsYellow(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->mDirtyFlags:J

    .line 116
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

.method private onChangeDataPercent(Landroid/databinding/ObservableInt;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->mDirtyFlags:J

    .line 107
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
    .locals 18

    move-object/from16 v1, p0

    .line 125
    monitor-enter p0

    .line 126
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 127
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->mDirtyFlags:J

    .line 128
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->mData:Lru/rocketbank/r2d2/data/binding/discount/GameItemData;

    const-wide/16 v7, 0xf

    and-long v9, v2, v7

    cmp-long v7, v9, v4

    const-wide/16 v8, 0xe

    const-wide/16 v10, 0xd

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v7, :cond_8

    and-long v14, v2, v10

    cmp-long v7, v14, v4

    if-eqz v7, :cond_2

    if-eqz v6, :cond_0

    .line 145
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/discount/GameItemData;->getPercent()Landroid/databinding/ObservableInt;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object v7, v12

    .line 147
    :goto_0
    invoke-virtual {v1, v13, v7}, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_1

    .line 152
    invoke-virtual {v7}, Landroid/databinding/ObservableInt;->get()I

    move-result v7

    goto :goto_1

    :cond_1
    move v7, v13

    .line 157
    :goto_1
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 161
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x25

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_2
    move-object v7, v12

    :goto_2
    and-long v14, v2, v8

    cmp-long v16, v14, v4

    if-eqz v16, :cond_9

    if-eqz v6, :cond_3

    .line 167
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/discount/GameItemData;->isYellow()Landroid/databinding/ObservableBoolean;

    move-result-object v12

    :cond_3
    const/4 v6, 0x1

    .line 169
    invoke-virtual {v1, v6, v12}, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v12, :cond_4

    .line 174
    invoke-virtual {v12}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v13

    :cond_4
    cmp-long v6, v14, v4

    if-eqz v6, :cond_6

    if-eqz v13, :cond_5

    const-wide/16 v14, 0x20

    or-long v16, v2, v14

    :goto_3
    move-wide/from16 v2, v16

    goto :goto_4

    :cond_5
    const-wide/16 v14, 0x10

    or-long v16, v2, v14

    goto :goto_3

    :cond_6
    :goto_4
    if-eqz v13, :cond_7

    .line 187
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->percentBackground:Lde/hdodenhof/circleimageview/CircleImageView;

    const v12, 0x7f060090

    :goto_5
    invoke-static {v6, v12}, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->getColorFromResource(Landroid/view/View;I)I

    move-result v6

    move v13, v6

    goto :goto_6

    :cond_7
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->percentBackground:Lde/hdodenhof/circleimageview/CircleImageView;

    const v12, 0x7f060254

    goto :goto_5

    :cond_8
    move-object v7, v12

    :cond_9
    :goto_6
    and-long v14, v2, v10

    cmp-long v6, v14, v4

    if-eqz v6, :cond_a

    .line 194
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v6, v7}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_a
    and-long v6, v2, v8

    cmp-long v2, v6, v4

    if-eqz v2, :cond_b

    .line 199
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->percentBackground:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-static {v13}, Landroid/databinding/adapters/Converters;->convertColorToDrawable(I)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_b
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 128
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getData()Lru/rocketbank/r2d2/data/binding/discount/GameItemData;
    .locals 1

    .line 90
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->mData:Lru/rocketbank/r2d2/data/binding/discount/GameItemData;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 62
    monitor-exit p0

    return v0

    .line 64
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

    .line 52
    monitor-enter p0

    const-wide/16 v0, 0x8

    .line 53
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->mDirtyFlags:J

    .line 54
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 54
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

    .line 99
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->onChangeDataIsYellow(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 97
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->onChangeDataPercent(Landroid/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setData(Lru/rocketbank/r2d2/data/binding/discount/GameItemData;)V
    .locals 6

    .line 81
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->mData:Lru/rocketbank/r2d2/data/binding/discount/GameItemData;

    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->mDirtyFlags:J

    .line 84
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 85
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->notifyPropertyChanged(I)V

    .line 86
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 84
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

    .line 72
    check-cast p2, Lru/rocketbank/r2d2/data/binding/discount/GameItemData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;->setData(Lru/rocketbank/r2d2/data/binding/discount/GameItemData;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
