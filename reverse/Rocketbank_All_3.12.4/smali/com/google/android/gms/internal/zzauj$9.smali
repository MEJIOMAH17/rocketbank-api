.class Lcom/google/android/gms/internal/zzauj$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzauj;->zza(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;

.field final synthetic zzbuR:Ljava/lang/String;

.field final synthetic zzbve:Lcom/google/android/gms/internal/zzauj;

.field final synthetic zzbvj:J

.field final synthetic zzbvo:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzauj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzauj$9;->zzbve:Lcom/google/android/gms/internal/zzauj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzauj$9;->zzbuR:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzauj$9;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzauj$9;->zzbvo:Ljava/lang/Object;

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzauj$9;->zzbvj:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj$9;->zzbve:Lcom/google/android/gms/internal/zzauj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauj$9;->zzbuR:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauj$9;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzauj$9;->zzbvo:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzauj$9;->zzbvj:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzauj;->zza(Lcom/google/android/gms/internal/zzauj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method
