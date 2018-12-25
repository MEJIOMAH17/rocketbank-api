.class public Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ActivityApAddCardBinding.java"

# interfaces
.implements Landroid/databinding/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final apLogo:Landroid/support/v7/widget/AppCompatImageView;

.field public final buttonDeleteCard:Lru/rocketbank/core/widgets/RocketCompatButton;

.field public final guideline2:Landroid/support/constraint/Guideline;

.field public final guideline4:Landroid/support/constraint/Guideline;

.field public final guideline6:Landroid/support/constraint/Guideline;

.field private final mCallback43:Landroid/view/View$OnClickListener;

.field private mData:Lru/rocketbank/r2d2/data/binding/ap/AddCardData;

.field private mDirtyFlags:J

.field private mListener:Lru/rocketbank/r2d2/data/binding/ap/AddCardListener;

.field private final mboundView0:Landroid/support/constraint/ConstraintLayout;

.field public final textView6:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090059

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901a7

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901a9

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901ab

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090390

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 192
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->mDirtyFlags:J

    .line 51
    sget-object v1, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x7

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x2

    .line 52
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/v7/widget/AppCompatImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->apLogo:Landroid/support/v7/widget/AppCompatImageView;

    const/4 v1, 0x1

    .line 53
    aget-object v2, p1, v1

    check-cast v2, Lru/rocketbank/core/widgets/RocketCompatButton;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->buttonDeleteCard:Lru/rocketbank/core/widgets/RocketCompatButton;

    .line 54
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->buttonDeleteCard:Lru/rocketbank/core/widgets/RocketCompatButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lru/rocketbank/core/widgets/RocketCompatButton;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x3

    .line 55
    aget-object v2, p1, v2

    check-cast v2, Landroid/support/constraint/Guideline;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->guideline2:Landroid/support/constraint/Guideline;

    const/4 v2, 0x4

    .line 56
    aget-object v2, p1, v2

    check-cast v2, Landroid/support/constraint/Guideline;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->guideline4:Landroid/support/constraint/Guideline;

    const/4 v2, 0x5

    .line 57
    aget-object v2, p1, v2

    check-cast v2, Landroid/support/constraint/Guideline;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->guideline6:Landroid/support/constraint/Guideline;

    .line 58
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->mboundView0:Landroid/support/constraint/ConstraintLayout;

    .line 59
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->mboundView0:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x6

    .line 60
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->textView6:Lru/rocketbank/core/widgets/RocketTextView;

    .line 61
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->setRootTag(Landroid/view/View;)V

    .line 63
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v1}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->mCallback43:Landroid/view/View$OnClickListener;

    .line 64
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;
    .locals 1

    .line 212
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;
    .locals 2

    const-string v0, "layout/activity_ap_add_card_0"

    .line 216
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
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

    .line 219
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;
    .locals 1

    .line 204
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;
    .locals 3

    const v0, 0x7f0c0022

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 208
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;
    .locals 1

    .line 196
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;
    .locals 1

    const v0, 0x7f0c0022

    .line 200
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;

    return-object p0
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 3

    .line 157
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->mListener:Lru/rocketbank/r2d2/data/binding/ap/AddCardListener;

    .line 161
    iget-object p2, p0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->mData:Lru/rocketbank/r2d2/data/binding/ap/AddCardData;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_3

    if-eqz p2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-eqz v2, :cond_3

    .line 178
    invoke-virtual {p2}, Lru/rocketbank/r2d2/data/binding/ap/AddCardData;->getCardToken()Landroid/databinding/ObservableField;

    move-result-object p2

    if-eqz p2, :cond_2

    move v0, v1

    :cond_2
    if-eqz v0, :cond_3

    .line 184
    invoke-virtual {p2}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 186
    invoke-interface {p1, p2}, Lru/rocketbank/r2d2/data/binding/ap/AddCardListener;->onCardAddClicked(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected executeBindings()V
    .locals 8

    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 137
    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->mDirtyFlags:J

    .line 138
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x4

    and-long v6, v0, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->buttonDeleteCard:Lru/rocketbank/core/widgets/RocketCompatButton;

    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->mCallback43:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 138
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getData()Lru/rocketbank/r2d2/data/binding/ap/AddCardData;
    .locals 1

    .line 122
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->mData:Lru/rocketbank/r2d2/data/binding/ap/AddCardData;

    return-object v0
.end method

.method public getListener()Lru/rocketbank/r2d2/data/binding/ap/AddCardListener;
    .locals 1

    .line 110
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->mListener:Lru/rocketbank/r2d2/data/binding/ap/AddCardListener;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 79
    monitor-exit p0

    return v0

    .line 81
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

    .line 69
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 70
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->mDirtyFlags:J

    .line 71
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 71
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

.method public setData(Lru/rocketbank/r2d2/data/binding/ap/AddCardData;)V
    .locals 6

    .line 113
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->mData:Lru/rocketbank/r2d2/data/binding/ap/AddCardData;

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->mDirtyFlags:J

    .line 116
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 117
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->notifyPropertyChanged(I)V

    .line 118
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 116
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setListener(Lru/rocketbank/r2d2/data/binding/ap/AddCardListener;)V
    .locals 6

    .line 101
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->mListener:Lru/rocketbank/r2d2/data/binding/ap/AddCardListener;

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->mDirtyFlags:J

    .line 104
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x37

    .line 105
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->notifyPropertyChanged(I)V

    .line 106
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 104
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

    .line 89
    check-cast p2, Lru/rocketbank/r2d2/data/binding/ap/AddCardListener;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->setListener(Lru/rocketbank/r2d2/data/binding/ap/AddCardListener;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-ne v0, p1, :cond_1

    .line 92
    check-cast p2, Lru/rocketbank/r2d2/data/binding/ap/AddCardData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;->setData(Lru/rocketbank/r2d2/data/binding/ap/AddCardData;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
