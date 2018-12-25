.class public Lcom/google/android/gms/internal/zzaun;
.super Lcom/google/android/gms/internal/zzauh;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field protected zzbvZ:J

.field private final zzbwa:Lcom/google/android/gms/internal/zzatk;

.field private final zzbwb:Lcom/google/android/gms/internal/zzatk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaue;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzauh;-><init>(Lcom/google/android/gms/internal/zzaue;)V

    new-instance p1, Lcom/google/android/gms/internal/zzaun$1;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaun;->zzbqb:Lcom/google/android/gms/internal/zzaue;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/zzaun$1;-><init>(Lcom/google/android/gms/internal/zzaun;Lcom/google/android/gms/internal/zzaue;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaun;->zzbwa:Lcom/google/android/gms/internal/zzatk;

    new-instance p1, Lcom/google/android/gms/internal/zzaun$2;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaun;->zzbqb:Lcom/google/android/gms/internal/zzaue;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/zzaun$2;-><init>(Lcom/google/android/gms/internal/zzaun;Lcom/google/android/gms/internal/zzaue;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaun;->zzbwb:Lcom/google/android/gms/internal/zzatk;

    return-void
.end method

.method private zzNf()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaun;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaun;->mHandler:Landroid/os/Handler;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private zzNi()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zzmR()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaun;->zzaN(Z)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zzJY()Lcom/google/android/gms/internal/zzatb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatb;->zzW(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaun;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaun;->zzNi()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaun;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzaun;->zzat(J)V

    return-void
.end method

.method private zzat(J)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zzmR()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaun;->zzNf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaun;->zzbwa:Lcom/google/android/gms/internal/zzatk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatk;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaun;->zzbwb:Lcom/google/android/gms/internal/zzatk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatk;->cancel()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMf()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Activity resumed, time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzaun;->zzbvZ:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaua;->zzbto:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaua$zzb;->get()J

    move-result-wide v0

    sub-long v2, p1, v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzaua;->zzbtq:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaua$zzb;->get()J

    move-result-wide p1

    cmp-long v0, v2, p1

    const-wide/16 p1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaua;->zzbtp:Lcom/google/android/gms/internal/zzaua$zza;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaua$zza;->set(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaua;->zzbtr:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzaua$zzb;->set(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaua;->zzbtp:Lcom/google/android/gms/internal/zzaua$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaua$zza;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaun;->zzbwa:Lcom/google/android/gms/internal/zzatk;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaua;->zzbtn:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaua$zzb;->get()J

    move-result-wide v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/zzaua;->zzbtr:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzaua$zzb;->get()J

    move-result-wide v3

    sub-long v5, v1, v3

    invoke-static {p1, p2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzatk;->zzy(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaun;->zzbwb:Lcom/google/android/gms/internal/zzatk;

    const-wide/32 v1, 0x36ee80

    goto :goto_0
.end method

.method private zzau(J)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zzmR()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaun;->zzNf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaun;->zzbwa:Lcom/google/android/gms/internal/zzatk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatk;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaun;->zzbwb:Lcom/google/android/gms/internal/zzatk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatk;->cancel()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMf()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Activity paused, time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaun;->zzbvZ:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaua;->zzbtr:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaua;->zzbtr:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaua$zzb;->get()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzaun;->zzbvZ:J

    sub-long v5, p1, v3

    add-long p1, v1, v5

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzaua$zzb;->set(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzaua;->zzbtq:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaua$zzb;->set(J)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzaun;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzaun;->zzau(J)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJV()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzJV()V

    return-void
.end method

.method public bridge synthetic zzJW()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzJW()V

    return-void
.end method

.method public bridge synthetic zzJX()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzJX()V

    return-void
.end method

.method public bridge synthetic zzJY()Lcom/google/android/gms/internal/zzatb;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzJY()Lcom/google/android/gms/internal/zzatb;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJZ()Lcom/google/android/gms/internal/zzatf;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzJZ()Lcom/google/android/gms/internal/zzatf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKa()Lcom/google/android/gms/internal/zzauj;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKa()Lcom/google/android/gms/internal/zzauj;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKb()Lcom/google/android/gms/internal/zzatu;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKb()Lcom/google/android/gms/internal/zzatu;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKc()Lcom/google/android/gms/internal/zzatl;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKc()Lcom/google/android/gms/internal/zzatl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKd()Lcom/google/android/gms/internal/zzaul;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKd()Lcom/google/android/gms/internal/zzaul;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKe()Lcom/google/android/gms/internal/zzauk;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKe()Lcom/google/android/gms/internal/zzauk;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKf()Lcom/google/android/gms/internal/zzatv;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKf()Lcom/google/android/gms/internal/zzatv;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKg()Lcom/google/android/gms/internal/zzatj;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKh()Lcom/google/android/gms/internal/zzaut;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKi()Lcom/google/android/gms/internal/zzauc;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKi()Lcom/google/android/gms/internal/zzauc;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKj()Lcom/google/android/gms/internal/zzaun;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKj()Lcom/google/android/gms/internal/zzaun;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKk()Lcom/google/android/gms/internal/zzaud;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKl()Lcom/google/android/gms/internal/zzatx;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKm()Lcom/google/android/gms/internal/zzaua;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKn()Lcom/google/android/gms/internal/zzati;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    return-object v0
.end method

.method protected zzNe()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzaun$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/gms/internal/zzaun$3;-><init>(Lcom/google/android/gms/internal/zzaun;J)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzaud;->zzm(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected zzNg()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzaun$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/gms/internal/zzaun$4;-><init>(Lcom/google/android/gms/internal/zzaun;J)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzaud;->zzm(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected zzNh()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMf()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Session started, time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaua;->zzbtp:Lcom/google/android/gms/internal/zzaua$zza;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaua$zza;->set(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zzKa()Lcom/google/android/gms/internal/zzauj;

    move-result-object v0

    const-string v1, "auto"

    const-string v2, "_s"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzauj;->zze(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public zzaN(Z)Z
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaun;->zzbvZ:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const-wide/32 v2, 0x36ee80

    if-nez v6, :cond_0

    sub-long v6, v0, v2

    iput-wide v6, p0, Lcom/google/android/gms/internal/zzaun;->zzbvZ:J

    :cond_0
    iget-wide v6, p0, Lcom/google/android/gms/internal/zzaun;->zzbvZ:J

    sub-long v8, v0, v6

    if-nez p1, :cond_1

    const-wide/16 v6, 0x3e8

    cmp-long p1, v8, v6

    if-gez p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzMf()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string v0, "Screen exposed for less than 1000 ms. Event not sent. time"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzaua;->zzbtr:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {p1, v8, v9}, Lcom/google/android/gms/internal/zzaua$zzb;->set(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzMf()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string v6, "Recording user engagement, ms"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v6, "_et"

    invoke-virtual {p1, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zzKe()Lcom/google/android/gms/internal/zzauk;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzauk;->zzMW()Lcom/google/android/gms/internal/zzauk$zza;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/google/android/gms/internal/zzauk;->zza(Lcom/google/android/gms/measurement/AppMeasurement$zzf;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zzKa()Lcom/google/android/gms/internal/zzauj;

    move-result-object v6

    const-string v7, "auto"

    const-string v8, "_e"

    invoke-virtual {v6, v7, v8, p1}, Lcom/google/android/gms/internal/zzauj;->zze(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzaun;->zzbvZ:J

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaun;->zzbwb:Lcom/google/android/gms/internal/zzatk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatk;->cancel()V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaun;->zzbwb:Lcom/google/android/gms/internal/zzatk;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaun;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaua;->zzbtr:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaua$zzb;->get()J

    move-result-wide v0

    sub-long v6, v2, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzatk;->zzy(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic zzmR()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzmR()V

    return-void
.end method

.method protected zzmS()V
    .locals 0

    return-void
.end method

.method public bridge synthetic zznR()Lcom/google/android/gms/common/util/zze;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    return-object v0
.end method
