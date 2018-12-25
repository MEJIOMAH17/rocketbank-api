.class public Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;
.super Landroid/databinding/ViewDataBinding;
.source "TaxChargesFragmentBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private mTaxCharge:Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView1:Lru/rocketbank/core/widgets/RocketEditText;

.field public final rocketTextView2:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0902f4

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x3

    .line 34
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 236
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->mDirtyFlags:J

    .line 35
    sget-object v1, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    invoke-static {p1, p2, v0, v1, v2}, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 36
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 37
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->mboundView0:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 38
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->mboundView1:Lru/rocketbank/core/widgets/RocketEditText;

    .line 39
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->mboundView1:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 40
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->rocketTextView2:Lru/rocketbank/core/widgets/RocketTextView;

    .line 41
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->setRootTag(Landroid/view/View;)V

    .line 43
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;
    .locals 1

    .line 256
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;
    .locals 2

    const-string v0, "layout/tax_charges_fragment_0"

    .line 260
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
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

    .line 263
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;
    .locals 1

    .line 248
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;
    .locals 3

    const v0, 0x7f0c01b7

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 252
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;
    .locals 1

    .line 240
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;
    .locals 1

    const v0, 0x7f0c01b7

    .line 244
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;

    return-object p0
.end method

.method private onChangeTaxCharge(Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 113
    monitor-enter p0

    .line 114
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->mDirtyFlags:J

    .line 115
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/16 v0, 0x2e

    if-ne p2, v0, :cond_1

    .line 119
    monitor-enter p0

    .line 120
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->mDirtyFlags:J

    .line 121
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeTaxChargeGetFieldJavaLangStringInn(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 104
    monitor-enter p0

    .line 105
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->mDirtyFlags:J

    .line 106
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

.method private onChangeTaxChargeInn(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 128
    monitor-enter p0

    .line 129
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->mDirtyFlags:J

    .line 130
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/16 v0, 0x58

    if-ne p2, v0, :cond_1

    .line 134
    monitor-enter p0

    .line 135
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->mDirtyFlags:J

    .line 136
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const/16 v0, 0x59

    if-ne p2, v0, :cond_2

    .line 140
    monitor-enter p0

    .line 141
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->mDirtyFlags:J

    .line 142
    monitor-exit p0

    return p1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected executeBindings()V
    .locals 21

    move-object/from16 v1, p0

    .line 151
    monitor-enter p0

    .line 152
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 153
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->mDirtyFlags:J

    .line 154
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->mTaxCharge:Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

    const-wide/16 v7, 0x3f

    and-long v9, v2, v7

    cmp-long v7, v9, v4

    const-wide/16 v8, 0x36

    const-wide/16 v10, 0x2e

    const-wide/16 v12, 0x23

    if-eqz v7, :cond_a

    and-long v15, v2, v12

    cmp-long v7, v15, v4

    const/4 v15, 0x0

    if-eqz v7, :cond_1

    if-eqz v6, :cond_0

    const-string v7, "inn"

    .line 170
    invoke-virtual {v6, v7}, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;->getField(Ljava/lang/String;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 172
    :goto_0
    invoke-virtual {v1, v15, v7}, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_1

    .line 177
    invoke-virtual {v7}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getWatcher()Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    move-result-object v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    const-wide/16 v16, 0x3e

    and-long v18, v2, v16

    cmp-long v16, v18, v4

    if-eqz v16, :cond_9

    if-eqz v6, :cond_2

    .line 184
    invoke-virtual {v6}, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;->getInn()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v6

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    const/4 v14, 0x2

    .line 186
    invoke-virtual {v1, v14, v6}, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    and-long v16, v2, v10

    cmp-long v14, v16, v4

    if-eqz v14, :cond_7

    if-eqz v6, :cond_3

    .line 192
    invoke-virtual {v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v15

    :cond_3
    cmp-long v14, v16, v4

    if-eqz v14, :cond_5

    if-eqz v15, :cond_4

    const-wide/16 v16, 0x80

    or-long v18, v2, v16

    goto :goto_3

    :cond_4
    const-wide/16 v16, 0x40

    or-long v18, v2, v16

    goto :goto_3

    :cond_5
    move-wide/from16 v18, v2

    :goto_3
    if-eqz v15, :cond_6

    .line 205
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->mboundView1:Lru/rocketbank/core/widgets/RocketEditText;

    const v3, 0x7f080296

    :goto_4
    invoke-static {v2, v3}, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_5

    :cond_6
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->mboundView1:Lru/rocketbank/core/widgets/RocketEditText;

    const v3, 0x7f080294

    goto :goto_4

    :goto_5
    move-object v14, v2

    move-wide/from16 v2, v18

    goto :goto_6

    :cond_7
    const/4 v14, 0x0

    :goto_6
    and-long v15, v2, v8

    cmp-long v17, v15, v4

    if-eqz v17, :cond_8

    if-eqz v6, :cond_8

    .line 211
    invoke-virtual {v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_8
    const/4 v6, 0x0

    goto :goto_8

    :cond_9
    const/4 v6, 0x0

    goto :goto_7

    :cond_a
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_7
    const/4 v14, 0x0

    :goto_8
    and-long v15, v2, v12

    cmp-long v12, v15, v4

    if-eqz v12, :cond_b

    .line 220
    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->mboundView1:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v12, v7}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_b
    and-long v12, v2, v10

    cmp-long v7, v12, v4

    if-eqz v7, :cond_c

    .line 225
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->mboundView1:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v7, v14}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_c
    and-long v10, v2, v8

    cmp-long v2, v10, v4

    if-eqz v2, :cond_d

    .line 230
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->mboundView1:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v2, v6}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_d
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 154
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getTaxCharge()Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;
    .locals 1

    .line 87
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->mTaxCharge:Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 58
    monitor-exit p0

    return v0

    .line 60
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

    .line 48
    monitor-enter p0

    const-wide/16 v0, 0x20

    .line 49
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->mDirtyFlags:J

    .line 50
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 50
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

    .line 98
    :pswitch_0
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->onChangeTaxChargeInn(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 96
    :pswitch_1
    check-cast p2, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->onChangeTaxCharge(Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;I)Z

    move-result p1

    return p1

    .line 94
    :pswitch_2
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->onChangeTaxChargeGetFieldJavaLangStringInn(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setTaxCharge(Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;)V
    .locals 6

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p0, v0, p1}, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    .line 78
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->mTaxCharge:Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

    .line 79
    monitor-enter p0

    .line 80
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->mDirtyFlags:J

    .line 81
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x4e

    .line 82
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->notifyPropertyChanged(I)V

    .line 83
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 81
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x4e

    if-ne v0, p1, :cond_0

    .line 68
    check-cast p2, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;->setTaxCharge(Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
