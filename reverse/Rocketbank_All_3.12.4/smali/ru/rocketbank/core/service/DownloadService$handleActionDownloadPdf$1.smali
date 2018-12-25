.class final Lru/rocketbank/core/service/DownloadService$handleActionDownloadPdf$1;
.super Ljava/lang/Object;
.source "DownloadService.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/service/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/service/DownloadService;


# direct methods
.method constructor <init>(Lru/rocketbank/core/service/DownloadService;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/service/DownloadService$handleActionDownloadPdf$1;->this$0:Lru/rocketbank/core/service/DownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 55
    iget-object v0, p0, Lru/rocketbank/core/service/DownloadService$handleActionDownloadPdf$1;->this$0:Lru/rocketbank/core/service/DownloadService;

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f110168

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
