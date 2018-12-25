.class public final Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor;
.super Lru/rocketbank/core/utils/Interactor;
.source "LoadShopItemsInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/core/utils/Interactor<",
        "Ljava/util/List<",
        "+",
        "Lru/rocketbank/core/model/shop/ShopItem;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoadShopItemsInteractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadShopItemsInteractor.kt\nru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,55:1\n874#2:56\n874#2:57\n*E\n*S KotlinDebug\n*F\n+ 1 LoadShopItemsInteractor.kt\nru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor\n*L\n47#1:56\n50#1:57\n*E\n"
.end annotation


# instance fields
.field private final shopApi:Lru/rocketbank/core/network/api/ShopApi;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/network/api/ShopApi;)V
    .locals 1

    const-string v0, "shopApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lru/rocketbank/core/utils/Interactor;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor;->shopApi:Lru/rocketbank/core/network/api/ShopApi;

    return-void
.end method

.method public static final synthetic access$toShopItem(Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor;Lru/rocketbank/core/network/model/ShopItemResponse;)Lru/rocketbank/core/model/shop/ShopItem;
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor;->toShopItem(Lru/rocketbank/core/network/model/ShopItemResponse;)Lru/rocketbank/core/model/shop/ShopItem;

    move-result-object p0

    return-object p0
.end method

.method private final mapShopItem(Lru/rocketbank/core/network/model/ShopItemResponse;)Lru/rocketbank/core/model/shop/ShopItem;
    .locals 27

    .line 33
    new-instance v25, Lru/rocketbank/core/model/shop/ShopItem;

    .line 34
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/network/model/ShopItemResponse;->getId()J

    move-result-wide v1

    .line 35
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/network/model/ShopItemResponse;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/network/model/ShopItemResponse;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 37
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/network/model/ShopItemResponse;->getFeed_description()Ljava/lang/String;

    move-result-object v5

    .line 38
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/network/model/ShopItemResponse;->getPrice()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    :goto_0
    move-wide v7, v6

    goto :goto_1

    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 39
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/network/model/ShopItemResponse;->getFeed_text_color()Ljava/lang/String;

    move-result-object v0

    const/high16 v6, -0x1000000

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/arch/lifecycle/MethodCallsLogger;->parseColor(Ljava/lang/String;)I

    move-result v0

    move v9, v0

    goto :goto_2

    :cond_1
    move v9, v6

    .line 40
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/network/model/ShopItemResponse;->getPrice_old()Ljava/lang/Double;

    move-result-object v11

    .line 41
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/network/model/ShopItemResponse;->getPrice_replacement()Ljava/lang/String;

    move-result-object v14

    .line 42
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/network/model/ShopItemResponse;->getFeed_image()Lru/rocketbank/core/network/model/ShopImage;

    move-result-object v10

    .line 43
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/network/model/ShopItemResponse;->getPromo_title_front()Z

    move-result v18

    .line 44
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/network/model/ShopItemResponse;->getPromo_title_color()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/arch/lifecycle/MethodCallsLogger;->parseColor(Ljava/lang/String;)I

    move-result v0

    move/from16 v19, v0

    goto :goto_3

    :cond_2
    move/from16 v19, v6

    .line 45
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/network/model/ShopItemResponse;->getPromo_title()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    if-eqz v0, :cond_4

    if-nez v0, :cond_3

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v12, "(this as java.lang.String).toUpperCase()"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v0

    goto :goto_4

    :cond_4
    move-object/from16 v16, v6

    .line 46
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/network/model/ShopItemResponse;->getPromo_title_opacity()Ljava/lang/Float;

    move-result-object v20

    .line 47
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/network/model/ShopItemResponse;->getInfo_images()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/Iterable;

    .line 56
    new-instance v12, Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor$mapShopItem$$inlined$sortedBy$1;

    invoke-direct {v12}, Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor$mapShopItem$$inlined$sortedBy$1;-><init>()V

    check-cast v12, Ljava/util/Comparator;

    invoke-static {v0, v12}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    move-object v12, v0

    goto :goto_5

    :cond_5
    move-object v12, v6

    .line 48
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/network/model/ShopItemResponse;->getSizes_table_url()Ljava/lang/String;

    move-result-object v17

    .line 49
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/network/model/ShopItemResponse;->getCart_image()Lru/rocketbank/core/network/model/ShopImage;

    move-result-object v13

    .line 50
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/network/model/ShopItemResponse;->getVariants()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Ljava/lang/Iterable;

    .line 57
    new-instance v15, Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor$mapShopItem$$inlined$sortedBy$2;

    invoke-direct {v15}, Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor$mapShopItem$$inlined$sortedBy$2;-><init>()V

    check-cast v15, Ljava/util/Comparator;

    invoke-static {v0, v15}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v21, v0

    goto :goto_6

    :cond_6
    move-object/from16 v21, v6

    .line 51
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/network/model/ShopItemResponse;->getStructure()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    goto :goto_8

    :cond_8
    :goto_7
    const/4 v0, 0x1

    :goto_8
    if-eqz v0, :cond_9

    move-object v15, v6

    goto :goto_9

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/network/model/ShopItemResponse;->getStructure()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    :goto_9
    const/16 v22, 0x0

    const/16 v23, 0x0

    const v24, 0x80080

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object v6, v10

    move-object/from16 v10, v22

    move-object/from16 v22, v23

    move/from16 v23, v24

    move-object/from16 v24, v26

    .line 33
    invoke-direct/range {v0 .. v24}, Lru/rocketbank/core/model/shop/ShopItem;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/rocketbank/core/network/model/ShopImage;DILjava/util/List;Ljava/lang/Double;Ljava/util/List;Lru/rocketbank/core/network/model/ShopImage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Float;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/Ref;)V

    return-object v25
.end method

.method private final toShopItem(Lru/rocketbank/core/network/model/ShopItemResponse;)Lru/rocketbank/core/model/shop/ShopItem;
    .locals 0

    .line 25
    :try_start_0
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor;->mapShopItem(Lru/rocketbank/core/network/model/ShopItemResponse;)Lru/rocketbank/core/model/shop/ShopItem;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final getObservable()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/ShopItem;",
            ">;>;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor;->shopApi:Lru/rocketbank/core/network/api/ShopApi;

    invoke-interface {v0}, Lru/rocketbank/core/network/api/ShopApi;->items()Lrx/Observable;

    move-result-object v0

    .line 18
    sget-object v1, Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor$observable$1;->INSTANCE:Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor$observable$1;

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 19
    new-instance v1, Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor$observable$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor$observable$2;-><init>(Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor;)V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lrx/Observable;->toList()Lrx/Observable;

    move-result-object v0

    .line 21
    sget-object v1, Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor$observable$3;->INSTANCE:Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor$observable$3;

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    const-string v1, "shopApi.items()\n        \u2026ap { it.filterNotNull() }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getShopApi()Lru/rocketbank/core/network/api/ShopApi;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/feed/LoadShopItemsInteractor;->shopApi:Lru/rocketbank/core/network/api/ShopApi;

    return-object v0
.end method
