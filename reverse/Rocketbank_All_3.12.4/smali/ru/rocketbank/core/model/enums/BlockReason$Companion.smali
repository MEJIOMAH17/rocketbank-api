.class public final Lru/rocketbank/core/model/enums/BlockReason$Companion;
.super Ljava/lang/Object;
.source "BlockReason.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/model/enums/BlockReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlockReason.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlockReason.kt\nru/rocketbank/core/model/enums/BlockReason$Companion\n*L\n1#1,27:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lru/rocketbank/core/model/enums/BlockReason$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromString(Ljava/lang/String;)Lru/rocketbank/core/model/enums/BlockReason;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 21
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "(this as java.lang.String).toUpperCase()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lru/rocketbank/core/model/enums/BlockReason;->valueOf(Ljava/lang/String;)Lru/rocketbank/core/model/enums/BlockReason;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v0

    :goto_0
    return-object p1

    :cond_0
    return-object v0
.end method
