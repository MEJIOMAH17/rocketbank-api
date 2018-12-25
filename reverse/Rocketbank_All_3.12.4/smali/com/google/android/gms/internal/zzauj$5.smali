.class Lcom/google/android/gms/internal/zzauj$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzauj;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbkV:Ljava/lang/String;

.field final synthetic zzbuR:Ljava/lang/String;

.field final synthetic zzbuS:Ljava/lang/String;

.field final synthetic zzbve:Lcom/google/android/gms/internal/zzauj;

.field final synthetic zzbvg:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic zzbvh:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzauj;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzauj$5;->zzbve:Lcom/google/android/gms/internal/zzauj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzauj$5;->zzbvg:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzauj$5;->zzbkV:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzauj$5;->zzbuR:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzauj$5;->zzbuS:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzauj$5;->zzbvh:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj$5;->zzbve:Lcom/google/android/gms/internal/zzauj;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzauj;->zzbqb:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKd()Lcom/google/android/gms/internal/zzaul;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauj$5;->zzbvg:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzauj$5;->zzbkV:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzauj$5;->zzbuR:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzauj$5;->zzbuS:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/gms/internal/zzauj$5;->zzbvh:Z

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzaul;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
