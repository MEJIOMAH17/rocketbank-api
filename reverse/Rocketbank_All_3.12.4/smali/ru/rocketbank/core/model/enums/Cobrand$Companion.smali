.class public final Lru/rocketbank/core/model/enums/Cobrand$Companion;
.super Ljava/lang/Object;
.source "Cobrand.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/model/enums/Cobrand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCobrand.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cobrand.kt\nru/rocketbank/core/model/enums/Cobrand$Companion\n*L\n1#1,51:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lru/rocketbank/core/model/enums/Cobrand$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromCobrandName(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Cobrand;
    .locals 5

    .line 49
    invoke-static {}, Lru/rocketbank/core/model/enums/Cobrand;->values()[Lru/rocketbank/core/model/enums/Cobrand;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lru/rocketbank/core/model/enums/Cobrand;->getCobrandName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    sget-object v3, Lru/rocketbank/core/model/enums/Cobrand;->ROCKETBANK:Lru/rocketbank/core/model/enums/Cobrand;

    :cond_2
    return-object v3
.end method
