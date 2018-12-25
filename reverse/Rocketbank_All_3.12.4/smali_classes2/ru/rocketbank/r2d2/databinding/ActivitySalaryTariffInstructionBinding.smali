.class public Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ActivitySalaryTariffInstructionBinding.java"

# interfaces
.implements Landroid/databinding/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final background:Landroid/widget/ImageView;

.field public final button3:Landroid/widget/Button;

.field public final getSalaryView:Lru/rocketbank/core/widgets/RocketTextView;

.field public final guideline5:Landroid/support/constraint/Guideline;

.field public final limitsOnSalaryView:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mCallback8:Landroid/view/View$OnClickListener;

.field private final mCallback9:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private mListener:Lru/rocketbank/r2d2/data/binding/tariff/TariffInstructionListener;

.field private final mboundView0:Landroid/widget/FrameLayout;

.field public final step1:Lru/rocketbank/core/widgets/RocketTextView;

.field public final step2:Lru/rocketbank/core/widgets/RocketTextView;

.field public final step3:Lru/rocketbank/core/widgets/RocketTextView;

.field public final textStep1:Landroid/widget/TextView;

.field public final textStep2:Landroid/widget/TextView;

.field public final textStep3:Lru/rocketbank/core/widgets/RocketTextView;

.field public final textView9:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090069

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09019a

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090219

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09035d

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09035e

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09035f

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903b5

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903b6

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901aa

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903b7

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 199
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->mDirtyFlags:J

    .line 68
    sget-object v1, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0xd

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x3

    .line 69
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->background:Landroid/widget/ImageView;

    const/4 v1, 0x2

    .line 70
    aget-object v2, p1, v1

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->button3:Landroid/widget/Button;

    .line 71
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->button3:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x4

    .line 72
    aget-object v2, p1, v2

    check-cast v2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->getSalaryView:Lru/rocketbank/core/widgets/RocketTextView;

    const/16 v2, 0xb

    .line 73
    aget-object v2, p1, v2

    check-cast v2, Landroid/support/constraint/Guideline;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->guideline5:Landroid/support/constraint/Guideline;

    const/4 v2, 0x5

    .line 74
    aget-object v2, p1, v2

    check-cast v2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->limitsOnSalaryView:Lru/rocketbank/core/widgets/RocketTextView;

    .line 75
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->mboundView0:Landroid/widget/FrameLayout;

    .line 76
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->mboundView0:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x6

    .line 77
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->step1:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v0, 0x7

    .line 78
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->step2:Lru/rocketbank/core/widgets/RocketTextView;

    const/16 v0, 0x8

    .line 79
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->step3:Lru/rocketbank/core/widgets/RocketTextView;

    const/16 v0, 0x9

    .line 80
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->textStep1:Landroid/widget/TextView;

    const/16 v0, 0xa

    .line 81
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->textStep2:Landroid/widget/TextView;

    const/16 v0, 0xc

    .line 82
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->textStep3:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v0, 0x1

    .line 83
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->textView9:Lru/rocketbank/core/widgets/RocketTextView;

    .line 84
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->textView9:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v3}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->setRootTag(Landroid/view/View;)V

    .line 87
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v1}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->mCallback9:Landroid/view/View$OnClickListener;

    .line 88
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->mCallback8:Landroid/view/View$OnClickListener;

    .line 89
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;
    .locals 1

    .line 219
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;
    .locals 2

    const-string v0, "layout/activity_salary_tariff_instruction_0"

    .line 223
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
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

    .line 226
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;
    .locals 1

    .line 211
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;
    .locals 3

    const v0, 0x7f0c0058

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 215
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;
    .locals 1

    .line 203
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;
    .locals 1

    const v0, 0x7f0c0058

    .line 207
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;

    return-object p0
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 1

    const/4 p2, 0x0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 167
    :pswitch_0
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->mListener:Lru/rocketbank/r2d2/data/binding/tariff/TariffInstructionListener;

    if-eqz p1, :cond_0

    move p2, v0

    :cond_0
    if-eqz p2, :cond_2

    .line 175
    invoke-interface {p1}, Lru/rocketbank/r2d2/data/binding/tariff/TariffInstructionListener;->onDownloadButtonClicked()V

    return-void

    .line 184
    :pswitch_1
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->mListener:Lru/rocketbank/r2d2/data/binding/tariff/TariffInstructionListener;

    if-eqz p1, :cond_1

    move p2, v0

    :cond_1
    if-eqz p2, :cond_2

    .line 192
    invoke-interface {p1}, Lru/rocketbank/r2d2/data/binding/tariff/TariffInstructionListener;->onLinkClicked()V

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

    .line 145
    monitor-enter p0

    .line 146
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 147
    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->mDirtyFlags:J

    .line 148
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x2

    and-long v6, v0, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->button3:Landroid/widget/Button;

    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->mCallback9:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->textView9:Lru/rocketbank/core/widgets/RocketTextView;

    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->mCallback8:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 148
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getListener()Lru/rocketbank/r2d2/data/binding/tariff/TariffInstructionListener;
    .locals 1

    .line 132
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->mListener:Lru/rocketbank/r2d2/data/binding/tariff/TariffInstructionListener;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 104
    monitor-exit p0

    return v0

    .line 106
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

    .line 94
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 95
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->mDirtyFlags:J

    .line 96
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 96
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

.method public setListener(Lru/rocketbank/r2d2/data/binding/tariff/TariffInstructionListener;)V
    .locals 6

    .line 123
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->mListener:Lru/rocketbank/r2d2/data/binding/tariff/TariffInstructionListener;

    .line 124
    monitor-enter p0

    .line 125
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->mDirtyFlags:J

    .line 126
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x37

    .line 127
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->notifyPropertyChanged(I)V

    .line 128
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 126
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

    .line 114
    check-cast p2, Lru/rocketbank/r2d2/data/binding/tariff/TariffInstructionListener;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;->setListener(Lru/rocketbank/r2d2/data/binding/tariff/TariffInstructionListener;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
