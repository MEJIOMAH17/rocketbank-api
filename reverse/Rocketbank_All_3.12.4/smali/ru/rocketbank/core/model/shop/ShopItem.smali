.class public Lru/rocketbank/core/model/shop/ShopItem;
.super Ljava/lang/Object;
.source "ShopItem.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/shop/ShopItem$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShopItem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShopItem.kt\nru/rocketbank/core/model/shop/ShopItem\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,113:1\n624#2:114\n713#2,2:115\n624#2:117\n713#2,2:118\n624#2:120\n713#2,2:121\n1246#2:123\n1315#2,3:124\n1343#2,8:127\n624#2:135\n713#2,2:136\n1246#2:138\n1315#2,3:139\n1343#2,8:142\n624#2:150\n713#2,2:151\n624#2:153\n713#2,2:154\n1246#2:156\n1315#2,3:157\n1343#2,8:160\n*E\n*S KotlinDebug\n*F\n+ 1 ShopItem.kt\nru/rocketbank/core/model/shop/ShopItem\n*L\n100#1:114\n100#1,2:115\n101#1:117\n101#1,2:118\n102#1:120\n102#1,2:121\n103#1:123\n103#1,3:124\n104#1,8:127\n40#1:135\n40#1,2:136\n41#1:138\n41#1,3:139\n42#1,8:142\n44#1:150\n44#1,2:151\n45#1:153\n45#1,2:154\n46#1:156\n46#1,3:157\n47#1,8:160\n*E\n"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/shop/ShopItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/shop/ShopItem$Companion;


# instance fields
.field private final cart_image:Lru/rocketbank/core/network/model/ShopImage;

.field private colors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/Color;",
            ">;"
        }
    .end annotation
.end field

.field private final description:Ljava/lang/String;

.field private final feedDescription:Ljava/lang/String;

.field private final id:J

.field private final image:Lru/rocketbank/core/network/model/ShopImage;

.field private final images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/network/model/ShopImage;",
            ">;"
        }
    .end annotation
.end field

.field private final price:D

.field private final price_old:Ljava/lang/Double;

.field private final price_replacement:Ljava/lang/String;

.field private final promoText:Ljava/lang/String;

.field private final promoTextColor:I

.field private final promoTextFront:Z

.field private final promoTitleOpacity:Ljava/lang/Float;

.field private sizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/Size;",
            ">;"
        }
    .end annotation
.end field

.field private final sizes_table_url:Ljava/lang/String;

.field private final structure:Ljava/lang/String;

.field private final textColor:I

.field private final title:Ljava/lang/String;

