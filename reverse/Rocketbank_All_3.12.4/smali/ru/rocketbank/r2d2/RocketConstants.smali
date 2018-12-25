.class public final Lru/rocketbank/r2d2/RocketConstants;
.super Ljava/lang/Object;
.source "RocketConstants.kt"


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/RocketConstants;

.field private static final LINK:Ljava/lang/String;

.field private static final LINK_API:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lru/rocketbank/r2d2/RocketConstants;

    invoke-direct {v0}, Lru/rocketbank/r2d2/RocketConstants;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/RocketConstants;->INSTANCE:Lru/rocketbank/r2d2/RocketConstants;

    .line 6
    sget-object v0, Lru/rocketbank/core/network/Request;->LINK:Ljava/lang/String;

    sput-object v0, Lru/rocketbank/r2d2/RocketConstants;->LINK:Ljava/lang/String;

    .line 7
    sget-object v0, Lru/rocketbank/core/network/Request;->LINK_API:Ljava/lang/String;

    sput-object v0, Lru/rocketbank/r2d2/RocketConstants;->LINK_API:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLINK()Ljava/lang/String;
    .locals 1

    .line 6
    sget-object v0, Lru/rocketbank/r2d2/RocketConstants;->LINK:Ljava/lang/String;

    return-object v0
.end method

.method public final getLINK_API()Ljava/lang/String;
    .locals 1

    .line 7
    sget-object v0, Lru/rocketbank/r2d2/RocketConstants;->LINK_API:Ljava/lang/String;

    return-object v0
.end method
