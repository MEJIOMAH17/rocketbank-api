.class public Lcom/google/android/gms/internal/zzaul;
.super Lcom/google/android/gms/internal/zzauh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzaul$zza;
    }
.end annotation


# instance fields
.field private final zzbvD:Lcom/google/android/gms/internal/zzaul$zza;

.field private zzbvE:Lcom/google/android/gms/internal/zzatt;

.field private zzbvF:Ljava/lang/Boolean;

.field private final zzbvG:Lcom/google/android/gms/internal/zzatk;

.field private final zzbvH:Lcom/google/android/gms/internal/zzauo;

.field private final zzbvI:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbvJ:Lcom/google/android/gms/internal/zzatk;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzaue;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzauh;-><init>(Lcom/google/android/gms/internal/zzaue;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvI:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/zzauo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzauo;-><init>(Lcom/google/android/gms/common/util/zze;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvH:Lcom/google/android/gms/internal/zzauo;

    new-instance v0, Lcom/google/android/gms/internal/zzaul$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaul$zza;-><init>(Lcom/google/android/gms/internal/zzaul;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvD:Lcom/google/android/gms/internal/zzaul$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzaul$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzaul$1;-><init>(Lcom/google/android/gms/internal/zzaul;Lcom/google/android/gms/internal/zzaue;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvG:Lcom/google/android/gms/internal/zzatk;

    new-instance v0, Lcom/google/android/gms/internal/zzaul$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzaul$5;-><init>(Lcom/google/android/gms/internal/zzaul;Lcom/google/android/gms/internal/zzaue;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvJ:Lcom/google/android/gms/internal/zzatk;

    return-void
.end method

.method private onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvE:Lcom/google/android/gms/internal/zzatt;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvE:Lcom/google/android/gms/internal/zzatt;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMf()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Disconnected from device MeasurementService"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaul;->zzNb()V

    :cond_0
    return-void
.end method

.method private zzMZ()Z
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLh()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private zzNb()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzoD()V

    return-void
.end method

.method private zzNc()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMf()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Processing queued up service tasks"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaul;->zzbvI:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzaud;->zzm(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvJ:Lcom/google/android/gms/internal/zzatk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatk;->cancel()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaul;Lcom/google/android/gms/internal/zzatt;)Lcom/google/android/gms/internal/zzatt;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaul;->zzbvE:Lcom/google/android/gms/internal/zzatt;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaul;)Lcom/google/android/gms/internal/zzaul$zza;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvD:Lcom/google/android/gms/internal/zzaul$zza;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaul;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaul;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzaul;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaul;->zzNc()V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzaul;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaul;->zzop()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzaul;)Lcom/google/android/gms/internal/zzatt;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvE:Lcom/google/android/gms/internal/zzatt;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzaul;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaul;->zzoo()V

    return-void
.end method

.method private zzo(Ljava/lang/Runnable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzati;->zzLn()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string v0, "Discarding data. Max runnable queue size reached"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvI:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaul;->zzbvJ:Lcom/google/android/gms/internal/zzatk;

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzatk;->zzy(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzoD()V

    return-void
.end method

.method private zzoo()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvH:Lcom/google/android/gms/internal/zzauo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauo;->start()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvG:Lcom/google/android/gms/internal/zzatk;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzati;->zzpq()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatk;->zzy(J)V

    return-void
.end method

.method private zzop()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMf()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Inactivity, disconnecting from the service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->disconnect()V

    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzob()V

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/stats/zza;->zzyJ()Lcom/google/android/gms/common/stats/zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaul;->zzbvD:Lcom/google/android/gms/internal/zzaul$zza;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/zza;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvE:Lcom/google/android/gms/internal/zzatt;

    return-void
.end method

.method public bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzob()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvE:Lcom/google/android/gms/internal/zzatt;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
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

.method protected zzMT()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzob()V

    new-instance v0, Lcom/google/android/gms/internal/zzaul$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaul$3;-><init>(Lcom/google/android/gms/internal/zzaul;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaul;->zzo(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected zzMY()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzob()V

    new-instance v0, Lcom/google/android/gms/internal/zzaul$6;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaul$6;-><init>(Lcom/google/android/gms/internal/zzaul;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaul;->zzo(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected zzNa()Z
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLh()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMf()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Checking service availability"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/common/zze;->zzuY()Lcom/google/android/gms/common/zze;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zze;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMb()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Service disabled"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    return v2

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Service container out of date"

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    return v3

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMf()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Service missing"

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMf()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Service available"

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMb()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Service updating"

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMb()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Service invalid"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected zza(Lcom/google/android/gms/internal/zzatt;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaul;->zzbvE:Lcom/google/android/gms/internal/zzatt;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaul;->zzoo()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaul;->zzNc()V

    return-void
.end method

.method zza(Lcom/google/android/gms/internal/zzatt;Lcom/google/android/gms/common/internal/safeparcel/zza;)V
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzJW()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzob()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLh()Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzati;->zzLq()I

    const/4 v1, 0x0

    const/16 v2, 0x64

    move v3, v1

    move v4, v2

    :goto_0
    const/16 v5, 0x3e9

    if-ge v3, v5, :cond_6

    if-ne v4, v2, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKf()Lcom/google/android/gms/internal/zzatv;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/zzatv;->zzlD(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    if-eqz p2, :cond_1

    if-ge v4, v2, :cond_1

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/internal/safeparcel/zza;

    instance-of v7, v6, Lcom/google/android/gms/internal/zzatq;

    if-eqz v7, :cond_2

    :try_start_0
    check-cast v6, Lcom/google/android/gms/internal/zzatq;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKb()Lcom/google/android/gms/internal/zzatu;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzatx;->zzMg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/zzatu;->zzfD(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatd;

    move-result-object v7

    invoke-interface {p1, v6, v7}, Lcom/google/android/gms/internal/zzatt;->zza(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v7

    const-string v8, "Failed to send event to the service"

    :goto_3
    invoke-virtual {v7, v8, v6}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    instance-of v7, v6, Lcom/google/android/gms/internal/zzauq;

    if-eqz v7, :cond_3

    :try_start_1
    check-cast v6, Lcom/google/android/gms/internal/zzauq;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKb()Lcom/google/android/gms/internal/zzatu;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzatx;->zzMg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/zzatu;->zzfD(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatd;

    move-result-object v7

    invoke-interface {p1, v6, v7}, Lcom/google/android/gms/internal/zzatt;->zza(Lcom/google/android/gms/internal/zzauq;Lcom/google/android/gms/internal/zzatd;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v7

    const-string v8, "Failed to send attribute to the service"

    goto :goto_3

    :cond_3
    instance-of v7, v6, Lcom/google/android/gms/internal/zzatg;

    if-eqz v7, :cond_4

    :try_start_2
    check-cast v6, Lcom/google/android/gms/internal/zzatg;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKb()Lcom/google/android/gms/internal/zzatu;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzatx;->zzMg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/zzatu;->zzfD(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatd;

    move-result-object v7

    invoke-interface {p1, v6, v7}, Lcom/google/android/gms/internal/zzatt;->zza(Lcom/google/android/gms/internal/zzatg;Lcom/google/android/gms/internal/zzatd;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v7

    const-string v8, "Failed to send conditional property to the service"

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v6

    const-string v7, "Discarding data. Unrecognized parcel type."

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method protected zza(Lcom/google/android/gms/measurement/AppMeasurement$zzf;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzob()V

    new-instance v0, Lcom/google/android/gms/internal/zzaul$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzaul$4;-><init>(Lcom/google/android/gms/internal/zzaul;Lcom/google/android/gms/measurement/AppMeasurement$zzf;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaul;->zzo(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zza(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzob()V

    new-instance v0, Lcom/google/android/gms/internal/zzaul$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzaul$2;-><init>(Lcom/google/android/gms/internal/zzaul;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaul;->zzo(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzatg;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzob()V

    new-instance v6, Lcom/google/android/gms/internal/zzaul$9;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzaul$9;-><init>(Lcom/google/android/gms/internal/zzaul;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/zzaul;->zzo(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzauq;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzob()V

    new-instance v7, Lcom/google/android/gms/internal/zzaul$10;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzaul$10;-><init>(Lcom/google/android/gms/internal/zzaul;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/zzaul;->zzo(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected zza(Ljava/util/concurrent/atomic/AtomicReference;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzauq;",
            ">;>;Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzob()V

    new-instance v0, Lcom/google/android/gms/internal/zzaul$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzaul$12;-><init>(Lcom/google/android/gms/internal/zzaul;Ljava/util/concurrent/atomic/AtomicReference;Z)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaul;->zzo(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected zzb(Lcom/google/android/gms/internal/zzauq;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzob()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLh()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKf()Lcom/google/android/gms/internal/zzatv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzatv;->zza(Lcom/google/android/gms/internal/zzauq;)Z

    move-result v0

    new-instance v1, Lcom/google/android/gms/internal/zzaul$11;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/internal/zzaul$11;-><init>(Lcom/google/android/gms/internal/zzaul;ZLcom/google/android/gms/internal/zzauq;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzaul;->zzo(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected zzc(Lcom/google/android/gms/internal/zzatq;Ljava/lang/String;)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzob()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLh()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKf()Lcom/google/android/gms/internal/zzatv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzatv;->zza(Lcom/google/android/gms/internal/zzatq;)Z

    move-result v4

    new-instance v0, Lcom/google/android/gms/internal/zzaul$7;

    const/4 v3, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzaul$7;-><init>(Lcom/google/android/gms/internal/zzaul;ZZLcom/google/android/gms/internal/zzatq;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaul;->zzo(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected zzf(Lcom/google/android/gms/internal/zzatg;)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLh()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKf()Lcom/google/android/gms/internal/zzatv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzatv;->zzc(Lcom/google/android/gms/internal/zzatg;)Z

    move-result v4

    new-instance v5, Lcom/google/android/gms/internal/zzatg;

    invoke-direct {v5, p1}, Lcom/google/android/gms/internal/zzatg;-><init>(Lcom/google/android/gms/internal/zzatg;)V

    new-instance v0, Lcom/google/android/gms/internal/zzaul$8;

    const/4 v3, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzaul$8;-><init>(Lcom/google/android/gms/internal/zzaul;ZZLcom/google/android/gms/internal/zzatg;Lcom/google/android/gms/internal/zzatg;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaul;->zzo(Ljava/lang/Runnable;)V

    return-void
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

.method zzoD()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvF:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaua;->zzMn()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvF:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvF:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMf()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "State of service unknown"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzNa()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvF:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaul;->zzbvF:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaua;->zzaJ(Z)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvF:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMf()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Using measurement service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvD:Lcom/google/android/gms/internal/zzaul$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaul$zza;->zzNd()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaul;->zzMZ()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMf()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Using local app measurement service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.measurement.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzati;->zzLh()Z

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaul;->zzbvD:Lcom/google/android/gms/internal/zzaul$zza;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzaul$zza;->zzz(Landroid/content/Intent;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    return-void
.end method
