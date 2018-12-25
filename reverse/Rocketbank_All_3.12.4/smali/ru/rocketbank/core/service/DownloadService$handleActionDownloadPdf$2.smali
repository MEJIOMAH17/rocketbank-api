.class final Lru/rocketbank/core/service/DownloadService$handleActionDownloadPdf$2;
.super Ljava/lang/Object;
.source "DownloadService.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/service/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $id:I

.field final synthetic $notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field final synthetic $notificationManager:Landroid/app/NotificationManager;


# direct methods
.method constructor <init>(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/app/NotificationManager;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/service/DownloadService$handleActionDownloadPdf$2;->$notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iput-object p2, p0, Lru/rocketbank/core/service/DownloadService$handleActionDownloadPdf$2;->$notificationManager:Landroid/app/NotificationManager;

    const/4 p1, 0x0

    iput p1, p0, Lru/rocketbank/core/service/DownloadService$handleActionDownloadPdf$2;->$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3

    .line 72
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    if-nez p1, :cond_0

    .line 73
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    .line 74
    new-instance v1, Lru/rocketbank/core/service/DownloadService$ProgressResponseBody;

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-string v2, "originalResponse.body()!!"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lru/rocketbank/core/service/DownloadService$handleActionDownloadPdf$2$1;

    invoke-direct {v2, p0}, Lru/rocketbank/core/service/DownloadService$handleActionDownloadPdf$2$1;-><init>(Lru/rocketbank/core/service/DownloadService$handleActionDownloadPdf$2;)V

    check-cast v2, Lru/rocketbank/core/service/DownloadService$ProgressListener;

    invoke-direct {v1, p1, v2}, Lru/rocketbank/core/service/DownloadService$ProgressResponseBody;-><init>(Lokhttp3/ResponseBody;Lru/rocketbank/core/service/DownloadService$ProgressListener;)V

    check-cast v1, Lokhttp3/ResponseBody;

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
