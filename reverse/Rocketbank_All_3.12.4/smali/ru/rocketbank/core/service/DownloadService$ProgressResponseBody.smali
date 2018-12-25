.class public final Lru/rocketbank/core/service/DownloadService$ProgressResponseBody;
.super Lokhttp3/ResponseBody;
.source "DownloadService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/service/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProgressResponseBody"
.end annotation


# instance fields
.field private bufferedSource:Lokio/BufferedSource;

.field private final progressListener:Lru/rocketbank/core/service/DownloadService$ProgressListener;

.field private final responseBody:Lokhttp3/ResponseBody;


# direct methods
.method public constructor <init>(Lokhttp3/ResponseBody;Lru/rocketbank/core/service/DownloadService$ProgressListener;)V
    .locals 1

    const-string v0, "responseBody"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/service/DownloadService$ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    iput-object p2, p0, Lru/rocketbank/core/service/DownloadService$ProgressResponseBody;->progressListener:Lru/rocketbank/core/service/DownloadService$ProgressListener;

    return-void
.end method

.method public static final synthetic access$getProgressListener$p(Lru/rocketbank/core/service/DownloadService$ProgressResponseBody;)Lru/rocketbank/core/service/DownloadService$ProgressListener;
    .locals 0

    .line 122
    iget-object p0, p0, Lru/rocketbank/core/service/DownloadService$ProgressResponseBody;->progressListener:Lru/rocketbank/core/service/DownloadService$ProgressListener;

    return-object p0
.end method

.method public static final synthetic access$getResponseBody$p(Lru/rocketbank/core/service/DownloadService$ProgressResponseBody;)Lokhttp3/ResponseBody;
    .locals 0

    .line 122
    iget-object p0, p0, Lru/rocketbank/core/service/DownloadService$ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    return-object p0
.end method


# virtual methods
.method public final contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lru/rocketbank/core/service/DownloadService$ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public final contentType()Lokhttp3/MediaType;
    .locals 1

    .line 126
    iget-object v0, p0, Lru/rocketbank/core/service/DownloadService$ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    return-object v0
.end method

.method public final source()Lokio/BufferedSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lru/rocketbank/core/service/DownloadService$ProgressResponseBody;->bufferedSource:Lokio/BufferedSource;

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lru/rocketbank/core/service/DownloadService$ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    const-string v1, "responseBody.source()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lokio/Source;

    .line 1144
    new-instance v1, Lru/rocketbank/core/service/DownloadService$ProgressResponseBody$source$1;

    invoke-direct {v1, p0, v0, v0}, Lru/rocketbank/core/service/DownloadService$ProgressResponseBody$source$1;-><init>(Lru/rocketbank/core/service/DownloadService$ProgressResponseBody;Lokio/Source;Lokio/Source;)V

    check-cast v1, Lokio/Source;

    .line 137
    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/service/DownloadService$ProgressResponseBody;->bufferedSource:Lokio/BufferedSource;

    .line 140
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/service/DownloadService$ProgressResponseBody;->bufferedSource:Lokio/BufferedSource;

    return-object v0
.end method
