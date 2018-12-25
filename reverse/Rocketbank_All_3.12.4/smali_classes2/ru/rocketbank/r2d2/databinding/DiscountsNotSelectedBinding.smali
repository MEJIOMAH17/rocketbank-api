.class public Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;
.super Landroid/databinding/ViewDataBinding;
.source "DiscountsNotSelectedBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final cardBody:Landroid/support/v7/widget/CardView;

.field public final confirm:Lru/rocketbank/core/widgets/RocketTextView;

.field public final headerText:Lru/rocketbank/core/widgets/RocketTextView;

.field private mData:Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;

.field private mDirtyFlags:J

.field private mListener:Lru/rocketbank/r2d2/data/binding/discount/SelectedDiscountsListener;

.field private mListenerOnDiscountsSelectAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding$OnClickListenerImpl;

.field public final merchantContainer:Landroid/widget/LinearLayout;

.field public final selectionStatus:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090253

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x4

    .line 41
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 308
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->mDirtyFlags:J

    .line 42
    sget-object v1, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x5

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    .line 43
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/v7/widget/CardView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->cardBody:Landroid/support/v7/widget/CardView;

    .line 44
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->cardBody:Landroid/support/v7/widget/CardView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/CardView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x3

    .line 45
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->confirm:Lru/rocketbank/core/widgets/RocketTextView;

    .line 46
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->confirm:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 47
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->headerText:Lru/rocketbank/core/widgets/RocketTextView;

    .line 48
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->headerText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 49
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->merchantContainer:Landroid/widget/LinearLayout;

    const/4 v0, 0x2

    .line 50
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->selectionStatus:Lru/rocketbank/core/widgets/RocketTextView;

    .line 51
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->selectionStatus:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->setRootTag(Landroid/view/View;)V

    .line 54
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;
    .locals 1

    .line 328
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;
    .locals 2

    const-string v0, "layout/discounts_not_selected_0"

    .line 332
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
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

    .line 335
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;
    .locals 1

    .line 320
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;
    .locals 3

    const v0, 0x7f0c00a8

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 324
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;
    .locals 1

    .line 312
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;
    .locals 1

    const v0, 0x7f0c00a8

    .line 316
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;

    return-object p0
.end method

