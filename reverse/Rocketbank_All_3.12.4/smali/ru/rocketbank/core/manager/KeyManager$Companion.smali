.class public final Lru/rocketbank/core/manager/KeyManager$Companion;
.super Ljava/lang/Object;
.source "KeyManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/manager/KeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lru/rocketbank/core/manager/KeyManager$Companion;

.field private static final TAG:Ljava/lang/String; = "KeyManager"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lru/rocketbank/core/manager/KeyManager$Companion;

    invoke-direct {v0}, Lru/rocketbank/core/manager/KeyManager$Companion;-><init>()V

    sput-object v0, Lru/rocketbank/core/manager/KeyManager$Companion;->$$INSTANCE:Lru/rocketbank/core/manager/KeyManager$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTAG()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lru/rocketbank/core/manager/KeyManager$Companion;->TAG:Ljava/lang/String;

    return-object v0
.end method
