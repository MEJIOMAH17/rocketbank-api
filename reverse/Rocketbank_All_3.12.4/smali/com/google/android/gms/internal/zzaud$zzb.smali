.class final Lcom/google/android/gms/internal/zzaud$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zzb"
.end annotation


# instance fields
.field private final zzbtV:Ljava/lang/String;

.field final synthetic zzbtW:Lcom/google/android/gms/internal/zzaud;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzaud;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaud$zzb;->zzbtW:Lcom/google/android/gms/internal/zzaud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaud$zzb;->zzbtV:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final declared-synchronized uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzaud$zzb;->zzbtW:Lcom/google/android/gms/internal/zzaud;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaud;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaud$zzb;->zzbtV:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
