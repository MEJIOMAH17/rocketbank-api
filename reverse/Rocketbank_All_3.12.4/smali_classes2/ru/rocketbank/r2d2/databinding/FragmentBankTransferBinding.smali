.class public Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;
.super Landroid/databinding/ViewDataBinding;
.source "FragmentBankTransferBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final cardNumberProgressBar:Landroid/widget/ProgressBar;

.field public final corrNumber:Lru/rocketbank/core/widgets/RocketEditText;

.field public final editTextBik:Lru/rocketbank/core/widgets/RocketEditText;

.field public final editTextCardNumber:Lru/rocketbank/core/widgets/RocketEditText;

.field private mBudget:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

.field private mCorporate:Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

.field private mDirtyFlags:J

.field private mIndividual:Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;

.field private mTransfer:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

.field private final mboundView0:Landroid/widget/ScrollView;

.field private final mboundView1:Landroid/widget/LinearLayout;

.field private final mboundView11:Lru/rocketbank/r2d2/databinding/BankInfoBinding;

.field private final mboundView12:Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;

.field private final mboundView13:Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;

.field private final mboundView14:Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;

.field private final mboundView4:Lru/rocketbank/core/widgets/RocketTextView;

.field public final subTitle:Lru/rocketbank/core/widgets/RocketTextView;

.field public final textViewKindError:Lru/rocketbank/core/widgets/RocketTextView;

