.class final Lru/rocketbank/core/utils/fs/ExternalFileImpl$uri$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ExternalFileImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/utils/fs/ExternalFileImpl;-><init>(Landroid/content/Context;Lru/rocketbank/core/utils/AppConfig;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $appConfig:Lru/rocketbank/core/utils/AppConfig;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lru/rocketbank/core/utils/fs/ExternalFileImpl;


# direct methods
.method constructor <init>(Lru/rocketbank/core/utils/fs/ExternalFileImpl;Landroid/content/Context;Lru/rocketbank/core/utils/AppConfig;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/utils/fs/ExternalFileImpl$uri$2;->this$0:Lru/rocketbank/core/utils/fs/ExternalFileImpl;

    iput-object p2, p0, Lru/rocketbank/core/utils/fs/ExternalFileImpl$uri$2;->$context:Landroid/content/Context;

    iput-object p3, p0, Lru/rocketbank/core/utils/fs/ExternalFileImpl$uri$2;->$appConfig:Lru/rocketbank/core/utils/AppConfig;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/net/Uri;
    .locals 3

    .line 20
    :try_start_0
    iget-object v0, p0, Lru/rocketbank/core/utils/fs/ExternalFileImpl$uri$2;->$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lru/rocketbank/core/utils/fs/ExternalFileImpl$uri$2;->$appConfig:Lru/rocketbank/core/utils/AppConfig;

    invoke-virtual {v2}, Lru/rocketbank/core/utils/AppConfig;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/core/utils/fs/ExternalFileImpl$uri$2;->this$0:Lru/rocketbank/core/utils/fs/ExternalFileImpl;

    invoke-virtual {v2}, Lru/rocketbank/core/utils/fs/ExternalFileImpl;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 22
    invoke-static {v0}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lru/rocketbank/core/utils/fs/ExternalFileImpl$uri$2;->invoke()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
