.class public Lru/rocketbank/r2d2/databinding/TariffItemBinding;
.super Landroid/databinding/ViewDataBinding;
.source "TariffItemBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final colorText:Lru/rocketbank/core/widgets/RocketTextView;

.field private mDirtyFlags:J

.field private mTariffItem:Lru/rocketbank/r2d2/data/binding/tariff/TariffItemData;

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView1:Lde/hdodenhof/circleimageview/CircleImageView;

.field private final mboundView3:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x3

    .line 35
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 214
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->mDirtyFlags:J

    .line 36
    sget-object v1, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x4

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x2

    .line 37
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->colorText:Lru/rocketbank/core/widgets/RocketTextView;

    .line 38
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->colorText:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 39
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 40
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->mboundView0:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 41
    aget-object v1, p1, v1

    check-cast v1, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->mboundView1:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 42
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->mboundView1:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v1, v2}, Lde/hdodenhof/circleimageview/CircleImageView;->setTag(Ljava/lang/Object;)V

    .line 43
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->mboundView3:Lru/rocketbank/core/widgets/RocketTextView;

    .line 44
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->mboundView3:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->setRootTag(Landroid/view/View;)V

    .line 47
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/TariffItemBinding;
    .locals 1

    .line 234
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/TariffItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/TariffItemBinding;
    .locals 2

    const-string v0, "layout/tariff_item_0"

    .line 238
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
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

    .line 241
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/TariffItemBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/TariffItemBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/TariffItemBinding;
    .locals 1

    .line 226
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/TariffItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/TariffItemBinding;
    .locals 3

    const v0, 0x7f0c01b6

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 230
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/TariffItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/TariffItemBinding;
    .locals 1

    .line 218
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/TariffItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/TariffItemBinding;
    .locals 1

    const v0, 0x7f0c01b6

    .line 222
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/TariffItemBinding;

    return-object p0
.end method

.method private onChangeTariffItemColor(Landroid/databinding/ObservableField;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/ObservableField<",
            "Landroid/graphics/drawable/ColorDrawable;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->mDirtyFlags:J

    .line 118
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

.method private onChangeTariffItemText(Landroid/databinding/ObservableField;I)Z
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

    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->mDirtyFlags:J

    .line 109
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

.method private onChangeTariffItemTextColor(Landroid/databinding/ObservableField;I)Z
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
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->mDirtyFlags:J

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
.method protected executeBindings()V
    .locals 19

    move-object/from16 v1, p0

    .line 136
    monitor-enter p0

    .line 137
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 138
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->mDirtyFlags:J

    .line 139
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->mTariffItem:Lru/rocketbank/r2d2/data/binding/tariff/TariffItemData;

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

    .line 155
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/tariff/TariffItemData;->getText()Landroid/databinding/ObservableField;

    move-result-object v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const/4 v15, 0x0

    .line 157
    invoke-virtual {v1, v15, v7}, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_1

    .line 162
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

    .line 169
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/tariff/TariffItemData;->getColor()Landroid/databinding/ObservableField;

    move-result-object v15

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    :goto_2
    const/4 v14, 0x1

    .line 171
    invoke-virtual {v1, v14, v15}, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v15, :cond_3

    .line 176
    invoke-virtual {v15}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/drawable/ColorDrawable;

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    :goto_3
    and-long v15, v2, v8

    cmp-long v17, v15, v4

    if-eqz v17, :cond_5

    if-eqz v6, :cond_4

    .line 183
    invoke-virtual {v6}, Lru/rocketbank/r2d2/data/binding/tariff/TariffItemData;->getTextColor()Landroid/databinding/ObservableField;

    move-result-object v6

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    const/4 v15, 0x2

    .line 185
    invoke-virtual {v1, v15, v6}, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v6, :cond_5

    .line 190
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
    and-long v15, v2, v8

    cmp-long v8, v15, v4

    if-eqz v8, :cond_7

    .line 198
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->colorText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v8, v6}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_7
    and-long v8, v2, v10

    cmp-long v6, v8, v4

    if-eqz v6, :cond_8

    .line 203
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->mboundView1:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-static {v6, v14}, Landroid/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_8
    and-long v8, v2, v12

    cmp-long v2, v8, v4

    if-eqz v2, :cond_9

    .line 208
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->mboundView3:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v7}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_9
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 139
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getTariffItem()Lru/rocketbank/r2d2/data/binding/tariff/TariffItemData;
    .locals 1

    .line 90
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->mTariffItem:Lru/rocketbank/r2d2/data/binding/tariff/TariffItemData;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->mDirtyFlags:J

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

    const-wide/16 v0, 0x10

    .line 53
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->mDirtyFlags:J

    .line 54
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->requestRebind()V

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

    .line 101
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->onChangeTariffItemTextColor(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 99
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->onChangeTariffItemColor(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 97
    :pswitch_2
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->onChangeTariffItemText(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setTariffItem(Lru/rocketbank/r2d2/data/binding/tariff/TariffItemData;)V
    .locals 6

    .line 81
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->mTariffItem:Lru/rocketbank/r2d2/data/binding/tariff/TariffItemData;

    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->mDirtyFlags:J

    .line 84
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x4c

    .line 85
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->notifyPropertyChanged(I)V

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

    const/16 v0, 0x4c

    if-ne v0, p1, :cond_0

    .line 72
    check-cast p2, Lru/rocketbank/r2d2/data/binding/tariff/TariffItemData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/TariffItemBinding;->setTariffItem(Lru/rocketbank/r2d2/data/binding/tariff/TariffItemData;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
