.class public final Lru/rocketbank/core/utils/fs/ExternalFile$Companion;
.super Ljava/lang/Object;
.source "ExternalFile.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/utils/fs/ExternalFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lru/rocketbank/core/utils/fs/ExternalFile$Companion;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lru/rocketbank/core/utils/AppConfig;Ljava/io/File;)Lru/rocketbank/core/utils/fs/ExternalFile;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lru/rocketbank/core/utils/fs/ExternalFile;

    new-instance v1, Lru/rocketbank/core/utils/fs/ExternalFileImpl;

    invoke-direct {v1, p0, p1, p2}, Lru/rocketbank/core/utils/fs/ExternalFileImpl;-><init>(Landroid/content/Context;Lru/rocketbank/core/utils/AppConfig;Ljava/io/File;)V

    check-cast v1, Lru/rocketbank/core/utils/fs/ExternalFileBase;

    invoke-direct {v0, v1}, Lru/rocketbank/core/utils/fs/ExternalFile;-><init>(Lru/rocketbank/core/utils/fs/ExternalFileBase;)V

    return-object v0
.end method
