.class public Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ListItemCardDeleteBinding.java"

# interfaces
.implements Landroid/databinding/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final blockButton:Lru/rocketbank/core/widgets/RocketButton;

.field private final mCallback29:Landroid/view/View$OnClickListener;

.field private mData:Lru/rocketbank/r2d2/root/card/binding/BlockModel;

.field private mDirtyFlags:J

.field private mHandler:Lru/rocketbank/r2d2/root/card/binding/BlockHandler;

.field private final mboundView0:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x2

    .line 35
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 221
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->mDirtyFlags:J

    .line 36
    sget-object v1, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    invoke-static {p1, p2, v0, v1, v2}, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    .line 37
    aget-object v1, p1, v0

    check-cast v1, Lru/rocketbank/core/widgets/RocketButton;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->blockButton:Lru/rocketbank/core/widgets/RocketButton;

    .line 38
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->blockButton:Lru/rocketbank/core/widgets/RocketButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketButton;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 39
    aget-object p1, p1, v1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 40
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->mboundView0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->setRootTag(Landroid/view/View;)V

    .line 43
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->mCallback29:Landroid/view/View$OnClickListener;

    .line 44
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;
    .locals 1

    .line 241
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;
    .locals 2

    const-string v0, "layout/list_item_card_delete_0"

    .line 245
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
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

    .line 248
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;
    .locals 1

    .line 233
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;
    .locals 3

    const v0, 0x7f0c014a

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 237
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;
    .locals 1

    .line 225
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;
    .locals 1

    const v0, 0x7f0c014a

    .line 229
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;

    return-object p0
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

    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->mDirtyFlags:J

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

.method private onChangeDataTextColor(Landroid/databinding/ObservableField;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 117
    monitor-enter p0

    .line 118
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->mDirtyFlags:J

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
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 0

    .line 207
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->mHandler:Lru/rocketbank/r2d2/root/card/binding/BlockHandler;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 217
    invoke-interface {p1}, Lru/rocketbank/r2d2/root/card/binding/BlockHandler;->onClickBlock()V

    :cond_1
    return-void
.end method

.method protected executeBindings()V
    .locals 14

    .line 137
    monitor-enter p0

    .line 138
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 139
    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->mDirtyFlags:J

    .line 140
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->mData:Lru/rocketbank/r2d2/root/card/binding/BlockModel;

    const-wide/16 v5, 0x1b

    and-long v7, v0, v5

    cmp-long v5, v7, v2

    const-wide/16 v6, 0x1a

    const-wide/16 v8, 0x19

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v5, :cond_4

    and-long v12, v0, v8

    cmp-long v5, v12, v2

    if-eqz v5, :cond_2

    if-eqz v4, :cond_0

    .line 156
    invoke-virtual {v4}, Lru/rocketbank/r2d2/root/card/binding/BlockModel;->getTextColor()Landroid/databinding/ObservableField;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v11

    .line 158
    :goto_0
    invoke-virtual {p0, v10, v5}, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v5, :cond_1

    .line 163
    invoke-virtual {v5}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    move-object v5, v11

    .line 168
    :goto_1
    invoke-static {v5}, Landroid/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v5

    move v10, v5

    :cond_2
    and-long v12, v0, v6

    cmp-long v5, v12, v2

    if-eqz v5, :cond_4

    if-eqz v4, :cond_3

    .line 174
    invoke-virtual {v4}, Lru/rocketbank/r2d2/root/card/binding/BlockModel;->getText()Landroid/databinding/ObservableField;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v11

    :goto_2
    const/4 v5, 0x1

    .line 176
    invoke-virtual {p0, v5, v4}, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v4, :cond_4

    .line 181
    invoke-virtual {v4}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    :cond_4
    and-long v4, v0, v6

    cmp-long v6, v4, v2

    if-eqz v6, :cond_5

    .line 189
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->blockButton:Lru/rocketbank/core/widgets/RocketButton;

    invoke-static {v4, v11}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_5
    const-wide/16 v4, 0x10

    and-long v6, v0, v4

    cmp-long v4, v6, v2

    if-eqz v4, :cond_6

    .line 194
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->blockButton:Lru/rocketbank/core/widgets/RocketButton;

    iget-object v5, p0, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->mCallback29:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lru/rocketbank/core/widgets/RocketButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    and-long v4, v0, v8

    cmp-long v0, v4, v2

    if-eqz v0, :cond_7

    .line 199
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->blockButton:Lru/rocketbank/core/widgets/RocketButton;

    invoke-virtual {v0, v10}, Lru/rocketbank/core/widgets/RocketButton;->setTextColor(I)V

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    .line 140
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getData()Lru/rocketbank/r2d2/root/card/binding/BlockModel;
    .locals 1

    .line 102
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->mData:Lru/rocketbank/r2d2/root/card/binding/BlockModel;

    return-object v0
.end method

.method public getHandler()Lru/rocketbank/r2d2/root/card/binding/BlockHandler;
    .locals 1

    .line 90
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->mHandler:Lru/rocketbank/r2d2/root/card/binding/BlockHandler;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 59
    monitor-exit p0

    return v0

    .line 61
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

    .line 49
    monitor-enter p0

    const-wide/16 v0, 0x10

    .line 50
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->mDirtyFlags:J

    .line 51
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 51
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

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->onChangeDataText(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 109
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->onChangeDataTextColor(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setData(Lru/rocketbank/r2d2/root/card/binding/BlockModel;)V
    .locals 6

    .line 93
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->mData:Lru/rocketbank/r2d2/root/card/binding/BlockModel;

    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->mDirtyFlags:J

    .line 96
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 97
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->notifyPropertyChanged(I)V

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

.method public setHandler(Lru/rocketbank/r2d2/root/card/binding/BlockHandler;)V
    .locals 6

    .line 81
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->mHandler:Lru/rocketbank/r2d2/root/card/binding/BlockHandler;

    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->mDirtyFlags:J

    .line 84
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x28

    .line 85
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->notifyPropertyChanged(I)V

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

    const/16 v0, 0x28

    if-ne v0, p1, :cond_0

    .line 69
    check-cast p2, Lru/rocketbank/r2d2/root/card/binding/BlockHandler;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->setHandler(Lru/rocketbank/r2d2/root/card/binding/BlockHandler;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-ne v0, p1, :cond_1

    .line 72
    check-cast p2, Lru/rocketbank/r2d2/root/card/binding/BlockModel;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;->setData(Lru/rocketbank/r2d2/root/card/binding/BlockModel;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
