.class public final Lcom/google/android/gms/internal/zzbym;
.super Ljava/lang/Object;


# static fields
.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field static final zzcwM:I

.field static final zzcwN:I

.field static final zzcwO:I

.field static final zzcwP:I

.field public static final zzcwQ:[I

.field public static final zzcwR:[J

.field public static final zzcwS:[F

.field public static final zzcwT:[D

.field public static final zzcwU:[Z

.field public static final zzcwV:[[B

.field public static final zzcwW:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzbym;->zzO(II)I

    move-result v2

    sput v2, Lcom/google/android/gms/internal/zzbym;->zzcwM:I

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbym;->zzO(II)I

    move-result v1

    sput v1, Lcom/google/android/gms/internal/zzbym;->zzcwN:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbym;->zzO(II)I

    move-result v3

    sput v3, Lcom/google/android/gms/internal/zzbym;->zzcwO:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbym;->zzO(II)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/zzbym;->zzcwP:I

    new-array v0, v2, [I

    sput-object v0, Lcom/google/android/gms/internal/zzbym;->zzcwQ:[I

    new-array v0, v2, [J

    sput-object v0, Lcom/google/android/gms/internal/zzbym;->zzcwR:[J

    new-array v0, v2, [F

    sput-object v0, Lcom/google/android/gms/internal/zzbym;->zzcwS:[F

    new-array v0, v2, [D

    sput-object v0, Lcom/google/android/gms/internal/zzbym;->zzcwT:[D

    new-array v0, v2, [Z

    sput-object v0, Lcom/google/android/gms/internal/zzbym;->zzcwU:[Z

    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzbym;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    new-array v0, v2, [[B

    sput-object v0, Lcom/google/android/gms/internal/zzbym;->zzcwV:[[B

    new-array v0, v2, [B

    sput-object v0, Lcom/google/android/gms/internal/zzbym;->zzcwW:[B

    return-void
.end method

.method public static zzO(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    or-int/2addr p0, p1

    return p0
.end method

.method public static final zzb(Lcom/google/android/gms/internal/zzbyb;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbyb;->getPosition()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbyb;->zzrd(I)Z

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbyb;->zzaeW()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbyb;->zzrd(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbyb;->zzrh(I)V

    return v1
.end method

.method static zzrw(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method public static zzrx(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x3

    return p0
.end method
