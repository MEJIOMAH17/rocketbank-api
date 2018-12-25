.class public Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ItemDeliveryTimeIntervalBinding.java"

# interfaces
.implements Landroid/databinding/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final isChecked:Landroid/widget/ImageView;

.field private final mCallback23:Landroid/view/View$OnClickListener;

.field private mData:Lru/rocketbank/r2d2/data/binding/delivery/TimeItemData;

.field private mDirtyFlags:J

.field private mKey:Ljava/lang/String;

.field private mListener:Lru/rocketbank/r2d2/data/binding/delivery/TimeIntervalChoseListener;

.field private final mboundView0:Landroid/widget/RelativeLayout;

.field private final mboundView2:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x2

    .line 39
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 285
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mDirtyFlags:J

    .line 40
    sget-object v1, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x3

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x1

    .line 41
    aget-object v2, p1, v1

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->isChecked:Landroid/widget/ImageView;

    .line 42
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->isChecked:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 43
    aget-object v2, p1, v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mboundView0:Landroid/widget/RelativeLayout;

    .line 44
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mboundView0:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 45
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    .line 46
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v3}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->setRootTag(Landroid/view/View;)V

    .line 49
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v1}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mCallback23:Landroid/view/View$OnClickListener;

    .line 50
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;
    .locals 1

    .line 305
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;
    .locals 2

    const-string v0, "layout/item_delivery_time_interval_0"

    .line 309
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
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

    .line 312
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;
    .locals 1

    .line 297
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;
    .locals 3

    const v0, 0x7f0c0113

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 301
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;
    .locals 1

    .line 289
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;
    .locals 1

    const v0, 0x7f0c0113

    .line 293
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;

    return-object p0
.end method

.method private onChangeDataIntervalText(Landroid/databinding/ObservableField;I)Z
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
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mDirtyFlags:J

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

