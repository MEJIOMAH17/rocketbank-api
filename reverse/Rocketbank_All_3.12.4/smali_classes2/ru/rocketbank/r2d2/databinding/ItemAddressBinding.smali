.class public Lru/rocketbank/r2d2/databinding/ItemAddressBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ItemAddressBinding.java"

# interfaces
.implements Landroid/databinding/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback1:Landroid/view/View$OnClickListener;

.field private mData:Lru/rocketbank/r2d2/adapters/delivery/AddressItemData;

.field private mDirtyFlags:J

.field private mGeoObject:Lru/rocketbank/core/network/model/yandex/maps/GeoObject;

.field private mListener:Lru/rocketbank/r2d2/data/binding/delivery/AddressClickListener;

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView1:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    .line 37
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 203
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->mDirtyFlags:J

    .line 38
    sget-object v1, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x2

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    .line 39
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 40
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->mboundView0:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 41
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->mboundView1:Lru/rocketbank/core/widgets/RocketTextView;

    .line 42
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->mboundView1:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->setRootTag(Landroid/view/View;)V

    .line 45
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->mCallback1:Landroid/view/View$OnClickListener;

    .line 46
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ItemAddressBinding;
    .locals 1

    .line 223
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ItemAddressBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ItemAddressBinding;
    .locals 2

    const-string v0, "layout/item_address_0"

    .line 227
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
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

    .line 230
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/ItemAddressBinding;
    .locals 1

    .line 215
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ItemAddressBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ItemAddressBinding;
    .locals 3

    const v0, 0x7f0c0111

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 219
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ItemAddressBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ItemAddressBinding;
    .locals 1

    .line 207
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ItemAddressBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ItemAddressBinding;
    .locals 1

    const v0, 0x7f0c0111

    .line 211
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;

    return-object p0
.end method

.method private onChangeDataAddresstext(Landroid/databinding/ObservableField;I)Z
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

    .line 132
    monitor-enter p0

    .line 133
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->mDirtyFlags:J

    .line 134
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
    .locals 1

    .line 186
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->mGeoObject:Lru/rocketbank/core/network/model/yandex/maps/GeoObject;

    .line 190
    iget-object p2, p0, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->mListener:Lru/rocketbank/r2d2/data/binding/delivery/AddressClickListener;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 199
    invoke-interface {p2, p1}, Lru/rocketbank/r2d2/data/binding/delivery/AddressClickListener;->onAddressClicked(Lru/rocketbank/core/network/model/yandex/maps/GeoObject;)V

    :cond_1
    return-void
.end method

.method protected executeBindings()V
    .locals 11

    .line 143
    monitor-enter p0

    .line 144
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 145
    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->mDirtyFlags:J

    .line 146
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->mData:Lru/rocketbank/r2d2/adapters/delivery/AddressItemData;

    const-wide/16 v5, 0x15

    and-long v7, v0, v5

    cmp-long v5, v7, v2

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    if-eqz v4, :cond_0

    .line 159
    invoke-virtual {v4}, Lru/rocketbank/r2d2/adapters/delivery/AddressItemData;->getAddresstext()Landroid/databinding/ObservableField;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v6

    :goto_0
    const/4 v5, 0x0

    .line 161
    invoke-virtual {p0, v5, v4}, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v4, :cond_1

    .line 166
    invoke-virtual {v4}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    :cond_1
    const-wide/16 v4, 0x10

    and-long v9, v0, v4

    cmp-long v0, v9, v2

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->mboundView0:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->mCallback1:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    cmp-long v0, v7, v2

    if-eqz v0, :cond_3

    .line 178
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->mboundView1:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v0, v6}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 146
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getData()Lru/rocketbank/r2d2/adapters/delivery/AddressItemData;
    .locals 1

    .line 107
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->mData:Lru/rocketbank/r2d2/adapters/delivery/AddressItemData;

    return-object v0
.end method

.method public getGeoObject()Lru/rocketbank/core/network/model/yandex/maps/GeoObject;
    .locals 1

    .line 119
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->mGeoObject:Lru/rocketbank/core/network/model/yandex/maps/GeoObject;

    return-object v0
.end method

.method public getListener()Lru/rocketbank/r2d2/data/binding/delivery/AddressClickListener;
    .locals 1

    .line 95
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->mListener:Lru/rocketbank/r2d2/data/binding/delivery/AddressClickListener;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 59
    monitor-enter p0

    .line 60
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 61
    monitor-exit p0

    return v0

    .line 63
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

    .line 51
    monitor-enter p0

    const-wide/16 v0, 0x10

    .line 52
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->mDirtyFlags:J

    .line 53
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 53
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 126
    :cond_0
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->onChangeDataAddresstext(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1
.end method

.method public setData(Lru/rocketbank/r2d2/adapters/delivery/AddressItemData;)V
    .locals 6

    .line 98
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->mData:Lru/rocketbank/r2d2/adapters/delivery/AddressItemData;

    .line 99
    monitor-enter p0

    .line 100
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->mDirtyFlags:J

    .line 101
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 102
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->notifyPropertyChanged(I)V

    .line 103
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 101
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setGeoObject(Lru/rocketbank/core/network/model/yandex/maps/GeoObject;)V
    .locals 6

    .line 110
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->mGeoObject:Lru/rocketbank/core/network/model/yandex/maps/GeoObject;

    .line 111
    monitor-enter p0

    .line 112
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->mDirtyFlags:J

    .line 113
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x21

    .line 114
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->notifyPropertyChanged(I)V

    .line 115
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 113
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setListener(Lru/rocketbank/r2d2/data/binding/delivery/AddressClickListener;)V
    .locals 6

    .line 86
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->mListener:Lru/rocketbank/r2d2/data/binding/delivery/AddressClickListener;

    .line 87
    monitor-enter p0

    .line 88
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->mDirtyFlags:J

    .line 89
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x37

    .line 90
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->notifyPropertyChanged(I)V

    .line 91
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 89
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

    .line 71
    check-cast p2, Lru/rocketbank/r2d2/data/binding/delivery/AddressClickListener;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->setListener(Lru/rocketbank/r2d2/data/binding/delivery/AddressClickListener;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-ne v0, p1, :cond_1

    .line 74
    check-cast p2, Lru/rocketbank/r2d2/adapters/delivery/AddressItemData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->setData(Lru/rocketbank/r2d2/adapters/delivery/AddressItemData;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x21

    if-ne v0, p1, :cond_2

    .line 77
    check-cast p2, Lru/rocketbank/core/network/model/yandex/maps/GeoObject;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;->setGeoObject(Lru/rocketbank/core/network/model/yandex/maps/GeoObject;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
