.class final Lcom/google/android/gms/internal/zzbjo$zza;
.super Lcom/google/android/gms/internal/zzbjn$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbjo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zza"
.end annotation


# static fields
.field private static final zzbPg:Lcom/google/android/gms/internal/zzabh$zzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzabh$zzc<",
            "Lcom/google/android/gms/tapandpay/TapAndPay$DataChangedListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaGN:Lcom/google/android/gms/internal/zzaad$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaad$zzb<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaNm:Lcom/google/android/gms/internal/zzabh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzabh<",
            "Lcom/google/android/gms/tapandpay/TapAndPay$DataChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbjo$zza$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbjo$zza$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbjo$zza;->zzbPg:Lcom/google/android/gms/internal/zzabh$zzc;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/internal/zzabh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/internal/zzabh<",
            "Lcom/google/android/gms/tapandpay/TapAndPay$DataChangedListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbjn$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbjo$zza;->zzaGN:Lcom/google/android/gms/internal/zzaad$zzb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbjo$zza;->zzaNm:Lcom/google/android/gms/internal/zzabh;

    return-void
.end method


# virtual methods
.method public final onDataChanged()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjo$zza;->zzaNm:Lcom/google/android/gms/internal/zzabh;

    sget-object v1, Lcom/google/android/gms/internal/zzbjo$zza;->zzbPg:Lcom/google/android/gms/internal/zzabh$zzc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzabh;->zza(Lcom/google/android/gms/internal/zzabh$zzc;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjo$zza;->zzaGN:Lcom/google/android/gms/internal/zzaad$zzb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzaad$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method
