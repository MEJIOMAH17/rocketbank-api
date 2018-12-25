.class Lcom/google/android/gms/internal/zzatz$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzatz;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbsX:Z

.field final synthetic zzbsY:Lcom/google/android/gms/internal/zzatz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzatz;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzatz$1;->zzbsY:Lcom/google/android/gms/internal/zzatz;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzatz$1;->zzbsX:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatz$1;->zzbsY:Lcom/google/android/gms/internal/zzatz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzatz;->zza(Lcom/google/android/gms/internal/zzatz;)Lcom/google/android/gms/internal/zzaue;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzatz$1;->zzbsX:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaue;->zzV(Z)V

    return-void
.end method
