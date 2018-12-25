.class public final Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;
.super Landroid/support/v4/util/LongSparseArray;
.source "CategoryMappingUtil.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/utils/CategoryMappingUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LongSparseArray<",
        "Lkotlin/Pair<",
        "+",
        "Ljava/lang/Integer;",
        "+",
        "Ljava/lang/Character;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 15

    .line 8
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    .line 10
    new-instance v0, Lkotlin/Pair;

    const/16 v1, 0xb2

    const/16 v2, 0xf5

    const/16 v3, 0xc3

    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x41

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v3, 0x18f

    invoke-virtual {p0, v3, v4, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 11
    new-instance v0, Lkotlin/Pair;

    const/16 v3, 0xc6

    const/16 v4, 0x8d

    const/16 v5, 0xff

    invoke-static {v4, v3, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x42

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v4, 0x18e

    invoke-virtual {p0, v4, v5, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 12
    new-instance v0, Lkotlin/Pair;

    const/16 v4, 0x84

    const/16 v5, 0x67

    const/16 v6, 0xb6

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x43

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v5, 0x185

    invoke-virtual {p0, v5, v6, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 13
    new-instance v0, Lkotlin/Pair;

    const/16 v5, 0xa5

    const/16 v6, 0xbd

    const/16 v7, 0xc4

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x44

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v5, 0x18a

    invoke-virtual {p0, v5, v6, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 14
    new-instance v0, Lkotlin/Pair;

    const/16 v5, 0xe8

    const/16 v6, 0x9c

    invoke-static {v5, v4, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x46

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v5, 0x186

    invoke-virtual {p0, v5, v6, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 15
    new-instance v0, Lkotlin/Pair;

    const/16 v5, 0x4d

    const/16 v6, 0x87

    const/16 v7, 0xd8

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x48

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v5, 0x189

    invoke-virtual {p0, v5, v6, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 16
    new-instance v0, Lkotlin/Pair;

    const/16 v5, 0x57

    const/16 v6, 0xbb

    invoke-static {v6, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x49

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-direct {v0, v6, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v8, 0x188

    invoke-virtual {p0, v8, v9, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 17
    new-instance v0, Lkotlin/Pair;

    const/16 v6, 0x85

    const/16 v8, 0xe9

    const/16 v9, 0xce

    invoke-static {v6, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v8, 0x4a

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-direct {v0, v6, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v8, 0x187

    invoke-virtual {p0, v8, v9, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 18
    new-instance v0, Lkotlin/Pair;

    const/16 v6, 0x5c

    const/16 v8, 0xd5

    const/16 v9, 0xae

    invoke-static {v6, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v8, 0x4b

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-direct {v0, v6, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v8, 0x18c

    invoke-virtual {p0, v8, v9, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 19
    new-instance v0, Lkotlin/Pair;

    const/16 v6, 0xa3

    const/16 v8, 0xdc

    const/16 v9, 0xe4

    invoke-static {v6, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v8, 0x4c

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-direct {v0, v6, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v9, 0x1ba

    invoke-virtual {p0, v9, v10, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 20
    new-instance v0, Lkotlin/Pair;

    const/16 v6, 0xf6

    const/16 v9, 0x7c

    invoke-static {v6, v4, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v6, 0x4d

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-direct {v0, v4, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v9, 0x158

    invoke-virtual {p0, v9, v10, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 21
    new-instance v0, Lkotlin/Pair;

    const/16 v4, 0x79

    const/16 v6, 0x71

    const/16 v9, 0xb1

    invoke-static {v9, v6, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x4e

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v9, 0x18b

    invoke-virtual {p0, v9, v10, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 22
    new-instance v0, Lkotlin/Pair;

    const/16 v9, 0xf0

    const/16 v10, 0x90

    const/16 v11, 0x61

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x4f

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v9, 0x1b5

    invoke-virtual {p0, v9, v10, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 23
    new-instance v0, Lkotlin/Pair;

    const/16 v9, 0x7c

    const/16 v10, 0xe0

    invoke-static {v3, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x50

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v9, 0x1b7

    invoke-virtual {p0, v9, v10, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 24
    new-instance v0, Lkotlin/Pair;

    const/16 v9, 0xf9

    const/16 v10, 0x56

    invoke-static {v9, v6, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x51

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v9, 0x17f

    invoke-virtual {p0, v9, v10, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 25
    new-instance v0, Lkotlin/Pair;

    const/16 v9, 0x37

    const/16 v10, 0xb7

    const/16 v11, 0xb5

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x52

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v9, 0x183

    invoke-virtual {p0, v9, v10, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 26
    new-instance v0, Lkotlin/Pair;

    const/16 v9, 0xb0

    const/16 v10, 0xf1

    invoke-static {v2, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x53

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v9, 0x180

    invoke-virtual {p0, v9, v10, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 27
    new-instance v0, Lkotlin/Pair;

    const/16 v9, 0x4b

    const/16 v10, 0x89

    const/16 v11, 0xac

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x54

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v9, 0x182

    invoke-virtual {p0, v9, v10, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 28
    new-instance v0, Lkotlin/Pair;

    const/16 v9, 0x7e

    const/16 v10, 0xa6

    const/16 v11, 0xf4

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x55

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v9, 0x181

    invoke-virtual {p0, v9, v10, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 29
    new-instance v0, Lkotlin/Pair;

    const/16 v9, 0x64

    const/16 v10, 0x5c

    const/16 v11, 0x8a

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v11, 0x56

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-direct {v0, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v10, 0x184

    invoke-virtual {p0, v10, v11, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 30
    new-instance v0, Lkotlin/Pair;

    const/16 v10, 0xd7

    const/16 v11, 0x48

    invoke-static {v10, v4, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-direct {v0, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v10, 0x1bb

    invoke-virtual {p0, v10, v11, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 31
    new-instance v0, Lkotlin/Pair;

    const/16 v10, 0x92

    const/16 v11, 0x9b

    invoke-static {v7, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v11, 0x58

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-direct {v0, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v10, 0x17a

    invoke-virtual {p0, v10, v11, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 32
    new-instance v0, Lkotlin/Pair;

    const/16 v10, 0x46

    const/16 v11, 0x6c

    const/16 v12, 0x95

    invoke-static {v10, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v11, 0x5a

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-direct {v0, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v10, 0x175

    invoke-virtual {p0, v10, v11, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 33
    new-instance v0, Lkotlin/Pair;

    const/16 v10, 0x5e

    const/16 v11, 0xcc

    const/16 v12, 0xd8

    invoke-static {v10, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v11, 0x61

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-direct {v0, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v10, 0x178

    invoke-virtual {p0, v10, v11, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 34
    new-instance v0, Lkotlin/Pair;

    const/16 v10, 0xd9

    invoke-static {v2, v10, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v11, 0x62

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-direct {v0, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v10, 0x1bc

    invoke-virtual {p0, v10, v11, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 35
    new-instance v0, Lkotlin/Pair;

    const/16 v10, 0x72

    const/16 v11, 0x85

    invoke-static {v7, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v10, 0x63

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-direct {v0, v7, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v10, 0x174

    invoke-virtual {p0, v10, v11, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 36
    new-instance v0, Lkotlin/Pair;

    const/16 v7, 0xfd

    const/16 v10, 0xae

    const/16 v11, 0x33

    invoke-static {v7, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-direct {v0, v7, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v9, 0x1b6

    invoke-virtual {p0, v9, v10, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 37
    new-instance v0, Lkotlin/Pair;

    const/16 v7, 0xbb

    const/16 v9, 0x28

    const/16 v10, 0x77

    invoke-static {v7, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v9, 0x65

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-direct {v0, v7, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v9, 0x170

    invoke-virtual {p0, v9, v10, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 38
    new-instance v0, Lkotlin/Pair;

    const/16 v7, 0x66

    const/16 v9, 0x91

    const/16 v10, 0x30

    invoke-static {v9, v10, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v9, 0x16d

    invoke-virtual {p0, v9, v10, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 39
    new-instance v0, Lkotlin/Pair;

    const/16 v9, 0xc9

    const/16 v10, 0x86

    invoke-static {v7, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x67

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v9, 0x16e

    invoke-virtual {p0, v9, v10, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 40
    new-instance v0, Lkotlin/Pair;

    const/16 v9, 0x74

    const/16 v10, 0x8b

    const/16 v11, 0x9c

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v11, 0x68

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-direct {v0, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v10, 0x1b8

    invoke-virtual {p0, v10, v11, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 41
    new-instance v0, Lkotlin/Pair;

    const/16 v10, 0x5e

    const/16 v11, 0x95

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v11, 0x69

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-direct {v0, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v10, 0x16f

    invoke-virtual {p0, v10, v11, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 42
    new-instance v0, Lkotlin/Pair;

    const/16 v10, 0x58

    const/16 v11, 0xb0

    const/16 v12, 0xeb

    invoke-static {v10, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v11, 0x6a

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-direct {v0, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v10, 0x167

    invoke-virtual {p0, v10, v11, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 43
    new-instance v0, Lkotlin/Pair;

    const/16 v10, 0xaf

    const/16 v11, 0xb4

    const/16 v12, 0xb8

    invoke-static {v10, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v11, 0x6b

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-direct {v0, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v10, 0x169

    invoke-virtual {p0, v10, v11, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 44
    new-instance v0, Lkotlin/Pair;

    const/16 v10, 0x99

    const/16 v11, 0x2e

    invoke-static {v11, v10, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v11, 0x6c

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-direct {v0, v3, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v11, 0x168

    invoke-virtual {p0, v11, v12, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 45
    new-instance v0, Lkotlin/Pair;

    const/16 v3, 0xaa

    const/16 v11, 0xcf

    const/16 v12, 0xd0

    invoke-static {v3, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v11, 0x6d

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-direct {v0, v3, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v11, 0x16a

    invoke-virtual {p0, v11, v12, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 46
    new-instance v0, Lkotlin/Pair;

    const/16 v3, 0x6f

    const/16 v11, 0x3e

    invoke-static {v11, v8, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v12, 0x6e

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-direct {v0, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v11, 0x16c

    invoke-virtual {p0, v11, v12, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 47
    new-instance v0, Lkotlin/Pair;

    const/16 v11, 0x78

    const/16 v12, 0x73

    const/16 v13, 0xe1

    invoke-static {v11, v12, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    invoke-direct {v0, v12, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v12, 0x15b

    invoke-virtual {p0, v12, v13, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 48
    new-instance v0, Lkotlin/Pair;

    const/16 v12, 0x90

    const/16 v13, 0xd7

    invoke-static {v12, v1, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v13, 0x70

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    invoke-direct {v0, v12, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v12, 0x15d

    invoke-virtual {p0, v12, v13, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 49
    new-instance v0, Lkotlin/Pair;

    const/16 v12, 0xd4

    const/16 v13, 0x89

    const/16 v14, 0xd0

    invoke-static {v12, v13, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-direct {v0, v12, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v12, 0x15f

    invoke-virtual {p0, v12, v13, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 50
    new-instance v0, Lkotlin/Pair;

    const/16 v6, 0x73

    invoke-static {v11, v6, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v2, 0x163

    invoke-virtual {p0, v2, v3, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 51
    new-instance v0, Lkotlin/Pair;

    const/16 v2, 0xc3

    const/16 v3, 0xe1

    invoke-static {v2, v1, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x72

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v1, 0x160

    invoke-virtual {p0, v1, v2, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 52
    new-instance v0, Lkotlin/Pair;

    const/16 v1, 0xe6

    const/16 v2, 0x7f

    const/16 v3, 0xa2

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x73

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v1, 0x15e

    invoke-virtual {p0, v1, v2, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 53
    new-instance v0, Lkotlin/Pair;

    const/16 v1, 0xff

    invoke-static {v1, v10, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v1, 0x15a

    invoke-virtual {p0, v1, v2, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 54
    new-instance v0, Lkotlin/Pair;

    const/16 v1, 0xf1

    const/16 v2, 0x39

    invoke-static {v1, v5, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x75

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v1, 0x159

    invoke-virtual {p0, v1, v2, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 55
    new-instance v0, Lkotlin/Pair;

    const/16 v1, 0x62

    const/16 v2, 0x7f

    const/16 v3, 0xb7

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x76

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v1, 0x17b

    invoke-virtual {p0, v1, v2, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 56
    new-instance v0, Lkotlin/Pair;

    const/16 v1, 0x75

    const/16 v2, 0xa6

    invoke-static {v8, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x77

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v1, 0x17c

    invoke-virtual {p0, v1, v2, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 57
    new-instance v0, Lkotlin/Pair;

    const/16 v1, 0x2d

    const/16 v2, 0x8b

    const/16 v3, 0x7d

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v1, 0x17e

    invoke-virtual {p0, v1, v2, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 58
    new-instance v0, Lkotlin/Pair;

    const/16 v1, 0xbf

    const/16 v2, 0xd5

    invoke-static {v7, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v1, 0x17d

    invoke-virtual {p0, v1, v2, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 59
    new-instance v0, Lkotlin/Pair;

    const/16 v1, 0xb4

    const/16 v2, 0xcd

    const/16 v3, 0x93

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x7a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v1, 0x1b9

    invoke-virtual {p0, v1, v2, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    .line 60
    new-instance v0, Lkotlin/Pair;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v1, 0x1bd

    invoke-virtual {p0, v1, v2, v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->put(JLjava/lang/Object;)V

    return-void
.end method
