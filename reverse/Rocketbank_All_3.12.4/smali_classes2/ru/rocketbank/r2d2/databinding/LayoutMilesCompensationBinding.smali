.class public Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;
.super Landroid/databinding/ViewDataBinding;
.source "LayoutMilesCompensationBinding.java"

# interfaces
.implements Landroid/databinding/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final description:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mCallback28:Landroid/view/View$OnClickListener;

.field private mData:Lru/rocketbank/r2d2/root/operation/vh/DataMilesCompensate;

.field private mDirtyFlags:J

.field private mHandler:Lru/rocketbank/r2d2/root/operation/vh/MilesCompensateHandler;

.field private final mboundView0:Landroid/widget/FrameLayout;

.field private final mboundView4:Landroid/support/v7/widget/CardView;

.field public final rocketAmount:Lru/rocketbank/core/widgets/RocketAutofitTextView;

.field public final rocketRoublesText:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x3

    .line 41
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 260
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->mDirtyFlags:J

    .line 42
    sget-object v1, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x5

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    .line 43
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->description:Lru/rocketbank/core/widgets/RocketTextView;

    .line 44
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->description:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 45
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->mboundView0:Landroid/widget/FrameLayout;

    .line 46
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->mboundView0:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 47
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->mboundView4:Landroid/support/v7/widget/CardView;

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->mboundView4:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 49
    aget-object v2, p1, v0

    check-cast v2, Lru/rocketbank/core/widgets/RocketAutofitTextView;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->rocketAmount:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    .line 50
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->rocketAmount:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    invoke-virtual {v2, v1}, Lru/rocketbank/core/widgets/RocketAutofitTextView;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x2

    .line 51
    aget-object p1, p1, v2

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->rocketRoublesText:Lru/rocketbank/core/widgets/RocketTextView;

    .line 52
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->rocketRoublesText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->setRootTag(Landroid/view/View;)V

    .line 55
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->mCallback28:Landroid/view/View$OnClickListener;

    .line 56
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;
    .locals 1

    .line 280
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;
    .locals 2

    const-string v0, "layout/layout_miles_compensation_0"

    .line 284
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
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

    .line 287
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;
    .locals 1

    .line 272
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;
    .locals 3

    const v0, 0x7f0c012e

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 276
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;
    .locals 1

    .line 264
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;
    .locals 1

    const v0, 0x7f0c012e

    .line 268
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;

    return-object p0
.end method

.method private onChangeDataAmount(Landroid/databinding/ObservableField;I)Z
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

    .line 140
    monitor-enter p0

    .line 141
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->mDirtyFlags:J

    .line 142
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

