.class public final Lru/rocketbank/core/service/DownloadService$handleActionDownloadPdf$2$1;
.super Ljava/lang/Object;
.source "DownloadService.kt"

# interfaces
.implements Lru/rocketbank/core/service/DownloadService$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/service/DownloadService$handleActionDownloadPdf$2;->intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/service/DownloadService$handleActionDownloadPdf$2;


# direct methods
.method constructor <init>(Lru/rocketbank/core/service/DownloadService$handleActionDownloadPdf$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lru/rocketbank/core/service/DownloadService$handleActionDownloadPdf$2$1;->this$0:Lru/rocketbank/core/service/DownloadService$handleActionDownloadPdf$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update$48779ebf(JJ)V
    .locals 2

    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    .line 76
    div-long/2addr v0, p3

    long-to-int p1, v0

    .line 77
    iget-object p2, p0, Lru/rocketbank/core/service/DownloadService$handleActionDownloadPdf$2$1;->this$0:Lru/rocketbank/core/service/DownloadService$handleActionDownloadPdf$2;

    iget-object p2, p2, Lru/rocketbank/core/service/DownloadService$handleActionDownloadPdf$2;->$notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 p3, 0x0

    const/16 p4, 0x64

    invoke-virtual {p2, p4, p1, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 78
    iget-object p1, p0, Lru/rocketbank/core/service/DownloadService$handleActionDownloadPdf$2$1;->this$0:Lru/rocketbank/core/service/DownloadService$handleActionDownloadPdf$2;

    iget-object p1, p1, Lru/rocketbank/core/service/DownloadService$handleActionDownloadPdf$2;->$notificationManager:Landroid/app/NotificationManager;

    iget-object p2, p0, Lru/rocketbank/core/service/DownloadService$handleActionDownloadPdf$2$1;->this$0:Lru/rocketbank/core/service/DownloadService$handleActionDownloadPdf$2;

    iget-object p2, p2, Lru/rocketbank/core/service/DownloadService$handleActionDownloadPdf$2;->$notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
