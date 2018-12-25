.class public Lru/rocketbank/r2d2/databinding/BankInfoBinding;
.super Landroid/databinding/ViewDataBinding;
.source "BankInfoBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final bankInfoDetails:Landroid/widget/LinearLayout;

.field public final imgLogo:Landroid/widget/ImageView;

.field private mBankName:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

.field private mCorrBank:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

.field private mDirtyFlags:J

.field private final mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

.field public final textviewTransfersBankBankName:Lru/rocketbank/core/widgets/RocketTextView;

.field public final textviewTransfersBankKorrNumber:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901de

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x2

    .line 40
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 294
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->mDirtyFlags:J

    .line 41
    sget-object v1, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x5

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    .line 42
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->bankInfoDetails:Landroid/widget/LinearLayout;

    .line 43
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->bankInfoDetails:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x4

    .line 44
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->imgLogo:Landroid/widget/ImageView;

    .line 45
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    .line 46
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 47
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->textviewTransfersBankBankName:Lru/rocketbank/core/widgets/RocketTextView;

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->textviewTransfersBankBankName:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 49
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->textviewTransfersBankKorrNumber:Lru/rocketbank/core/widgets/RocketTextView;

    .line 50
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->textviewTransfersBankKorrNumber:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->setRootTag(Landroid/view/View;)V

    .line 53
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/BankInfoBinding;
    .locals 1

    .line 314
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/BankInfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/BankInfoBinding;
    .locals 2

    const-string v0, "layout/bank_info_0"

    .line 318
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
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

    .line 321
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/BankInfoBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/BankInfoBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/BankInfoBinding;
    .locals 1

    .line 306
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/BankInfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/BankInfoBinding;
    .locals 3

    const v0, 0x7f0c0076

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 310
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/BankInfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/BankInfoBinding;
    .locals 1

    .line 298
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/BankInfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/BankInfoBinding;
    .locals 1

    const v0, 0x7f0c0076

    .line 302
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/BankInfoBinding;

    return-object p0
.end method