.field public final title:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    .line 16
    sput-object v0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "bank_info"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "budget_transfer"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "individual_transfer"

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const-string v3, "corporate_transfer"

    const/4 v5, 0x3

    aput-object v3, v2, v5

    new-array v3, v1, [I

    fill-array-data v3, :array_0

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 20
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 21
    sput-object v0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900c0

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903a5

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903cc

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090362

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    nop

    :array_0
    .array-data 4
        0x6
        0x7
        0x8
        0x9
    .end array-data

    :array_1
    .array-data 4
        0x7f0c0076
        0x7f0c0079
        0x7f0c010e
        0x7f0c008b
    .end array-data
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/16 v0, 0xc

    .line 69
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 748
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    .line 70
    sget-object v1, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0xe

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/16 v1, 0xa

    .line 71
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->cardNumberProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x3

    .line 72
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->corrNumber:Lru/rocketbank/core/widgets/RocketEditText;

    .line 73
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->corrNumber:Lru/rocketbank/core/widgets/RocketEditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketEditText;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x2

    .line 74
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->editTextBik:Lru/rocketbank/core/widgets/RocketEditText;

    .line 75
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->editTextBik:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketEditText;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x5

    .line 76
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->editTextCardNumber:Lru/rocketbank/core/widgets/RocketEditText;

    .line 77
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->editTextCardNumber:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketEditText;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 78
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mboundView0:Landroid/widget/ScrollView;

    .line 79
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mboundView0:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 80
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mboundView1:Landroid/widget/LinearLayout;

    .line 81
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mboundView1:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x6

    .line 82
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/r2d2/databinding/BankInfoBinding;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mboundView11:Lru/rocketbank/r2d2/databinding/BankInfoBinding;

    .line 83
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mboundView11:Lru/rocketbank/r2d2/databinding/BankInfoBinding;

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    const/4 v1, 0x7

    .line 84
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mboundView12:Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;

    .line 85
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mboundView12:Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    const/16 v1, 0x8

    .line 86
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mboundView13:Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;

    .line 87
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mboundView13:Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    const/16 v1, 0x9

    .line 88
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mboundView14:Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;

    .line 89
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mboundView14:Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    const/4 v1, 0x4

    .line 90
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mboundView4:Lru/rocketbank/core/widgets/RocketTextView;

    .line 91
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mboundView4:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0xd

    .line 92
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->subTitle:Lru/rocketbank/core/widgets/RocketTextView;

    const/16 v1, 0xb

    .line 93
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->textViewKindError:Lru/rocketbank/core/widgets/RocketTextView;

    .line 94
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->title:Lru/rocketbank/core/widgets/RocketTextView;

    .line 95
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->setRootTag(Landroid/view/View;)V

    .line 97
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;
    .locals 1

    .line 768
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;
    .locals 2

    const-string v0, "layout/fragment_bank_transfer_0"

    .line 772
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 773
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

    .line 775
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;
    .locals 1

    .line 760
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;
    .locals 3

    const v0, 0x7f0c00c4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 764
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;
    .locals 1

    .line 752
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;
    .locals 1

    const v0, 0x7f0c00c4

    .line 756
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;

    return-object p0
.end method

.method private onChangeBudget(Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 420
    monitor-enter p0

    .line 421
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x800

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    .line 422
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

.method private onChangeCorporate(Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 324
    monitor-enter p0

    .line 325
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    .line 326
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

.method private onChangeIndividual(Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 333
    monitor-enter p0

    .line 334
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    .line 335
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

.method private onChangeTransfer(Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 270
    monitor-enter p0

    .line 271
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    .line 272
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/16 v0, 0x9

    if-ne p2, v0, :cond_1

    .line 276
    monitor-enter p0

    .line 277
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x40

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    .line 278
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const/16 v0, 0x8

    if-ne p2, v0, :cond_2

    .line 282
    monitor-enter p0

    .line 283
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x20

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    .line 284
    monitor-exit p0

    return p1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_2
    const/16 v0, 0x15

    if-ne p2, v0, :cond_3

    .line 288
    monitor-enter p0

    .line 289
    :try_start_3
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    .line 290
    monitor-exit p0

    return p1

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    :cond_3
    const/16 v0, 0x16

    if-ne p2, v0, :cond_4

    .line 294
    monitor-enter p0

    .line 295
    :try_start_4
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    .line 296
    monitor-exit p0

    return p1

    :catchall_4
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw p1

    :cond_4
    const/16 v0, 0xd

    if-ne p2, v0, :cond_5

    .line 300
    monitor-enter p0

    .line 301
    :try_start_5
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    .line 302
    monitor-exit p0

    return p1

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw p1

    :cond_5
    const/16 v0, 0xc

    if-ne p2, v0, :cond_6

    .line 306
    monitor-enter p0

    .line 307
    :try_start_6
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x200

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    .line 308
    monitor-exit p0

    return p1

    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeTransferBankName(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 342
    monitor-enter p0

    .line 343
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    .line 344
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

.method private onChangeTransferBik(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 351
    monitor-enter p0

    .line 352
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x40

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    .line 353
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

    .line 357
    monitor-enter p0

    .line 358
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x8000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    .line 359
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

    .line 363
    monitor-enter p0

    .line 364
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x10000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    .line 365
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

.method private onChangeTransferCardNumber(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 390
    monitor-enter p0

    .line 391
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x200

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    .line 392
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

    .line 396
    monitor-enter p0

    .line 397
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x20000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    .line 398
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

    .line 402
    monitor-enter p0

    .line 403
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x40000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    .line 404
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

.method private onChangeTransferCorrBank(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 315
    monitor-enter p0

    .line 316
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    .line 317
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

.method private onChangeTransferCorrNumber(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 249
    monitor-enter p0

    .line 250
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    .line 251
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

    .line 255
    monitor-enter p0

    .line 256
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    .line 257
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

    .line 261
    monitor-enter p0

    .line 262
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    .line 263
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

.method private onChangeTransferFieldsBik(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 411
    monitor-enter p0

    .line 412
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x400

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    .line 413
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

.method private onChangeTransferFieldsCardNumber(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 372
    monitor-enter p0

    .line 373
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x80

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    .line 374
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

.method private onChangeTransferFieldsCorrNumber(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 381
    monitor-enter p0

    .line 382
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x100

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    .line 383
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
.method protected executeBindings()V
    .locals 44

    move-object/from16 v1, p0

    .line 431
    monitor-enter p0

    .line 432
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 433
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    .line 434
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mTransfer:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    .line 446
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mCorporate:Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    .line 448
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mIndividual:Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;

    .line 461
    iget-object v9, v1, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mBudget:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    const-wide/32 v10, 0xff7e7

    and-long v12, v2, v10

    cmp-long v10, v12, v4

    const-wide/32 v17, 0x80006

    const-wide/32 v19, 0x80402

    const-wide/32 v21, 0x80102

    const-wide/32 v23, 0x80082

    const-wide/32 v25, 0x82003

    const-wide/32 v27, 0x81003

    const/4 v11, 0x0

    if-eqz v10, :cond_29

    const-wide/32 v31, 0x83003

    and-long v33, v2, v31

    cmp-long v10, v33, v4

    const v12, 0x7f080294

    const v13, 0x7f080296

    if-eqz v10, :cond_7

    if-eqz v6, :cond_0

    .line 470
    invoke-virtual {v6}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getCorr_number()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v10

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 472
    :goto_0
    invoke-virtual {v1, v11, v10}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    and-long v31, v2, v27

    cmp-long v14, v31, v4

    if-eqz v14, :cond_5

    if-eqz v10, :cond_1

    .line 478
    invoke-virtual {v10}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v14

    goto :goto_1

    :cond_1
    move v14, v11

    :goto_1
    cmp-long v33, v31, v4

    if-eqz v33, :cond_3

    if-eqz v14, :cond_2

    const-wide/32 v31, 0x2000000

    or-long v33, v2, v31

    goto :goto_2

    :cond_2
    const-wide/32 v31, 0x1000000

    or-long v33, v2, v31

    goto :goto_2

    :cond_3
    move-wide/from16 v33, v2

    :goto_2
    if-eqz v14, :cond_4

    .line 491
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->corrNumber:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v2, v13}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_3

    :cond_4
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->corrNumber:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v2, v12}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_3
    move-object v14, v2

    move-wide/from16 v2, v33

    goto :goto_4

    :cond_5
    const/4 v14, 0x0

    :goto_4
    and-long v31, v2, v25

    cmp-long v33, v31, v4

    if-eqz v33, :cond_6

    if-eqz v10, :cond_6

    .line 497
    invoke-virtual {v10}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_6
    const/4 v10, 0x0

    goto :goto_5

    :cond_7
    const/4 v10, 0x0

    const/4 v14, 0x0

    :goto_5
    const-wide/32 v31, 0x80582

    and-long v33, v2, v31

    cmp-long v31, v33, v4

    const/16 v11, 0x8

    if-eqz v31, :cond_f

    if-eqz v6, :cond_8

    .line 505
    invoke-virtual {v6}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getFields()Ljava/util/HashMap;

    move-result-object v31

    move-object/from16 v12, v31

    goto :goto_6

    :cond_8
    const/4 v12, 0x0

    :goto_6
    and-long v31, v2, v23

    cmp-long v33, v31, v4

    if-eqz v33, :cond_a

    if-eqz v12, :cond_9

    const-string v13, "card_number"

    .line 512
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    goto :goto_7

    :cond_9
    const/4 v13, 0x0

    :goto_7
    const/4 v15, 0x7

    .line 514
    invoke-virtual {v1, v15, v13}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v13, :cond_a

    .line 519
    invoke-virtual {v13}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getWatcher()Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    move-result-object v13

    goto :goto_8

    :cond_a
    const/4 v13, 0x0

    :goto_8
    and-long v15, v2, v21

    cmp-long v31, v15, v4

    if-eqz v31, :cond_c

    if-eqz v12, :cond_b

    const-string v15, "corr_number"

    .line 526
    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    goto :goto_9

    :cond_b
    const/4 v15, 0x0

    .line 528
    :goto_9
    invoke-virtual {v1, v11, v15}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v15, :cond_c

    .line 533
    invoke-virtual {v15}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getWatcher()Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    move-result-object v15

    goto :goto_a

    :cond_c
    const/4 v15, 0x0

    :goto_a
    and-long v31, v2, v19

    cmp-long v16, v31, v4

    if-eqz v16, :cond_e

    if-eqz v12, :cond_d

    const-string v11, "bik"

    .line 540
    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    goto :goto_b

    :cond_d
    const/4 v12, 0x0

    :goto_b
    const/16 v11, 0xa

    .line 542
    invoke-virtual {v1, v11, v12}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v12, :cond_e

    .line 547
    invoke-virtual {v12}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getWatcher()Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    move-result-object v11

    move-object v12, v13

    goto :goto_c

    :cond_e
    move-object v12, v13

    const/4 v11, 0x0

    goto :goto_c

    :cond_f
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_c
    and-long v31, v2, v17

    cmp-long v13, v31, v4

    if-eqz v13, :cond_11

    if-eqz v6, :cond_10

    .line 555
    invoke-virtual {v6}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getCorr_bank()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v13

    goto :goto_d

    :cond_10
    const/4 v13, 0x0

    :goto_d
    const/4 v4, 0x2

    .line 557
    invoke-virtual {v1, v4, v13}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    const-wide/32 v4, 0x80022

    goto :goto_e

    :cond_11
    const-wide/32 v4, 0x80022

    const/4 v13, 0x0

    :goto_e
    and-long v31, v2, v4

    const-wide/16 v4, 0x0

    cmp-long v16, v31, v4

    if-eqz v16, :cond_13

    if-eqz v6, :cond_12

    .line 563
    invoke-virtual {v6}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getBank_name()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v16

    move-object/from16 v4, v16

    goto :goto_f

    :cond_12
    const/4 v4, 0x0

    :goto_f
    const/4 v5, 0x5

    .line 565
    invoke-virtual {v1, v5, v4}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    goto :goto_10

    :cond_13
    const/4 v4, 0x0

    :goto_10
    const-wide/32 v31, 0x84002

    and-long v33, v2, v31

    const-wide/16 v31, 0x0

    cmp-long v5, v33, v31

    if-eqz v5, :cond_18

    if-eqz v6, :cond_14

    .line 571
    invoke-virtual {v6}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getCard_number_visible()Z

    move-result v5

    goto :goto_11

    :cond_14
    const/4 v5, 0x0

    :goto_11
    cmp-long v16, v33, v31

    if-eqz v16, :cond_16

    if-eqz v5, :cond_15

    const-wide/32 v31, 0x800000

    or-long v33, v2, v31

    :goto_12
    move-wide/from16 v2, v33

    goto :goto_13

    :cond_15
    const-wide/32 v31, 0x400000

    or-long v33, v2, v31

    goto :goto_12

    :cond_16
    :goto_13
    if-eqz v5, :cond_17

    goto :goto_14

    :cond_17
    const/16 v35, 0x8

    goto :goto_15

    :cond_18
    :goto_14
    const/16 v35, 0x0

    :goto_15
    const-wide/32 v31, 0x98042

    and-long v33, v2, v31

    const-wide/16 v31, 0x0

    cmp-long v5, v33, v31

    if-eqz v5, :cond_20

    if-eqz v6, :cond_19

    .line 590
    invoke-virtual {v6}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getBik()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v5

    move-object/from16 v38, v4

    goto :goto_16

    :cond_19
    move-object/from16 v38, v4

    const/4 v5, 0x0

    :goto_16
    const/4 v4, 0x6

    .line 592
    invoke-virtual {v1, v4, v5}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    const-wide/32 v29, 0x90042

    and-long v33, v2, v29

    cmp-long v4, v33, v31

    if-eqz v4, :cond_1a

    if-eqz v5, :cond_1a

    .line 598
    invoke-virtual {v5}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_17

    :cond_1a
    const/4 v4, 0x0

    :goto_17
    const-wide/32 v33, 0x88042

    and-long v36, v2, v33

    cmp-long v16, v36, v31

    if-eqz v16, :cond_1f

    if-eqz v5, :cond_1b

    .line 605
    invoke-virtual {v5}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v5

    goto :goto_18

    :cond_1b
    const/4 v5, 0x0

    :goto_18
    cmp-long v16, v36, v31

    if-eqz v16, :cond_1d

    if-eqz v5, :cond_1c

    const-wide/32 v31, 0x200000

    or-long v33, v2, v31

    goto :goto_19

    :cond_1c
    const-wide/32 v31, 0x100000

    or-long v33, v2, v31

    goto :goto_19

    :cond_1d
    move-wide/from16 v33, v2

    :goto_19
    if-eqz v5, :cond_1e

    .line 618
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->editTextBik:Lru/rocketbank/core/widgets/RocketEditText;

    const v3, 0x7f080296

    :goto_1a
    invoke-static {v2, v3}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1b

    :cond_1e
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->editTextBik:Lru/rocketbank/core/widgets/RocketEditText;

    const v3, 0x7f080294

    goto :goto_1a

    :goto_1b
    move-object v5, v4

    move-object v4, v2

    move-wide/from16 v2, v33

    goto :goto_1c

    :cond_1f
    move-object v5, v4

    const/4 v4, 0x0

    goto :goto_1c

    :cond_20
    move-object/from16 v38, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1c
    const-wide/32 v31, 0xe0202

    and-long v33, v2, v31

    const-wide/16 v31, 0x0

    cmp-long v16, v33, v31

    if-eqz v16, :cond_28

    if-eqz v6, :cond_21

    .line 625
    invoke-virtual {v6}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getCard_number()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v6

    move-object/from16 v39, v4

    goto :goto_1d

    :cond_21
    move-object/from16 v39, v4

    const/4 v6, 0x0

    :goto_1d
    const/16 v4, 0x9

    .line 627
    invoke-virtual {v1, v4, v6}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    const-wide/32 v33, 0xa0202

    and-long v36, v2, v33

    cmp-long v4, v36, v31

    if-eqz v4, :cond_26

    if-eqz v6, :cond_22

    .line 633
    invoke-virtual {v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v4

    goto :goto_1e

    :cond_22
    const/4 v4, 0x0

    :goto_1e
    cmp-long v16, v36, v31

    if-eqz v16, :cond_24

    if-eqz v4, :cond_23

    const-wide/32 v31, 0x8000000

    or-long v33, v2, v31

    goto :goto_1f

    :cond_23
    const-wide/32 v31, 0x4000000

    or-long v33, v2, v31

    goto :goto_1f

    :cond_24
    move-wide/from16 v33, v2

    :goto_1f
    if-eqz v4, :cond_25

    .line 646
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->editTextCardNumber:Lru/rocketbank/core/widgets/RocketEditText;

    const v3, 0x7f080296

    :goto_20
    invoke-static {v2, v3}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_21

    :cond_25
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->editTextCardNumber:Lru/rocketbank/core/widgets/RocketEditText;

    const v3, 0x7f080294

    goto :goto_20

    :goto_21
    move-object v4, v2

    move-wide/from16 v2, v33

    goto :goto_22

    :cond_26
    const/4 v4, 0x0

    :goto_22
    const-wide/32 v31, 0xc0202

    and-long v33, v2, v31

    const-wide/16 v31, 0x0

    cmp-long v16, v33, v31

    if-eqz v16, :cond_27

    if-eqz v6, :cond_27

    .line 652
    invoke-virtual {v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v40, v7

    move-object/from16 v41, v8

    move-object/from16 v42, v9

    move-object v9, v13

    move/from16 v7, v35

    move-object/from16 v8, v38

    move-object v13, v6

    move-object v6, v4

    move-object/from16 v4, v39

    goto :goto_24

    :cond_27
    move-object v6, v4

    move-object/from16 v40, v7

    move-object/from16 v41, v8

    move-object/from16 v42, v9

    move-object v9, v13

    move/from16 v7, v35

    move-object/from16 v8, v38

    move-object/from16 v4, v39

    goto :goto_23

    :cond_28
    move-object/from16 v39, v4

    move-object/from16 v40, v7

    move-object/from16 v41, v8

    move-object/from16 v42, v9

    move-object v9, v13

    move/from16 v7, v35

    move-object/from16 v8, v38

    const/4 v6, 0x0

    :goto_23
    const/4 v13, 0x0

    goto :goto_24

    :cond_29
    move-wide/from16 v31, v4

    move-object/from16 v40, v7

    move-object/from16 v41, v8

    move-object/from16 v42, v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_24
    and-long v33, v2, v21

    cmp-long v16, v33, v31

    if-eqz v16, :cond_2a

    move-object/from16 v43, v9

    .line 667
    iget-object v9, v1, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->corrNumber:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v9, v15}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_25

    :cond_2a
    move-object/from16 v43, v9

    :goto_25
    and-long v15, v2, v27

    cmp-long v9, v15, v31

    if-eqz v9, :cond_2b

    .line 672
    iget-object v9, v1, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->corrNumber:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v9, v14}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_2b
    and-long v14, v2, v25

    cmp-long v9, v14, v31

    if-eqz v9, :cond_2c

    .line 677
    iget-object v9, v1, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->corrNumber:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v9, v10}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_2c
    and-long v9, v2, v19

    cmp-long v14, v9, v31

    if-eqz v14, :cond_2d

    .line 682
    iget-object v9, v1, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->editTextBik:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v9, v11}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2d
    const-wide/32 v9, 0x88042

    and-long v14, v2, v9

    cmp-long v9, v14, v31

    if-eqz v9, :cond_2e

    .line 687
    iget-object v9, v1, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->editTextBik:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v9, v4}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_2e
    const-wide/32 v9, 0x90042

    and-long v14, v2, v9

    cmp-long v4, v14, v31

    if-eqz v4, :cond_2f

    .line 692
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->editTextBik:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v4, v5}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_2f
    and-long v4, v2, v23

    cmp-long v9, v4, v31

    if-eqz v9, :cond_30

    .line 697
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->editTextCardNumber:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v4, v12}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_30
    const-wide/32 v4, 0xa0202

    and-long v9, v2, v4

    cmp-long v4, v9, v31

    if-eqz v4, :cond_31

    .line 702
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->editTextCardNumber:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v4, v6}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_31
    const-wide/32 v4, 0xc0202

    and-long v9, v2, v4

    cmp-long v4, v9, v31

    if-eqz v4, :cond_32

    .line 707
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->editTextCardNumber:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v4, v13}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_32
    const-wide/32 v4, 0x84002

    and-long v9, v2, v4

    cmp-long v4, v9, v31

    if-eqz v4, :cond_33

    .line 712
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->editTextCardNumber:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v4, v7}, Lru/rocketbank/core/widgets/RocketEditText;->setVisibility(I)V

    .line 713
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mboundView4:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v4, v7}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    :cond_33
    const-wide/32 v4, 0x80022

    and-long v6, v2, v4

    cmp-long v4, v6, v31

    if-eqz v4, :cond_34

    .line 718
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mboundView11:Lru/rocketbank/r2d2/databinding/BankInfoBinding;

    invoke-virtual {v4, v8}, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->setBankName(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;)V

    :cond_34
    and-long v4, v2, v17

    cmp-long v6, v4, v31

    if-eqz v6, :cond_35

    .line 723
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mboundView11:Lru/rocketbank/r2d2/databinding/BankInfoBinding;

    move-object/from16 v13, v43

    invoke-virtual {v4, v13}, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->setCorrBank(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;)V

    :cond_35
    const-wide/32 v4, 0x80800

    and-long v6, v2, v4

    cmp-long v4, v6, v31

    if-eqz v4, :cond_36

    .line 728
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mboundView12:Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;

    move-object/from16 v5, v42

    invoke-virtual {v4, v5}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->setBudget(Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;)V

    :cond_36
    const-wide/32 v4, 0x80010

    and-long v6, v2, v4

    cmp-long v4, v6, v31

    if-eqz v4, :cond_37

    .line 733
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mboundView13:Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;

    move-object/from16 v5, v41

    invoke-virtual {v4, v5}, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->setIndividual(Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;)V

    :cond_37
    const-wide/32 v4, 0x80008

    and-long v6, v2, v4

    cmp-long v2, v6, v31

    if-eqz v2, :cond_38

    .line 738
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mboundView14:Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;

    move-object/from16 v3, v40

    invoke-virtual {v2, v3}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->setCorporate(Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;)V

    .line 740
    :cond_38
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mboundView11:Lru/rocketbank/r2d2/databinding/BankInfoBinding;

    invoke-static {v2}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    .line 741
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mboundView12:Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;

    invoke-static {v2}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    .line 742
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mboundView13:Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;

    invoke-static {v2}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    .line 743
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mboundView14:Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;

    invoke-static {v2}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 434
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getBudget()Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;
    .locals 1

    .line 205
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mBudget:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    return-object v0
.end method

.method public getCorporate()Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;
    .locals 1

    .line 179
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mCorporate:Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    return-object v0
.end method

.method public getIndividual()Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;
    .locals 1

    .line 192
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mIndividual:Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;

    return-object v0
.end method

.method public getTransfer()Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;
    .locals 1

    .line 166
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mTransfer:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v0, 0x1

    if-eqz v4, :cond_0

    .line 116
    monitor-exit p0

    return v0

    .line 118
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mboundView11:Lru/rocketbank/r2d2/databinding/BankInfoBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->hasPendingBindings()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 122
    :cond_1
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mboundView12:Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->hasPendingBindings()Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 125
    :cond_2
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mboundView13:Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->hasPendingBindings()Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    .line 128
    :cond_3
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mboundView14:Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->hasPendingBindings()Z

    move-result v1

    if-eqz v1, :cond_4

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 118
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 102
    monitor-enter p0

    const-wide/32 v0, 0x80000

    .line 103
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    .line 104
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mboundView11:Lru/rocketbank/r2d2/databinding/BankInfoBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->invalidateAll()V

    .line 106
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mboundView12:Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->invalidateAll()V

    .line 107
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mboundView13:Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->invalidateAll()V

    .line 108
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mboundView14:Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->invalidateAll()V

    .line 109
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 104
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

    .line 243
    :pswitch_0
    check-cast p2, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->onChangeBudget(Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;I)Z

    move-result p1

    return p1

    .line 241
    :pswitch_1
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->onChangeTransferFieldsBik(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 239
    :pswitch_2
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->onChangeTransferCardNumber(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 237
    :pswitch_3
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->onChangeTransferFieldsCorrNumber(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 235
    :pswitch_4
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->onChangeTransferFieldsCardNumber(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 233
    :pswitch_5
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->onChangeTransferBik(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 231
    :pswitch_6
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->onChangeTransferBankName(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 229
    :pswitch_7
    check-cast p2, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->onChangeIndividual(Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;I)Z

    move-result p1

    return p1

    .line 227
    :pswitch_8
    check-cast p2, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->onChangeCorporate(Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;I)Z

    move-result p1

    return p1

    .line 225
    :pswitch_9
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->onChangeTransferCorrBank(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 223
    :pswitch_a
    check-cast p2, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->onChangeTransfer(Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;I)Z

    move-result p1

    return p1

    .line 221
    :pswitch_b
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->onChangeTransferCorrNumber(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBudget(Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;)V
    .locals 6

    const/16 v0, 0xb

    .line 195
    invoke-virtual {p0, v0, p1}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    .line 196
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mBudget:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    .line 197
    monitor-enter p0

    .line 198
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x800

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    .line 199
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xa

    .line 200
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->notifyPropertyChanged(I)V

    .line 201
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 199
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setCorporate(Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;)V
    .locals 6

    const/4 v0, 0x3

    .line 169
    invoke-virtual {p0, v0, p1}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    .line 170
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mCorporate:Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    .line 171
    monitor-enter p0

    .line 172
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    .line 173
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x13

    .line 174
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->notifyPropertyChanged(I)V

    .line 175
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 173
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setIndividual(Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;)V
    .locals 6

    const/4 v0, 0x4

    .line 182
    invoke-virtual {p0, v0, p1}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    .line 183
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mIndividual:Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;

    .line 184
    monitor-enter p0

    .line 185
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    .line 186
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x2d

    .line 187
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->notifyPropertyChanged(I)V

    .line 188
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 186
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 210
    invoke-super {p0, p1}, Landroid/databinding/ViewDataBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 211
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mboundView11:Lru/rocketbank/r2d2/databinding/BankInfoBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/BankInfoBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 212
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mboundView12:Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 213
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mboundView13:Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 214
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mboundView14:Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setTransfer(Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;)V
    .locals 6

    const/4 v0, 0x1

    .line 156
    invoke-virtual {p0, v0, p1}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    .line 157
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mTransfer:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    .line 158
    monitor-enter p0

    .line 159
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->mDirtyFlags:J

    .line 160
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x56

    .line 161
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->notifyPropertyChanged(I)V

    .line 162
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 160
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x56

    if-ne v0, p1, :cond_0

    .line 138
    check-cast p2, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->setTransfer(Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x13

    if-ne v0, p1, :cond_1

    .line 141
    check-cast p2, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->setCorporate(Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x2d

    if-ne v0, p1, :cond_2

    .line 144
    check-cast p2, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->setIndividual(Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0xa

    if-ne v0, p1, :cond_3

    .line 147
    check-cast p2, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->setBudget(Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
