.class public final Lcom/flurry/sdk/jx;
.super Ljava/security/MessageDigest;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "CRC"

    .line 13
    invoke-direct {p0, v0}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/jx;->a:Ljava/util/zip/CRC32;

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/flurry/sdk/jx;->engineDigest()[B

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/flurry/sdk/jx;->engineDigest()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method protected final engineDigest()[B
    .locals 7

    .line 37
    iget-object v0, p0, Lcom/flurry/sdk/jx;->a:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    const/4 v2, 0x4

    .line 38
    new-array v2, v2, [B

    const-wide/32 v3, -0x1000000

    and-long v5, v0, v3

    const/16 v3, 0x18

    shr-long v3, v5, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    const-wide/32 v3, 0xff0000

    and-long v5, v0, v3

    const/16 v3, 0x10

    shr-long v3, v5, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    const-wide/32 v3, 0xff00

    and-long v5, v0, v3

    const/16 v3, 0x8

    shr-long v3, v5, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    const/4 v4, 0x2

    aput-byte v3, v2, v4

    const-wide/16 v3, 0xff

    and-long v5, v0, v3

    long-to-int v0, v5

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, v2, v1

    return-object v2
.end method

.method protected final engineReset()V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/flurry/sdk/jx;->a:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    return-void
.end method

.method protected final engineUpdate(B)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/flurry/sdk/jx;->a:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update(I)V

    return-void
.end method

.method protected final engineUpdate([BII)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/flurry/sdk/jx;->a:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    return-void
.end method
