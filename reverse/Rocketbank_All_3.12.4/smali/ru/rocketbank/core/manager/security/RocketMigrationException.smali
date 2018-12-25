.class public final Lru/rocketbank/core/manager/security/RocketMigrationException;
.super Ljava/lang/Exception;
.source "RocketMigrationException.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/manager/security/RocketMigrationException$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/manager/security/RocketMigrationException$Companion;

.field private static final serialVersionUID:J = 0x5febc07d9d577c9aL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/manager/security/RocketMigrationException$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/manager/security/RocketMigrationException$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/manager/security/RocketMigrationException;->Companion:Lru/rocketbank/core/manager/security/RocketMigrationException$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
