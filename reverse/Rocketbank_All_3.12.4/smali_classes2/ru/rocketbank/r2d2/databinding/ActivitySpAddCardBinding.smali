.class public Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ActivitySpAddCardBinding.java"

# interfaces
.implements Landroid/databinding/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final addSpButton:Landroid/support/v7/widget/CardView;

.field public final addText:Lru/rocketbank/core/widgets/RocketTextView;

.field public final guideline3:Landroid/support/constraint/Guideline;

.field public final guideline4:Landroid/support/constraint/Guideline;

.field public final guideline6:Landroid/support/constraint/Guideline;

.field private final mCallback16:Landroid/view/View$OnClickListener;

.field private mData:Lru/rocketbank/r2d2/data/binding/ap/AddCardData;

.field private mDirtyFlags:J

.field private mListener:Lru/rocketbank/r2d2/data/binding/ap/AddCardListener;

.field private final mboundView0:Landroid/support/constraint/ConstraintLayout;

.field public final spAddButton:Landroid/widget/FrameLayout;

.field public final spLogo:Landroid/widget/ImageView;

.field public final spayArrow:Landroid/support/v7/widget/AppCompatImageView;

.field public final spayLogo:Landroid/support/v7/widget/AppCompatImageView;

.field public final textView6:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090343

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901a8

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901a9

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901ab

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090390

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090039

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09003a

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090345

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090346

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 208
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->mDirtyFlags:J

    .line 63
    sget-object v1, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0xb

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x7

    .line 64
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/v7/widget/CardView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->addSpButton:Landroid/support/v7/widget/CardView;

    const/16 v1, 0x8

    .line 65
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->addText:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v1, 0x3

    .line 66
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/constraint/Guideline;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->guideline3:Landroid/support/constraint/Guideline;

    const/4 v1, 0x4

    .line 67
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/constraint/Guideline;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->guideline4:Landroid/support/constraint/Guideline;

    const/4 v1, 0x5

    .line 68
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/constraint/Guideline;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->guideline6:Landroid/support/constraint/Guideline;

    .line 69
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->mboundView0:Landroid/support/constraint/ConstraintLayout;

    .line 70
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->mboundView0:Landroid/support/constraint/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 71
    aget-object v2, p1, v0

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->spAddButton:Landroid/widget/FrameLayout;

    .line 72
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->spAddButton:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x2

    .line 73
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->spLogo:Landroid/widget/ImageView;

    const/16 v1, 0x9

    .line 74
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/v7/widget/AppCompatImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->spayArrow:Landroid/support/v7/widget/AppCompatImageView;

    const/16 v1, 0xa

    .line 75
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/v7/widget/AppCompatImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->spayLogo:Landroid/support/v7/widget/AppCompatImageView;

    const/4 v1, 0x6

    .line 76
    aget-object p1, p1, v1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->textView6:Lru/rocketbank/core/widgets/RocketTextView;

    .line 77
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->setRootTag(Landroid/view/View;)V

    .line 79
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->mCallback16:Landroid/view/View$OnClickListener;

    .line 80
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;
    .locals 1

    .line 228
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;
    .locals 2

    const-string v0, "layout/activity_sp_add_card_0"

    .line 232
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
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

    .line 235
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;
    .locals 1

    .line 220
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;
    .locals 3

    const v0, 0x7f0c0061

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 224
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;
    .locals 1

    .line 212
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;
    .locals 1

    const v0, 0x7f0c0061

    .line 216
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;

    return-object p0
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 3

    .line 173
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->mListener:Lru/rocketbank/r2d2/data/binding/ap/AddCardListener;

    .line 177
    iget-object p2, p0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->mData:Lru/rocketbank/r2d2/data/binding/ap/AddCardData;

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

    .line 194
    invoke-virtual {p2}, Lru/rocketbank/r2d2/data/binding/ap/AddCardData;->getCardToken()Landroid/databinding/ObservableField;

    move-result-object p2

    if-eqz p2, :cond_2

    move v0, v1

    :cond_2
    if-eqz v0, :cond_3

    .line 200
    invoke-virtual {p2}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 202
    invoke-interface {p1, p2}, Lru/rocketbank/r2d2/data/binding/ap/AddCardListener;->onCardAddClicked(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected executeBindings()V
    .locals 8

    .line 151
    monitor-enter p0

    .line 152
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 153
    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->mDirtyFlags:J

    .line 154
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x4

    and-long v6, v0, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->spAddButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->mCallback16:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 154
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getData()Lru/rocketbank/r2d2/data/binding/ap/AddCardData;
    .locals 1

    .line 138
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->mData:Lru/rocketbank/r2d2/data/binding/ap/AddCardData;

    return-object v0
.end method

.method public getListener()Lru/rocketbank/r2d2/data/binding/ap/AddCardListener;
    .locals 1

    .line 126
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->mListener:Lru/rocketbank/r2d2/data/binding/ap/AddCardListener;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 95
    monitor-exit p0

    return v0

    .line 97
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

    .line 85
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 86
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->mDirtyFlags:J

    .line 87
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 87
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

    .line 129
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->mData:Lru/rocketbank/r2d2/data/binding/ap/AddCardData;

    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->mDirtyFlags:J

    .line 132
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 133
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->notifyPropertyChanged(I)V

    .line 134
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 132
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setListener(Lru/rocketbank/r2d2/data/binding/ap/AddCardListener;)V
    .locals 6

    .line 117
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->mListener:Lru/rocketbank/r2d2/data/binding/ap/AddCardListener;

    .line 118
    monitor-enter p0

    .line 119
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->mDirtyFlags:J

    .line 120
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x37

    .line 121
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->notifyPropertyChanged(I)V

    .line 122
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 120
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

    .line 105
    check-cast p2, Lru/rocketbank/r2d2/data/binding/ap/AddCardListener;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->setListener(Lru/rocketbank/r2d2/data/binding/ap/AddCardListener;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-ne v0, p1, :cond_1

    .line 108
    check-cast p2, Lru/rocketbank/r2d2/data/binding/ap/AddCardData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;->setData(Lru/rocketbank/r2d2/data/binding/ap/AddCardData;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
