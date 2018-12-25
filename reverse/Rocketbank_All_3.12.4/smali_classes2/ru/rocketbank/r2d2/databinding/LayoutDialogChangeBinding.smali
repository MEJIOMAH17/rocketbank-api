.class public Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;
.super Landroid/databinding/ViewDataBinding;
.source "LayoutDialogChangeBinding.java"

# interfaces
.implements Landroid/databinding/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final cancel:Lru/rocketbank/core/widgets/RocketTextView;

.field public final head:Lru/rocketbank/core/widgets/RocketTextView;

.field public final inputLayoutName:Lru/rocketbank/core/widgets/RocketTextInputLayout;

.field private final mCallback6:Landroid/view/View$OnClickListener;

.field private final mCallback7:Landroid/view/View$OnClickListener;

.field private mData:Lru/rocketbank/r2d2/data/binding/change/ChangeTextDialog;

.field private mDirtyFlags:J

.field private mHandler:Lru/rocketbank/r2d2/data/binding/change/ChangeTextHandler;

.field private final mboundView0:Landroid/widget/FrameLayout;

.field public final name:Lru/rocketbank/core/widgets/RocketEditText;

.field public final ok:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901ac

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901f6

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09026c

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 183
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->mDirtyFlags:J

    .line 49
    sget-object v1, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x6

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x1

    .line 50
    aget-object v2, p1, v1

    check-cast v2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->cancel:Lru/rocketbank/core/widgets/RocketTextView;

    .line 51
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->cancel:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x3

    .line 52
    aget-object v2, p1, v2

    check-cast v2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->head:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v2, 0x4

    .line 53
    aget-object v2, p1, v2

    check-cast v2, Lru/rocketbank/core/widgets/RocketTextInputLayout;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->inputLayoutName:Lru/rocketbank/core/widgets/RocketTextInputLayout;

    .line 54
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->mboundView0:Landroid/widget/FrameLayout;

    .line 55
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->mboundView0:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 56
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->name:Lru/rocketbank/core/widgets/RocketEditText;

    const/4 v0, 0x2

    .line 57
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->ok:Lru/rocketbank/core/widgets/RocketTextView;

    .line 58
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->ok:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v3}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->setRootTag(Landroid/view/View;)V

    .line 61
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->mCallback7:Landroid/view/View$OnClickListener;

    .line 62
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v1}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->mCallback6:Landroid/view/View$OnClickListener;

    .line 63
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;
    .locals 1

    .line 203
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;
    .locals 2

    const-string v0, "layout/layout_dialog_change_0"

    .line 207
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
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

    .line 210
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;
    .locals 1

    .line 195
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;
    .locals 3

    const v0, 0x7f0c011e

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 199
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;
    .locals 1

    .line 187
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;
    .locals 1

    const v0, 0x7f0c011e

    .line 191
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;

    return-object p0
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 1

    const/4 p2, 0x0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 149
    :pswitch_0
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/change/ChangeTextHandler;

    if-eqz p1, :cond_0

    move p2, v0

    :cond_0
    if-eqz p2, :cond_2

    .line 159
    invoke-interface {p1}, Lru/rocketbank/r2d2/data/binding/change/ChangeTextHandler;->onOkClicked()V

    return-void

    .line 166
    :pswitch_1
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/change/ChangeTextHandler;

    if-eqz p1, :cond_1

    move p2, v0

    :cond_1
    if-eqz p2, :cond_2

    .line 176
    invoke-interface {p1}, Lru/rocketbank/r2d2/data/binding/change/ChangeTextHandler;->onCancelledClicked()V

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

    .line 129
    monitor-enter p0

    .line 130
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 131
    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->mDirtyFlags:J

    .line 132
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x4

    and-long v6, v0, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->cancel:Lru/rocketbank/core/widgets/RocketTextView;

    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->mCallback6:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->ok:Lru/rocketbank/core/widgets/RocketTextView;

    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->mCallback7:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 132
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getData()Lru/rocketbank/r2d2/data/binding/change/ChangeTextDialog;
    .locals 1

    .line 116
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->mData:Lru/rocketbank/r2d2/data/binding/change/ChangeTextDialog;

    return-object v0
.end method

.method public getHandler()Lru/rocketbank/r2d2/data/binding/change/ChangeTextHandler;
    .locals 1

    .line 109
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/change/ChangeTextHandler;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 76
    monitor-enter p0

    .line 77
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 78
    monitor-exit p0

    return v0

    .line 80
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

    .line 68
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 69
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->mDirtyFlags:J

    .line 70
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 70
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

.method public setData(Lru/rocketbank/r2d2/data/binding/change/ChangeTextDialog;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->mData:Lru/rocketbank/r2d2/data/binding/change/ChangeTextDialog;

    return-void
.end method

.method public setHandler(Lru/rocketbank/r2d2/data/binding/change/ChangeTextHandler;)V
    .locals 6

    .line 100
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/change/ChangeTextHandler;

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->mDirtyFlags:J

    .line 103
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x28

    .line 104
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->notifyPropertyChanged(I)V

    .line 105
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 103
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

    .line 88
    check-cast p2, Lru/rocketbank/r2d2/data/binding/change/ChangeTextHandler;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/change/ChangeTextHandler;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-ne v0, p1, :cond_1

    .line 91
    check-cast p2, Lru/rocketbank/r2d2/data/binding/change/ChangeTextDialog;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->setData(Lru/rocketbank/r2d2/data/binding/change/ChangeTextDialog;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