.method private onChangeBankName(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 128
    monitor-enter p0

    .line 129
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->mDirtyFlags:J

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
    const/16 v0, 0x59

    if-ne p2, v0, :cond_1

    .line 134
    monitor-enter p0

    .line 135
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->mDirtyFlags:J

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
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeCorrBank(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 143
    monitor-enter p0

    .line 144
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->mDirtyFlags:J

    .line 145
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/16 v0, 0x59

    if-ne p2, v0, :cond_1

    .line 149
    monitor-enter p0

    .line 150
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->mDirtyFlags:J

    .line 151
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


# virtual methods
.method protected executeBindings()V
    .locals 25

    move-object/from16 v1, p0

    .line 160
    monitor-enter p0

    .line 161
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 162
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->mDirtyFlags:J

    .line 163
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->mBankName:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    .line 170
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->mCorrBank:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-wide/16 v8, 0x15

    and-long v10, v2, v8

    cmp-long v12, v10, v4

    const-wide/16 v13, 0x40

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    if-eqz v12, :cond_3

    if-eqz v6, :cond_0

    .line 185
    invoke-virtual {v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    :cond_0
    move-object v12, v15

    :goto_0
    if-eqz v6, :cond_1

    move/from16 v6, v16

    goto :goto_1

    :cond_1
    move/from16 v6, v17

    :goto_1
    cmp-long v18, v10, v4

    if-eqz v18, :cond_4

    if-eqz v6, :cond_2

    or-long v10, v2, v13

    move-wide v2, v10

    goto :goto_2

    :cond_2
    const-wide/16 v10, 0x20

    or-long v18, v2, v10

    move-wide/from16 v2, v18

    goto :goto_2

    :cond_3
    move-object v12, v15

    move/from16 v6, v17

    :cond_4
    :goto_2
    const-wide/16 v10, 0x1a

    and-long v18, v2, v10

    cmp-long v20, v18, v4

    const-wide/16 v21, 0x100

    if-eqz v20, :cond_8

    if-eqz v7, :cond_5

    .line 204
    invoke-virtual {v7}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v15

    :cond_5
    if-eqz v7, :cond_6

    move/from16 v7, v16

    goto :goto_3

    :cond_6
    move/from16 v7, v17

    :goto_3
    cmp-long v20, v18, v4

    if-eqz v20, :cond_9

    if-eqz v7, :cond_7

    or-long v18, v2, v21

    move-wide/from16 v2, v18

    goto :goto_4

    :cond_7
    const-wide/16 v18, 0x80

    or-long v23, v2, v18

    move-wide/from16 v2, v23

    goto :goto_4

    :cond_8
    move/from16 v7, v17

    :cond_9
    :goto_4
    and-long v18, v2, v21

    cmp-long v20, v18, v4

    if-eqz v20, :cond_b

    if-eqz v15, :cond_a

    .line 223
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    goto :goto_5

    :cond_a
    move/from16 v18, v17

    :goto_5
    if-lez v18, :cond_b

    move/from16 v18, v16

    goto :goto_6

    :cond_b
    move/from16 v18, v17

    :goto_6
    and-long v19, v2, v13

    cmp-long v13, v19, v4

    if-eqz v13, :cond_d

    if-eqz v12, :cond_c

    .line 234
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    goto :goto_7

    :cond_c
    move/from16 v13, v17

    :goto_7
    if-lez v13, :cond_d

    goto :goto_8

    :cond_d
    move/from16 v16, v17

    :goto_8
    and-long v13, v2, v8

    cmp-long v19, v13, v4

    const/16 v20, 0x8

    if-eqz v19, :cond_12

    if-eqz v6, :cond_e

    goto :goto_9

    :cond_e
    move/from16 v16, v17

    :goto_9
    cmp-long v6, v13, v4

    if-eqz v6, :cond_10

    if-eqz v16, :cond_f

    const-wide/16 v13, 0x1000

    or-long v21, v2, v13

    :goto_a
    move-wide/from16 v2, v21

    goto :goto_b

    :cond_f
    const-wide/16 v13, 0x800

    or-long v21, v2, v13

    goto :goto_a

    :cond_10
    :goto_b
    if-eqz v16, :cond_11

    goto :goto_c

    :cond_11
    move/from16 v6, v20

    goto :goto_d

    :cond_12
    :goto_c
    move/from16 v6, v17

    :goto_d
    and-long v13, v2, v10

    cmp-long v16, v13, v4

    if-eqz v16, :cond_17

    if-eqz v7, :cond_13

    goto :goto_e

    :cond_13
    move/from16 v18, v17

    :goto_e
    cmp-long v7, v13, v4

    if-eqz v7, :cond_15

    if-eqz v18, :cond_14

    const-wide/16 v13, 0x400

    or-long v21, v2, v13

    :goto_f
    move-wide/from16 v2, v21

    goto :goto_10

    :cond_14
    const-wide/16 v13, 0x200

    or-long v21, v2, v13

    goto :goto_f

    :cond_15
    :goto_10
    if-eqz v18, :cond_16

    goto :goto_11

    :cond_16
    move/from16 v17, v20

    :cond_17
    :goto_11
    move/from16 v7, v17

    and-long v13, v2, v8

    cmp-long v8, v13, v4

    if-eqz v8, :cond_18

    .line 280
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->bankInfoDetails:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 281
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->textviewTransfersBankBankName:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v6, v12}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_18
    and-long v8, v2, v10

    cmp-long v2, v8, v4

    if-eqz v2, :cond_19

    .line 286
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v7}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 287
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->textviewTransfersBankKorrNumber:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v15}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 288
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->textviewTransfersBankKorrNumber:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v7}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    :cond_19
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

.method public getBankName()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 1

    .line 100
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->mBankName:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method

.method public getCorrBank()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 1

    .line 113
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->mCorrBank:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 66
    monitor-enter p0

    .line 67
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 68
    monitor-exit p0

    return v0

    .line 70
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

    .line 58
    monitor-enter p0

    const-wide/16 v0, 0x10

    .line 59
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->mDirtyFlags:J

    .line 60
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 60
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

    .line 122
    :pswitch_0
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->onChangeCorrBank(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 120
    :pswitch_1
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->onChangeBankName(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBankName(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;)V
    .locals 6

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0, v0, p1}, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    .line 91
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->mBankName:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->mDirtyFlags:J

    .line 94
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x7

    .line 95
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->notifyPropertyChanged(I)V

    .line 96
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 94
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setCorrBank(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;)V
    .locals 6

    const/4 v0, 0x1

    .line 103
    invoke-virtual {p0, v0, p1}, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    .line 104
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->mCorrBank:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->mDirtyFlags:J

    .line 107
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x14

    .line 108
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->notifyPropertyChanged(I)V

    .line 109
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 107
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x7

    if-ne v0, p1, :cond_0

    .line 78
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->setBankName(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    if-ne v0, p1, :cond_1

    .line 81
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->setCorrBank(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
