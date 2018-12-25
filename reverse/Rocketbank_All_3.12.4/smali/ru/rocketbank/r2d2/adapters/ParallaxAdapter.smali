.class public Lru/rocketbank/r2d2/adapters/ParallaxAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ParallaxAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/adapters/ParallaxAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nParallaxAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ParallaxAdapter.kt\nru/rocketbank/r2d2/adapters/ParallaxAdapter\n*L\n1#1,530:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lru/rocketbank/r2d2/adapters/ParallaxAdapter$Companion;

.field public static final NO_POSITION:I = -0x1

.field public static final TAG:Ljava/lang/String; = "PrlAdpt"

.field public static final VIEW_TYPE_BAR_CHART:I = 0x4

.field public static final VIEW_TYPE_DELIMITER:I = 0x1

.field public static final VIEW_TYPE_HEADER:I = 0x0

.field public static final VIEW_TYPE_IMAGE_ITEM_CLICK:I = 0x7

.field public static final VIEW_TYPE_JOINT_ANALYTICS:I = 0x8

.field public static final VIEW_TYPE_LOADING:I = 0x6

.field public static final VIEW_TYPE_OPERATION:I = 0x5

.field public static final VIEW_TYPE_RIGHT_ARROW:I = 0x2

.field public static final VIEW_TYPE_STAT:I = 0x9

.field public static final VIEW_TYPE_SWITCH:I = 0x3

.field public static final VIEW_TYPE_UPPER_CASE_DELIMITER:I = 0xa


# instance fields
.field private appBarLayout:Landroid/view/View;

.field private final dynamicItems:Landroid/support/v7/util/SortedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/SortedList<",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            ">;"
        }
    .end annotation
.end field

.field private equalMethod:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private existsBottom:Z

.field private final headerHeight:I

.field private final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            ">;"
        }
    .end annotation
.end field

.field private onOperationBinder:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private parallaxData:Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;

