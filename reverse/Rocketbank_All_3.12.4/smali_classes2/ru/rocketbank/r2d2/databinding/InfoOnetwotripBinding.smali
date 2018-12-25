.class public Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;
.super Landroid/databinding/ViewDataBinding;
.source "InfoOnetwotripBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final fromOnetwotrip:Lru/rocketbank/core/widgets/RocketTextView;

.field public final fromRocketbank:Lru/rocketbank/core/widgets/RocketTextView;

.field public final image3:Landroid/widget/ImageView;

.field public final image4:Landroid/widget/ImageView;

.field public final image5:Landroid/widget/ImageView;

.field public final line:Landroid/view/View;

.field private mData:Lru/rocketbank/core/model/dto/RocketRoublesInfo;

.field private mDirtyFlags:J

.field public final onetwotrip:Landroid/support/constraint/ConstraintLayout;

.field public final startGetTripcoins:Lru/rocketbank/core/widgets/RocketTextView;

.field public final text1:Lru/rocketbank/core/widgets/RocketTextView;

.field public final text2:Lru/rocketbank/core/widgets/RocketTextView;

.field public final text3:Lru/rocketbank/core/widgets/RocketTextView;

.field public final text4:Lru/rocketbank/core/widgets/RocketTextView;

.field public final text5:Lru/rocketbank/core/widgets/RocketTextView;

.field public final text6:Lru/rocketbank/core/widgets/RocketTextView;

.field public final text7:Lru/rocketbank/core/widgets/RocketTextView;

.field public final text8:Lru/rocketbank/core/widgets/RocketTextView;

