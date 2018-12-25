.class public Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ActivityNewPassportBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final container:Landroid/support/design/widget/CoordinatorLayout;

.field public final imageStep1:Landroid/support/v7/widget/AppCompatImageView;

.field public final imageStep2:Landroid/support/v7/widget/AppCompatImageView;

.field public final imageStep3:Landroid/support/v7/widget/AppCompatImageView;

.field public final line1:Landroid/view/View;

.field public final line2:Landroid/view/View;

.field private mData:Lru/rocketbank/r2d2/registration/new_passport/NewPassportData;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;

.field public final toolbar:Landroid/support/v7/widget/Toolbar;

.field public final toolbarShadow:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903d8

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903dc

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090103

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    .line 48
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 215
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->mDirtyFlags:J

    .line 49
    sget-object v1, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0x9

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/16 v1, 0x8

    .line 50
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->container:Landroid/support/design/widget/CoordinatorLayout;

    .line 51
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v7/widget/AppCompatImageView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->imageStep1:Landroid/support/v7/widget/AppCompatImageView;

    .line 52
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->imageStep1:Landroid/support/v7/widget/AppCompatImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 53
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v7/widget/AppCompatImageView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->imageStep2:Landroid/support/v7/widget/AppCompatImageView;

    .line 54
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->imageStep2:Landroid/support/v7/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 55
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v7/widget/AppCompatImageView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->imageStep3:Landroid/support/v7/widget/AppCompatImageView;

    .line 56
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->imageStep3:Landroid/support/v7/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 57
    aget-object v0, p1, v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->line1:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->line1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 59
    aget-object v0, p1, v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->line2:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->line2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 61
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 62
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->mboundView0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x6

    .line 63
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    const/4 v0, 0x7

    .line 64
    aget-object p1, p1, v0

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->toolbarShadow:Landroid/view/View;

    .line 65
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->setRootTag(Landroid/view/View;)V

    .line 67
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;
    .locals 1

    .line 235
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;
    .locals 2

    const-string v0, "layout/activity_new_passport_0"

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
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

    .line 242
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;
    .locals 1

    .line 227
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;
    .locals 3

    const v0, 0x7f0c0046

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 231
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;
    .locals 1

    .line 219
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;
    .locals 1

    const v0, 0x7f0c0046

    .line 223
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;

    return-object p0
.end method

