.class final Lcom/crashlytics/android/core/CodedOutputStream;
.super Ljava/lang/Object;
.source "CodedOutputStream.java"

# interfaces
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/core/CodedOutputStream$OutOfSpaceException;
    }
.end annotation


# instance fields
.field private final buffer:[B

.field private final limit:I

.field private final output:Ljava/io/OutputStream;

.field private position:I


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/crashlytics/android/core/CodedOutputStream;->output:Ljava/io/OutputStream;

    .line 89
    iput-object p2, p0, Lcom/crashlytics/android/core/CodedOutputStream;->buffer:[B

    const/4 p1, 0x0

    .line 90
    iput p1, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    const/16 p1, 0x1000

    .line 91
    iput p1, p0, Lcom/crashlytics/android/core/CodedOutputStream;->limit:I

    return-void
.end method

.method public static computeBoolSize$2563259(I)I
    .locals 1

    const/4 v0, 0x0

    .line 11834
    invoke-static {p0, v0}, Lcom/crashlytics/android/core/WireFormat;->makeTag(II)I

    move-result p0

    invoke-static {p0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I
    .locals 1

    const/4 v0, 0x0

    .line 12834
    invoke-static {p0, v0}, Lcom/crashlytics/android/core/WireFormat;->makeTag(II)I

    move-result p0

    invoke-static {p0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result p0

    .line 13602
    invoke-virtual {p1}, Lcom/crashlytics/android/core/ByteString;->size()I

    move-result v0

    invoke-static {v0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    .line 13603
    invoke-virtual {p1}, Lcom/crashlytics/android/core/ByteString;->size()I

    move-result p1

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static computeEnumSize(II)I
    .locals 1

    const/4 v0, 0x0

    .line 14834
    invoke-static {p0, v0}, Lcom/crashlytics/android/core/WireFormat;->makeTag(II)I

    move-result p0

    invoke-static {p0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result p0

    if-ltz p1, :cond_0

    .line 16552
    invoke-static {p1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    :goto_0
    add-int/2addr p0, p1

    return p0
.end method

.method public static computeFloatSize$255e745()I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 8834
    invoke-static {v0, v1}, Lcom/crashlytics/android/core/WireFormat;->makeTag(II)I

    move-result v0

    invoke-static {v0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static computeRawVarint32Size(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static computeSInt32Size$255f288(I)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 16834
    invoke-static {v0, v1}, Lcom/crashlytics/android/core/WireFormat;->makeTag(II)I

    move-result v0

    invoke-static {v0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    shl-int/lit8 v1, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v1

    .line 17643
    invoke-static {p0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static computeTagSize(I)I
    .locals 1

    const/4 v0, 0x0

    .line 834
    invoke-static {p0, v0}, Lcom/crashlytics/android/core/WireFormat;->makeTag(II)I

    move-result p0

    invoke-static {p0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result p0

    return p0
.end method

.method public static computeUInt32Size(II)I
    .locals 1

    const/4 v0, 0x0

    .line 13834
    invoke-static {p0, v0}, Lcom/crashlytics/android/core/WireFormat;->makeTag(II)I

    move-result p0

    invoke-static {p0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result p0

    .line 14611
    invoke-static {p1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeUInt64Size(IJ)I
    .locals 6

    const/4 v0, 0x0

    .line 9834
    invoke-static {p0, v0}, Lcom/crashlytics/android/core/WireFormat;->makeTag(II)I

    move-result p0

    invoke-static {p0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result p0

    const-wide/16 v0, -0x80

    and-long v2, p1, v0

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0x4000

    and-long v4, p1, v2

    cmp-long v2, v4, v0

    if-nez v2, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const-wide/32 v2, -0x200000

    and-long v4, p1, v2

    cmp-long v2, v4, v0

    if-nez v2, :cond_2

    const/4 p1, 0x3

    goto :goto_0

    :cond_2
    const-wide/32 v2, -0x10000000

    and-long v4, p1, v2

    cmp-long v2, v4, v0

    if-nez v2, :cond_3

    const/4 p1, 0x4

    goto :goto_0

    :cond_3
    const-wide v2, -0x800000000L

    and-long v4, p1, v2

    cmp-long v2, v4, v0

    if-nez v2, :cond_4

    const/4 p1, 0x5

    goto :goto_0

    :cond_4
    const-wide v2, -0x40000000000L

    and-long v4, p1, v2

    cmp-long v2, v4, v0

    if-nez v2, :cond_5

    const/4 p1, 0x6

    goto :goto_0

    :cond_5
    const-wide/high16 v2, -0x2000000000000L

    and-long v4, p1, v2

    cmp-long v2, v4, v0

    if-nez v2, :cond_6

    const/4 p1, 0x7

    goto :goto_0

    :cond_6
    const-wide/high16 v2, -0x100000000000000L

    and-long v4, p1, v2

    cmp-long v2, v4, v0

    if-nez v2, :cond_7

    const/16 p1, 0x8

    goto :goto_0

    :cond_7
    const-wide/high16 v2, -0x8000000000000000L

    and-long v4, p1, v2

    cmp-long p1, v4, v0

    if-nez p1, :cond_8

    const/16 p1, 0x9

    goto :goto_0

    :cond_8
    const/16 p1, 0xa

    :goto_0
    add-int/2addr p0, p1

    return p0
.end method

.method public static encodeZigZag32(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static newInstance(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;
    .locals 2

    .line 1108
    new-instance v0, Lcom/crashlytics/android/core/CodedOutputStream;

    const/16 v1, 0x1000

    new-array v1, v1, [B

    invoke-direct {v0, p0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;-><init>(Ljava/io/OutputStream;[B)V

    return-object v0
.end method

.method private refreshBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 661
    iget-object v0, p0, Lcom/crashlytics/android/core/CodedOutputStream;->output:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 663
    new-instance v0, Lcom/crashlytics/android/core/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v0}, Lcom/crashlytics/android/core/CodedOutputStream$OutOfSpaceException;-><init>()V

    throw v0

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/core/CodedOutputStream;->output:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/crashlytics/android/core/CodedOutputStream;->buffer:[B

    iget v2, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 669
    iput v3, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    return-void
.end method

.method private writeRawVarint64(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, -0x80

    and-long v2, p1, v0

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    const/16 v0, 0x1000

    if-nez v4, :cond_1

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 22726
    iget p2, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    if-ne p2, v0, :cond_0

    .line 22727
    invoke-direct {p0}, Lcom/crashlytics/android/core/CodedOutputStream;->refreshBuffer()V

    .line 22730
    :cond_0
    iget-object p2, p0, Lcom/crashlytics/android/core/CodedOutputStream;->buffer:[B

    iget v0, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    aput-byte p1, p2, v0

    return-void

    :cond_1
    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    .line 23726
    iget v2, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    if-ne v2, v0, :cond_2

    .line 23727
    invoke-direct {p0}, Lcom/crashlytics/android/core/CodedOutputStream;->refreshBuffer()V

    .line 23730
    :cond_2
    iget-object v0, p0, Lcom/crashlytics/android/core/CodedOutputStream;->buffer:[B

    iget v2, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    aput-byte v1, v0, v2

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method


# virtual methods
.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 677
    iget-object v0, p0, Lcom/crashlytics/android/core/CodedOutputStream;->output:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 678
    invoke-direct {p0}, Lcom/crashlytics/android/core/CodedOutputStream;->refreshBuffer()V

    :cond_0
    return-void
.end method

.method public final writeBool(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2829
    invoke-static {p1, v0}, Lcom/crashlytics/android/core/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    int-to-byte p1, p2

    .line 4726
    iget p2, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    const/16 v0, 0x1000

    if-ne p2, v0, :cond_0

    .line 4727
    invoke-direct {p0}, Lcom/crashlytics/android/core/CodedOutputStream;->refreshBuffer()V

    .line 4730
    :cond_0
    iget-object p2, p0, Lcom/crashlytics/android/core/CodedOutputStream;->buffer:[B

    iget v0, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    aput-byte p1, p2, v0

    return-void
.end method

.method public final writeBytes(ILcom/crashlytics/android/core/ByteString;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 4829
    invoke-static {p1, v0}, Lcom/crashlytics/android/core/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    .line 5324
    invoke-virtual {p2}, Lcom/crashlytics/android/core/ByteString;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    .line 5740
    invoke-virtual {p2}, Lcom/crashlytics/android/core/ByteString;->size()I

    move-result p1

    .line 5782
    iget v0, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    const/16 v1, 0x1000

    rsub-int v0, v0, 0x1000

    const/4 v2, 0x0

    if-lt v0, p1, :cond_0

    .line 5784
    iget-object v0, p0, Lcom/crashlytics/android/core/CodedOutputStream;->buffer:[B

    iget v1, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    invoke-virtual {p2, v0, v2, v1, p1}, Lcom/crashlytics/android/core/ByteString;->copyTo([BIII)V

    .line 5785
    iget p2, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    return-void

    .line 5789
    :cond_0
    iget v0, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    rsub-int v0, v0, 0x1000

    .line 5790
    iget-object v3, p0, Lcom/crashlytics/android/core/CodedOutputStream;->buffer:[B

    iget v4, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    invoke-virtual {p2, v3, v2, v4, v0}, Lcom/crashlytics/android/core/ByteString;->copyTo([BIII)V

    sub-int/2addr p1, v0

    .line 5793
    iput v1, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    .line 5794
    invoke-direct {p0}, Lcom/crashlytics/android/core/CodedOutputStream;->refreshBuffer()V

    if-gt p1, v1, :cond_1

    .line 5801
    iget-object v1, p0, Lcom/crashlytics/android/core/CodedOutputStream;->buffer:[B

    invoke-virtual {p2, v1, v0, v2, p1}, Lcom/crashlytics/android/core/ByteString;->copyTo([BIII)V

    .line 5802
    iput p1, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    return-void

    .line 5808
    :cond_1
    invoke-virtual {p2}, Lcom/crashlytics/android/core/ByteString;->newInput()Ljava/io/InputStream;

    move-result-object p2

    int-to-long v3, v0

    .line 5809
    invoke-virtual {p2, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    .line 5810
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Skip failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    if-lez p1, :cond_4

    .line 5814
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5815
    iget-object v3, p0, Lcom/crashlytics/android/core/CodedOutputStream;->buffer:[B

    invoke-virtual {p2, v3, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-eq v3, v0, :cond_3

    .line 5817
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Read failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5819
    :cond_3
    iget-object v0, p0, Lcom/crashlytics/android/core/CodedOutputStream;->output:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/crashlytics/android/core/CodedOutputStream;->buffer:[B

    invoke-virtual {v0, v4, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr p1, v3

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final writeEnum(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 6829
    invoke-static {p1, v0}, Lcom/crashlytics/android/core/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    if-ltz p2, :cond_0

    .line 8290
    invoke-virtual {p0, p2}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    return-void

    :cond_0
    int-to-long p1, p2

    .line 8293
    invoke-direct {p0, p1, p2}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint64(J)V

    return-void
.end method

.method public final writeRawByte(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    .line 18726
    iget v0, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 18727
    invoke-direct {p0}, Lcom/crashlytics/android/core/CodedOutputStream;->refreshBuffer()V

    .line 18730
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/core/CodedOutputStream;->buffer:[B

    iget v1, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public final writeRawBytes([B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x1000

    .line 745
    array-length v2, p1

    .line 18751
    iget v3, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    rsub-int v3, v3, 0x1000

    if-lt v3, v2, :cond_0

    .line 18753
    iget-object v1, p0, Lcom/crashlytics/android/core/CodedOutputStream;->buffer:[B

    iget v3, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    invoke-static {p1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18754
    iget p1, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    return-void

    .line 18758
    :cond_0
    iget v3, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    rsub-int v3, v3, 0x1000

    .line 18759
    iget-object v4, p0, Lcom/crashlytics/android/core/CodedOutputStream;->buffer:[B

    iget v5, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    invoke-static {p1, v0, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v2, v3

    .line 18762
    iput v1, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    .line 18763
    invoke-direct {p0}, Lcom/crashlytics/android/core/CodedOutputStream;->refreshBuffer()V

    if-gt v2, v1, :cond_1

    .line 18770
    iget-object v1, p0, Lcom/crashlytics/android/core/CodedOutputStream;->buffer:[B

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18771
    iput v2, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    return-void

    .line 18774
    :cond_1
    iget-object v0, p0, Lcom/crashlytics/android/core/CodedOutputStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public final writeRawVarint32(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    const/16 v1, 0x1000

    if-nez v0, :cond_1

    int-to-byte p1, p1

    .line 20726
    iget v0, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    if-ne v0, v1, :cond_0

    .line 20727
    invoke-direct {p0}, Lcom/crashlytics/android/core/CodedOutputStream;->refreshBuffer()V

    .line 20730
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/core/CodedOutputStream;->buffer:[B

    iget v1, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    aput-byte p1, v0, v1

    return-void

    :cond_1
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 21726
    iget v2, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    if-ne v2, v1, :cond_2

    .line 21727
    invoke-direct {p0}, Lcom/crashlytics/android/core/CodedOutputStream;->refreshBuffer()V

    .line 21730
    :cond_2
    iget-object v1, p0, Lcom/crashlytics/android/core/CodedOutputStream;->buffer:[B

    iget v2, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/crashlytics/android/core/CodedOutputStream;->position:I

    aput-byte v0, v1, v2

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public final writeTag(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 829
    invoke-static {p1, p2}, Lcom/crashlytics/android/core/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    return-void
.end method

.method public final writeUInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 5829
    invoke-static {p1, v0}, Lcom/crashlytics/android/core/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    .line 6330
    invoke-virtual {p0, p2}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    return-void
.end method

.method public final writeUInt64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1829
    invoke-static {p1, v0}, Lcom/crashlytics/android/core/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    .line 2279
    invoke-direct {p0, p2, p3}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint64(J)V

    return-void
.end method
