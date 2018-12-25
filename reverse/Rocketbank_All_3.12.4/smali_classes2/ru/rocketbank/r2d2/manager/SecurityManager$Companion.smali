.class public final Lru/rocketbank/r2d2/manager/SecurityManager$Companion;
.super Ljava/lang/Object;
.source "SecurityManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/manager/SecurityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lru/rocketbank/r2d2/manager/SecurityManager$Companion;-><init>()V

    return-void
.end method

.method public static synthetic TAG$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getInstance()Lru/rocketbank/r2d2/manager/SecurityManager;
    .locals 1

    .line 76
    invoke-static {}, Lru/rocketbank/r2d2/manager/SecurityManager;->access$getInstance$cp()Lru/rocketbank/r2d2/manager/SecurityManager;

    move-result-object v0

    return-object v0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 73
    invoke-static {}, Lru/rocketbank/r2d2/manager/SecurityManager;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