.method private onChangeDataStep(Landroid/databinding/ObservableInt;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 123
    monitor-enter p0

    .line 124
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->mDirtyFlags:J

    .line 125
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
    .locals 19

    move-object/from16 v1, p0

    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 136
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->mDirtyFlags:J

    .line 137
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->mData:Lru/rocketbank/r2d2/registration/new_passport/NewPassportData;

    const-wide/16 v7, 0x7

    and-long v9, v2, v7

    cmp-long v11, v9, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v11, :cond_b

    if-eqz v6, :cond_0

    .line 155
    invoke-virtual {v6}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportData;->getStep()Landroid/databinding/ObservableInt;

    move-result-object v11

    goto :goto_0

    :cond_0
    move-object v11, v12

    .line 157
    :goto_0
    invoke-virtual {v1, v13, v11}, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v11, :cond_1

    .line 162
    invoke-virtual {v11}, Landroid/databinding/ObservableInt;->get()I

    move-result v11

    goto :goto_1

    :cond_1
    move v11, v13

    :goto_1
    const/4 v14, 0x1

    const/4 v15, 0x2

    if-lt v11, v15, :cond_2

    move/from16 v16, v14

    goto :goto_2

    :cond_2
    move/from16 v16, v13

    :goto_2
    if-le v11, v15, :cond_3

    move v13, v14

    :cond_3
    cmp-long v17, v9, v4

    if-eqz v17, :cond_5

    if-eqz v16, :cond_4

    const-wide/16 v9, 0x10

    or-long v17, v2, v9

    goto :goto_3

    :cond_4
    const-wide/16 v9, 0x8

    or-long v17, v2, v9

    goto :goto_3

    :cond_5
    move-wide/from16 v17, v2

    :goto_3
    and-long v2, v17, v7

    cmp-long v9, v2, v4

    if-eqz v9, :cond_7

    if-eqz v13, :cond_6

    const-wide/16 v2, 0x40

    or-long v9, v17, v2

    :goto_4
    move-wide v2, v9

    goto :goto_5

    :cond_6
    const-wide/16 v2, 0x20

    or-long v9, v17, v2

    goto :goto_4

    :cond_7
    move-wide/from16 v2, v17

    :goto_5
    if-eqz v6, :cond_8

    .line 188
    invoke-virtual {v6, v15, v11}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportData;->selectImageForStep(II)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 190
    invoke-virtual {v6, v14, v11}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportData;->selectImageForStep(II)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const/4 v12, 0x3

    .line 192
    invoke-virtual {v6, v12, v11}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportData;->selectImageForStep(II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v12, v9

    goto :goto_6

    :cond_8
    move-object v6, v12

    move-object v10, v6

    :goto_6
    const v9, 0x7f060095

    const v11, 0x7f060200

    if-eqz v16, :cond_9

    .line 197
    iget-object v14, v1, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->line1:Landroid/view/View;

    invoke-static {v14, v11}, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->getColorFromResource(Landroid/view/View;I)I

    move-result v14

    goto :goto_7

    :cond_9
    iget-object v14, v1, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->line1:Landroid/view/View;

    invoke-static {v14, v9}, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->getColorFromResource(Landroid/view/View;I)I

    move-result v14

    :goto_7
    if-eqz v13, :cond_a

    .line 199
    iget-object v9, v1, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->line2:Landroid/view/View;

    invoke-static {v9, v11}, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->getColorFromResource(Landroid/view/View;I)I

    move-result v9

    :goto_8
    move v13, v9

    goto :goto_9

    :cond_a
    iget-object v11, v1, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->line2:Landroid/view/View;

    invoke-static {v11, v9}, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->getColorFromResource(Landroid/view/View;I)I

    move-result v9

    goto :goto_8

    :goto_9
    move v9, v13

    move v13, v14

    goto :goto_a

    :cond_b
    move-object v6, v12

    move-object v10, v6

    move v9, v13

    :goto_a
    and-long v14, v2, v7

    cmp-long v2, v14, v4

    if-eqz v2, :cond_c

    .line 205
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->imageStep1:Landroid/support/v7/widget/AppCompatImageView;

    invoke-static {v2, v10}, Lru/rocketbank/r2d2/widgets/BindingViewAdapter;->setDrawable(Landroid/support/v7/widget/AppCompatImageView;Landroid/graphics/drawable/Drawable;)V

    .line 206
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->imageStep2:Landroid/support/v7/widget/AppCompatImageView;

    invoke-static {v2, v12}, Lru/rocketbank/r2d2/widgets/BindingViewAdapter;->setDrawable(Landroid/support/v7/widget/AppCompatImageView;Landroid/graphics/drawable/Drawable;)V

    .line 207
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->imageStep3:Landroid/support/v7/widget/AppCompatImageView;

    invoke-static {v2, v6}, Lru/rocketbank/r2d2/widgets/BindingViewAdapter;->setDrawable(Landroid/support/v7/widget/AppCompatImageView;Landroid/graphics/drawable/Drawable;)V

    .line 208
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->line1:Landroid/view/View;

    invoke-static {v13}, Landroid/databinding/adapters/Converters;->convertColorToDrawable(I)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 209
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->line2:Landroid/view/View;

    invoke-static {v9}, Landroid/databinding/adapters/Converters;->convertColorToDrawable(I)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_c
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 137
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getData()Lru/rocketbank/r2d2/registration/new_passport/NewPassportData;
    .locals 1

    .line 110
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->mData:Lru/rocketbank/r2d2/registration/new_passport/NewPassportData;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 82
    monitor-exit p0

    return v0

    .line 84
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

    .line 72
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 73
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->mDirtyFlags:J

    .line 74
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 74
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 117
    :cond_0
    check-cast p2, Landroid/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->onChangeDataStep(Landroid/databinding/ObservableInt;I)Z

    move-result p1

    return p1
.end method

.method public setData(Lru/rocketbank/r2d2/registration/new_passport/NewPassportData;)V
    .locals 6

    .line 101
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->mData:Lru/rocketbank/r2d2/registration/new_passport/NewPassportData;

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->mDirtyFlags:J

    .line 104
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 105
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->notifyPropertyChanged(I)V

    .line 106
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 104
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x18

    if-ne v0, p1, :cond_0

    .line 92
    check-cast p2, Lru/rocketbank/r2d2/registration/new_passport/NewPassportData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;->setData(Lru/rocketbank/r2d2/registration/new_passport/NewPassportData;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
