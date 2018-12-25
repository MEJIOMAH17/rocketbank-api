.class public final Lru/rocketbank/core/utils/CategoryMappingUtil;
.super Ljava/lang/Object;
.source "CategoryMappingUtil.kt"


# static fields
.field private static final DEFAULT:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lru/rocketbank/core/utils/CategoryMappingUtil;

.field private static final categoryMapping:Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 6
    new-instance v0, Lru/rocketbank/core/utils/CategoryMappingUtil;

    invoke-direct {v0}, Lru/rocketbank/core/utils/CategoryMappingUtil;-><init>()V

    sput-object v0, Lru/rocketbank/core/utils/CategoryMappingUtil;->INSTANCE:Lru/rocketbank/core/utils/CategoryMappingUtil;

    .line 7
    new-instance v0, Lkotlin/Pair;

    const/4 v1, 0x0

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lru/rocketbank/core/utils/CategoryMappingUtil;->DEFAULT:Lkotlin/Pair;

    .line 8
    new-instance v0, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;

    invoke-direct {v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/utils/CategoryMappingUtil;->categoryMapping:Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCategory(I)Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .line 65
    sget-object v0, Lru/rocketbank/core/utils/CategoryMappingUtil;->categoryMapping:Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;

    invoke-virtual {v0}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 66
    sget-object p1, Lru/rocketbank/core/utils/CategoryMappingUtil;->DEFAULT:Lkotlin/Pair;

    return-object p1

    .line 68
    :cond_0
    sget-object v0, Lru/rocketbank/core/utils/CategoryMappingUtil;->categoryMapping:Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "categoryMapping.valueAt(index)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlin/Pair;

    return-object p1
.end method

.method public final getCategory(J)Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .line 71
    sget-object v0, Lru/rocketbank/core/utils/CategoryMappingUtil;->categoryMapping:Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;

    invoke-virtual {v0, p1, p2}, Lru/rocketbank/core/utils/CategoryMappingUtil$categoryMapping$1;->get(J)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "categoryMapping.get(categoryId)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlin/Pair;

    return-object p1
.end method

.method public final getDEFAULT()Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .line 7
    sget-object v0, Lru/rocketbank/core/utils/CategoryMappingUtil;->DEFAULT:Lkotlin/Pair;

    return-object v0
.end method
