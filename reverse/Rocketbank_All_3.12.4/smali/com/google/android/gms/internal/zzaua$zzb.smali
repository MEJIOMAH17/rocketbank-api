.class public final Lcom/google/android/gms/internal/zzaua$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaua;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "zzb"
.end annotation


# instance fields
.field private final zzAX:Ljava/lang/String;

.field private zzadd:J

.field private zzbtu:Z

.field final synthetic zzbtv:Lcom/google/android/gms/internal/zzaua;

.field private final zzbtw:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzaua;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaua$zzb;->zzbtv:Lcom/google/android/gms/internal/zzaua;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaua$zzb;->zzAX:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzaua$zzb;->zzbtw:J

    return-void
.end method

.method private zzMq()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaua$zzb;->zzbtu:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaua$zzb;->zzbtu:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaua$zzb;->zzbtv:Lcom/google/android/gms/internal/zzaua;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaua;->zza(Lcom/google/android/gms/internal/zzaua;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaua$zzb;->zzAX:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaua$zzb;->zzbtw:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzaua$zzb;->zzadd:J

    return-void
.end method


# virtual methods
.method public final get()J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaua$zzb;->zzMq()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaua$zzb;->zzadd:J

    return-wide v0
.end method

.method public final set(J)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaua$zzb;->zzbtv:Lcom/google/android/gms/internal/zzaua;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaua;->zza(Lcom/google/android/gms/internal/zzaua;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaua$zzb;->zzAX:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzaua$zzb;->zzadd:J

    return-void
.end method
