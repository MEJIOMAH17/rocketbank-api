.class public final Lru/rocketbank/core/utils/fs/ExternalFile;
.super Ljava/lang/Object;
.source "ExternalFile.kt"

# interfaces
.implements Lru/rocketbank/core/utils/fs/ExternalFileBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/utils/fs/ExternalFile$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/utils/fs/ExternalFile$Companion;


# instance fields
.field private final synthetic $$delegate_0:Lru/rocketbank/core/utils/fs/ExternalFileBase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/utils/fs/ExternalFile$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/utils/fs/ExternalFile$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/utils/fs/ExternalFile;->Companion:Lru/rocketbank/core/utils/fs/ExternalFile$Companion;

    return-void
.end method

.method public constructor <init>(Lru/rocketbank/core/utils/fs/ExternalFileBase;)V
    .locals 1

    const-string v0, "base"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/utils/fs/ExternalFile;->$$delegate_0:Lru/rocketbank/core/utils/fs/ExternalFileBase;

    return-void
.end method


# virtual methods
.method public final getAbsolutePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/utils/fs/ExternalFile;->$$delegate_0:Lru/rocketbank/core/utils/fs/ExternalFileBase;

    invoke-interface {v0}, Lru/rocketbank/core/utils/fs/ExternalFileBase;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/utils/fs/ExternalFile;->$$delegate_0:Lru/rocketbank/core/utils/fs/ExternalFileBase;

    invoke-interface {v0}, Lru/rocketbank/core/utils/fs/ExternalFileBase;->getFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/utils/fs/ExternalFile;->$$delegate_0:Lru/rocketbank/core/utils/fs/ExternalFileBase;

    invoke-interface {v0}, Lru/rocketbank/core/utils/fs/ExternalFileBase;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