.method private onChangeDataConfirmEnabled(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 158
    monitor-enter p0

    .line 159
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->mDirtyFlags:J

    .line 160
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

.method private onChangeDataSelectionStatus(Landroid/databinding/ObservableField;I)Z
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

    .line 149
    monitor-enter p0

    .line 150
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->mDirtyFlags:J

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

.method private onChangeDataSelectionTextVisibility(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 140
    monitor-enter p0

    .line 141
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->mDirtyFlags:J

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

.method private onChangeDataTitle(Landroid/databinding/ObservableField;I)Z
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
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->mDirtyFlags:J

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
.method protected executeBindings()V
    .locals 25

    move-object/from16 v1, p0

    .line 169
    monitor-enter p0

    .line 170
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 171
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->mDirtyFlags:J

    .line 172
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->mListener:Lru/rocketbank/r2d2/data/binding/discount/SelectedDiscountsListener;

    .line 179
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->mData:Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;

    const-wide/16 v8, 0x50

    and-long v10, v2, v8

    cmp-long v12, v10, v4

    if-eqz v12, :cond_1

    if-eqz v6, :cond_1

    .line 192
    iget-object v11, v1, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->mListenerOnDiscountsSelectAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding$OnClickListenerImpl;

    if-nez v11, :cond_0

    new-instance v11, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding$OnClickListenerImpl;

    invoke-direct {v11}, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding$OnClickListenerImpl;-><init>()V

    iput-object v11, v1, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->mListenerOnDiscountsSelectAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding$OnClickListenerImpl;

    goto :goto_0

    :cond_0
    iget-object v11, v1, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->mListenerOnDiscountsSelectAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding$OnClickListenerImpl;

    :goto_0
    invoke-virtual {v11, v6}, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding$OnClickListenerImpl;->setValue(Lru/rocketbank/r2d2/data/binding/discount/SelectedDiscountsListener;)Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding$OnClickListenerImpl;

    move-result-object v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    const-wide/16 v11, 0x6f

    and-long v13, v2, v11

    cmp-long v11, v13, v4

    const-wide/16 v12, 0x68

    const-wide/16 v14, 0x64

    const-wide/16 v16, 0x62

    const-wide/16 v18, 0x61

    const/4 v10, 0x0

    if-eqz v11, :cond_e

    and-long v21, v2, v18

    cmp-long v11, v21, v4

    if-eqz v11, :cond_3

    if-eqz v7, :cond_2

    .line 202
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;->getTitle()Landroid/databinding/ObservableField;

    move-result-object v11

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    .line 204
    :goto_2
    invoke-virtual {v1, v10, v11}, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v11, :cond_3

    .line 209
    invoke-virtual {v11}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    :goto_3
    and-long v21, v2, v16

    cmp-long v23, v21, v4

    if-eqz v23, :cond_9

    if-eqz v7, :cond_4

    .line 216
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;->getSelectionTextVisibility()Landroid/databinding/ObservableBoolean;

    move-result-object v23

    move-object/from16 v10, v23

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    :goto_4
    const/4 v8, 0x1

    .line 218
    invoke-virtual {v1, v8, v10}, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v10, :cond_5

    .line 223
    invoke-virtual {v10}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v10

    goto :goto_5

    :cond_5
    const/4 v10, 0x0

    :goto_5
    cmp-long v8, v21, v4

    if-eqz v8, :cond_7

    if-eqz v10, :cond_6

    const-wide/16 v8, 0x100

    or-long v21, v2, v8

    goto :goto_6

    :cond_6
    const-wide/16 v8, 0x80

    or-long v21, v2, v8

    goto :goto_6

    :cond_7
    move-wide/from16 v21, v2

    :goto_6
    if-eqz v10, :cond_8

    const/4 v10, 0x0

    goto :goto_7

    :cond_8
    const/16 v10, 0x8

    :goto_7
    move-wide/from16 v2, v21

    goto :goto_8

    :cond_9
    const/4 v10, 0x0

    :goto_8
    and-long v8, v2, v14

    cmp-long v21, v8, v4

    if-eqz v21, :cond_b

    if-eqz v7, :cond_a

    .line 242
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;->getSelectionStatus()Landroid/databinding/ObservableField;

    move-result-object v8

    goto :goto_9

    :cond_a
    const/4 v8, 0x0

    :goto_9
    const/4 v9, 0x2

    .line 244
    invoke-virtual {v1, v9, v8}, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v8, :cond_b

    .line 249
    invoke-virtual {v8}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_a

    :cond_b
    const/4 v8, 0x0

    :goto_a
    and-long v21, v2, v12

    cmp-long v9, v21, v4

    if-eqz v9, :cond_d

    if-eqz v7, :cond_c

    .line 256
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;->getConfirmEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v7

    goto :goto_b

    :cond_c
    const/4 v7, 0x0

    :goto_b
    const/4 v9, 0x3

    .line 258
    invoke-virtual {v1, v9, v7}, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_d

    .line 263
    invoke-virtual {v7}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v7

    goto :goto_c

    :cond_d
    const/4 v7, 0x0

    goto :goto_c

    :cond_e
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_c
    and-long v20, v2, v12

    cmp-long v9, v20, v4

    if-eqz v9, :cond_f

    .line 271
    iget-object v9, v1, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->confirm:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v9, v7}, Lru/rocketbank/core/widgets/RocketTextView;->setEnabled(Z)V

    :cond_f
    const-wide/16 v12, 0x50

    and-long v20, v2, v12

    cmp-long v7, v20, v4

    if-eqz v7, :cond_10

    .line 276
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->confirm:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v7, v6}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    and-long v6, v2, v18

    cmp-long v9, v6, v4

    if-eqz v9, :cond_11

    .line 281
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->headerText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v6, v11}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_11
    and-long v6, v2, v14

    cmp-long v9, v6, v4

    if-eqz v9, :cond_12

    .line 286
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->selectionStatus:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v6, v8}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_12
    and-long v6, v2, v16

    cmp-long v2, v6, v4

    if-eqz v2, :cond_13

    .line 291
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->selectionStatus:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v10}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    :cond_13
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 172
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getData()Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;
    .locals 1

    .line 112
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->mData:Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;

    return-object v0
.end method

.method public getListener()Lru/rocketbank/r2d2/data/binding/discount/SelectedDiscountsListener;
    .locals 1

    .line 100
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->mListener:Lru/rocketbank/r2d2/data/binding/discount/SelectedDiscountsListener;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 67
    monitor-enter p0

    .line 68
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 69
    monitor-exit p0

    return v0

    .line 71
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

    .line 59
    monitor-enter p0

    const-wide/16 v0, 0x40

    .line 60
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->mDirtyFlags:J

    .line 61
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 61
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
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->onChangeDataConfirmEnabled(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 123
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->onChangeDataSelectionStatus(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 121
    :pswitch_2
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->onChangeDataSelectionTextVisibility(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 119
    :pswitch_3
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->onChangeDataTitle(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setData(Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;)V
    .locals 6

    .line 103
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->mData:Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;

    .line 104
    monitor-enter p0

    .line 105
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x20

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->mDirtyFlags:J

    .line 106
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 107
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->notifyPropertyChanged(I)V

    .line 108
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 106
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setListener(Lru/rocketbank/r2d2/data/binding/discount/SelectedDiscountsListener;)V
    .locals 6

    .line 91
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->mListener:Lru/rocketbank/r2d2/data/binding/discount/SelectedDiscountsListener;

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->mDirtyFlags:J

    .line 94
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x37

    .line 95
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->notifyPropertyChanged(I)V

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

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x37

    if-ne v0, p1, :cond_0

    .line 79
    check-cast p2, Lru/rocketbank/r2d2/data/binding/discount/SelectedDiscountsListener;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->setListener(Lru/rocketbank/r2d2/data/binding/discount/SelectedDiscountsListener;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-ne v0, p1, :cond_1

    .line 82
    check-cast p2, Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;->setData(Lru/rocketbank/r2d2/data/binding/discount/NonSelectedDiscountsData;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