.field private sortMethod:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final sortedCallback$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "sortedCallback"

    const-string v4, "getSortedCallback()Landroid/support/v7/util/SortedList$Callback;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->Companion:Lru/rocketbank/r2d2/adapters/ParallaxAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;Landroid/view/View;I)V
    .locals 1

    const-string v0, "parallaxData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appBarLayout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->parallaxData:Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;

    iput-object p2, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->appBarLayout:Landroid/view/View;

    iput p3, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->headerHeight:I

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->items:Ljava/util/ArrayList;

    .line 35
    sget-object p1, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortMethod$1;->INSTANCE:Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortMethod$1;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->sortMethod:Lkotlin/jvm/functions/Function2;

    .line 46
    sget-object p1, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$equalMethod$1;->INSTANCE:Lru/rocketbank/r2d2/adapters/ParallaxAdapter$equalMethod$1;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->equalMethod:Lkotlin/jvm/functions/Function2;

    .line 57
    new-instance p1, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;

    invoke-direct {p1, p0}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter$sortedCallback$2;-><init>(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/ExceptionsKt__ExceptionsKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->sortedCallback$delegate:Lkotlin/Lazy;

    .line 101
    new-instance p1, Landroid/support/v7/util/SortedList;

    const-class p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-direct {p0}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->getSortedCallback()Landroid/support/v7/util/SortedList$Callback;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/support/v7/util/SortedList;-><init>(Ljava/lang/Class;Landroid/support/v7/util/SortedList$Callback;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->dynamicItems:Landroid/support/v7/util/SortedList;

    return-void
.end method

.method public static bridge synthetic addAnalytics$default(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 12

    if-eqz p10, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: addAnalytics"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    and-int/lit8 v1, p9, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v5, v2

    goto :goto_0

    :cond_1
    move-object v5, p2

    :goto_0
    and-int/lit8 v1, p9, 0x4

    if-eqz v1, :cond_2

    move-object v6, v2

    goto :goto_1

    :cond_2
    move-object v6, p3

    :goto_1
    and-int/lit8 v1, p9, 0x8

    if-eqz v1, :cond_3

    move-object v7, v2

    goto :goto_2

    :cond_3
    move-object/from16 v7, p4

    :goto_2
    and-int/lit8 v1, p9, 0x10

    if-eqz v1, :cond_4

    move-object v8, v2

    goto :goto_3

    :cond_4
    move-object/from16 v8, p5

    :goto_3
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    move v9, v0

    goto :goto_4

    :cond_5
    move/from16 v9, p6

    :goto_4
    move-object v3, p0

    move-object v4, p1

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    .line 369
    invoke-virtual/range {v3 .. v11}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->addAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static bridge synthetic addStaticItem$default(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;IILjava/lang/Object;)V
    .locals 0

    if-eqz p4, :cond_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: addStaticItem"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, -0x1

    .line 262
    :cond_1
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->addStaticItem(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;I)V

    return-void
.end method

.method private final getSortedCallback()Landroid/support/v7/util/SortedList$Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/util/SortedList$Callback<",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->sortedCallback$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/util/SortedList$Callback;

    return-object v0
.end method


# virtual methods
.method public final addAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Z",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBind"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    new-instance v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsParallaxItem;

    move-object v1, v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsParallaxItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    const/16 p2, 0x8

    .line 373
    invoke-virtual {v0, p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsParallaxItem;->setViewType(I)V

    .line 374
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsParallaxItem;->setTitle(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v0, p7}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsParallaxItem;->setOnSwitch(Lkotlin/jvm/functions/Function3;)V

    .line 376
    invoke-virtual {v0, p8}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsParallaxItem;->setOnBind(Lkotlin/jvm/functions/Function2;)V

    .line 378
    check-cast v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    const/4 p1, 0x0

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->addStaticItem$default(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;IILjava/lang/Object;)V

    return-void
.end method

.method public final addBarChart(Lru/rocketbank/core/widgets/BarChartView$Adapter;)V
    .locals 3

    const-string v0, "barChartAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    new-instance v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;-><init>()V

    const/4 v1, 0x4

    .line 393
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setViewType(I)V

    .line 394
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setBarChartAdapter(Lru/rocketbank/core/widgets/BarChartView$Adapter;)V

    const/4 p1, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 396
    invoke-static {p0, v0, p1, v1, v2}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->addStaticItem$default(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;IILjava/lang/Object;)V

    return-void
.end method

.method public final addBottom()V
    .locals 1

    .line 416
    iget-boolean v0, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->existsBottom:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 417
    iput-boolean v0, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->existsBottom:Z

    :cond_0
    return-void
.end method

.method public final addDelimiter(Ljava/lang/String;)V
    .locals 3

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    new-instance v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;-><init>()V

    const/4 v1, 0x1

    .line 280
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setViewType(I)V

    .line 281
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setTitle(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 283
    invoke-static {p0, v0, p1, v1, v2}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->addStaticItem$default(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;IILjava/lang/Object;)V

    return-void
.end method

.method public final addDynamic(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;)V
    .locals 4

    const-string v0, "parallaxItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->dynamicItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->add(Ljava/lang/Object;)I

    .line 106
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->dynamicItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v1, "PrlAdpt"

    const-string v2, "Update item "

    .line 108
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v1, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->dynamicItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v1, v0, p1}, Landroid/support/v7/util/SortedList;->updateItemAt(ILjava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "PrlAdpt"

    const-string v1, "Create new Item"

    .line 111
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->dynamicItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->add(Ljava/lang/Object;)I

    return-void
.end method

.method public final addDynamicFeedItem(Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 3

    const-string v0, "feedItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    new-instance v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;-><init>()V

    const/4 v1, 0x5

    .line 401
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setViewType(I)V

    .line 402
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/FeedItem;->getOperation()Lru/rocketbank/core/model/AbstractOperation;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lru/rocketbank/core/model/AbstractOperation;->getId()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setId(I)V

    .line 403
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setFeedItem(Lru/rocketbank/core/network/model/FeedItem;)V

    .line 405
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->addDynamic(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;)V

    return-void
.end method

.method public final addItem(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    new-instance v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;-><init>()V

    const/4 v1, 0x2

    .line 321
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setViewType(I)V

    .line 322
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setTitle(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v0, p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setSubtitle(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v0, p3}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setOnClick(Lkotlin/jvm/functions/Function1;)V

    const/4 p1, 0x1

    .line 325
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setHideArrow(Z)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 327
    invoke-static {p0, v0, p1, v1, p2}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->addStaticItem$default(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;IILjava/lang/Object;)V

    return-void
.end method

.method public final addProgress()V
    .locals 0

    return-void
.end method

.method public final addRightArrow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    new-instance v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;-><init>()V

    const/4 v1, 0x2

    .line 332
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setViewType(I)V

    .line 333
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setTitle(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v0, p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setSubtitle(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v0, p3}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setPayload(Ljava/lang/Object;)V

    .line 336
    invoke-virtual {v0, p4}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setOnClick(Lkotlin/jvm/functions/Function1;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 338
    invoke-static {p0, v0, p1, v1, p2}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->addStaticItem$default(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;IILjava/lang/Object;)V

    return-void
.end method

.method public final addRightArrow(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    new-instance v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;-><init>()V

    const/4 v1, 0x2

    .line 311
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setViewType(I)V

    .line 312
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setTitle(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0, p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setSubtitle(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v0, p3}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setOnClick(Lkotlin/jvm/functions/Function1;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 316
    invoke-static {p0, v0, p1, v1, p2}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->addStaticItem$default(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;IILjava/lang/Object;)V

    return-void
.end method

.method public final addRightArrow(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    new-instance v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;-><init>()V

    const/4 v1, 0x2

    .line 302
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setViewType(I)V

    .line 303
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setTitle(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0, p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setOnClick(Lkotlin/jvm/functions/Function1;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 306
    invoke-static {p0, v0, p1, v1, p2}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->addStaticItem$default(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;IILjava/lang/Object;)V

    return-void
.end method

.method public final addRoundImage(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subTitle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    new-instance v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxImagePayload;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxImagePayload;-><init>()V

    .line 288
    invoke-virtual {v0, p3}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxImagePayload;->setImageResId(I)V

    .line 290
    new-instance p3, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-direct {p3}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;-><init>()V

    const/4 v1, 0x7

    .line 291
    invoke-virtual {p3, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setViewType(I)V

    .line 292
    invoke-virtual {p3, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setTitle(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p3, p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setSubtitle(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p3, p4}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setOnClick(Lkotlin/jvm/functions/Function1;)V

    .line 295
    invoke-virtual {p3, v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setPayload(Ljava/lang/Object;)V

    const/4 p1, 0x0

    const/4 p2, 0x2

    const/4 p4, 0x0

    .line 297
    invoke-static {p0, p3, p1, p2, p4}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->addStaticItem$default(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;IILjava/lang/Object;)V

    return-void
.end method

.method public final addStaticItem(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;I)V
    .locals 1

    const-string v0, "parallaxItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 264
    iget-object p2, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 267
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 271
    :goto_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final addStatistics(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "statisticsAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collapsedActionName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullActionName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    new-instance v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;-><init>()V

    const/16 v1, 0x9

    .line 383
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setViewType(I)V

    .line 384
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setPayload(Ljava/lang/Object;)V

    .line 385
    invoke-virtual {v0, p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setTitle(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v0, p3}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setSubtitle(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x2

    const/4 p3, 0x0

    .line 388
    invoke-static {p0, v0, p1, p2, p3}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->addStaticItem$default(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;IILjava/lang/Object;)V

    return-void
.end method

.method public final addSwitch(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subTitle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBind"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    new-instance v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;-><init>()V

    const/4 v1, 0x3

    .line 354
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setViewType(I)V

    .line 355
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setTitle(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v0, p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setSubtitle(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0, p4}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setOnClick(Lkotlin/jvm/functions/Function1;)V

    .line 358
    invoke-virtual {v0, p3}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setOnSwitch(Lkotlin/jvm/functions/Function3;)V

    .line 359
    invoke-virtual {v0, p5}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setOnBind(Lkotlin/jvm/functions/Function2;)V

    const/4 p1, 0x0

    const/4 p2, 0x2

    const/4 p3, 0x0

    .line 361
    invoke-static {p0, v0, p1, p2, p3}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->addStaticItem$default(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;IILjava/lang/Object;)V

    return-void
.end method

.method public final addSwitch(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subTitle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBind"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    .line 345
    invoke-virtual/range {v1 .. v6}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->addSwitch(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final changed(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;)V
    .locals 1

    const-string v0, "parallaxItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 236
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public final clearAll()V
    .locals 2

    .line 250
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 251
    iget-object v1, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 252
    iget-object v1, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x1

    .line 253
    invoke-virtual {p0, v1, v0}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->notifyItemRangeRemoved(II)V

    :cond_0
    return-void
.end method

.method public final clearStatic()V
    .locals 1

    .line 258
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 259
    invoke-virtual {p0}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final getAppBarLayout()Landroid/view/View;
    .locals 1

    .line 26
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->appBarLayout:Landroid/view/View;

    return-object v0
.end method

.method protected final getDynamicItems()Landroid/support/v7/util/SortedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/util/SortedList<",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->dynamicItems:Landroid/support/v7/util/SortedList;

    return-object v0
.end method

.method public final getEqualMethod()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->equalMethod:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getHeaderHeight()I
    .locals 1

    .line 27
    iget v0, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->headerHeight:I

    return v0
.end method

.method public getItem(I)Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 498
    iget-object v1, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 500
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    return-object p1

    :cond_1
    sub-int/2addr p1, v1

    .line 503
    iget-object v1, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->dynamicItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v1}, Landroid/support/v7/util/SortedList;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 504
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->dynamicItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    return-object p1

    :cond_2
    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .line 511
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->dynamicItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v1}, Landroid/support/v7/util/SortedList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 230
    :cond_0
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->getItem(I)Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getViewType()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x6

    return p1
.end method

.method protected final getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getParallaxData()Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;
    .locals 1

    .line 25
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->parallaxData:Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;

    return-object v0
.end method

.method public final getSortMethod()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->sortMethod:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public onBindCustomViewType(Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;II)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 25
    check-cast p1, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->onBindViewHolder(Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;I)V
    .locals 8

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->getItem(I)Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;->setItem(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;)V

    .line 119
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 222
    invoke-virtual {p0, p1, p2, v0}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->onBindCustomViewType(Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;II)V

    goto/16 :goto_f

    .line 186
    :pswitch_0
    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object p2

    .line 187
    check-cast p1, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;

    if-eqz p2, :cond_0

    .line 189
    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getPayload()Ljava/lang/Object;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.r2d2.widgets.recycler.parallax.vh.statistics.StatisticsAdapter"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast v1, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;

    .line 191
    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getSubtitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    .line 192
    :cond_2
    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getTitle()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    const-string p2, ""

    .line 194
    :cond_3
    invoke-virtual {p1, v1, p2, v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;->onBind(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsAdapter;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 156
    :pswitch_1
    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object p2

    check-cast p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsParallaxItem;

    .line 158
    check-cast p1, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder;

    if-eqz p2, :cond_4

    .line 159
    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsParallaxItem;->getOnBind()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0, p2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p2, :cond_5

    .line 161
    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsParallaxItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    :cond_5
    const-string v0, ""

    :cond_6
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder;->setTitle(Ljava/lang/String;)V

    if-eqz p2, :cond_7

    .line 162
    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsParallaxItem;->getOnSwitch()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    goto :goto_0

    :cond_7
    move-object v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder;->onBindActions(Lkotlin/jvm/functions/Function3;)V

    if-eqz p2, :cond_8

    .line 163
    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsParallaxItem;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    move-object v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder;->setName(Ljava/lang/String;)V

    if-eqz p2, :cond_9

    .line 164
    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsParallaxItem;->getAvatar()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_9
    move-object v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder;->setIcon(Ljava/lang/String;)V

    if-eqz p2, :cond_a

    .line 165
    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsParallaxItem;->getStatus()Ljava/lang/String;

    move-result-object v1

    :cond_a
    invoke-virtual {p1, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder;->setStatus(Ljava/lang/String;)V

    return-void

    .line 198
    :pswitch_2
    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object p2

    .line 199
    check-cast p1, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericRoundedImageViewHolder;

    if-eqz p2, :cond_b

    .line 201
    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getPayload()Ljava/lang/Object;

    move-result-object v1

    :cond_b
    if-nez v1, :cond_c

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.r2d2.widgets.recycler.parallax.ParallaxImagePayload"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    check-cast v1, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxImagePayload;

    .line 202
    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericRoundedImageViewHolder;->getBinding()Lru/rocketbank/r2d2/databinding/ParallaxRoundImageItemBinding;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/ParallaxRoundImageItemBinding;->getData()Lru/rocketbank/r2d2/data/binding/parallax/ParallaxRoundItem;

    move-result-object v0

    if-nez v0, :cond_d

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.r2d2.data.binding.parallax.ParallaxRoundItem"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 203
    :cond_d
    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/parallax/ParallaxRoundItem;->getText()Landroid/databinding/ObservableField;

    move-result-object v2

    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 204
    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/parallax/ParallaxRoundItem;->getSubText()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getSubtitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 206
    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericRoundedImageViewHolder;->getBinding()Lru/rocketbank/r2d2/databinding/ParallaxRoundImageItemBinding;

    move-result-object v0

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ParallaxRoundImageItemBinding;->image:Lde/hdodenhof/circleimageview/CircleImageView;

    const-string v2, "operationVH.binding.image"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lde/hdodenhof/circleimageview/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 207
    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericRoundedImageViewHolder;->getBinding()Lru/rocketbank/r2d2/databinding/ParallaxRoundImageItemBinding;

    move-result-object v2

    iget-object v2, v2, Lru/rocketbank/r2d2/databinding/ParallaxRoundImageItemBinding;->image:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 209
    invoke-virtual {v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxImagePayload;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 210
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxImagePayload;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_e
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_3

    .line 212
    :cond_f
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxImagePayload;->getImageResId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 215
    :goto_3
    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getOnClick()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericRoundedImageViewHolder;->onBind(Lkotlin/jvm/functions/Function1;)V

    :pswitch_3
    return-void

    .line 176
    :pswitch_4
    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object p2

    .line 177
    move-object v0, p1

    check-cast v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;

    if-eqz p2, :cond_10

    .line 179
    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getOnBind()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-interface {v1, p2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    if-eqz p2, :cond_22

    .line 181
    iget-object p1, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->onOperationBinder:Lkotlin/jvm/functions/Function2;

    if-eqz p1, :cond_11

    invoke-interface {p1, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    return-void

    .line 169
    :pswitch_5
    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object p2

    .line 170
    move-object v0, p1

    check-cast v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericBarChartViewHolder;

    if-eqz p2, :cond_12

    .line 171
    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getOnBind()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-interface {v2, p2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    if-eqz p2, :cond_13

    .line 172
    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getBarChartAdapter()Lru/rocketbank/core/widgets/BarChartView$Adapter;

    move-result-object v1

    :cond_13
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericBarChartViewHolder;->setAdapter(Lru/rocketbank/core/widgets/BarChartView$Adapter;)V

    return-void

    .line 145
    :pswitch_6
    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object p2

    .line 147
    check-cast p1, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;

    if-eqz p2, :cond_14

    .line 148
    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getOnBind()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-interface {v0, p2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    if-eqz p2, :cond_15

    .line 150
    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_15
    move-object v0, v1

    :goto_4
    if-eqz p2, :cond_16

    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getSubtitle()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_16
    move-object v2, v1

    :goto_5
    invoke-virtual {p1, v0, v2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->setText(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_17

    .line 151
    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getLink()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_17
    move-object v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->setLink(Ljava/lang/String;)V

    if-eqz p2, :cond_18

    .line 152
    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getOnSwitch()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    goto :goto_7

    :cond_18
    move-object v0, v1

    :goto_7
    if-eqz p2, :cond_19

    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getOnClick()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    :cond_19
    invoke-virtual {p1, v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->onBindActions(Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;)V

    return-void

    .line 134
    :pswitch_7
    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object p2

    .line 136
    move-object v2, p1

    check-cast v2, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericRightArrowViewHolder;

    if-eqz p2, :cond_1b

    .line 137
    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1a

    goto :goto_9

    :cond_1a
    :goto_8
    move-object v3, p1

    goto :goto_a

    :cond_1b
    :goto_9
    const-string p1, ""

    goto :goto_8

    :goto_a
    if-eqz p2, :cond_1c

    .line 138
    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getPayload()Ljava/lang/Object;

    move-result-object p1

    goto :goto_b

    :cond_1c
    move-object p1, v1

    :goto_b
    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    if-eqz p2, :cond_1d

    .line 139
    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getSubtitle()Ljava/lang/String;

    move-result-object p1

    move-object v5, p1

    goto :goto_c

    :cond_1d
    move-object v5, v1

    :goto_c
    if-eqz p2, :cond_1e

    .line 140
    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getOnClick()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    :cond_1e
    move-object v6, v1

    if-eqz p2, :cond_1f

    .line 141
    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getHideArrow()Z

    move-result p1

    :goto_d
    move v7, p1

    goto :goto_e

    :cond_1f
    const/4 p1, 0x0

    goto :goto_d

    .line 137
    :goto_e
    invoke-virtual/range {v2 .. v7}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericRightArrowViewHolder;->onBind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Z)V

    return-void

    .line 127
    :pswitch_8
    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object p2

    .line 129
    check-cast p1, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericDelimiterViewHolder;

    if-eqz p2, :cond_20

    .line 130
    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getTitle()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_21

    :cond_20
    const-string p2, ""

    :cond_21
    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericDelimiterViewHolder;->setText(Ljava/lang/String;)V

    return-void

    .line 122
    :pswitch_9
    check-cast p1, Lru/rocketbank/r2d2/widgets/recycler/parallax/HeaderViewHolder;

    .line 123
    iget-object p2, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->appBarLayout:Landroid/view/View;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/HeaderViewHolder;->onBind(Landroid/view/View;)V

    return-void

    :cond_22
    :goto_f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public onCreateCustomViewType(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;
    .locals 1

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    new-instance p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    .line 480
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->onCreateCustomViewType(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    move-result-object p1

    return-object p1

    :pswitch_0
    const p2, 0x7f0c011f

    .line 476
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 477
    new-instance p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticsViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    return-object p2

    :pswitch_1
    const p2, 0x7f0c018c

    .line 456
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 457
    new-instance p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    return-object p2

    .line 441
    :pswitch_2
    invoke-static {v0, p1, v1}, Lru/rocketbank/r2d2/databinding/ParallaxRoundImageItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ParallaxRoundImageItemBinding;

    move-result-object p1

    .line 442
    new-instance p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericRoundedImageViewHolder;

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericRoundedImageViewHolder;-><init>(Lru/rocketbank/r2d2/databinding/ParallaxRoundImageItemBinding;)V

    check-cast p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    return-object p2

    :pswitch_3
    const p2, 0x7f0c00b2

    .line 471
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 472
    new-instance p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_4
    const p2, 0x7f0c00b8

    .line 466
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 467
    new-instance p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;

    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->appBarLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "appBarLayout.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "view"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericOperationViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    check-cast p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    return-object p2

    :pswitch_5
    const p2, 0x7f0c0120

    .line 461
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 462
    new-instance p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericBarChartViewHolder;

    const/4 v0, 0x0

    const-string v1, "view"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericBarChartViewHolder;-><init>(Lru/rocketbank/core/widgets/BarChartView$Adapter;Landroid/view/View;)V

    check-cast p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    return-object p2

    :pswitch_6
    const p2, 0x7f0c018e

    .line 451
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 452
    new-instance p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    return-object p2

    :pswitch_7
    const p2, 0x7f0c018a

    .line 446
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 447
    new-instance p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericRightArrowViewHolder;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericRightArrowViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    return-object p2

    :pswitch_8
    const p2, 0x7f0c011d

    .line 435
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 436
    new-instance p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericDelimiterViewHolder;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericDelimiterViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    return-object p2

    .line 427
    :pswitch_9
    invoke-static {v0, p1, v1}, Lru/rocketbank/r2d2/databinding/ParallaxHeaderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ParallaxHeaderBinding;

    move-result-object p1

    const-string p2, "binding"

    .line 428
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->parallaxData:Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;

    check-cast p2, Lru/rocketbank/r2d2/data/binding/parallax/HeaderData;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/ParallaxHeaderBinding;->setData(Lru/rocketbank/r2d2/data/binding/parallax/HeaderData;)V

    .line 431
    new-instance p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/HeaderViewHolder;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/ParallaxHeaderBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->appBarLayout:Landroid/view/View;

    iget v2, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->headerHeight:I

    invoke-direct {p2, v0, v1, v2, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/HeaderViewHolder;-><init>(Landroid/view/View;Landroid/view/View;ILru/rocketbank/r2d2/databinding/ParallaxHeaderBinding;)V

    check-cast p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final removeBottom()V
    .locals 1

    .line 409
    iget-boolean v0, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->existsBottom:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 410
    iput-boolean v0, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->existsBottom:Z

    :cond_0
    return-void
.end method

.method public final removeItem(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;)V
    .locals 2

    const-string v0, "parallaxItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 244
    iget-object v1, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->notifyItemRemoved(I)V

    :cond_0
    return-void
.end method

.method public final setAppBarLayout(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->appBarLayout:Landroid/view/View;

    return-void
.end method

.method public final setEqualMethod(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->equalMethod:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setParallaxData(Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->parallaxData:Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;

    return-void
.end method

.method public final setSortMethod(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->sortMethod:Lkotlin/jvm/functions/Function2;

    return-void
.end method
