.class public final Lru/rocketbank/core/utils/fs/FileManager;
.super Ljava/lang/Object;
.source "FileManager.kt"


# instance fields
.field private final appConfig:Lru/rocketbank/core/utils/AppConfig;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lru/rocketbank/core/utils/AppConfig;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/utils/fs/FileManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lru/rocketbank/core/utils/fs/FileManager;->appConfig:Lru/rocketbank/core/utils/AppConfig;

    return-void
.end method


# virtual methods
.method public final createFromPath(Ljava/lang/String;)Lru/rocketbank/core/utils/fs/ExternalFile;
    .locals 2

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    sget-object p1, Lru/rocketbank/core/utils/fs/ExternalFile;->Companion:Lru/rocketbank/core/utils/fs/ExternalFile$Companion;

    iget-object p1, p0, Lru/rocketbank/core/utils/fs/FileManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lru/rocketbank/core/utils/fs/FileManager;->appConfig:Lru/rocketbank/core/utils/AppConfig;

    invoke-static {p1, v1, v0}, Lru/rocketbank/core/utils/fs/ExternalFile$Companion;->create(Landroid/content/Context;Lru/rocketbank/core/utils/AppConfig;Ljava/io/File;)Lru/rocketbank/core/utils/fs/ExternalFile;

    move-result-object p1

    return-object p1
.end method

.method public final createPublicImageFile(Ljava/lang/String;Ljava/lang/String;)Lru/rocketbank/core/utils/fs/ExternalFile;
    .locals 3

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extension"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 13
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    sget-object p1, Lru/rocketbank/core/utils/fs/ExternalFile;->Companion:Lru/rocketbank/core/utils/fs/ExternalFile$Companion;

    iget-object p1, p0, Lru/rocketbank/core/utils/fs/FileManager;->context:Landroid/content/Context;

    iget-object p2, p0, Lru/rocketbank/core/utils/fs/FileManager;->appConfig:Lru/rocketbank/core/utils/AppConfig;

    invoke-static {p1, p2, v1}, Lru/rocketbank/core/utils/fs/ExternalFile$Companion;->create(Landroid/content/Context;Lru/rocketbank/core/utils/AppConfig;Ljava/io/File;)Lru/rocketbank/core/utils/fs/ExternalFile;

    move-result-object p1

    return-object p1
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 8
    iget-object v0, p0, Lru/rocketbank/core/utils/fs/FileManager;->context:Landroid/content/Context;

    return-object v0
.end method
