.class public Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ReferenceItemBinding.java"

# interfaces
.implements Landroid/databinding/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final lang:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mCallback13:Landroid/view/View$OnClickListener;

.field private mData:Lru/rocketbank/r2d2/data/binding/reference/ReferenceData;

.field private mDirtyFlags:J

.field private mListener:Lru/rocketbank/r2d2/data/binding/reference/ReferenceClickListener;

.field private mReference:Lru/rocketbank/core/model/references/Reference;

.field private final mboundView0:Landroid/widget/RelativeLayout;

.field public final title:Lru/rocketbank/core/widgets/RocketTextView;


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

    .line 242
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->mDirtyFlags:J

    .line 40
    sget-object v1, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x3

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    .line 41
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->lang:Lru/rocketbank/core/widgets/RocketTextView;

    .line 42
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->lang:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 43
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->mboundView0:Landroid/widget/RelativeLayout;

    .line 44
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->mboundView0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 45
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->title:Lru/rocketbank/core/widgets/RocketTextView;

    .line 46
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->title:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->setRootTag(Landroid/view/View;)V

    .line 49
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->mCallback13:Landroid/view/View$OnClickListener;

    .line 50
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;
    .locals 1

    .line 262
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;
    .locals 2

    const-string v0, "layout/reference_item_0"

    .line 266
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
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

    .line 269
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;
    .locals 1

    .line 254
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;
    .locals 3

    const v0, 0x7f0c0194

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 258
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;
    .locals 1

    .line 246
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;
    .locals 1

    const v0, 0x7f0c0194

    .line 250
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;

    return-object p0
.end method

.method private onChangeDataLng(Landroid/databinding/ObservableField;I)Z
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

    .line 147
    monitor-enter p0

    .line 148
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->mDirtyFlags:J

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

    .line 138
    monitor-enter p0

    .line 139
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->mDirtyFlags:J

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


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 2

    .line 224
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->mReference:Lru/rocketbank/core/model/references/Reference;

    .line 228
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->mListener:Lru/rocketbank/r2d2/data/binding/reference/ReferenceClickListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 238
    invoke-interface {v0, p2, p1}, Lru/rocketbank/r2d2/data/binding/reference/ReferenceClickListener;->onReferenceClicked(Landroid/view/View;Lru/rocketbank/core/model/references/Reference;)V

    :cond_1
    return-void
.end method

.method protected executeBindings()V
    .locals 14

    .line 158
    monitor-enter p0

    .line 159
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 160
    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->mDirtyFlags:J

    .line 161
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->mData:Lru/rocketbank/r2d2/data/binding/reference/ReferenceData;

    const-wide/16 v5, 0x2b

    and-long v7, v0, v5

    cmp-long v5, v7, v2

    const-wide/16 v6, 0x2a

    const-wide/16 v8, 0x29

    const/4 v10, 0x0

    if-eqz v5, :cond_3

    and-long v11, v0, v8

    cmp-long v5, v11, v2

    if-eqz v5, :cond_1

    if-eqz v4, :cond_0

    .line 177
    invoke-virtual {v4}, Lru/rocketbank/r2d2/data/binding/reference/ReferenceData;->getTitle()Landroid/databinding/ObservableField;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v10

    :goto_0
    const/4 v11, 0x0

    .line 179
    invoke-virtual {p0, v11, v5}, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v5, :cond_1

    .line 184
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

    .line 191
    invoke-virtual {v4}, Lru/rocketbank/r2d2/data/binding/reference/ReferenceData;->getLng()Landroid/databinding/ObservableField;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v10

    :goto_2
    const/4 v11, 0x1

    .line 193
    invoke-virtual {p0, v11, v4}, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v4, :cond_4

    .line 198
    invoke-virtual {v4}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, v10

    :cond_4
    :goto_3
    and-long v11, v0, v6

    cmp-long v4, v11, v2

    if-eqz v4, :cond_5

    .line 206
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->lang:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v4, v10}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_5
    const-wide/16 v6, 0x20

    and-long v10, v0, v6

    cmp-long v4, v10, v2

    if-eqz v4, :cond_6

    .line 211
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->mboundView0:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->mCallback13:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    and-long v6, v0, v8

    cmp-long v0, v6, v2

    if-eqz v0, :cond_7

    .line 216
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->title:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v0, v5}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    .line 161
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getData()Lru/rocketbank/r2d2/data/binding/reference/ReferenceData;
    .locals 1

    .line 111
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->mData:Lru/rocketbank/r2d2/data/binding/reference/ReferenceData;

    return-object v0
.end method

.method public getListener()Lru/rocketbank/r2d2/data/binding/reference/ReferenceClickListener;
    .locals 1

    .line 99
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->mListener:Lru/rocketbank/r2d2/data/binding/reference/ReferenceClickListener;

    return-object v0
.end method

.method public getReference()Lru/rocketbank/core/model/references/Reference;
    .locals 1

    .line 123
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->mReference:Lru/rocketbank/core/model/references/Reference;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 63
    monitor-enter p0

    .line 64
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->mDirtyFlags:J

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
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->mDirtyFlags:J

    .line 57
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->requestRebind()V

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
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->onChangeDataLng(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 130
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->onChangeDataTitle(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setData(Lru/rocketbank/r2d2/data/binding/reference/ReferenceData;)V
    .locals 6

    .line 102
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->mData:Lru/rocketbank/r2d2/data/binding/reference/ReferenceData;

    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->mDirtyFlags:J

    .line 105
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 106
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->notifyPropertyChanged(I)V

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

.method public setListener(Lru/rocketbank/r2d2/data/binding/reference/ReferenceClickListener;)V
    .locals 6

    .line 90
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->mListener:Lru/rocketbank/r2d2/data/binding/reference/ReferenceClickListener;

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->mDirtyFlags:J

    .line 93
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x37

    .line 94
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->notifyPropertyChanged(I)V

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

.method public setReference(Lru/rocketbank/core/model/references/Reference;)V
    .locals 6

    .line 114
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->mReference:Lru/rocketbank/core/model/references/Reference;

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->mDirtyFlags:J

    .line 117
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x47

    .line 118
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->notifyPropertyChanged(I)V

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

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x37

    if-ne v0, p1, :cond_0

    .line 75
    check-cast p2, Lru/rocketbank/r2d2/data/binding/reference/ReferenceClickListener;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->setListener(Lru/rocketbank/r2d2/data/binding/reference/ReferenceClickListener;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-ne v0, p1, :cond_1

    .line 78
    check-cast p2, Lru/rocketbank/r2d2/data/binding/reference/ReferenceData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->setData(Lru/rocketbank/r2d2/data/binding/reference/ReferenceData;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x47

    if-ne v0, p1, :cond_2

    .line 81
    check-cast p2, Lru/rocketbank/core/model/references/Reference;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;->setReference(Lru/rocketbank/core/model/references/Reference;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
