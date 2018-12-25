.class public Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ActivityPenaltyChargeBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mChargeModel:Lru/rocketbank/core/model/charge/ChargeModel;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mboundView3:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mboundView4:Lru/rocketbank/core/widgets/RocketTextView;

.field public final textView:Lru/rocketbank/core/widgets/RocketTextView;

.field public final textViewFineSum:Lru/rocketbank/core/widgets/RocketTextView;

.field public final toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09038f

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09039f

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 169
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->mDirtyFlags:J

    .line 44
    sget-object v1, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x7

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    .line 45
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 46
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->mboundView0:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 47
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 49
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->mboundView3:Lru/rocketbank/core/widgets/RocketTextView;

    .line 50
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->mboundView3:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 51
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->mboundView4:Lru/rocketbank/core/widgets/RocketTextView;

    .line 52
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->mboundView4:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 53
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->textView:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v0, 0x6

    .line 54
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->textViewFineSum:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v0, 0x1

    .line 55
    aget-object p1, p1, v0

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 56
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/Toolbar;->setTag(Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->setRootTag(Landroid/view/View;)V

    .line 59
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;
    .locals 1

    .line 189
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;
    .locals 2

    const-string v0, "layout/activity_penalty_charge_0"

    .line 193
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
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

    .line 196
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;
    .locals 1

    .line 181
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;
    .locals 3

    const v0, 0x7f0c004c

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 185
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;
    .locals 1

    .line 173
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;
    .locals 1

    const v0, 0x7f0c004c

    .line 177
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;

    return-object p0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 9

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 117
    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->mDirtyFlags:J

    .line 118
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->mChargeModel:Lru/rocketbank/core/model/charge/ChargeModel;

    const-wide/16 v5, 0x3

    and-long v7, v0, v5

    cmp-long v0, v7, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz v4, :cond_0

    .line 134
    invoke-virtual {v4}, Lru/rocketbank/core/model/charge/ChargeModel;->getRequisites()Lru/rocketbank/core/model/charge/ChargeModel$Requisites;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {v0}, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->getTreasure_branch()Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-virtual {v0}, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->getUin()Ljava/lang/String;

    move-result-object v4

    .line 144
    invoke-virtual {v0}, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->getBill_date()Ljava/lang/String;

    move-result-object v5

    .line 146
    invoke-virtual {v0}, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->getPurpose()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    move-object v4, v0

    move-object v5, v4

    .line 151
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    move-object v1, v5

    goto :goto_2

    :cond_2
    move-object v0, v1

    move-object v4, v0

    :goto_2
    cmp-long v5, v7, v2

    if-eqz v5, :cond_3

    .line 161
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v1}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 162
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->mboundView3:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v1, v4}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 163
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->mboundView4:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v1, v0}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 118
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getChargeModel()Lru/rocketbank/core/model/charge/ChargeModel;
    .locals 1

    .line 102
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->mChargeModel:Lru/rocketbank/core/model/charge/ChargeModel;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 72
    monitor-enter p0

    .line 73
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 74
    monitor-exit p0

    return v0

    .line 76
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

    .line 64
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 65
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->mDirtyFlags:J

    .line 66
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 66
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

.method public setChargeModel(Lru/rocketbank/core/model/charge/ChargeModel;)V
    .locals 6

    .line 93
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->mChargeModel:Lru/rocketbank/core/model/charge/ChargeModel;

    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->mDirtyFlags:J

    .line 96
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xf

    .line 97
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->notifyPropertyChanged(I)V

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

    const/16 v0, 0xf

    if-ne v0, p1, :cond_0

    .line 84
    check-cast p2, Lru/rocketbank/core/model/charge/ChargeModel;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;->setChargeModel(Lru/rocketbank/core/model/charge/ChargeModel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
