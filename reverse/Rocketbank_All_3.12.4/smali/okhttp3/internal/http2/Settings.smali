.class public final Lokhttp3/internal/http2/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# instance fields
.field private set:I

.field private final values:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 51
    new-array v0, v0, [I

    iput-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    return-void
.end method


# virtual methods
.method final get(I)I
    .locals 1

    .line 77
    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    aget p1, v0, p1

    return p1
.end method

.method final getHeaderTableSize()I
    .locals 2

    .line 88
    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method final getInitialWindowSize()I
    .locals 2

    .line 114
    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    return v0

    :cond_0
    const v0, 0xffff

    return v0
.end method

.method final getMaxConcurrentStreams$134621()I
    .locals 2

    .line 99
    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    return v0

    :cond_0
    const v0, 0x7fffffff

    return v0
.end method

.method final getMaxFrameSize(I)I
    .locals 2

    .line 104
    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v0, 0x5

    aget p1, p1, v0

    :cond_0
    return p1
.end method

.method final isSet(I)Z
    .locals 2

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 72
    iget v1, p0, Lokhttp3/internal/http2/Settings;->set:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final set(II)Lokhttp3/internal/http2/Settings;
    .locals 2

    if-ltz p1, :cond_1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    .line 64
    iget v1, p0, Lokhttp3/internal/http2/Settings;->set:I

    or-int/2addr v0, v1

    iput v0, p0, Lokhttp3/internal/http2/Settings;->set:I

    .line 65
    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    aput p2, v0, p1

    return-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method final size()I
    .locals 1

    .line 82
    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method
