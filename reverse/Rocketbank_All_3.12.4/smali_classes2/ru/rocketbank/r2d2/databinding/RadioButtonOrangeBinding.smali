.class public Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;
.super Landroid/databinding/ViewDataBinding;
.source "RadioButtonOrangeBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final button:Lru/rocketbank/core/widgets/RocketRadioButton;

.field private mDirtyFlags:J

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 109
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;->mDirtyFlags:J

    .line 30
    sget-object v1, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x1

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    .line 31
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketRadioButton;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;->button:Lru/rocketbank/core/widgets/RocketRadioButton;

    .line 32
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;->button:Lru/rocketbank/core/widgets/RocketRadioButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketRadioButton;->setTag(Ljava/lang/Object;)V

    .line 33
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;->setRootTag(Landroid/view/View;)V

    .line 35
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;
    .locals 1

    .line 129
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;
    .locals 2

    const-string v0, "layout/radio_button_orange_0"

    .line 133
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
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

    .line 136
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;
    .locals 1

    .line 121
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;
    .locals 3

    const v0, 0x7f0c0192

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 125
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;
    .locals 1

    .line 113
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;
    .locals 1

    const v0, 0x7f0c0192

    .line 117
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;

    return-object p0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 9

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 93
    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;->mDirtyFlags:J

    .line 94
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;->mText:Ljava/lang/String;

    const-wide/16 v5, 0x3

    and-long v7, v0, v5

    cmp-long v0, v7, v2

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;->button:Lru/rocketbank/core/widgets/RocketRadioButton;

    invoke-static {v0, v4}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 94
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 48
    monitor-enter p0

    .line 49
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 50
    monitor-exit p0

    return v0

    .line 52
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

    .line 40
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 41
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;->mDirtyFlags:J

    .line 42
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 42
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

.method public setText(Ljava/lang/String;)V
    .locals 6

    .line 69
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;->mText:Ljava/lang/String;

    .line 70
    monitor-enter p0

    .line 71
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;->mDirtyFlags:J

    .line 72
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x53

    .line 73
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;->notifyPropertyChanged(I)V

    .line 74
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 72
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x53

    if-ne v0, p1, :cond_0

    .line 60
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;->setText(Ljava/lang/String;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
