.class final Lcom/google/android/gms/internal/zzbjo$zza$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzabh$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbjo$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzabh$zzc<",
        "Lcom/google/android/gms/tapandpay/TapAndPay$DataChangedListener;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/tapandpay/TapAndPay$DataChangedListener;)V
    .locals 0

    invoke-interface {p1}, Lcom/google/android/gms/tapandpay/TapAndPay$DataChangedListener;->onDataChanged()V

    return-void
.end method

.method public final synthetic zzs(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/tapandpay/TapAndPay$DataChangedListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbjo$zza$1;->zza(Lcom/google/android/gms/tapandpay/TapAndPay$DataChangedListener;)V

    return-void
.end method

.method public final zzwc()V
    .locals 0

    return-void
.end method
