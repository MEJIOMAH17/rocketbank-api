.class Lcom/google/android/gms/internal/zzaax$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaac$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaax;->zzwA()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaCx:Lcom/google/android/gms/internal/zzaax;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaax;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaax$1;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzas(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$1;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaax;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaax$1;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaax;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