.method private onChangeDataDescription(Landroid/databinding/ObservableField;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/ObservableField<",
            "Landroid/text/SpannableString;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 149
    monitor-enter p0

    .line 150
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->mDirtyFlags:J

    .line 151
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

.method private onChangeDataRocketText(Landroid/databinding/ObservableField;I)Z
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

    .line 131
    monitor-enter p0

    .line 132
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->mDirtyFlags:J

    .line 133
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

    .line 246
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->mHandler:Lru/rocketbank/r2d2/root/operation/vh/MilesCompensateHandler;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 256
    invoke-interface {p1}, Lru/rocketbank/r2d2/root/operation/vh/MilesCompensateHandler;->onCompensation()V

    :cond_1
    return-void
.end method

.method protected executeBindings()V
    .locals 19

    move-object/from16 v1, p0

    .line 160
    monitor-enter p0

    .line 161
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 162
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->mDirtyFlags:J

    .line 163
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->mData:Lru/rocketbank/r2d2/root/operation/vh/DataMilesCompensate;

    const-wide/16 v7, 0x37

    and-long v9, v2, v7

    cmp-long v7, v9, v4

    const-wide/16 v8, 0x34

    const-wide/16 v10, 0x32

    const-wide/16 v12, 0x31

    if-eqz v7, :cond_6

    and-long v15, v2, v12

    cmp-long v7, v15, v4

    if-eqz v7, :cond_1

    if-eqz v6, :cond_0

    .line 180
    invoke-virtual {v6}, Lru/rocketbank/r2d2/root/operation/vh/DataMilesCompensate;->getRocketText()Landroid/databinding/ObservableField;

    move-result-object v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const/4 v15, 0x0

    .line 182
    invoke-virtual {v1, v15, v7}, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_1

    .line 187
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

    .line 194
    invoke-virtual {v6}, Lru/rocketbank/r2d2/root/operation/vh/DataMilesCompensate;->getAmount()Landroid/databinding/ObservableField;

    move-result-object v15

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    :goto_2
    const/4 v14, 0x1

    .line 196
    invoke-virtual {v1, v14, v15}, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v15, :cond_3

    .line 201
    invoke-virtual {v15}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    :goto_3
    and-long v15, v2, v8

    cmp-long v17, v15, v4

    if-eqz v17, :cond_5

    if-eqz v6, :cond_4

    .line 208
    invoke-virtual {v6}, Lru/rocketbank/r2d2/root/operation/vh/DataMilesCompensate;->getDescription()Landroid/databinding/ObservableField;

    move-result-object v6

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    const/4 v15, 0x2

    .line 210
    invoke-virtual {v1, v15, v6}, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v6, :cond_5

    .line 215
    invoke-virtual {v6}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/text/SpannableString;

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

    .line 223
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->description:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v8, v6}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_7
    const-wide/16 v8, 0x20

    and-long v15, v2, v8

    cmp-long v6, v15, v4

    if-eqz v6, :cond_8

    .line 228
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->mboundView4:Landroid/support/v7/widget/CardView;

    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->mCallback28:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    and-long v8, v2, v10

    cmp-long v6, v8, v4

    if-eqz v6, :cond_9

    .line 233
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->rocketAmount:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    invoke-static {v6, v14}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_9
    and-long v8, v2, v12

    cmp-long v2, v8, v4

    if-eqz v2, :cond_a

    .line 238
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->rocketRoublesText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v7}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_a
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 163
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getData()Lru/rocketbank/r2d2/root/operation/vh/DataMilesCompensate;
    .locals 1

    .line 114
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->mData:Lru/rocketbank/r2d2/root/operation/vh/DataMilesCompensate;

    return-object v0
.end method

.method public getHandler()Lru/rocketbank/r2d2/root/operation/vh/MilesCompensateHandler;
    .locals 1

    .line 102
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->mHandler:Lru/rocketbank/r2d2/root/operation/vh/MilesCompensateHandler;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 71
    monitor-exit p0

    return v0

    .line 73
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

    .line 61
    monitor-enter p0

    const-wide/16 v0, 0x20

    .line 62
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->mDirtyFlags:J

    .line 63
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 63
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

    .line 125
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->onChangeDataDescription(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 123
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->onChangeDataAmount(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 121
    :pswitch_2
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->onChangeDataRocketText(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setData(Lru/rocketbank/r2d2/root/operation/vh/DataMilesCompensate;)V
    .locals 6

    .line 105
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->mData:Lru/rocketbank/r2d2/root/operation/vh/DataMilesCompensate;

    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->mDirtyFlags:J

    .line 108
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 109
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->notifyPropertyChanged(I)V

    .line 110
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 108
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setHandler(Lru/rocketbank/r2d2/root/operation/vh/MilesCompensateHandler;)V
    .locals 6

    .line 93
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->mHandler:Lru/rocketbank/r2d2/root/operation/vh/MilesCompensateHandler;

    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->mDirtyFlags:J

    .line 96
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x28

    .line 97
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->notifyPropertyChanged(I)V

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

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x28

    if-ne v0, p1, :cond_0

    .line 81
    check-cast p2, Lru/rocketbank/r2d2/root/operation/vh/MilesCompensateHandler;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->setHandler(Lru/rocketbank/r2d2/root/operation/vh/MilesCompensateHandler;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-ne v0, p1, :cond_1

    .line 84
    check-cast p2, Lru/rocketbank/r2d2/root/operation/vh/DataMilesCompensate;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;->setData(Lru/rocketbank/r2d2/root/operation/vh/DataMilesCompensate;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
