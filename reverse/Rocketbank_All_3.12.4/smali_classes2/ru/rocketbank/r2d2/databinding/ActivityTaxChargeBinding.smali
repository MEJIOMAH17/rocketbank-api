.class public Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ActivityTaxChargeBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final date:Lru/rocketbank/core/widgets/RocketTextView;

.field public final description:Lru/rocketbank/core/widgets/RocketTextView;

.field private mChargeModel:Lru/rocketbank/core/model/charge/ChargeModel;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView10:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mboundView11:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mboundView12:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mboundView13:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mboundView14:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mboundView15:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mboundView16:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mboundView17:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mboundView18:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mboundView4:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mboundView5:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mboundView6:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mboundView7:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mboundView8:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mboundView9:Lru/rocketbank/core/widgets/RocketTextView;

.field public final textViewSum:Lru/rocketbank/core/widgets/RocketTextView;

.field public final toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903ae

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 292
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mDirtyFlags:J

    .line 69
    sget-object v1, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0x14

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x2

    .line 70
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->date:Lru/rocketbank/core/widgets/RocketTextView;

    .line 71
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->date:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x3

    .line 72
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->description:Lru/rocketbank/core/widgets/RocketTextView;

    .line 73
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->description:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 74
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 75
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xa

    .line 76
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView10:Lru/rocketbank/core/widgets/RocketTextView;

    .line 77
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView10:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xb

    .line 78
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView11:Lru/rocketbank/core/widgets/RocketTextView;

    .line 79
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView11:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xc

    .line 80
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView12:Lru/rocketbank/core/widgets/RocketTextView;

    .line 81
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView12:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xd

    .line 82
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView13:Lru/rocketbank/core/widgets/RocketTextView;

    .line 83
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView13:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xe

    .line 84
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView14:Lru/rocketbank/core/widgets/RocketTextView;

    .line 85
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView14:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xf

    .line 86
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView15:Lru/rocketbank/core/widgets/RocketTextView;

    .line 87
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView15:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x10

    .line 88
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView16:Lru/rocketbank/core/widgets/RocketTextView;

    .line 89
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView16:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x11

    .line 90
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView17:Lru/rocketbank/core/widgets/RocketTextView;

    .line 91
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView17:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x12

    .line 92
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView18:Lru/rocketbank/core/widgets/RocketTextView;

    .line 93
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView18:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 94
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView4:Lru/rocketbank/core/widgets/RocketTextView;

    .line 95
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView4:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 96
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView5:Lru/rocketbank/core/widgets/RocketTextView;

    .line 97
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView5:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x6

    .line 98
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView6:Lru/rocketbank/core/widgets/RocketTextView;

    .line 99
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView6:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x7

    .line 100
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView7:Lru/rocketbank/core/widgets/RocketTextView;

    .line 101
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView7:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x8

    .line 102
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView8:Lru/rocketbank/core/widgets/RocketTextView;

    .line 103
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView8:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x9

    .line 104
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView9:Lru/rocketbank/core/widgets/RocketTextView;

    .line 105
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView9:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x13

    .line 106
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->textViewSum:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v0, 0x1

    .line 107
    aget-object p1, p1, v0

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 108
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/Toolbar;->setTag(Ljava/lang/Object;)V

    .line 109
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->setRootTag(Landroid/view/View;)V

    .line 111
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;
    .locals 1

    .line 312
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;
    .locals 2

    const-string v0, "layout/activity_tax_charge_0"

    .line 316
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
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

    .line 319
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;
    .locals 1

    .line 304
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;
    .locals 3

    const v0, 0x7f0c0065

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 308
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;
    .locals 1

    .line 296
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;
    .locals 1

    const v0, 0x7f0c0065

    .line 300
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;

    return-object p0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 40

    move-object/from16 v1, p0

    .line 167
    monitor-enter p0

    .line 168
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 169
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mDirtyFlags:J

    .line 170
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mChargeModel:Lru/rocketbank/core/model/charge/ChargeModel;

    const-wide/16 v7, 0x3

    and-long v9, v2, v7

    cmp-long v11, v9, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v11, :cond_a

    if-eqz v6, :cond_0

    .line 199
    invoke-virtual {v6}, Lru/rocketbank/core/model/charge/ChargeModel;->getRequisites()Lru/rocketbank/core/model/charge/ChargeModel$Requisites;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v13

    :goto_0
    if-eqz v6, :cond_1

    .line 205
    invoke-virtual {v6}, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->getInn()Ljava/lang/String;

    move-result-object v11

    .line 207
    invoke-virtual {v6}, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->getTreasure_branch()Ljava/lang/String;

    move-result-object v13

    .line 209
    invoke-virtual {v6}, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->getBank_name()Ljava/lang/String;

    move-result-object v14

    .line 211
    invoke-virtual {v6}, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->getKbk()Ljava/lang/String;

    move-result-object v15

    .line 213
    invoke-virtual {v6}, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->getKpp()Ljava/lang/String;

    move-result-object v16

    .line 215
    invoke-virtual {v6}, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->getTax_period()Ljava/lang/String;

    move-result-object v17

    .line 217
    invoke-virtual {v6}, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->getOktmo()Ljava/lang/String;

    move-result-object v18

    .line 219
    invoke-virtual {v6}, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->getTax_basis()Ljava/lang/String;

    move-result-object v19

    .line 221
    invoke-virtual {v6}, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->getCorr_number()Ljava/lang/String;

    move-result-object v20

    .line 223
    invoke-virtual {v6}, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->getDrawer_status()Ljava/lang/String;

    move-result-object v21

    .line 225
    invoke-virtual {v6}, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->getBill_date()Ljava/lang/String;

    move-result-object v22

    .line 227
    invoke-virtual {v6}, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->getRecipient_name()Ljava/lang/String;

    move-result-object v23

    .line 229
    invoke-virtual {v6}, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->getPayer_name()Ljava/lang/String;

    move-result-object v24

    .line 231
    invoke-virtual {v6}, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->getBik()Ljava/lang/String;

    move-result-object v25

    .line 233
    invoke-virtual {v6}, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->getPurpose()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v39, v18

    move-object/from16 v18, v6

    move-object v6, v13

    move-object/from16 v13, v39

    goto :goto_1

    :cond_1
    move-object v6, v13

    move-object v11, v6

    move-object v14, v11

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    :goto_1
    const/16 v26, 0x1

    if-eqz v13, :cond_2

    move/from16 v27, v26

    goto :goto_2

    :cond_2
    move/from16 v27, v12

    :goto_2
    if-eqz v20, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v26, v12

    :goto_3
    cmp-long v28, v9, v4

    if-eqz v28, :cond_5

    if-eqz v27, :cond_4

    const-wide/16 v9, 0x8

    or-long v28, v2, v9

    goto :goto_4

    :cond_4
    const-wide/16 v9, 0x4

    or-long v28, v2, v9

    goto :goto_4

    :cond_5
    move-wide/from16 v28, v2

    :goto_4
    and-long v2, v28, v7

    cmp-long v9, v2, v4

    if-eqz v9, :cond_7

    if-eqz v26, :cond_6

    const-wide/16 v2, 0x20

    or-long v9, v28, v2

    :goto_5
    move-wide v2, v9

    goto :goto_6

    :cond_6
    const-wide/16 v2, 0x10

    or-long v9, v28, v2

    goto :goto_5

    :cond_7
    move-wide/from16 v2, v28

    :goto_6
    const/16 v9, 0x8

    if-eqz v27, :cond_8

    move v10, v12

    goto :goto_7

    :cond_8
    move v10, v9

    :goto_7
    if-eqz v26, :cond_9

    goto :goto_8

    :cond_9
    move v12, v9

    :goto_8
    move-object/from16 v33, v6

    move-object/from16 v38, v11

    move/from16 v35, v12

    move-object v11, v13

    move-object/from16 v9, v16

    move-object/from16 v32, v17

    move-object/from16 v6, v18

    move-object/from16 v30, v19

    move-object/from16 v36, v20

    move-object/from16 v31, v21

    move-object/from16 v13, v22

    move-object/from16 v37, v23

    move-object/from16 v34, v24

    move v12, v10

    move-object/from16 v10, v25

    goto :goto_9

    :cond_a
    move/from16 v35, v12

    move-object v6, v13

    move-object v9, v6

    move-object v10, v9

    move-object v11, v10

    move-object v14, v11

    move-object v15, v14

    move-object/from16 v30, v15

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v36, v34

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    :goto_9
    and-long v16, v2, v7

    cmp-long v2, v16, v4

    if-eqz v2, :cond_b

    .line 268
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->date:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v13}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 269
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->description:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v6}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 270
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView10:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v9}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 271
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView11:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v14}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 272
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView12:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v10}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 273
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView13:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v15}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 274
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView14:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v12}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 275
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView15:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v12}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 276
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView15:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v11}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 277
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView16:Lru/rocketbank/core/widgets/RocketTextView;

    move-object/from16 v13, v30

    invoke-static {v2, v13}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 278
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView17:Lru/rocketbank/core/widgets/RocketTextView;

    move-object/from16 v13, v31

    invoke-static {v2, v13}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 279
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView18:Lru/rocketbank/core/widgets/RocketTextView;

    move-object/from16 v13, v32

    invoke-static {v2, v13}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 280
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView4:Lru/rocketbank/core/widgets/RocketTextView;

    move-object/from16 v13, v33

    invoke-static {v2, v13}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 281
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView5:Lru/rocketbank/core/widgets/RocketTextView;

    move-object/from16 v13, v34

    invoke-static {v2, v13}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 282
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView6:Lru/rocketbank/core/widgets/RocketTextView;

    move/from16 v12, v35

    invoke-virtual {v2, v12}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 283
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView7:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v12}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 284
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView7:Lru/rocketbank/core/widgets/RocketTextView;

    move-object/from16 v13, v36

    invoke-static {v2, v13}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 285
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView8:Lru/rocketbank/core/widgets/RocketTextView;

    move-object/from16 v13, v37

    invoke-static {v2, v13}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 286
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mboundView9:Lru/rocketbank/core/widgets/RocketTextView;

    move-object/from16 v13, v38

    invoke-static {v2, v13}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_b
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 170
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getChargeModel()Lru/rocketbank/core/model/charge/ChargeModel;
    .locals 1

    .line 154
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mChargeModel:Lru/rocketbank/core/model/charge/ChargeModel;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 124
    monitor-enter p0

    .line 125
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 126
    monitor-exit p0

    return v0

    .line 128
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

    .line 116
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 117
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mDirtyFlags:J

    .line 118
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->requestRebind()V

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

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setChargeModel(Lru/rocketbank/core/model/charge/ChargeModel;)V
    .locals 6

    .line 145
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mChargeModel:Lru/rocketbank/core/model/charge/ChargeModel;

    .line 146
    monitor-enter p0

    .line 147
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->mDirtyFlags:J

    .line 148
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xf

    .line 149
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->notifyPropertyChanged(I)V

    .line 150
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 148
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

    .line 136
    check-cast p2, Lru/rocketbank/core/model/charge/ChargeModel;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;->setChargeModel(Lru/rocketbank/core/model/charge/ChargeModel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
