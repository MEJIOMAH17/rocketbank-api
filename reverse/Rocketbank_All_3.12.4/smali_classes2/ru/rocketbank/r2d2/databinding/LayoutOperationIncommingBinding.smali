.class public Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;
.super Landroid/databinding/ViewDataBinding;
.source "LayoutOperationIncommingBinding.java"

# interfaces
.implements Landroid/databinding/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback48:Landroid/view/View$OnClickListener;

.field private final mCallback49:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private mHandler:Lru/rocketbank/r2d2/root/operation/vh/RequestHandler;

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView1:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mboundView2:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 159
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;->mDirtyFlags:J

    .line 38
    sget-object v1, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x3

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    .line 39
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 40
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;->mboundView0:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 41
    aget-object v2, p1, v0

    check-cast v2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;->mboundView1:Lru/rocketbank/core/widgets/RocketTextView;

    .line 42
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;->mboundView1:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x2

    .line 43
    aget-object p1, p1, v2

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    .line 44
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;->setRootTag(Landroid/view/View;)V

    .line 47
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v2}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;->mCallback49:Landroid/view/View$OnClickListener;

    .line 48
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;->mCallback48:Landroid/view/View$OnClickListener;

    .line 49
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;
    .locals 1

    .line 179
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;
    .locals 2

    const-string v0, "layout/layout_operation_incomming_0"

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
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

    .line 186
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;
    .locals 1

    .line 171
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;
    .locals 3

    const v0, 0x7f0c0133

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 175
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;
    .locals 1

    .line 163
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;
    .locals 1

    const v0, 0x7f0c0133

    .line 167
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;

    return-object p0
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 1

    const/4 p2, 0x0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 125
    :pswitch_0
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;->mHandler:Lru/rocketbank/r2d2/root/operation/vh/RequestHandler;

    if-eqz p1, :cond_0

    move p2, v0

    :cond_0
    if-eqz p2, :cond_2

    .line 135
    invoke-interface {p1}, Lru/rocketbank/r2d2/root/operation/vh/RequestHandler;->onCancel()V

    return-void

    .line 142
    :pswitch_1
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;->mHandler:Lru/rocketbank/r2d2/root/operation/vh/RequestHandler;

    if-eqz p1, :cond_1

    move p2, v0

    :cond_1
    if-eqz p2, :cond_2

    .line 152
    invoke-interface {p1}, Lru/rocketbank/r2d2/root/operation/vh/RequestHandler;->onConfirm()V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected executeBindings()V
    .locals 8

    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 107
    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;->mDirtyFlags:J

    .line 108
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x2

    and-long v6, v0, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;->mboundView1:Lru/rocketbank/core/widgets/RocketTextView;

    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;->mCallback48:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;->mCallback49:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 108
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getHandler()Lru/rocketbank/r2d2/root/operation/vh/RequestHandler;
    .locals 1

    .line 92
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;->mHandler:Lru/rocketbank/r2d2/root/operation/vh/RequestHandler;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 62
    monitor-enter p0

    .line 63
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 64
    monitor-exit p0

    return v0

    .line 66
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

    .line 54
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 55
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;->mDirtyFlags:J

    .line 56
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 56
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setHandler(Lru/rocketbank/r2d2/root/operation/vh/RequestHandler;)V
    .locals 6

    .line 83
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;->mHandler:Lru/rocketbank/r2d2/root/operation/vh/RequestHandler;

    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;->mDirtyFlags:J

    .line 86
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x28

    .line 87
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;->notifyPropertyChanged(I)V

    .line 88
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 86
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

    .line 74
    check-cast p2, Lru/rocketbank/r2d2/root/operation/vh/RequestHandler;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;->setHandler(Lru/rocketbank/r2d2/root/operation/vh/RequestHandler;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