.method private onChangeDataIsSelected(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 147
    monitor-enter p0

    .line 148
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mDirtyFlags:J

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


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 2

    .line 267
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mListener:Lru/rocketbank/r2d2/data/binding/delivery/TimeIntervalChoseListener;

    .line 269
    iget-object p2, p0, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mKey:Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mData:Lru/rocketbank/r2d2/data/binding/delivery/TimeItemData;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 281
    invoke-interface {p1, p2, v0}, Lru/rocketbank/r2d2/data/binding/delivery/TimeIntervalChoseListener;->onTimeIntervalClicked(Ljava/lang/String;Lru/rocketbank/r2d2/data/binding/delivery/TimeItemData;)V

    :cond_1
    return-void
.end method

.method protected executeBindings()V
    .locals 22

    move-object/from16 v1, p0

    .line 158
    monitor-enter p0

    .line 159
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 160
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mDirtyFlags:J

    .line 161
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mKey:Ljava/lang/String;

    .line 170
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mData:Lru/rocketbank/r2d2/data/binding/delivery/TimeItemData;

    const-wide/16 v8, 0x28

    and-long v10, v2, v8

    cmp-long v12, v10, v4

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v12, :cond_4

    if-eqz v6, :cond_0

    move v6, v13

    goto :goto_0

    :cond_0
    move v6, v14

    :goto_0
    cmp-long v12, v10, v4

    if-eqz v12, :cond_2

    if-eqz v6, :cond_1

    const-wide/16 v10, 0x80

    or-long v15, v2, v10

    :goto_1
    move-wide v2, v15

    goto :goto_2

    :cond_1
    const-wide/16 v10, 0x40

    or-long v15, v2, v10

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    const/4 v10, 0x3

    goto :goto_3

    :cond_3
    const/16 v10, 0x11

    goto :goto_3

    :cond_4
    move v6, v14

    move v10, v6

    :goto_3
    const-wide/16 v11, 0x33

    and-long v15, v2, v11

    cmp-long v11, v15, v4

    const-wide/16 v15, 0x32

    const-wide/16 v17, 0x31

    const/4 v12, 0x0

    if-eqz v11, :cond_d

    and-long v19, v2, v17

    cmp-long v11, v19, v4

    if-eqz v11, :cond_6

    if-eqz v7, :cond_5

    .line 200
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/delivery/TimeItemData;->getIntervalText()Landroid/databinding/ObservableField;

    move-result-object v11

    goto :goto_4

    :cond_5
    move-object v11, v12

    .line 202
    :goto_4
    invoke-virtual {v1, v14, v11}, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v11, :cond_6

    .line 207
    invoke-virtual {v11}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    goto :goto_5

    :cond_6
    move-object v11, v12

    :goto_5
    and-long v19, v2, v15

    cmp-long v21, v19, v4

    if-eqz v21, :cond_e

    if-eqz v7, :cond_7

    .line 214
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/delivery/TimeItemData;->isSelected()Landroid/databinding/ObservableBoolean;

    move-result-object v12

    .line 216
    :cond_7
    invoke-virtual {v1, v13, v12}, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v12, :cond_8

    .line 221
    invoke-virtual {v12}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v7

    goto :goto_6

    :cond_8
    move v7, v14

    :goto_6
    cmp-long v12, v19, v4

    if-eqz v12, :cond_a

    if-eqz v7, :cond_9

    const-wide/16 v12, 0x200

    or-long v19, v2, v12

    const-wide/16 v2, 0x800

    or-long v12, v19, v2

    :goto_7
    move-wide v2, v12

    goto :goto_8

    :cond_9
    const-wide/16 v12, 0x100

    or-long v19, v2, v12

    const-wide/16 v2, 0x400

    or-long v12, v19, v2

    goto :goto_7

    :cond_a
    :goto_8
    if-eqz v7, :cond_b

    .line 236
    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    const v13, 0x7f060208

    :goto_9
    invoke-static {v12, v13}, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->getColorFromResource(Landroid/view/View;I)I

    move-result v12

    goto :goto_a

    :cond_b
    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    const v13, 0x7f06002e

    goto :goto_9

    :goto_a
    if-eqz v7, :cond_c

    goto :goto_b

    :cond_c
    const/16 v7, 0x8

    move v14, v7

    goto :goto_b

    :cond_d
    move-object v11, v12

    :cond_e
    move v12, v14

    :goto_b
    and-long v19, v2, v15

    cmp-long v7, v19, v4

    if-eqz v7, :cond_f

    .line 245
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->isChecked:Landroid/widget/ImageView;

    invoke-virtual {v7, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v7, v12}, Lru/rocketbank/core/widgets/RocketTextView;->setTextColor(I)V

    :cond_f
    and-long v12, v2, v8

    cmp-long v7, v12, v4

    if-eqz v7, :cond_10

    .line 251
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mboundView0:Landroid/widget/RelativeLayout;

    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mCallback23:Landroid/view/View$OnClickListener;

    invoke-static {v7, v8, v6}, Landroid/databinding/adapters/ViewBindingAdapter;->setOnClick(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V

    .line 252
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v6, v10}, Lru/rocketbank/core/widgets/RocketTextView;->setGravity(I)V

    :cond_10
    and-long v6, v2, v17

    cmp-long v2, v6, v4

    if-eqz v2, :cond_11

    .line 257
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v11}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_11
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 161
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getData()Lru/rocketbank/r2d2/data/binding/delivery/TimeItemData;
    .locals 1

    .line 123
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mData:Lru/rocketbank/r2d2/data/binding/delivery/TimeItemData;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lru/rocketbank/r2d2/data/binding/delivery/TimeIntervalChoseListener;
    .locals 1

    .line 99
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mListener:Lru/rocketbank/r2d2/data/binding/delivery/TimeIntervalChoseListener;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 63
    monitor-enter p0

    .line 64
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 65
    monitor-exit p0

    return v0

    .line 67
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

    .line 55
    monitor-enter p0

    const-wide/16 v0, 0x20

    .line 56
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mDirtyFlags:J

    .line 57
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 57
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

    .line 132
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->onChangeDataIsSelected(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 130
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->onChangeDataIntervalText(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setData(Lru/rocketbank/r2d2/data/binding/delivery/TimeItemData;)V
    .locals 6

    .line 114
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mData:Lru/rocketbank/r2d2/data/binding/delivery/TimeItemData;

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mDirtyFlags:J

    .line 117
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 118
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->notifyPropertyChanged(I)V

    .line 119
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 117
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 6

    .line 102
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mKey:Ljava/lang/String;

    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mDirtyFlags:J

    .line 105
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x34

    .line 106
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->notifyPropertyChanged(I)V

    .line 107
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 105
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setListener(Lru/rocketbank/r2d2/data/binding/delivery/TimeIntervalChoseListener;)V
    .locals 6

    .line 90
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mListener:Lru/rocketbank/r2d2/data/binding/delivery/TimeIntervalChoseListener;

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->mDirtyFlags:J

    .line 93
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x37

    .line 94
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->notifyPropertyChanged(I)V

    .line 95
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 93
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

    .line 75
    check-cast p2, Lru/rocketbank/r2d2/data/binding/delivery/TimeIntervalChoseListener;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->setListener(Lru/rocketbank/r2d2/data/binding/delivery/TimeIntervalChoseListener;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x34

    if-ne v0, p1, :cond_1

    .line 78
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->setKey(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x18

    if-ne v0, p1, :cond_2

    .line 81
    check-cast p2, Lru/rocketbank/r2d2/data/binding/delivery/TimeItemData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->setData(Lru/rocketbank/r2d2/data/binding/delivery/TimeItemData;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
