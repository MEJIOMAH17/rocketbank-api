.class public final Lru/rocketbank/core/network/Request;
.super Ljava/lang/Object;
.source "Request.kt"


# static fields
.field public static final INSTANCE:Lru/rocketbank/core/network/Request;

.field public static final LINK:Ljava/lang/String;

.field public static final LINK_API:Ljava/lang/String;

.field public static final LINK__GEO_YANDEX_API:Ljava/lang/String; = "https://geocode-maps.yandex.ru/"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 6
    new-instance v0, Lru/rocketbank/core/network/Request;

    invoke-direct {v0}, Lru/rocketbank/core/network/Request;-><init>()V

    sput-object v0, Lru/rocketbank/core/network/Request;->INSTANCE:Lru/rocketbank/core/network/Request;

    .line 7
    invoke-static {}, Lru/rocketbank/core/BaseRocketApplication;->getContext()Lru/rocketbank/core/BaseRocketApplication;

    move-result-object v0

    const v1, 0x7f110405

    invoke-virtual {v0, v1}, Lru/rocketbank/core/BaseRocketApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseRocketApplication.ge\u2026ring(R.string.server_url)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lru/rocketbank/core/network/Request;->LINK:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lru/rocketbank/core/network/Request;->LINK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lru/rocketbank/core/BaseRocketApplication;->getContext()Lru/rocketbank/core/BaseRocketApplication;

    move-result-object v1

    const v2, 0x7f11005e

    invoke-virtual {v1, v2}, Lru/rocketbank/core/BaseRocketApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lru/rocketbank/core/network/Request;->LINK_API:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