.field private final variants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/Variant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/shop/ShopItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/shop/ShopItem$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/shop/ShopItem;->Companion:Lru/rocketbank/core/model/shop/ShopItem$Companion;

    .line 32
    new-instance v0, Lru/rocketbank/core/model/shop/ShopItem$Companion$CREATOR$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/shop/ShopItem$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lru/rocketbank/core/model/shop/ShopItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/rocketbank/core/network/model/ShopImage;DILjava/util/List;Ljava/lang/Double;Ljava/util/List;Lru/rocketbank/core/network/model/ShopImage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Float;Ljava/util/List;Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lru/rocketbank/core/network/model/ShopImage;",
            "DI",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/Size;",
            ">;",
            "Ljava/lang/Double;",
            "Ljava/util/List<",
            "Lru/rocketbank/core/network/model/ShopImage;",
            ">;",
            "Lru/rocketbank/core/network/model/ShopImage;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/lang/Float;",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/Variant;",
            ">;",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/Color;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-string v3, "title"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "description"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-wide v3, p1

    iput-wide v3, v0, Lru/rocketbank/core/model/shop/ShopItem;->id:J

    iput-object v1, v0, Lru/rocketbank/core/model/shop/ShopItem;->title:Ljava/lang/String;

    iput-object v2, v0, Lru/rocketbank/core/model/shop/ShopItem;->description:Ljava/lang/String;

    move-object/from16 v1, p5

    iput-object v1, v0, Lru/rocketbank/core/model/shop/ShopItem;->feedDescription:Ljava/lang/String;

    move-object/from16 v1, p6

    iput-object v1, v0, Lru/rocketbank/core/model/shop/ShopItem;->image:Lru/rocketbank/core/network/model/ShopImage;

    move-wide/from16 v1, p7

    iput-wide v1, v0, Lru/rocketbank/core/model/shop/ShopItem;->price:D

    move/from16 v1, p9

    iput v1, v0, Lru/rocketbank/core/model/shop/ShopItem;->textColor:I

    move-object/from16 v1, p10

    iput-object v1, v0, Lru/rocketbank/core/model/shop/ShopItem;->sizes:Ljava/util/List;

    move-object/from16 v1, p11

    iput-object v1, v0, Lru/rocketbank/core/model/shop/ShopItem;->price_old:Ljava/lang/Double;

    move-object/from16 v1, p12

    iput-object v1, v0, Lru/rocketbank/core/model/shop/ShopItem;->images:Ljava/util/List;

    move-object/from16 v1, p13

    iput-object v1, v0, Lru/rocketbank/core/model/shop/ShopItem;->cart_image:Lru/rocketbank/core/network/model/ShopImage;

    move-object/from16 v1, p14

    iput-object v1, v0, Lru/rocketbank/core/model/shop/ShopItem;->price_replacement:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lru/rocketbank/core/model/shop/ShopItem;->structure:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lru/rocketbank/core/model/shop/ShopItem;->promoText:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lru/rocketbank/core/model/shop/ShopItem;->sizes_table_url:Ljava/lang/String;

    move/from16 v1, p18

    iput-boolean v1, v0, Lru/rocketbank/core/model/shop/ShopItem;->promoTextFront:Z

    move/from16 v1, p19

    iput v1, v0, Lru/rocketbank/core/model/shop/ShopItem;->promoTextColor:I

    move-object/from16 v1, p20

    iput-object v1, v0, Lru/rocketbank/core/model/shop/ShopItem;->promoTitleOpacity:Ljava/lang/Float;

    move-object/from16 v1, p21

    iput-object v1, v0, Lru/rocketbank/core/model/shop/ShopItem;->variants:Ljava/util/List;

    move-object/from16 v1, p22

    iput-object v1, v0, Lru/rocketbank/core/model/shop/ShopItem;->colors:Ljava/util/List;

    .line 42
    iget-object v1, v0, Lru/rocketbank/core/model/shop/ShopItem;->variants:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_7

    check-cast v1, Ljava/lang/Iterable;

    .line 135
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .line 136
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lru/rocketbank/core/model/shop/Variant;

    .line 40
    invoke-virtual {v7}, Lru/rocketbank/core/model/shop/Variant;->getSize()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    move v7, v4

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    if-eqz v7, :cond_0

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    :cond_2
    check-cast v5, Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault$251b5948(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 139
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 140
    check-cast v6, Lru/rocketbank/core/model/shop/Variant;

    .line 41
    new-instance v13, Lru/rocketbank/core/model/shop/Size;

    invoke-virtual {v6}, Lru/rocketbank/core/model/shop/Variant;->getSize()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v6}, Lru/rocketbank/core/model/shop/Variant;->getAvailable()Z

    move-result v10

    const/4 v11, 0x2

    const/4 v12, 0x0

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lru/rocketbank/core/model/shop/Size;-><init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/Ref;)V

    invoke-interface {v1, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 141
    :cond_4
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 142
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 143
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 144
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 145
    move-object v8, v7

    check-cast v8, Lru/rocketbank/core/model/shop/Size;

    .line 42
    invoke-virtual {v8}, Lru/rocketbank/core/model/shop/Size;->getId()Ljava/lang/String;

    move-result-object v8

    .line 146
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 147
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 149
    :cond_6
    move-object v1, v6

    check-cast v1, Ljava/util/List;

    goto :goto_4

    :cond_7
    move-object v1, v2

    :goto_4
    iput-object v1, v0, Lru/rocketbank/core/model/shop/ShopItem;->sizes:Ljava/util/List;

    .line 47
    iget-object v1, v0, Lru/rocketbank/core/model/shop/ShopItem;->variants:Ljava/util/List;

    if-eqz v1, :cond_11

    check-cast v1, Ljava/lang/Iterable;

    .line 150
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 151
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lru/rocketbank/core/model/shop/Variant;

    .line 44
    invoke-virtual {v6}, Lru/rocketbank/core/model/shop/Variant;->getColor()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    move v6, v4

    goto :goto_6

    :cond_9
    move v6, v3

    :goto_6
    if-eqz v6, :cond_8

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 152
    :cond_a
    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 154
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lru/rocketbank/core/model/shop/Variant;

    .line 45
    invoke-virtual {v4}, Lru/rocketbank/core/model/shop/Variant;->getAvailable()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 155
    :cond_c
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 156
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault$251b5948(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 157
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 158
    check-cast v3, Lru/rocketbank/core/model/shop/Variant;

    .line 46
    new-instance v10, Lru/rocketbank/core/model/shop/Color;

    invoke-virtual {v3}, Lru/rocketbank/core/model/shop/Variant;->getColor()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_d
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lru/rocketbank/core/model/shop/Color;-><init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/Ref;)V

    invoke-interface {v2, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 159
    :cond_e
    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 160
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 161
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 162
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 163
    move-object v5, v4

    check-cast v5, Lru/rocketbank/core/model/shop/Color;

    .line 47
    invoke-virtual {v5}, Lru/rocketbank/core/model/shop/Color;->getId()Ljava/lang/String;

    move-result-object v5

    .line 164
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 165
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 167
    :cond_10
    move-object v2, v3

    check-cast v2, Ljava/util/List;

    :cond_11
    iput-object v2, v0, Lru/rocketbank/core/model/shop/ShopItem;->colors:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/rocketbank/core/network/model/ShopImage;DILjava/util/List;Ljava/lang/Double;Ljava/util/List;Lru/rocketbank/core/network/model/ShopImage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Float;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/Ref;)V
    .locals 26

    move/from16 v0, p23

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v8, v2

    goto :goto_0

    :cond_0
    move-object/from16 v8, p5

    :goto_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    move-object v9, v2

    goto :goto_1

    :cond_1
    move-object/from16 v9, p6

    :goto_1
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_2

    move-object v13, v2

    goto :goto_2

    :cond_2
    move-object/from16 v13, p10

    :goto_2
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_3

    move-object v14, v2

    goto :goto_3

    :cond_3
    move-object/from16 v14, p11

    :goto_3
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_4

    move-object v15, v2

    goto :goto_4

    :cond_4
    move-object/from16 v15, p12

    :goto_4
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_5

    move-object/from16 v16, v2

    goto :goto_5

    :cond_5
    move-object/from16 v16, p13

    :goto_5
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_6

    move-object/from16 v17, v2

    goto :goto_6

    :cond_6
    move-object/from16 v17, p14

    :goto_6
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_7

    move-object/from16 v18, v2

    goto :goto_7

    :cond_7
    move-object/from16 v18, p15

    :goto_7
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_8

    move-object/from16 v19, v2

    goto :goto_8

    :cond_8
    move-object/from16 v19, p16

    :goto_8
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_9

    move-object/from16 v20, v2

    goto :goto_9

    :cond_9
    move-object/from16 v20, p17

    :goto_9
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    move/from16 v21, v1

    goto :goto_a

    :cond_a
    move/from16 v21, p18

    :goto_a
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    const/4 v1, -0x1

    move/from16 v22, v1

    goto :goto_b

    :cond_b
    move/from16 v22, p19

    :goto_b
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_c

    move-object/from16 v23, v2

    goto :goto_c

    :cond_c
    move-object/from16 v23, p20

    :goto_c
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    move-object/from16 v24, v2

    goto :goto_d

    :cond_d
    move-object/from16 v24, p21

    :goto_d
    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_e

    move-object/from16 v25, v2

    goto :goto_e

    :cond_e
    move-object/from16 v25, p22

    :goto_e
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v10, p7

    move/from16 v12, p9

    .line 30
    invoke-direct/range {v3 .. v25}, Lru/rocketbank/core/model/shop/ShopItem;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/rocketbank/core/network/model/ShopImage;DILjava/util/List;Ljava/lang/Double;Ljava/util/List;Lru/rocketbank/core/network/model/ShopImage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Float;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 25

    move-object/from16 v0, p1

    const-string v1, "source"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 52
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    const-string v1, "source.readString()"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    const-string v1, "source.readString()"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 55
    const-class v1, Lru/rocketbank/core/network/model/ShopImage;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lru/rocketbank/core/network/model/ShopImage;

    .line 56
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v9

    .line 57
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 58
    sget-object v1, Lru/rocketbank/core/model/shop/Size;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/util/List;

    .line 59
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/lang/Double;

    .line 60
    sget-object v1, Lru/rocketbank/core/network/model/ShopImage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/util/List;

    .line 61
    const-class v1, Lru/rocketbank/core/network/model/ShopImage;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lru/rocketbank/core/network/model/ShopImage;

    .line 62
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 63
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 64
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 65
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    move/from16 v20, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move/from16 v20, v1

    .line 67
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 68
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Ljava/lang/Float;

    .line 69
    sget-object v1, Lru/rocketbank/core/model/shop/Color;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Ljava/util/List;

    .line 70
    sget-object v1, Lru/rocketbank/core/model/shop/Variant;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Ljava/util/List;

    move-object/from16 v2, p0

    .line 50
    invoke-direct/range {v2 .. v24}, Lru/rocketbank/core/model/shop/ShopItem;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/rocketbank/core/network/model/ShopImage;DILjava/util/List;Ljava/lang/Double;Ljava/util/List;Lru/rocketbank/core/network/model/ShopImage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Float;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final filterColors(Lru/rocketbank/core/model/shop/Size;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/model/shop/Size;",
            ")",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/Color;",
            ">;"
        }
    .end annotation

    const-string v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->variants:Ljava/util/List;

    if-eqz v0, :cond_b

    check-cast v0, Ljava/lang/Iterable;

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 115
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lru/rocketbank/core/model/shop/Variant;

    .line 100
    invoke-virtual {v3}, Lru/rocketbank/core/model/shop/Variant;->getColor()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_2
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 118
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lru/rocketbank/core/model/shop/Variant;

    .line 101
    invoke-virtual {v3}, Lru/rocketbank/core/model/shop/Variant;->getSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/Size;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 119
    :cond_4
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 120
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/Collection;

    .line 121
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lru/rocketbank/core/model/shop/Variant;

    .line 102
    invoke-virtual {v2}, Lru/rocketbank/core/model/shop/Variant;->getAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 122
    :cond_6
    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault$251b5948(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 124
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 125
    check-cast v1, Lru/rocketbank/core/model/shop/Variant;

    .line 103
    new-instance v8, Lru/rocketbank/core/model/shop/Color;

    invoke-virtual {v1}, Lru/rocketbank/core/model/shop/Variant;->getColor()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lru/rocketbank/core/model/shop/Color;-><init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/Ref;)V

    invoke-interface {v0, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 126
    :cond_8
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 127
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 129
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 130
    move-object v3, v2

    check-cast v3, Lru/rocketbank/core/model/shop/Color;

    .line 104
    invoke-virtual {v3}, Lru/rocketbank/core/model/shop/Color;->getId()Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 132
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 134
    :cond_a
    check-cast v1, Ljava/util/List;

    return-object v1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public final findColor(Ljava/lang/String;)Lru/rocketbank/core/model/shop/Color;
    .locals 4

    .line 98
    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->colors:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lru/rocketbank/core/model/shop/Color;

    invoke-virtual {v3}, Lru/rocketbank/core/model/shop/Color;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    :cond_1
    check-cast v1, Lru/rocketbank/core/model/shop/Color;

    :cond_2
    return-object v1
.end method

.method public final findSize(Ljava/lang/String;)Lru/rocketbank/core/model/shop/Size;
    .locals 4

    .line 97
    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->sizes:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lru/rocketbank/core/model/shop/Size;

    invoke-virtual {v3}, Lru/rocketbank/core/model/shop/Size;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    :cond_1
    check-cast v1, Lru/rocketbank/core/model/shop/Size;

    :cond_2
    return-object v1
.end method

.method public final findVariant(Lru/rocketbank/core/model/shop/Size;Lru/rocketbank/core/model/shop/Color;)Lru/rocketbank/core/model/shop/Variant;
    .locals 8

    .line 109
    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->sizes:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object p1, p0, Lru/rocketbank/core/model/shop/ShopItem;->sizes:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/shop/Size;

    goto :goto_0

    :cond_0
    move-object p1, v3

    .line 110
    :cond_1
    :goto_0
    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->colors:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object p2, p0, Lru/rocketbank/core/model/shop/ShopItem;->colors:Ljava/util/List;

    if-eqz p2, :cond_2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/model/shop/Color;

    goto :goto_1

    :cond_2
    move-object p2, v3

    .line 111
    :cond_3
    :goto_1
    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->variants:Ljava/util/List;

    if-eqz v0, :cond_9

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lru/rocketbank/core/model/shop/Variant;

    invoke-virtual {v5}, Lru/rocketbank/core/model/shop/Variant;->getSize()Ljava/lang/String;

    move-result-object v6

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/Size;->getId()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_5
    move-object v7, v3

    :goto_2
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v5}, Lru/rocketbank/core/model/shop/Variant;->getColor()Ljava/lang/String;

    move-result-object v5

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lru/rocketbank/core/model/shop/Color;->getId()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_6
    move-object v6, v3

    :goto_3
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v2

    goto :goto_4

    :cond_7
    move v5, v1

    :goto_4
    if-eqz v5, :cond_4

    move-object v3, v4

    :cond_8
    check-cast v3, Lru/rocketbank/core/model/shop/Variant;

    :cond_9
    return-object v3
.end method

.method public final getCart_image()Lru/rocketbank/core/network/model/ShopImage;
    .locals 1

    .line 21
    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->cart_image:Lru/rocketbank/core/network/model/ShopImage;

    return-object v0
.end method

.method public final getColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/Color;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->colors:Ljava/util/List;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getFeedDescription()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->feedDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->id:J

    return-wide v0
.end method

.method public final getImage()Lru/rocketbank/core/network/model/ShopImage;
    .locals 1

    .line 15
    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->image:Lru/rocketbank/core/network/model/ShopImage;

    return-object v0
.end method

.method public final getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/network/model/ShopImage;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->images:Ljava/util/List;

    return-object v0
.end method

.method public final getPrice()D
    .locals 2

    .line 16
    iget-wide v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->price:D

    return-wide v0
.end method

.method public final getPrice_old()Ljava/lang/Double;
    .locals 1

    .line 19
    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->price_old:Ljava/lang/Double;

    return-object v0
.end method

.method public final getPrice_replacement()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->price_replacement:Ljava/lang/String;

    return-object v0
.end method

.method public final getPromoText()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->promoText:Ljava/lang/String;

    return-object v0
.end method

.method public final getPromoTextColor()I
    .locals 1

    .line 27
    iget v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->promoTextColor:I

    return v0
.end method

.method public final getPromoTextFront()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->promoTextFront:Z

    return v0
.end method

.method public final getPromoTitleOpacity()Ljava/lang/Float;
    .locals 1

    .line 28
    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->promoTitleOpacity:Ljava/lang/Float;

    return-object v0
.end method

.method public final getSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/Size;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->sizes:Ljava/util/List;

    return-object v0
.end method

.method public final getSizes_table_url()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->sizes_table_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getStructure()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->structure:Ljava/lang/String;

    return-object v0
.end method

.method public final getTextColor()I
    .locals 1

    .line 17
    iget v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->textColor:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getVariants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/Variant;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->variants:Ljava/util/List;

    return-object v0
.end method

.method public final setColors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/Color;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lru/rocketbank/core/model/shop/ShopItem;->colors:Ljava/util/List;

    return-void
.end method

.method public final setSizes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/shop/Size;",
            ">;)V"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lru/rocketbank/core/model/shop/ShopItem;->sizes:Ljava/util/List;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 75
    iget-wide v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    :cond_0
    if-eqz p1, :cond_1

    .line 76
    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 77
    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 78
    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->feedDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 79
    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->image:Lru/rocketbank/core/network/model/ShopImage;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_4
    if-eqz p1, :cond_5

    .line 80
    iget-wide v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->price:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    :cond_5
    if-eqz p1, :cond_6

    .line 81
    iget v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->textColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_6
    if-eqz p1, :cond_7

    .line 82
    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->sizes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    :cond_7
    if-eqz p1, :cond_8

    .line 83
    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->price_old:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    :cond_8
    if-eqz p1, :cond_9

    .line 84
    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->images:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    :cond_9
    if-eqz p1, :cond_a

    .line 85
    iget-object v0, p0, Lru/rocketbank/core/model/shop/ShopItem;->cart_image:Lru/rocketbank/core/network/model/ShopImage;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_a
    if-eqz p1, :cond_b

    .line 86
    iget-object p2, p0, Lru/rocketbank/core/model/shop/ShopItem;->price_replacement:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_b
    if-eqz p1, :cond_c

    .line 87
    iget-object p2, p0, Lru/rocketbank/core/model/shop/ShopItem;->structure:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_c
    if-eqz p1, :cond_d

    .line 88
    iget-object p2, p0, Lru/rocketbank/core/model/shop/ShopItem;->sizes_table_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_d
    if-eqz p1, :cond_e

    .line 89
    iget-object p2, p0, Lru/rocketbank/core/model/shop/ShopItem;->promoText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_e
    if-eqz p1, :cond_f

    .line 90
    iget-boolean p2, p0, Lru/rocketbank/core/model/shop/ShopItem;->promoTextFront:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_f
    if-eqz p1, :cond_10

    .line 91
    iget p2, p0, Lru/rocketbank/core/model/shop/ShopItem;->promoTextColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_10
    if-eqz p1, :cond_11

    .line 92
    iget-object p2, p0, Lru/rocketbank/core/model/shop/ShopItem;->promoTitleOpacity:Ljava/lang/Float;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    :cond_11
    if-eqz p1, :cond_12

    .line 93
    iget-object p2, p0, Lru/rocketbank/core/model/shop/ShopItem;->colors:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    :cond_12
    if-eqz p1, :cond_13

    .line 94
    iget-object p2, p0, Lru/rocketbank/core/model/shop/ShopItem;->variants:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void

    :cond_13
    return-void
.end method
