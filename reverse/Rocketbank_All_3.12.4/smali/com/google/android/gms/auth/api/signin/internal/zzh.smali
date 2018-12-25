.class public Lcom/google/android/gms/auth/api/signin/internal/zzh;
.super Ljava/lang/Object;


# static fields
.field static zzakE:I = 0x1f


# instance fields
.field private zzakF:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzh;->zzakF:I

    return-void
.end method


# virtual methods
.method public zzad(Z)Lcom/google/android/gms/auth/api/signin/internal/zzh;
    .locals 2

    sget v0, Lcom/google/android/gms/auth/api/signin/internal/zzh;->zzakE:I

    iget v1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzh;->zzakF:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzh;->zzakF:I

    return-object p0
.end method

.method public zzq(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/zzh;
    .locals 2

    sget v0, Lcom/google/android/gms/auth/api/signin/internal/zzh;->zzakE:I

    iget v1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzh;->zzakF:I

    mul-int/2addr v0, v1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    :goto_0
    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzh;->zzakF:I

    return-object p0
.end method

.method public zzru()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzh;->zzakF:I

    return v0
.end method
