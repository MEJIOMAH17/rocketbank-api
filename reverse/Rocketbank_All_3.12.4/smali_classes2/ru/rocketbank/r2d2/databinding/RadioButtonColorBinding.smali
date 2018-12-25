.class public Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;
.super Landroid/databinding/ViewDataBinding;
.source "RadioButtonColorBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final button:Lru/rocketbank/core/widgets/RocketRadioButton;

.field public final corner:Landroid/widget/ImageView;

.field public final imageView:Landroid/widget/ImageView;

.field private mColor:Lru/rocketbank/core/model/shop/Color;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09010b

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 151
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->mDirtyFlags:J

    .line 37
    sget-object v1, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x4

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x2

    .line 38
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketRadioButton;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->button:Lru/rocketbank/core/widgets/RocketRadioButton;

    .line 39
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->button:Lru/rocketbank/core/widgets/RocketRadioButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketRadioButton;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x3

    .line 40
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->corner:Landroid/widget/ImageView;

    const/4 v1, 0x1

    .line 41
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->imageView:Landroid/widget/ImageView;

    .line 42
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 43
    aget-object p1, p1, v0

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->mboundView0:Landroid/widget/FrameLayout;

    .line 44
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->mboundView0:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->setRootTag(Landroid/view/View;)V

    .line 47
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;
    .locals 1

    .line 171
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;
    .locals 2

    const-string v0, "layout/radio_button_color_0"

    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
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

    .line 178
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;
    .locals 1

    .line 163
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;
    .locals 3

    const v0, 0x7f0c0191

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 167
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;
    .locals 1

    .line 155
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;
    .locals 1

    const v0, 0x7f0c0191

    .line 159
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;

    return-object p0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 14

    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 105
    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->mDirtyFlags:J

    .line 106
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 110
    iget-object v7, p0, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->mColor:Lru/rocketbank/core/model/shop/Color;

    const-wide/16 v8, 0x3

    and-long v10, v0, v8

    cmp-long v12, v10, v2

    if-eqz v12, :cond_4

    if-eqz v7, :cond_0

    .line 118
    invoke-virtual {v7}, Lru/rocketbank/core/model/shop/Color;->getAvailable()Z

    move-result v4

    .line 120
    invoke-virtual {v7}, Lru/rocketbank/core/model/shop/Color;->getColor()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    :cond_0
    cmp-long v5, v10, v2

    if-eqz v5, :cond_2

    if-eqz v4, :cond_1

    const-wide/16 v10, 0x8

    or-long v12, v0, v10

    :goto_0
    move-wide v0, v12

    goto :goto_1

    :cond_1
    const-wide/16 v10, 0x4

    or-long v12, v0, v10

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    const v5, 0x3e19999a    # 0.15f

    :cond_4
    :goto_2
    and-long v10, v0, v8

    cmp-long v0, v10, v2

    if-eqz v0, :cond_5

    .line 139
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->button:Lru/rocketbank/core/widgets/RocketRadioButton;

    invoke-virtual {v0, v4}, Lru/rocketbank/core/widgets/RocketRadioButton;->setEnabled(Z)V

    .line 140
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->imageView:Landroid/widget/ImageView;

    invoke-static {v0, v6}, Lru/rocketbank/r2d2/utils/BindingUtils;->colorCircle(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->getBuildSdkInt()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    .line 144
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    .line 106
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getColor()Lru/rocketbank/core/model/shop/Color;
    .locals 1

    .line 90
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->mColor:Lru/rocketbank/core/model/shop/Color;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 62
    monitor-exit p0

    return v0

    .line 64
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

    .line 52
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 53
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->mDirtyFlags:J

    .line 54
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 54
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

.method public setColor(Lru/rocketbank/core/model/shop/Color;)V
    .locals 6

    .line 81
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->mColor:Lru/rocketbank/core/model/shop/Color;

    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->mDirtyFlags:J

    .line 84
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x11

    .line 85
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->notifyPropertyChanged(I)V

    .line 86
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 84
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x11

    if-ne v0, p1, :cond_0

    .line 72
    check-cast p2, Lru/rocketbank/core/model/shop/Color;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->setColor(Lru/rocketbank/core/model/shop/Color;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