.field public final tripcoins:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903ef

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09021a

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901c8

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901c9

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901ca

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 336
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->mDirtyFlags:J

    .line 67
    sget-object v1, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0x11

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x4

    .line 68
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->fromOnetwotrip:Lru/rocketbank/core/widgets/RocketTextView;

    .line 69
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->fromOnetwotrip:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 70
    aget-object v1, p1, v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->fromRocketbank:Lru/rocketbank/core/widgets/RocketTextView;

    .line 71
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->fromRocketbank:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0xe

    .line 72
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->image3:Landroid/widget/ImageView;

    const/16 v1, 0xf

    .line 73
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->image4:Landroid/widget/ImageView;

    const/16 v1, 0x10

    .line 74
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->image5:Landroid/widget/ImageView;

    const/16 v1, 0xd

    .line 75
    aget-object v1, p1, v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->line:Landroid/view/View;

    .line 76
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->onetwotrip:Landroid/support/constraint/ConstraintLayout;

    .line 77
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->onetwotrip:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/support/constraint/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x8

    .line 78
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->startGetTripcoins:Lru/rocketbank/core/widgets/RocketTextView;

    .line 79
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->startGetTripcoins:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 80
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->text1:Lru/rocketbank/core/widgets/RocketTextView;

    .line 81
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->text1:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 82
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->text2:Lru/rocketbank/core/widgets/RocketTextView;

    .line 83
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->text2:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 84
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->text3:Lru/rocketbank/core/widgets/RocketTextView;

    .line 85
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->text3:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x6

    .line 86
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->text4:Lru/rocketbank/core/widgets/RocketTextView;

    .line 87
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->text4:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x7

    .line 88
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->text5:Lru/rocketbank/core/widgets/RocketTextView;

    .line 89
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->text5:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x9

    .line 90
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->text6:Lru/rocketbank/core/widgets/RocketTextView;

    .line 91
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->text6:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xa

    .line 92
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->text7:Lru/rocketbank/core/widgets/RocketTextView;

    .line 93
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->text7:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xb

    .line 94
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->text8:Lru/rocketbank/core/widgets/RocketTextView;

    .line 95
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->text8:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xc

    .line 96
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->tripcoins:Lru/rocketbank/core/widgets/RocketTextView;

    .line 97
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->setRootTag(Landroid/view/View;)V

    .line 99
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;
    .locals 1

    .line 356
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;
    .locals 2

    const-string v0, "layout/info_onetwotrip_0"

    .line 360
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
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

    .line 363
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;
    .locals 1

    .line 348
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;
    .locals 3

    const v0, 0x7f0c010f

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 352
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;
    .locals 1

    .line 340
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;
    .locals 1

    const v0, 0x7f0c010f

    .line 344
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;

    return-object p0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 37

    move-object/from16 v1, p0

    .line 155
    monitor-enter p0

    .line 156
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 157
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->mDirtyFlags:J

    .line 158
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->mData:Lru/rocketbank/core/model/dto/RocketRoublesInfo;

    const-wide/16 v7, 0x3

    and-long v9, v2, v7

    cmp-long v11, v9, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v11, :cond_21

    if-eqz v6, :cond_0

    .line 191
    invoke-virtual {v6}, Lru/rocketbank/core/model/dto/RocketRoublesInfo;->getText6()Ljava/lang/String;

    move-result-object v12

    .line 193
    invoke-virtual {v6}, Lru/rocketbank/core/model/dto/RocketRoublesInfo;->getText2()Ljava/lang/String;

    move-result-object v11

    .line 195
    invoke-virtual {v6}, Lru/rocketbank/core/model/dto/RocketRoublesInfo;->getText7()Ljava/lang/String;

    move-result-object v14

    .line 197
    invoke-virtual {v6}, Lru/rocketbank/core/model/dto/RocketRoublesInfo;->getText3()Ljava/lang/String;

    move-result-object v15

    .line 199
    invoke-virtual {v6}, Lru/rocketbank/core/model/dto/RocketRoublesInfo;->getText8()Ljava/lang/String;

    move-result-object v16

    .line 201
    invoke-virtual {v6}, Lru/rocketbank/core/model/dto/RocketRoublesInfo;->getText4()Ljava/lang/String;

    move-result-object v17

    .line 203
    invoke-virtual {v6}, Lru/rocketbank/core/model/dto/RocketRoublesInfo;->getText5()Ljava/lang/String;

    move-result-object v18

    .line 205
    invoke-virtual {v6}, Lru/rocketbank/core/model/dto/RocketRoublesInfo;->getText1()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v12

    move-object v11, v6

    move-object v14, v11

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    :goto_0
    const/16 v19, 0x1

    if-eqz v12, :cond_1

    move/from16 v20, v19

    goto :goto_1

    :cond_1
    move/from16 v20, v13

    :goto_1
    if-eqz v11, :cond_2

    move/from16 v21, v19

    goto :goto_2

    :cond_2
    move/from16 v21, v13

    :goto_2
    if-eqz v14, :cond_3

    move/from16 v22, v19

    goto :goto_3

    :cond_3
    move/from16 v22, v13

    :goto_3
    if-eqz v15, :cond_4

    move/from16 v23, v19

    goto :goto_4

    :cond_4
    move/from16 v23, v13

    :goto_4
    if-eqz v16, :cond_5

    move/from16 v24, v19

    goto :goto_5

    :cond_5
    move/from16 v24, v13

    :goto_5
    if-eqz v17, :cond_6

    move/from16 v25, v19

    goto :goto_6

    :cond_6
    move/from16 v25, v13

    :goto_6
    if-eqz v18, :cond_7

    move/from16 v26, v19

    goto :goto_7

    :cond_7
    move/from16 v26, v13

    :goto_7
    if-eqz v6, :cond_8

    goto :goto_8

    :cond_8
    move/from16 v19, v13

    :goto_8
    cmp-long v27, v9, v4

    if-eqz v27, :cond_a

    if-eqz v20, :cond_9

    const-wide/32 v9, 0x20000

    or-long v27, v2, v9

    goto :goto_9

    :cond_9
    const-wide/32 v9, 0x10000

    or-long v27, v2, v9

    goto :goto_9

    :cond_a
    move-wide/from16 v27, v2

    :goto_9
    and-long v2, v27, v7

    cmp-long v9, v2, v4

    if-eqz v9, :cond_c

    if-eqz v21, :cond_b

    const-wide/16 v2, 0x8

    or-long v9, v27, v2

    goto :goto_a

    :cond_b
    const-wide/16 v2, 0x4

    or-long v9, v27, v2

    goto :goto_a

    :cond_c
    move-wide/from16 v9, v27

    :goto_a
    and-long v2, v9, v7

    cmp-long v27, v2, v4

    if-eqz v27, :cond_e

    if-eqz v22, :cond_d

    const-wide/16 v2, 0x2000

    or-long v27, v9, v2

    goto :goto_b

    :cond_d
    const-wide/16 v2, 0x1000

    or-long v27, v9, v2

    goto :goto_b

    :cond_e
    move-wide/from16 v27, v9

    :goto_b
    and-long v2, v27, v7

    cmp-long v9, v2, v4

    if-eqz v9, :cond_10

    if-eqz v23, :cond_f

    const-wide/32 v2, 0x8000

    or-long v9, v27, v2

    goto :goto_c

    :cond_f
    const-wide/16 v2, 0x4000

    or-long v9, v27, v2

    goto :goto_c

    :cond_10
    move-wide/from16 v9, v27

    :goto_c
    and-long v2, v9, v7

    cmp-long v27, v2, v4

    if-eqz v27, :cond_12

    if-eqz v24, :cond_11

    const-wide/16 v2, 0x20

    or-long v27, v9, v2

    goto :goto_d

    :cond_11
    const-wide/16 v2, 0x10

    or-long v27, v9, v2

    goto :goto_d

    :cond_12
    move-wide/from16 v27, v9

    :goto_d
    and-long v2, v27, v7

    cmp-long v9, v2, v4

    if-eqz v9, :cond_14

    if-eqz v25, :cond_13

    const-wide/16 v2, 0x800

    or-long v9, v27, v2

    goto :goto_e

    :cond_13
    const-wide/16 v2, 0x400

    or-long v9, v27, v2

    goto :goto_e

    :cond_14
    move-wide/from16 v9, v27

    :goto_e
    and-long v2, v9, v7

    cmp-long v27, v2, v4

    if-eqz v27, :cond_16

    if-eqz v26, :cond_15

    const-wide/16 v2, 0x80

    or-long v27, v9, v2

    goto :goto_f

    :cond_15
    const-wide/16 v2, 0x40

    or-long v27, v9, v2

    goto :goto_f

    :cond_16
    move-wide/from16 v27, v9

    :goto_f
    and-long v2, v27, v7

    cmp-long v9, v2, v4

    if-eqz v9, :cond_18

    if-eqz v19, :cond_17

    const-wide/16 v2, 0x200

    or-long v9, v27, v2

    :goto_10
    move-wide v2, v9

    goto :goto_11

    :cond_17
    const-wide/16 v2, 0x100

    or-long v9, v27, v2

    goto :goto_10

    :cond_18
    move-wide/from16 v2, v27

    :goto_11
    const/16 v9, 0x8

    if-eqz v20, :cond_19

    move v10, v13

    goto :goto_12

    :cond_19
    move v10, v9

    :goto_12
    if-eqz v21, :cond_1a

    move/from16 v20, v13

    goto :goto_13

    :cond_1a
    move/from16 v20, v9

    :goto_13
    if-eqz v22, :cond_1b

    move/from16 v21, v13

    goto :goto_14

    :cond_1b
    move/from16 v21, v9

    :goto_14
    if-eqz v23, :cond_1c

    move/from16 v22, v13

    goto :goto_15

    :cond_1c
    move/from16 v22, v9

    :goto_15
    if-eqz v24, :cond_1d

    move/from16 v23, v13

    goto :goto_16

    :cond_1d
    move/from16 v23, v9

    :goto_16
    if-eqz v25, :cond_1e

    move/from16 v24, v13

    goto :goto_17

    :cond_1e
    move/from16 v24, v9

    :goto_17
    if-eqz v26, :cond_1f

    move/from16 v25, v13

    goto :goto_18

    :cond_1f
    move/from16 v25, v9

    :goto_18
    if-eqz v19, :cond_20

    goto :goto_19

    :cond_20
    move v13, v9

    :goto_19
    move-object/from16 v32, v12

    move-object/from16 v33, v14

    move-object/from16 v35, v16

    move-object/from16 v14, v17

    move-object/from16 v30, v18

    move/from16 v9, v20

    move/from16 v34, v21

    move/from16 v36, v23

    move/from16 v29, v24

    move/from16 v31, v25

    move-object v12, v6

    move v6, v13

    move/from16 v13, v22

    goto :goto_1a

    :cond_21
    move-object v11, v12

    move-object v14, v11

    move-object v15, v14

    move-object/from16 v30, v15

    move-object/from16 v32, v30

    move-object/from16 v33, v32

    move-object/from16 v35, v33

    move v6, v13

    move v9, v6

    move v10, v9

    move/from16 v29, v10

    move/from16 v31, v29

    move/from16 v34, v31

    move/from16 v36, v34

    :goto_1a
    and-long v16, v2, v7

    cmp-long v2, v16, v4

    if-eqz v2, :cond_22

    .line 312
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->fromOnetwotrip:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v13}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 313
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->fromRocketbank:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v6}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 314
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->startGetTripcoins:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v10}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 315
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->text1:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v12}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 316
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->text1:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v6}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 317
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->text2:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v11}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 318
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->text2:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v9}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 319
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->text3:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v15}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 320
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->text3:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v13}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 321
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->text4:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v14}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 322
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->text4:Lru/rocketbank/core/widgets/RocketTextView;

    move/from16 v13, v29

    invoke-virtual {v2, v13}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 323
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->text5:Lru/rocketbank/core/widgets/RocketTextView;

    move-object/from16 v12, v30

    invoke-static {v2, v12}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 324
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->text5:Lru/rocketbank/core/widgets/RocketTextView;

    move/from16 v13, v31

    invoke-virtual {v2, v13}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 325
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->text6:Lru/rocketbank/core/widgets/RocketTextView;

    move-object/from16 v12, v32

    invoke-static {v2, v12}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 326
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->text6:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v10}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 327
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->text7:Lru/rocketbank/core/widgets/RocketTextView;

    move-object/from16 v14, v33

    invoke-static {v2, v14}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 328
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->text7:Lru/rocketbank/core/widgets/RocketTextView;

    move/from16 v13, v34

    invoke-virtual {v2, v13}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 329
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->text8:Lru/rocketbank/core/widgets/RocketTextView;

    move-object/from16 v12, v35

    invoke-static {v2, v12}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 330
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->text8:Lru/rocketbank/core/widgets/RocketTextView;

    move/from16 v13, v36

    invoke-virtual {v2, v13}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    :cond_22
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 158
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getData()Lru/rocketbank/core/model/dto/RocketRoublesInfo;
    .locals 1

    .line 142
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->mData:Lru/rocketbank/core/model/dto/RocketRoublesInfo;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 114
    monitor-exit p0

    return v0

    .line 116
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

    .line 104
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 105
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->mDirtyFlags:J

    .line 106
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->requestRebind()V

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

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setData(Lru/rocketbank/core/model/dto/RocketRoublesInfo;)V
    .locals 6

    .line 133
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->mData:Lru/rocketbank/core/model/dto/RocketRoublesInfo;

    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->mDirtyFlags:J

    .line 136
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 137
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->notifyPropertyChanged(I)V

    .line 138
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 136
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

    .line 124
    check-cast p2, Lru/rocketbank/core/model/dto/RocketRoublesInfo;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;->setData(Lru/rocketbank/core/model/dto/RocketRoublesInfo;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
