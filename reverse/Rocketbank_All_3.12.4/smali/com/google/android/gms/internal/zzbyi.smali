.class public Lcom/google/android/gms/internal/zzbyi;
.super Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static zzaft()Lcom/google/android/gms/internal/zzbyi;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbyi;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbyi;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzafu()Lcom/google/android/gms/internal/zzbyi;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbyi;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbyi;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzafv()Lcom/google/android/gms/internal/zzbyi;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbyi;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbyi;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzafw()Lcom/google/android/gms/internal/zzbyi;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbyi;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbyi;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzafx()Lcom/google/android/gms/internal/zzbyi;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbyi;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbyi;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzafy()Lcom/google/android/gms/internal/zzbyi;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbyi;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbyi;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzafz()Lcom/google/android/gms/internal/zzbyi;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbyi;

    const-string v1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbyi;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
