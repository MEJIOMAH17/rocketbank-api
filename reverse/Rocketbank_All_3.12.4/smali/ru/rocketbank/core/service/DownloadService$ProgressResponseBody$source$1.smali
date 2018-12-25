.class public final Lru/rocketbank/core/service/DownloadService$ProgressResponseBody$source$1;
.super Lokio/ForwardingSource;
.source "DownloadService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/service/DownloadService$ProgressResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $source:Lokio/Source;

.field final synthetic this$0:Lru/rocketbank/core/service/DownloadService$ProgressResponseBody;

.field private totalBytesRead:J


# direct methods
.method constructor <init>(Lru/rocketbank/core/service/DownloadService$ProgressResponseBody;Lokio/Source;Lokio/Source;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Source;",
            "Lokio/Source;",
            ")V"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lru/rocketbank/core/service/DownloadService$ProgressResponseBody$source$1;->this$0:Lru/rocketbank/core/service/DownloadService$ProgressResponseBody;

    iput-object p2, p0, Lru/rocketbank/core/service/DownloadService$ProgressResponseBody$source$1;->$source:Lokio/Source;

    invoke-direct {p0, p3}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    return-void
.end method


# virtual methods
.method public final read(Lokio/Buffer;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide p1

    .line 151
    iget-wide v0, p0, Lru/rocketbank/core/service/DownloadService$ProgressResponseBody$source$1;->totalBytesRead:J

    const-wide/16 v2, -0x1

    cmp-long p3, p1, v2

    if-eqz p3, :cond_0

    move-wide v2, p1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    add-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/core/service/DownloadService$ProgressResponseBody$source$1;->totalBytesRead:J

    .line 152
    iget-object p3, p0, Lru/rocketbank/core/service/DownloadService$ProgressResponseBody$source$1;->this$0:Lru/rocketbank/core/service/DownloadService$ProgressResponseBody;

    invoke-static {p3}, Lru/rocketbank/core/service/DownloadService$ProgressResponseBody;->access$getProgressListener$p(Lru/rocketbank/core/service/DownloadService$ProgressResponseBody;)Lru/rocketbank/core/service/DownloadService$ProgressListener;

    move-result-object p3

    iget-wide v0, p0, Lru/rocketbank/core/service/DownloadService$ProgressResponseBody$source$1;->totalBytesRead:J

    iget-object v2, p0, Lru/rocketbank/core/service/DownloadService$ProgressResponseBody$source$1;->this$0:Lru/rocketbank/core/service/DownloadService$ProgressResponseBody;

    invoke-static {v2}, Lru/rocketbank/core/service/DownloadService$ProgressResponseBody;->access$getResponseBody$p(Lru/rocketbank/core/service/DownloadService$ProgressResponseBody;)Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    invoke-interface {p3, v0, v1, v2, v3}, Lru/rocketbank/core/service/DownloadService$ProgressListener;->update$48779ebf(JJ)V

    return-wide p1
.end method
