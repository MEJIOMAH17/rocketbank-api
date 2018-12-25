.class Lcom/google/android/gms/internal/zzbjo$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tapandpay/TapAndPay$GetEnvironmentResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbjo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzc"
.end annotation


# instance fields
.field private final zzahw:Lcom/google/android/gms/common/api/Status;

.field private final zzbPi:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbjo$zzc;->zzbPi:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbjo$zzc;->zzahw:Lcom/google/android/gms/common/api/Status;

    return-void
.end method


# virtual methods
.method public getEnvironment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjo$zzc;->zzbPi:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjo$zzc;->zzahw:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
