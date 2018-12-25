.class public Lcom/google/android/gms/internal/zzaue;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzaue$zza;
    }
.end annotation


# static fields
.field private static volatile zzbub:Lcom/google/android/gms/internal/zzaue;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzadP:Z

.field private zzbuA:Ljava/nio/channels/FileLock;

.field private zzbuB:Ljava/nio/channels/FileChannel;

.field private zzbuC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzbuD:I

.field private zzbuE:I

.field private zzbuF:J

.field protected zzbuG:J

.field private final zzbuH:J

.field private final zzbuc:Lcom/google/android/gms/internal/zzati;

.field private final zzbud:Lcom/google/android/gms/internal/zzaua;

.field private final zzbue:Lcom/google/android/gms/internal/zzatx;

.field private final zzbuf:Lcom/google/android/gms/internal/zzaud;

.field private final zzbug:Lcom/google/android/gms/internal/zzaun;

.field private final zzbuh:Lcom/google/android/gms/internal/zzauc;

.field private final zzbui:Lcom/google/android/gms/measurement/AppMeasurement;

.field private final zzbuj:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private final zzbuk:Lcom/google/android/gms/internal/zzaut;

.field private final zzbul:Lcom/google/android/gms/internal/zzatj;

.field private final zzbum:Lcom/google/android/gms/internal/zzatv;

.field private final zzbun:Lcom/google/android/gms/internal/zzaty;

.field private final zzbuo:Lcom/google/android/gms/internal/zzauk;

.field private final zzbup:Lcom/google/android/gms/internal/zzaul;

.field private final zzbuq:Lcom/google/android/gms/internal/zzatl;

.field private final zzbur:Lcom/google/android/gms/internal/zzauj;

.field private final zzbus:Lcom/google/android/gms/internal/zzatu;

.field private final zzbut:Lcom/google/android/gms/internal/zzatz;

.field private final zzbuu:Lcom/google/android/gms/internal/zzaup;

.field private final zzbuv:Lcom/google/android/gms/internal/zzatf;

.field private final zzbuw:Lcom/google/android/gms/internal/zzatb;

.field private zzbux:Z

.field private zzbuy:Ljava/lang/Boolean;

.field private zzbuz:J

.field private final zzuP:Lcom/google/android/gms/common/util/zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaui;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaui;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->mContext:Landroid/content/Context;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuF:J

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzn(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzuP:Lcom/google/android/gms/common/util/zze;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuH:J

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zza(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuc:Lcom/google/android/gms/internal/zzati;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzb(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaua;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbud:Lcom/google/android/gms/internal/zzaua;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzc(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbue:Lcom/google/android/gms/internal/zzatx;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "App measurement is starting up, version"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzati;->zzKv()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLh()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzj(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzaut;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaut;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuk:Lcom/google/android/gms/internal/zzaut;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzq(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzatl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatl;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuq:Lcom/google/android/gms/internal/zzatl;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzr(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzatu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatu;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbus:Lcom/google/android/gms/internal/zzatu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzati;->zzLh()Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatu;->zzke()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzaut;->zzge(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Debug-level message logging enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzk(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbul:Lcom/google/android/gms/internal/zzatj;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzl(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzatv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatv;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbum:Lcom/google/android/gms/internal/zzatv;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzu(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzatf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatf;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuv:Lcom/google/android/gms/internal/zzatf;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzv(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzatb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuw:Lcom/google/android/gms/internal/zzatb;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzm(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzaty;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaty;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbun:Lcom/google/android/gms/internal/zzaty;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzo(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzauk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauk;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuo:Lcom/google/android/gms/internal/zzauk;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzp(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzaul;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaul;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbup:Lcom/google/android/gms/internal/zzaul;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzi(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzauj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauj;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbur:Lcom/google/android/gms/internal/zzauj;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzt(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzaup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaup;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuu:Lcom/google/android/gms/internal/zzaup;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzs(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzatz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbut:Lcom/google/android/gms/internal/zzatz;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzh(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbui:Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzg(Lcom/google/android/gms/internal/zzaue;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuj:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zze(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzaun;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaun;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbug:Lcom/google/android/gms/internal/zzaun;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzf(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzauc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauc;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuh:Lcom/google/android/gms/internal/zzauc;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzd(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzaud;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaud;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaue;->zzbuf:Lcom/google/android/gms/internal/zzaud;

    iget p1, p0, Lcom/google/android/gms/internal/zzaue;->zzbuD:I

    iget v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuE:I

    if-eq p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string v0, "Not all components initialized"

    iget v1, p0, Lcom/google/android/gms/internal/zzaue;->zzbuD:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/zzaue;->zzbuE:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzaue;->zzadP:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaue;->zzbuc:Lcom/google/android/gms/internal/zzati;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzati;->zzLh()Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaue;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_3

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKa()Lcom/google/android/gms/internal/zzauj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzauj;->zzMS()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzMb()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string v0, "Application context is not an Application"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzaue;->zzbuf:Lcom/google/android/gms/internal/zzaud;

    new-instance v0, Lcom/google/android/gms/internal/zzaue$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaue$1;-><init>(Lcom/google/android/gms/internal/zzaue;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaud;->zzm(Ljava/lang/Runnable;)V

    return-void
.end method

.method private zzMJ()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->zzLK()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->zzLE()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private zzMK()V
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMO()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuG:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v4, 0x36ee80

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzaue;->zzbuG:J

    sub-long v8, v0, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sub-long v6, v4, v0

    cmp-long v0, v6, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMf()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Upload has been suspended. Will update scheduling later in approximately ms"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMA()Lcom/google/android/gms/internal/zzatz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatz;->unregister()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMB()Lcom/google/android/gms/internal/zzaup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaup;->cancel()V

    return-void

    :cond_1
    iput-wide v2, p0, Lcom/google/android/gms/internal/zzaue;->zzbuG:J

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMu()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaue;->zzMJ()Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaue;->zzML()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMA()Lcom/google/android/gms/internal/zzatz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatz;->unregister()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMB()Lcom/google/android/gms/internal/zzaup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaup;->cancel()V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMz()Lcom/google/android/gms/internal/zzaty;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzaty;->zzqa()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMA()Lcom/google/android/gms/internal/zzatz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatz;->zzpX()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMB()Lcom/google/android/gms/internal/zzaup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaup;->cancel()V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/zzaua;->zzbtd:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzaua$zzb;->get()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzati;->zzLt()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v8

    invoke-virtual {v8, v4, v5, v6, v7}, Lcom/google/android/gms/internal/zzaut;->zzh(JJ)Z

    move-result v8

    if-nez v8, :cond_6

    add-long v8, v4, v6

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMA()Lcom/google/android/gms/internal/zzatz;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzatz;->unregister()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v0, v4

    cmp-long v0, v6, v2

    if-gtz v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLx()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaua;->zzbtb:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzaua$zzb;->set(J)V

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMf()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Upload scheduled in approximately ms"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMB()Lcom/google/android/gms/internal/zzaup;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/zzaup;->zzy(J)V

    return-void

    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMA()Lcom/google/android/gms/internal/zzatz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatz;->unregister()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMB()Lcom/google/android/gms/internal/zzaup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaup;->cancel()V

    return-void
.end method

.method private zzML()J
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzati;->zzLA()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzatj;->zzLL()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzatj;->zzLF()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzati;->zzLD()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, ".none."

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzati;->zzLw()J

    move-result-wide v7

    goto :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzati;->zzLv()J

    move-result-wide v7

    goto :goto_2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzati;->zzLu()J

    move-result-wide v7

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/gms/internal/zzaua;->zzbtb:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzaua$zzb;->get()J

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v11

    iget-object v11, v11, Lcom/google/android/gms/internal/zzaua;->zzbtc:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/zzaua$zzb;->get()J

    move-result-wide v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzatj;->zzLI()J

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/gms/internal/zzatj;->zzLJ()J

    move-result-wide v5

    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    const-wide/16 v13, 0x0

    cmp-long v15, v5, v13

    if-nez v15, :cond_4

    return-wide v13

    :cond_4
    sub-long v13, v5, v0

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long v13, v0, v5

    sub-long v5, v9, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long v9, v0, v5

    sub-long v5, v11, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long v11, v0, v5

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-long v5, v13, v2

    if-eqz v4, :cond_5

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_5

    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    add-long v5, v2, v7

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v7, v8}, Lcom/google/android/gms/internal/zzaut;->zzh(JJ)Z

    move-result v2

    if-nez v2, :cond_6

    add-long v5, v0, v7

    :cond_6
    const-wide/16 v0, 0x0

    cmp-long v2, v11, v0

    if-eqz v2, :cond_9

    cmp-long v0, v11, v13

    if-ltz v0, :cond_9

    const/4 v0, 0x0

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzati;->zzLC()I

    move-result v1

    if-ge v0, v1, :cond_8

    const/4 v1, 0x1

    shl-int v2, v1, v0

    int-to-long v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzati;->zzLB()J

    move-result-wide v7

    mul-long/2addr v7, v2

    add-long v2, v5, v7

    cmp-long v4, v2, v11

    if-lez v4, :cond_7

    return-wide v2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    move-wide v5, v2

    goto :goto_3

    :cond_8
    const-wide/16 v2, 0x0

    return-wide v2

    :cond_9
    return-wide v5
.end method

.method private zza(Lcom/google/android/gms/internal/zzaug;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzauh;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzauh;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Component not initialized"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzatm;)Z
    .locals 13

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatm;->zzbrA:Lcom/google/android/gms/internal/zzato;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/zzatm;->zzbrA:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzato;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "_r"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKi()Lcom/google/android/gms/internal/zzauc;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatm;->mAppId:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/internal/zzatm;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/internal/zzauc;->zzab(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMG()J

    move-result-wide v5

    iget-object v7, p1, Lcom/google/android/gms/internal/zzatm;->mAppId:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Lcom/google/android/gms/internal/zzatj;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/zzatj$zza;

    move-result-object v2

    if-eqz v0, :cond_3

    iget-wide v4, v2, Lcom/google/android/gms/internal/zzatj$zza;->zzbrs:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/internal/zzatm;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzati;->zzfl(Ljava/lang/String;)I

    move-result p1

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-gez p1, :cond_3

    return v3

    :cond_3
    return v1
.end method

.method private zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzauw$zzg;[Lcom/google/android/gms/internal/zzauw$zzb;)[Lcom/google/android/gms/internal/zzauw$zza;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzJZ()Lcom/google/android/gms/internal/zzatf;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/google/android/gms/internal/zzatf;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzauw$zzb;[Lcom/google/android/gms/internal/zzauw$zzg;)[Lcom/google/android/gms/internal/zzauw$zza;

    move-result-object p1

    return-object p1
.end method

.method public static zzbM(Landroid/content/Context;)Lcom/google/android/gms/internal/zzaue;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzaue;->zzbub:Lcom/google/android/gms/internal/zzaue;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/zzaue;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzaue;->zzbub:Lcom/google/android/gms/internal/zzaue;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzaui;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzaui;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaui;->zzMR()Lcom/google/android/gms/internal/zzaue;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/zzaue;->zzbub:Lcom/google/android/gms/internal/zzaue;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/zzaue;->zzbub:Lcom/google/android/gms/internal/zzaue;

    return-object p0
.end method

.method private zzf(Lcom/google/android/gms/internal/zzatd;)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatj;->zzfu(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatc;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzaua;->zzfH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzatc;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-direct {v0, p0, v3}, Lcom/google/android/gms/internal/zzatc;-><init>(Lcom/google/android/gms/internal/zzaue;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzaua;->zzMi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzatc;->zzfd(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatc;->zzff(Ljava/lang/String;)V

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->zzKp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatc;->zzff(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaua;->zzMi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatc;->zzfd(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->zzbqK:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->zzbqK:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->getGmpAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatd;->zzbqK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatc;->zzfe(Ljava/lang/String;)V

    move v1, v2

    :cond_2
    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->zzbqS:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->zzbqS:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->zzKq()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatd;->zzbqS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatc;->zzfg(Ljava/lang/String;)V

    move v1, v2

    :cond_3
    iget-wide v3, p1, Lcom/google/android/gms/internal/zzatd;->zzbqM:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_4

    iget-wide v3, p1, Lcom/google/android/gms/internal/zzatd;->zzbqM:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->zzKv()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_4

    iget-wide v3, p1, Lcom/google/android/gms/internal/zzatd;->zzbqM:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/zzatc;->zzab(J)V

    move v1, v2

    :cond_4
    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->zzbhN:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->zzbhN:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->zzmZ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatd;->zzbhN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatc;->setAppVersion(Ljava/lang/String;)V

    move v1, v2

    :cond_5
    iget-wide v3, p1, Lcom/google/android/gms/internal/zzatd;->zzbqR:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->zzKt()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_6

    iget-wide v3, p1, Lcom/google/android/gms/internal/zzatd;->zzbqR:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/zzatc;->zzaa(J)V

    move v1, v2

    :cond_6
    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->zzbqL:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->zzbqL:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->zzKu()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatd;->zzbqL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatc;->zzfh(Ljava/lang/String;)V

    move v1, v2

    :cond_7
    iget-wide v3, p1, Lcom/google/android/gms/internal/zzatd;->zzbqN:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->zzKw()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_8

    iget-wide v3, p1, Lcom/google/android/gms/internal/zzatd;->zzbqN:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/zzatc;->zzac(J)V

    move v1, v2

    :cond_8
    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzatd;->zzbqP:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->zzKx()Z

    move-result v4

    if-eq v3, v4, :cond_9

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzatd;->zzbqP:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatc;->setMeasurementEnabled(Z)V

    move v1, v2

    :cond_9
    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->zzbqO:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->zzbqO:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->zzKI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatd;->zzbqO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatc;->zzfi(Ljava/lang/String;)V

    move v1, v2

    :cond_a
    iget-wide v3, p1, Lcom/google/android/gms/internal/zzatd;->zzbqT:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->zzuW()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_b

    iget-wide v3, p1, Lcom/google/android/gms/internal/zzatd;->zzbqT:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/zzatc;->zzam(J)V

    move v1, v2

    :cond_b
    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatc;)V

    :cond_c
    return-void
.end method

.method private zzl(Ljava/lang/String;J)Z
    .locals 26

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatj;->beginTransaction()V

    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/zzaue$zza;

    const/4 v10, 0x0

    invoke-direct {v2, v1, v10}, Lcom/google/android/gms/internal/zzaue$zza;-><init>(Lcom/google/android/gms/internal/zzaue;Lcom/google/android/gms/internal/zzaue$1;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v3

    iget-wide v7, v1, Lcom/google/android/gms/internal/zzaue;->zzbuF:J

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move-object v9, v2

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/zzatj;->zza(Ljava/lang/String;JJLcom/google/android/gms/internal/zzatj$zzb;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaue$zza;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_27

    iget-object v3, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzbuJ:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v5, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/google/android/gms/internal/zzauw$zzb;

    iput-object v5, v3, Lcom/google/android/gms/internal/zzauw$zze;->zzbxj:[Lcom/google/android/gms/internal/zzauw$zzb;

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    iget-object v8, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKi()Lcom/google/android/gms/internal/zzauc;

    move-result-object v8

    iget-object v11, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzbuJ:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v11, v11, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    iget-object v12, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/zzauw$zzb;

    iget-object v12, v12, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {v8, v11, v12}, Lcom/google/android/gms/internal/zzauc;->zzaa(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzatx;->zzMb()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v8

    const-string v11, "Dropping blacklisted raw event. appId"

    iget-object v12, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzbuJ:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v12, v12, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-static {v12}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    iget-object v13, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/zzauw$zzb;

    iget-object v13, v13, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {v8, v11, v12, v13}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v8

    iget-object v11, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzbuJ:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v11, v11, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/zzaut;->zzgg(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v8

    iget-object v11, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzbuJ:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v11, v11, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/zzaut;->zzgh(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    move v9, v4

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v9, 0x1

    :goto_2
    if-nez v9, :cond_17

    const-string v8, "_err"

    iget-object v9, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzauw$zzb;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v8

    const/16 v9, 0xb

    const-string v11, "_ev"

    iget-object v12, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/zzauw$zzb;

    iget-object v12, v12, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {v8, v9, v11, v12, v4}, Lcom/google/android/gms/internal/zzaut;->zza(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_b

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKi()Lcom/google/android/gms/internal/zzauc;

    move-result-object v8

    iget-object v11, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzbuJ:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v11, v11, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    iget-object v12, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/zzauw$zzb;

    iget-object v12, v12, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {v8, v11, v12}, Lcom/google/android/gms/internal/zzauc;->zzab(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v11

    iget-object v12, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/zzauw$zzb;

    iget-object v12, v12, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/zzaut;->zzgi(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16

    :cond_3
    iget-object v11, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/zzauw$zzb;

    iget-object v11, v11, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    if-nez v11, :cond_4

    iget-object v11, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/zzauw$zzb;

    new-array v12, v4, [Lcom/google/android/gms/internal/zzauw$zzc;

    iput-object v12, v11, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    :cond_4
    iget-object v11, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/zzauw$zzb;

    iget-object v11, v11, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    array-length v12, v11

    move v13, v4

    move v14, v13

    move v15, v14

    :goto_3
    if-ge v13, v12, :cond_7

    aget-object v4, v11, v13

    const-string v9, "_c"

    iget-object v10, v4, Lcom/google/android/gms/internal/zzauw$zzc;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-wide/16 v9, 0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v4, Lcom/google/android/gms/internal/zzauw$zzc;->zzbxf:Ljava/lang/Long;

    const/4 v14, 0x1

    goto :goto_4

    :cond_5
    const-string v9, "_r"

    iget-object v10, v4, Lcom/google/android/gms/internal/zzauw$zzc;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-wide/16 v9, 0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v4, Lcom/google/android/gms/internal/zzauw$zzc;->zzbxf:Ljava/lang/Long;

    const/4 v15, 0x1

    :cond_6
    :goto_4
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x0

    goto :goto_3

    :cond_7
    if-nez v14, :cond_8

    if-eqz v8, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzatx;->zzMf()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v4

    const-string v9, "Marking event as conversion"

    iget-object v10, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/zzauw$zzb;

    iget-object v10, v10, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzauw$zzb;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    iget-object v9, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzauw$zzb;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    array-length v9, v9

    const/4 v10, 0x1

    add-int/2addr v9, v10

    invoke-static {v4, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/gms/internal/zzauw$zzc;

    new-instance v9, Lcom/google/android/gms/internal/zzauw$zzc;

    invoke-direct {v9}, Lcom/google/android/gms/internal/zzauw$zzc;-><init>()V

    const-string v10, "_c"

    iput-object v10, v9, Lcom/google/android/gms/internal/zzauw$zzc;->name:Ljava/lang/String;

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v9, Lcom/google/android/gms/internal/zzauw$zzc;->zzbxf:Ljava/lang/Long;

    array-length v10, v4

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    aput-object v9, v4, v10

    iget-object v9, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzauw$zzb;

    iput-object v4, v9, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    :cond_8
    if-nez v15, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzatx;->zzMf()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v4

    const-string v9, "Marking event as real-time"

    iget-object v10, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/zzauw$zzb;

    iget-object v10, v10, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzauw$zzb;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    iget-object v9, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzauw$zzb;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    array-length v9, v9

    const/4 v10, 0x1

    add-int/2addr v9, v10

    invoke-static {v4, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/gms/internal/zzauw$zzc;

    new-instance v9, Lcom/google/android/gms/internal/zzauw$zzc;

    invoke-direct {v9}, Lcom/google/android/gms/internal/zzauw$zzc;-><init>()V

    const-string v10, "_r"

    iput-object v10, v9, Lcom/google/android/gms/internal/zzauw$zzc;->name:Ljava/lang/String;

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v9, Lcom/google/android/gms/internal/zzauw$zzc;->zzbxf:Ljava/lang/Long;

    array-length v10, v4

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    aput-object v9, v4, v10

    iget-object v9, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzauw$zzb;

    iput-object v4, v9, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzMG()J

    move-result-wide v18

    iget-object v4, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzbuJ:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v20, v4

    invoke-virtual/range {v17 .. v25}, Lcom/google/android/gms/internal/zzatj;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/zzatj$zza;

    move-result-object v4

    iget-wide v9, v4, Lcom/google/android/gms/internal/zzatj$zza;->zzbrs:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v4

    iget-object v11, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzbuJ:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v11, v11, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/zzati;->zzfl(Ljava/lang/String;)I

    move-result v4

    int-to-long v11, v4

    cmp-long v4, v9, v11

    if-lez v4, :cond_d

    iget-object v4, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzauw$zzb;

    const/4 v9, 0x0

    :goto_5
    iget-object v10, v4, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    array-length v10, v10

    if-ge v9, v10, :cond_e

    const-string v10, "_r"

    iget-object v11, v4, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    aget-object v11, v11, v9

    iget-object v11, v11, Lcom/google/android/gms/internal/zzauw$zzc;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, v4, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    array-length v10, v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    new-array v10, v10, [Lcom/google/android/gms/internal/zzauw$zzc;

    if-lez v9, :cond_a

    iget-object v11, v4, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    const/4 v12, 0x0

    invoke-static {v11, v12, v10, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    array-length v11, v10

    if-ge v9, v11, :cond_b

    iget-object v11, v4, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    add-int/lit8 v12, v9, 0x1

    array-length v13, v10

    sub-int/2addr v13, v9

    invoke-static {v11, v12, v10, v9, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    iput-object v10, v4, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    goto :goto_6

    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_d
    const/4 v6, 0x1

    :cond_e
    :goto_6
    iget-object v4, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzauw$zzb;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzaut;->zzfT(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    if-eqz v8, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzMG()J

    move-result-wide v18

    iget-object v4, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzbuJ:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v20, v4

    invoke-virtual/range {v17 .. v25}, Lcom/google/android/gms/internal/zzatj;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/zzatj$zza;

    move-result-object v4

    iget-wide v8, v4, Lcom/google/android/gms/internal/zzatj$zza;->zzbrq:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v4

    iget-object v10, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzbuJ:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v10, v10, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/zzati;->zzfk(Ljava/lang/String;)I

    move-result v4

    int-to-long v10, v4

    cmp-long v4, v8, v10

    if-lez v4, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzatx;->zzMb()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v4

    const-string v8, "Too many conversions. Not logging as conversion. appId"

    iget-object v9, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzbuJ:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzauw$zzb;

    iget-object v8, v4, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    array-length v9, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_7
    if-ge v10, v9, :cond_11

    aget-object v13, v8, v10

    const-string v14, "_c"

    iget-object v15, v13, Lcom/google/android/gms/internal/zzauw$zzc;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    move-object v12, v13

    goto :goto_8

    :cond_f
    const-string v14, "_err"

    iget-object v13, v13, Lcom/google/android/gms/internal/zzauw$zzc;->name:Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    const/4 v11, 0x1

    :cond_10
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_11
    if-eqz v11, :cond_14

    if-eqz v12, :cond_14

    iget-object v8, v4, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    array-length v8, v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    new-array v8, v8, [Lcom/google/android/gms/internal/zzauw$zzc;

    iget-object v9, v4, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    array-length v10, v9

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_9
    if-ge v11, v10, :cond_13

    aget-object v14, v9, v11

    if-eq v14, v12, :cond_12

    add-int/lit8 v15, v13, 0x1

    aput-object v14, v8, v13

    move v13, v15

    :cond_12
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_13
    iput-object v8, v4, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    goto :goto_a

    :cond_14
    if-eqz v12, :cond_15

    const-string v4, "_err"

    iput-object v4, v12, Lcom/google/android/gms/internal/zzauw$zzc;->name:Ljava/lang/String;

    const-wide/16 v8, 0xa

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v12, Lcom/google/android/gms/internal/zzauw$zzc;->zzbxf:Ljava/lang/Long;

    goto :goto_a

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v4

    const-string v8, "Did not find conversion parameter. appId"

    iget-object v9, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzbuJ:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_16
    :goto_a
    iget-object v4, v3, Lcom/google/android/gms/internal/zzauw$zze;->zzbxj:[Lcom/google/android/gms/internal/zzauw$zzb;

    add-int/lit8 v8, v7, 0x1

    iget-object v9, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzauw$zzb;

    aput-object v9, v4, v7

    move v7, v8

    :cond_17
    :goto_b
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_18
    const/4 v9, 0x1

    iget-object v4, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v7, v4, :cond_19

    iget-object v4, v3, Lcom/google/android/gms/internal/zzauw$zze;->zzbxj:[Lcom/google/android/gms/internal/zzauw$zzb;

    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/gms/internal/zzauw$zzb;

    iput-object v4, v3, Lcom/google/android/gms/internal/zzauw$zze;->zzbxj:[Lcom/google/android/gms/internal/zzauw$zzb;

    :cond_19
    iget-object v4, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzbuJ:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    iget-object v5, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzbuJ:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzauw$zze;->zzbxk:[Lcom/google/android/gms/internal/zzauw$zzg;

    iget-object v7, v3, Lcom/google/android/gms/internal/zzauw$zze;->zzbxj:[Lcom/google/android/gms/internal/zzauw$zzb;

    invoke-direct {v1, v4, v5, v7}, Lcom/google/android/gms/internal/zzaue;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzauw$zzg;[Lcom/google/android/gms/internal/zzauw$zzb;)[Lcom/google/android/gms/internal/zzauw$zza;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/zzauw$zze;->zzbxC:[Lcom/google/android/gms/internal/zzauw$zza;

    const-wide v4, 0x7fffffffffffffffL

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/zzauw$zze;->zzbxm:Ljava/lang/Long;

    const-wide/high16 v4, -0x8000000000000000L

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/zzauw$zze;->zzbxn:Ljava/lang/Long;

    const/4 v4, 0x0

    :goto_c
    iget-object v5, v3, Lcom/google/android/gms/internal/zzauw$zze;->zzbxj:[Lcom/google/android/gms/internal/zzauw$zzb;

    array-length v5, v5

    if-ge v4, v5, :cond_1c

    iget-object v5, v3, Lcom/google/android/gms/internal/zzauw$zze;->zzbxj:[Lcom/google/android/gms/internal/zzauw$zzb;

    aget-object v5, v5, v4

    iget-object v7, v5, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxc:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v10, v3, Lcom/google/android/gms/internal/zzauw$zze;->zzbxm:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v12, v7, v10

    if-gez v12, :cond_1a

    iget-object v7, v5, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxc:Ljava/lang/Long;

    iput-object v7, v3, Lcom/google/android/gms/internal/zzauw$zze;->zzbxm:Ljava/lang/Long;

    :cond_1a
    iget-object v7, v5, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxc:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v10, v3, Lcom/google/android/gms/internal/zzauw$zze;->zzbxn:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v12, v7, v10

    if-lez v12, :cond_1b

    iget-object v5, v5, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxc:Ljava/lang/Long;

    iput-object v5, v3, Lcom/google/android/gms/internal/zzauw$zze;->zzbxn:Ljava/lang/Long;

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_1c
    iget-object v4, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzbuJ:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/zzatj;->zzfu(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatc;

    move-result-object v5

    if-nez v5, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v5

    const-string v7, "Bundling raw events w/o app info. appId"

    iget-object v8, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzbuJ:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_f

    :cond_1d
    iget-object v7, v3, Lcom/google/android/gms/internal/zzauw$zze;->zzbxj:[Lcom/google/android/gms/internal/zzauw$zzb;

    array-length v7, v7

    if-lez v7, :cond_21

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzatc;->zzKs()J

    move-result-wide v7

    const-wide/16 v10, 0x0

    cmp-long v12, v7, v10

    if-eqz v12, :cond_1e

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    goto :goto_d

    :cond_1e
    const/4 v12, 0x0

    :goto_d
    iput-object v12, v3, Lcom/google/android/gms/internal/zzauw$zze;->zzbxp:Ljava/lang/Long;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzatc;->zzKr()J

    move-result-wide v12

    cmp-long v14, v12, v10

    if-nez v14, :cond_1f

    move-wide v12, v7

    :cond_1f
    cmp-long v7, v12, v10

    if-eqz v7, :cond_20

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_e

    :cond_20
    const/4 v10, 0x0

    :goto_e
    iput-object v10, v3, Lcom/google/android/gms/internal/zzauw$zze;->zzbxo:Ljava/lang/Long;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzatc;->zzKB()V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzatc;->zzKy()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v3, Lcom/google/android/gms/internal/zzauw$zze;->zzbxA:Ljava/lang/Integer;

    iget-object v7, v3, Lcom/google/android/gms/internal/zzauw$zze;->zzbxm:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/zzatc;->zzY(J)V

    iget-object v7, v3, Lcom/google/android/gms/internal/zzauw$zze;->zzbxn:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/zzatc;->zzZ(J)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzatc;->zzKJ()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/google/android/gms/internal/zzauw$zze;->zzbqO:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatc;)V

    :cond_21
    :goto_f
    iget-object v5, v3, Lcom/google/android/gms/internal/zzauw$zze;->zzbxj:[Lcom/google/android/gms/internal/zzauw$zzb;

    array-length v5, v5

    if-lez v5, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzati;->zzLh()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKi()Lcom/google/android/gms/internal/zzauc;

    move-result-object v5

    iget-object v7, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzbuJ:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v7, v7, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/zzauc;->zzfL(Ljava/lang/String;)Lcom/google/android/gms/internal/zzauv$zzb;

    move-result-object v5

    if-eqz v5, :cond_23

    iget-object v7, v5, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwQ:Ljava/lang/Long;

    if-nez v7, :cond_22

    goto :goto_11

    :cond_22
    iget-object v5, v5, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwQ:Ljava/lang/Long;

    :goto_10
    iput-object v5, v3, Lcom/google/android/gms/internal/zzauw$zze;->zzbxH:Ljava/lang/Long;

    goto :goto_12

    :cond_23
    :goto_11
    iget-object v5, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzbuJ:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzauw$zze;->zzbqK:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_24

    const-wide/16 v7, -0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_10

    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzatx;->zzMb()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v5

    const-string v7, "Did not find measurement config or missing version info. appId"

    iget-object v8, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzbuJ:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v5

    invoke-virtual {v5, v3, v6}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzauw$zze;Z)Z

    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v5

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaue$zza;->zzbuK:Ljava/util/List;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/zzatj;->zzJ(Ljava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzatj;->zzfB(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatj;->setTransactionSuccessful()V

    iget-object v2, v3, Lcom/google/android/gms/internal/zzauw$zze;->zzbxj:[Lcom/google/android/gms/internal/zzauw$zzb;

    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v2, :cond_26

    move/from16 v16, v9

    goto :goto_13

    :cond_26
    const/16 v16, 0x0

    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    return v16

    :cond_27
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatj;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    const/4 v2, 0x0

    return v2

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    throw v2
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLi()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLj()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzwR()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaua;->zzaK(Z)Z

    move-result v0

    return v0
.end method

.method protected start()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->zzLG()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaua;->zzbtb:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaua$zzb;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaua;->zzbtb:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzaua$zzb;->set(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMu()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaut;->zzbW(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "App is missing INTERNET permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaut;->zzbW(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLh()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzadg;->zzbi(Landroid/content/Context;)Lcom/google/android/gms/internal/zzadf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzadf;->zzzx()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaub;->zzi(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v2, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaum;->zzj(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "AppMeasurementService not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Uploading is not possible. App measurement disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLh()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKb()Lcom/google/android/gms/internal/zzatu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatu;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaua;->zzMl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKb()Lcom/google/android/gms/internal/zzatu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatu;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaua;->zzfI(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKb()Lcom/google/android/gms/internal/zzatu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatu;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaua;->zzMo()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbup:Lcom/google/android/gms/internal/zzaul;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaul;->disconnect()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbup:Lcom/google/android/gms/internal/zzaul;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaul;->zzoD()V

    goto :goto_0

    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLh()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKb()Lcom/google/android/gms/internal/zzatu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatu;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKa()Lcom/google/android/gms/internal/zzauj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauj;->zzMT()V

    :cond_8
    :goto_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaue;->zzMK()V

    return-void
.end method

.method zzJV()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLh()Z

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method zzJW()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLh()Z

    return-void
.end method

.method public zzJY()Lcom/google/android/gms/internal/zzatb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuw:Lcom/google/android/gms/internal/zzatb;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzaug;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuw:Lcom/google/android/gms/internal/zzatb;

    return-object v0
.end method

.method public zzJZ()Lcom/google/android/gms/internal/zzatf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuv:Lcom/google/android/gms/internal/zzatf;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzauh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuv:Lcom/google/android/gms/internal/zzatf;

    return-object v0
.end method

.method protected zzK(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzaw(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuC:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string v0, "Set uploading progress before finishing the previous upload"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuC:Ljava/util/List;

    return-void
.end method

.method public zzKa()Lcom/google/android/gms/internal/zzauj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbur:Lcom/google/android/gms/internal/zzauj;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzauh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbur:Lcom/google/android/gms/internal/zzauj;

    return-object v0
.end method

.method public zzKb()Lcom/google/android/gms/internal/zzatu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbus:Lcom/google/android/gms/internal/zzatu;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzauh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbus:Lcom/google/android/gms/internal/zzatu;

    return-object v0
.end method

.method public zzKc()Lcom/google/android/gms/internal/zzatl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuq:Lcom/google/android/gms/internal/zzatl;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzauh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuq:Lcom/google/android/gms/internal/zzatl;

    return-object v0
.end method

.method public zzKd()Lcom/google/android/gms/internal/zzaul;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbup:Lcom/google/android/gms/internal/zzaul;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzauh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbup:Lcom/google/android/gms/internal/zzaul;

    return-object v0
.end method

.method public zzKe()Lcom/google/android/gms/internal/zzauk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuo:Lcom/google/android/gms/internal/zzauk;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzauh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuo:Lcom/google/android/gms/internal/zzauk;

    return-object v0
.end method

.method public zzKf()Lcom/google/android/gms/internal/zzatv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbum:Lcom/google/android/gms/internal/zzatv;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzauh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbum:Lcom/google/android/gms/internal/zzatv;

    return-object v0
.end method

.method public zzKg()Lcom/google/android/gms/internal/zzatj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbul:Lcom/google/android/gms/internal/zzatj;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzauh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbul:Lcom/google/android/gms/internal/zzatj;

    return-object v0
.end method

.method public zzKh()Lcom/google/android/gms/internal/zzaut;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuk:Lcom/google/android/gms/internal/zzaut;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzaug;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuk:Lcom/google/android/gms/internal/zzaut;

    return-object v0
.end method

.method public zzKi()Lcom/google/android/gms/internal/zzauc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuh:Lcom/google/android/gms/internal/zzauc;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzauh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuh:Lcom/google/android/gms/internal/zzauc;

    return-object v0
.end method

.method public zzKj()Lcom/google/android/gms/internal/zzaun;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbug:Lcom/google/android/gms/internal/zzaun;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzauh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbug:Lcom/google/android/gms/internal/zzaun;

    return-object v0
.end method

.method public zzKk()Lcom/google/android/gms/internal/zzaud;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuf:Lcom/google/android/gms/internal/zzaud;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzauh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuf:Lcom/google/android/gms/internal/zzaud;

    return-object v0
.end method

.method public zzKl()Lcom/google/android/gms/internal/zzatx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbue:Lcom/google/android/gms/internal/zzatx;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzauh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbue:Lcom/google/android/gms/internal/zzatx;

    return-object v0
.end method

.method public zzKm()Lcom/google/android/gms/internal/zzaua;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbud:Lcom/google/android/gms/internal/zzaua;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzaug;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbud:Lcom/google/android/gms/internal/zzaua;

    return-object v0
.end method

.method public zzKn()Lcom/google/android/gms/internal/zzati;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuc:Lcom/google/android/gms/internal/zzati;

    return-object v0
.end method

.method public zzMA()Lcom/google/android/gms/internal/zzatz;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbut:Lcom/google/android/gms/internal/zzatz;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbut:Lcom/google/android/gms/internal/zzatz;

    return-object v0
.end method

.method public zzMB()Lcom/google/android/gms/internal/zzaup;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuu:Lcom/google/android/gms/internal/zzaup;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzauh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuu:Lcom/google/android/gms/internal/zzaup;

    return-object v0
.end method

.method zzMC()Ljava/nio/channels/FileChannel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuB:Ljava/nio/channels/FileChannel;

    return-object v0
.end method

.method zzMD()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzME()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMC()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zza(Ljava/nio/channels/FileChannel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKb()Lcom/google/android/gms/internal/zzatu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatu;->zzLX()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzaue;->zzy(II)Z

    :cond_0
    return-void
.end method

.method zzME()Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbul:Lcom/google/android/gms/internal/zzatj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->zzow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuB:Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuB:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuA:Ljava/nio/channels/FileLock;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuA:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMf()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Storage concurrent access okay"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method zzMF()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuH:J

    return-wide v0
.end method

.method zzMG()J
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaua;->zzMj()J

    move-result-wide v2

    add-long v4, v0, v2

    const-wide/16 v0, 0x3e8

    div-long/2addr v4, v0

    const-wide/16 v0, 0x3c

    div-long/2addr v4, v0

    div-long/2addr v4, v0

    const-wide/16 v0, 0x18

    div-long/2addr v4, v0

    return-wide v4
.end method

.method protected zzMH()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuC:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzMI()V
    .locals 12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLh()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaua;->zzMn()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMb()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Upload data called on the client side before use of service was decided"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Upload called in the client side when service should be used"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuG:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaue;->zzMK()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMH()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMb()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Uploading requested multiple times"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMz()Lcom/google/android/gms/internal/zzaty;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaty;->zzqa()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMb()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaue;->zzMK()V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzati;->zzLs()J

    move-result-wide v4

    sub-long v6, v0, v4

    invoke-virtual {p0, v6, v7}, Lcom/google/android/gms/internal/zzaue;->zzaq(J)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/zzaua;->zzbtb:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzaua$zzb;->get()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v6, v0, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatj;->zzLE()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-wide/16 v4, -0x1

    if-nez v3, :cond_f

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzaue;->zzbuF:J

    cmp-long v3, v6, v4

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatj;->zzLM()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/zzaue;->zzbuF:J

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/zzati;->zzfq(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/zzati;->zzfr(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v5

    invoke-virtual {v5, v2, v3, v4}, Lcom/google/android/gms/internal/zzatj;->zzn(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v7, v5, Lcom/google/android/gms/internal/zzauw$zze;->zzbxw:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v4, v5, Lcom/google/android/gms/internal/zzauw$zze;->zzbxw:Ljava/lang/String;

    goto :goto_0

    :cond_8
    move-object v4, v6

    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_a

    move v7, v5

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_a

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v9, v8, Lcom/google/android/gms/internal/zzauw$zze;->zzbxw:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v8, v8, Lcom/google/android/gms/internal/zzauw$zze;->zzbxw:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-interface {v3, v5, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    goto :goto_2

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_a
    :goto_2
    new-instance v4, Lcom/google/android/gms/internal/zzauw$zzd;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzauw$zzd;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lcom/google/android/gms/internal/zzauw$zze;

    iput-object v7, v4, Lcom/google/android/gms/internal/zzauw$zzd;->zzbxg:[Lcom/google/android/gms/internal/zzauw$zze;

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move v8, v5

    :goto_3
    iget-object v9, v4, Lcom/google/android/gms/internal/zzauw$zzd;->zzbxg:[Lcom/google/android/gms/internal/zzauw$zze;

    array-length v9, v9

    if-ge v8, v9, :cond_b

    iget-object v9, v4, Lcom/google/android/gms/internal/zzauw$zzd;->zzbxg:[Lcom/google/android/gms/internal/zzauw$zze;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/zzauw$zze;

    aput-object v10, v9, v8

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v9, v4, Lcom/google/android/gms/internal/zzauw$zzd;->zzbxg:[Lcom/google/android/gms/internal/zzauw$zze;

    aget-object v9, v9, v8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzati;->zzKv()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v9, Lcom/google/android/gms/internal/zzauw$zze;->zzbxv:Ljava/lang/Long;

    iget-object v9, v4, Lcom/google/android/gms/internal/zzauw$zzd;->zzbxg:[Lcom/google/android/gms/internal/zzauw$zze;

    aget-object v9, v9, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v9, Lcom/google/android/gms/internal/zzauw$zze;->zzbxl:Ljava/lang/Long;

    iget-object v9, v4, Lcom/google/android/gms/internal/zzauw$zzd;->zzbxg:[Lcom/google/android/gms/internal/zzauw$zze;

    aget-object v9, v9, v8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzati;->zzLh()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, v9, Lcom/google/android/gms/internal/zzauw$zze;->zzbxB:Ljava/lang/Boolean;

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v3

    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/zzatx;->zzak(I)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {v4}, Lcom/google/android/gms/internal/zzaut;->zzb(Lcom/google/android/gms/internal/zzauw$zzd;)Ljava/lang/String;

    move-result-object v6

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzaut;->zza(Lcom/google/android/gms/internal/zzauw$zzd;)[B

    move-result-object v8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzati;->zzLr()Ljava/lang/String;

    move-result-object v9

    :try_start_0
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/zzaue;->zzK(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/zzaua;->zzbtc:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/zzaua$zzb;->set(J)V

    const-string v0, "?"

    iget-object v1, v4, Lcom/google/android/gms/internal/zzauw$zzd;->zzbxg:[Lcom/google/android/gms/internal/zzauw$zze;

    array-length v1, v1

    if-lez v1, :cond_d

    iget-object v0, v4, Lcom/google/android/gms/internal/zzauw$zzd;->zzbxg:[Lcom/google/android/gms/internal/zzauw$zze;

    aget-object v0, v0, v5

    iget-object v0, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMf()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v3, "Uploading data. app, uncompressed size, data"

    array-length v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v0, v4, v6}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMz()Lcom/google/android/gms/internal/zzaty;

    move-result-object v3

    const/4 v7, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzaue$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaue$3;-><init>(Lcom/google/android/gms/internal/zzaue;)V

    move-object v4, v2

    move-object v5, v10

    move-object v6, v8

    move-object v8, v0

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/zzaty;->zza(Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/internal/zzaty$zza;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Failed to parse upload URL. Not uploading. appId"

    invoke-static {v2}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v9}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    return-void

    :cond_f
    iput-wide v4, p0, Lcom/google/android/gms/internal/zzaue;->zzbuF:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzati;->zzLs()J

    move-result-wide v3

    sub-long v5, v0, v3

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/zzatj;->zzao(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzatj;->zzfu(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatc;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zzb(Lcom/google/android/gms/internal/zzatc;)V

    :cond_10
    return-void
.end method

.method zzMM()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuE:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuE:I

    return-void
.end method

.method zzMN()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbux:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "This instance being marked as an uploader"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMD()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbux:Z

    return-void
.end method

.method zzMO()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbux:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected zzMu()Z
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuy:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuz:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuy:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuy:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaue;->zzbuz:J

    sub-long v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuz:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLh()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaut;->zzbW(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzaut;->zzbW(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzadg;->zzbi(Landroid/content/Context;)Lcom/google/android/gms/internal/zzadf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzadf;->zzzx()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaub;->zzi(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaum;->zzj(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuy:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuy:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKb()Lcom/google/android/gms/internal/zzatu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatu;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaut;->zzga(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuy:Ljava/lang/Boolean;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuy:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public zzMv()Lcom/google/android/gms/internal/zzatx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbue:Lcom/google/android/gms/internal/zzatx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbue:Lcom/google/android/gms/internal/zzatx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbue:Lcom/google/android/gms/internal/zzatx;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method zzMw()Lcom/google/android/gms/internal/zzaud;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuf:Lcom/google/android/gms/internal/zzaud;

    return-object v0
.end method

.method public zzMx()Lcom/google/android/gms/measurement/AppMeasurement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbui:Lcom/google/android/gms/measurement/AppMeasurement;

    return-object v0
.end method

.method public zzMy()Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuj:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object v0
.end method

.method public zzMz()Lcom/google/android/gms/internal/zzaty;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbun:Lcom/google/android/gms/internal/zzaty;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzauh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbun:Lcom/google/android/gms/internal/zzaty;

    return-object v0
.end method

.method public zzV(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaue;->zzMK()V

    return-void
.end method

.method zza(Ljava/nio/channels/FileChannel;)I
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-wide/16 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    if-eq p1, v1, :cond_2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMb()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Unexpected data length. Bytes read"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return v0

    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Failed to read from channel"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    move p1, v0

    return p1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string v1, "Bad chanel to read from"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    return v0
.end method

.method protected zza(ILjava/lang/Throwable;[B)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    new-array p3, v0, [B

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaue;->zzbuC:Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzaue;->zzbuC:Ljava/util/List;

    const/16 v2, 0xc8

    if-eq p1, v2, :cond_1

    const/16 v2, 0xcc

    if-ne p1, v2, :cond_4

    :cond_1
    if-nez p2, :cond_4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/zzaua;->zzbtb:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/internal/zzaua$zzb;->set(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/zzaua;->zzbtc:Lcom/google/android/gms/internal/zzaua$zzb;

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/internal/zzaua$zzb;->set(J)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaue;->zzMK()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzatx;->zzMf()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p2

    const-string v0, "Successful upload. Got network response. code, size"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    array-length p3, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, v0, p1, p3}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatj;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/internal/zzatj;->zzan(J)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatj;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMz()Lcom/google/android/gms/internal/zzaty;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaty;->zzqa()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaue;->zzMJ()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMI()V

    goto :goto_1

    :cond_3
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzaue;->zzbuF:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaue;->zzMK()V

    :goto_1
    iput-wide v2, p0, Lcom/google/android/gms/internal/zzaue;->zzbuG:J

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    throw p1
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p2

    const-string p3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzaue;->zzbuG:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzMf()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string p2, "Disable upload, time"

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuG:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzatx;->zzMf()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p3

    const-string v1, "Network upload failed. Will retry later. code, error"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2, p2}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/zzaua;->zzbtc:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/zzaua$zzb;->set(J)V

    const/16 p2, 0x1f7

    if-eq p1, p2, :cond_5

    const/16 p2, 0x1ad

    if-ne p1, p2, :cond_6

    :cond_5
    const/4 v0, 0x1

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzaua;->zzbtd:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/zzaua$zzb;->set(J)V

    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaue;->zzMK()V

    return-void
.end method

.method zza(Lcom/google/android/gms/internal/zzatd;J)V
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatj;->zzfu(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatc;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatd;->zzbqK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMb()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "New GMP App Id passed in. Removing cached database data. appId"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->zzke()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->zzke()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzatj;->zzfz(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->zzmZ()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->zzmZ()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatd;->zzbhN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "_pv"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->zzmZ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzatq;

    const-string v4, "_au"

    new-instance v5, Lcom/google/android/gms/internal/zzato;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/zzato;-><init>(Landroid/os/Bundle;)V

    const-string v6, "auto"

    move-object v3, v0

    move-wide v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzatq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzato;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzaue;->zzb(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    :cond_1
    return-void
.end method

.method zza(Lcom/google/android/gms/internal/zzatm;Lcom/google/android/gms/internal/zzatd;)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatm;->mAppId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatm;->mAppId:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzaw(Z)V

    new-instance v0, Lcom/google/android/gms/internal/zzauw$zze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzauw$zze;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxi:Ljava/lang/Integer;

    const-string v1, "android"

    iput-object v1, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxq:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->zzbqL:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbqL:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->zzbhN:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbhN:Ljava/lang/String;

    iget-wide v1, p2, Lcom/google/android/gms/internal/zzatd;->zzbqR:J

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxD:Ljava/lang/Integer;

    iget-wide v1, p2, Lcom/google/android/gms/internal/zzatd;->zzbqM:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxu:Ljava/lang/Long;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->zzbqK:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbqK:Ljava/lang/String;

    iget-wide v1, p2, Lcom/google/android/gms/internal/zzatd;->zzbqN:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/4 v1, 0x0

    if-nez v5, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-wide v5, p2, Lcom/google/android/gms/internal/zzatd;->zzbqN:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_0
    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxz:Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v2

    iget-object v5, p2, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/zzaua;->zzfG(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iput-object v5, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxw:Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxx:Ljava/lang/Boolean;

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKc()Lcom/google/android/gms/internal/zzatl;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/internal/zzaue;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/zzatl;->zzbL(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaue;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "android_id"

    invoke-static {v2, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMb()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v5, "null secure ID. appId"

    iget-object v6, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "null"

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzatx;->zzMb()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v5

    const-string v6, "empty secure ID. appId"

    iget-object v7, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxG:Ljava/lang/String;

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKc()Lcom/google/android/gms/internal/zzatl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatl;->zzkN()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxr:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKc()Lcom/google/android/gms/internal/zzatl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatl;->zzLS()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbb:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKc()Lcom/google/android/gms/internal/zzatl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatl;->zzLT()J

    move-result-wide v5

    long-to-int v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxt:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKc()Lcom/google/android/gms/internal/zzatl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatl;->zzLU()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxs:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxv:Ljava/lang/Long;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxl:Ljava/lang/Long;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxm:Ljava/lang/Long;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxn:Ljava/lang/Long;

    iget-wide v1, p2, Lcom/google/android/gms/internal/zzatd;->zzbqT:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxI:Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatj;->zzfu(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatc;

    move-result-object v1

    if-nez v1, :cond_5

    new-instance v1, Lcom/google/android/gms/internal/zzatc;

    iget-object v2, p2, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/zzatc;-><init>(Lcom/google/android/gms/internal/zzaue;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaua;->zzMi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatc;->zzfd(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/google/android/gms/internal/zzatd;->zzbqS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatc;->zzfg(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/google/android/gms/internal/zzatd;->zzbqK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatc;->zzfe(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v2

    iget-object v5, p2, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/zzaua;->zzfH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatc;->zzff(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/zzatc;->zzad(J)V

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/zzatc;->zzY(J)V

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/zzatc;->zzZ(J)V

    iget-object v2, p2, Lcom/google/android/gms/internal/zzatd;->zzbhN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatc;->setAppVersion(Ljava/lang/String;)V

    iget-wide v5, p2, Lcom/google/android/gms/internal/zzatd;->zzbqR:J

    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/zzatc;->zzaa(J)V

    iget-object v2, p2, Lcom/google/android/gms/internal/zzatd;->zzbqL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatc;->zzfh(Ljava/lang/String;)V

    iget-wide v5, p2, Lcom/google/android/gms/internal/zzatd;->zzbqM:J

    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/zzatc;->zzab(J)V

    iget-wide v5, p2, Lcom/google/android/gms/internal/zzatd;->zzbqN:J

    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/zzatc;->zzac(J)V

    iget-boolean v2, p2, Lcom/google/android/gms/internal/zzatd;->zzbqP:Z

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatc;->setMeasurementEnabled(Z)V

    iget-wide v5, p2, Lcom/google/android/gms/internal/zzatd;->zzbqT:J

    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/zzatc;->zzam(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatc;)V

    :cond_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatc;->getAppInstanceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxy:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatc;->zzKq()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbqS:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    iget-object p2, p2, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/zzatj;->zzft(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/gms/internal/zzauw$zzg;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxk:[Lcom/google/android/gms/internal/zzauw$zzg;

    const/4 v1, 0x0

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    new-instance v2, Lcom/google/android/gms/internal/zzauw$zzg;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzauw$zzg;-><init>()V

    iget-object v5, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxk:[Lcom/google/android/gms/internal/zzauw$zzg;

    aput-object v2, v5, v1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/zzaus;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzaus;->mName:Ljava/lang/String;

    iput-object v5, v2, Lcom/google/android/gms/internal/zzauw$zzg;->name:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/zzaus;

    iget-wide v5, v5, Lcom/google/android/gms/internal/zzaus;->zzbwj:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v2, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxM:Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v5

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/zzaus;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzaus;->mValue:Ljava/lang/Object;

    invoke-virtual {v5, v2, v6}, Lcom/google/android/gms/internal/zzaut;->zza(Lcom/google/android/gms/internal/zzauw$zzg;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzauw$zze;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzatm;)Z

    move-result v0

    invoke-virtual {p2, p1, v1, v2, v0}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatm;JZ)Z

    move-result p1

    if-eqz p1, :cond_7

    iput-wide v3, p0, Lcom/google/android/gms/internal/zzaue;->zzbuG:J

    :cond_7
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p2

    const-string v1, "Data loss. Failed to insert raw event metadata. appId"

    iget-object v0, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v1, v0, p1}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method zza(ILjava/nio/channels/FileChannel;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {p2, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p2, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Error writing to channel. Bytes written"

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p2

    const-string v1, "Failed to write to channel"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string p2, "Bad chanel to read from"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzatq;Ljava/lang/String;)[B
    .locals 23

    move-object/from16 v1, p1

    move-object/from16 v11, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzJV()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    new-instance v12, Lcom/google/android/gms/internal/zzauw$zzd;

    invoke-direct {v12}, Lcom/google/android/gms/internal/zzauw$zzd;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatj;->beginTransaction()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/zzatj;->zzfu(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatc;

    move-result-object v13

    const/4 v14, 0x0

    if-nez v13, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Log and bundle not available. package_name"

    invoke-virtual {v1, v2, v11}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    new-array v1, v14, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzatc;->zzKx()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Log and bundle disabled. package_name"

    invoke-virtual {v1, v2, v11}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v15, Lcom/google/android/gms/internal/zzauw$zze;

    invoke-direct {v15}, Lcom/google/android/gms/internal/zzauw$zze;-><init>()V

    const/4 v9, 0x1

    new-array v2, v9, [Lcom/google/android/gms/internal/zzauw$zze;

    aput-object v15, v2, v14

    iput-object v2, v12, Lcom/google/android/gms/internal/zzauw$zzd;->zzbxg:[Lcom/google/android/gms/internal/zzauw$zze;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v15, Lcom/google/android/gms/internal/zzauw$zze;->zzbxi:Ljava/lang/Integer;

    const-string v2, "android"

    iput-object v2, v15, Lcom/google/android/gms/internal/zzauw$zze;->zzbxq:Ljava/lang/String;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzatc;->zzke()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzatc;->zzKu()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/google/android/gms/internal/zzauw$zze;->zzbqL:Ljava/lang/String;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzatc;->zzmZ()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/google/android/gms/internal/zzauw$zze;->zzbhN:Ljava/lang/String;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzatc;->zzKt()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v15, Lcom/google/android/gms/internal/zzauw$zze;->zzbxD:Ljava/lang/Integer;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzatc;->zzKv()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v15, Lcom/google/android/gms/internal/zzauw$zze;->zzbxu:Ljava/lang/Long;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzatc;->getGmpAppId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/google/android/gms/internal/zzauw$zze;->zzbqK:Ljava/lang/String;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzatc;->zzKw()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v15, Lcom/google/android/gms/internal/zzauw$zze;->zzbxz:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v2

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzatc;->zzke()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzaua;->zzfG(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iput-object v3, v15, Lcom/google/android/gms/internal/zzauw$zze;->zzbxw:Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    iput-object v2, v15, Lcom/google/android/gms/internal/zzauw$zze;->zzbxx:Ljava/lang/Boolean;

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKc()Lcom/google/android/gms/internal/zzatl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatl;->zzkN()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/google/android/gms/internal/zzauw$zze;->zzbxr:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKc()Lcom/google/android/gms/internal/zzatl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatl;->zzLS()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/google/android/gms/internal/zzauw$zze;->zzbb:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKc()Lcom/google/android/gms/internal/zzatl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatl;->zzLT()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v15, Lcom/google/android/gms/internal/zzauw$zze;->zzbxt:Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKc()Lcom/google/android/gms/internal/zzatl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatl;->zzLU()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/google/android/gms/internal/zzauw$zze;->zzbxs:Ljava/lang/String;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzatc;->getAppInstanceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/google/android/gms/internal/zzauw$zze;->zzbxy:Ljava/lang/String;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzatc;->zzKq()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/google/android/gms/internal/zzauw$zze;->zzbqS:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzatc;->zzke()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzatj;->zzft(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/gms/internal/zzauw$zzg;

    iput-object v3, v15, Lcom/google/android/gms/internal/zzauw$zze;->zzbxk:[Lcom/google/android/gms/internal/zzauw$zzg;

    move v3, v14

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    new-instance v4, Lcom/google/android/gms/internal/zzauw$zzg;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzauw$zzg;-><init>()V

    iget-object v5, v15, Lcom/google/android/gms/internal/zzauw$zze;->zzbxk:[Lcom/google/android/gms/internal/zzauw$zzg;

    aput-object v4, v5, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/zzaus;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzaus;->mName:Ljava/lang/String;

    iput-object v5, v4, Lcom/google/android/gms/internal/zzauw$zzg;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/zzaus;

    iget-wide v5, v5, Lcom/google/android/gms/internal/zzaus;->zzbwj:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxM:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/zzaus;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzaus;->mValue:Ljava/lang/Object;

    invoke-virtual {v5, v4, v6}, Lcom/google/android/gms/internal/zzaut;->zza(Lcom/google/android/gms/internal/zzauw$zzg;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, v1, Lcom/google/android/gms/internal/zzatq;->zzbrH:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzato;->zzLW()Landroid/os/Bundle;

    move-result-object v10

    const-string v2, "_iap"

    iget-object v3, v1, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v3, 0x1

    if-eqz v2, :cond_4

    const-string v2, "_c"

    invoke-virtual {v10, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v5, "Marking in-app purchase as real-time"

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    const-string v2, "_r"

    invoke-virtual {v10, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_4
    const-string v2, "_o"

    iget-object v5, v1, Lcom/google/android/gms/internal/zzatq;->zzbqW:Ljava/lang/String;

    invoke-virtual {v10, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    iget-object v5, v15, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/zzaut;->zzge(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    const-string v5, "_dbg"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v10, v5, v6}, Lcom/google/android/gms/internal/zzaut;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    const-string v5, "_r"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v10, v5, v3}, Lcom/google/android/gms/internal/zzaut;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    invoke-virtual {v2, v11, v3}, Lcom/google/android/gms/internal/zzatj;->zzQ(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzatn;

    move-result-object v2

    const-wide/16 v16, 0x0

    if-nez v2, :cond_6

    new-instance v7, Lcom/google/android/gms/internal/zzatn;

    iget-object v4, v1, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    const-wide/16 v5, 0x1

    const-wide/16 v18, 0x0

    iget-wide v2, v1, Lcom/google/android/gms/internal/zzatq;->zzbrI:J

    move-wide/from16 v20, v2

    move-object v2, v7

    move-object v3, v11

    move-object v14, v7

    move-wide/from16 v7, v18

    move-object/from16 v18, v10

    move-object/from16 v22, v12

    move v12, v9

    move-wide/from16 v9, v20

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/zzatn;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatn;)V

    move-wide/from16 v8, v16

    goto :goto_2

    :cond_6
    move-object/from16 v18, v10

    move-object/from16 v22, v12

    move v12, v9

    iget-wide v3, v2, Lcom/google/android/gms/internal/zzatn;->zzbrD:J

    iget-wide v5, v1, Lcom/google/android/gms/internal/zzatq;->zzbrI:J

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/zzatn;->zzap(J)Lcom/google/android/gms/internal/zzatn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatn;->zzLV()Lcom/google/android/gms/internal/zzatn;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatn;)V

    move-wide v8, v3

    :goto_2
    new-instance v14, Lcom/google/android/gms/internal/zzatm;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzatq;->zzbqW:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/internal/zzatq;->zzbrI:J

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v4, v11

    move-object/from16 v10, v18

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/zzatm;-><init>(Lcom/google/android/gms/internal/zzaue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    new-instance v1, Lcom/google/android/gms/internal/zzauw$zzb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzauw$zzb;-><init>()V

    new-array v2, v12, [Lcom/google/android/gms/internal/zzauw$zzb;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    iput-object v2, v15, Lcom/google/android/gms/internal/zzauw$zze;->zzbxj:[Lcom/google/android/gms/internal/zzauw$zzb;

    iget-wide v4, v14, Lcom/google/android/gms/internal/zzatm;->zzaxb:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxc:Ljava/lang/Long;

    iget-object v2, v14, Lcom/google/android/gms/internal/zzatm;->mName:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    iget-wide v4, v14, Lcom/google/android/gms/internal/zzatm;->zzbrz:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxd:Ljava/lang/Long;

    iget-object v2, v14, Lcom/google/android/gms/internal/zzatm;->zzbrA:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzato;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/zzauw$zzc;

    iput-object v2, v1, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    iget-object v2, v14, Lcom/google/android/gms/internal/zzatm;->zzbrA:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzato;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/google/android/gms/internal/zzauw$zzc;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzauw$zzc;-><init>()V

    iget-object v6, v1, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxb:[Lcom/google/android/gms/internal/zzauw$zzc;

    add-int/lit8 v7, v3, 0x1

    aput-object v5, v6, v3

    iput-object v4, v5, Lcom/google/android/gms/internal/zzauw$zzc;->name:Ljava/lang/String;

    iget-object v3, v14, Lcom/google/android/gms/internal/zzatm;->zzbrA:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzato;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v4

    invoke-virtual {v4, v5, v3}, Lcom/google/android/gms/internal/zzaut;->zza(Lcom/google/android/gms/internal/zzauw$zzc;Ljava/lang/Object;)V

    move v3, v7

    goto :goto_3

    :cond_7
    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzatc;->zzke()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v15, Lcom/google/android/gms/internal/zzauw$zze;->zzbxk:[Lcom/google/android/gms/internal/zzauw$zzg;

    iget-object v4, v15, Lcom/google/android/gms/internal/zzauw$zze;->zzbxj:[Lcom/google/android/gms/internal/zzauw$zzb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v5, p0

    :try_start_2
    invoke-direct {v5, v2, v3, v4}, Lcom/google/android/gms/internal/zzaue;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzauw$zzg;[Lcom/google/android/gms/internal/zzauw$zzb;)[Lcom/google/android/gms/internal/zzauw$zza;

    move-result-object v2

    iput-object v2, v15, Lcom/google/android/gms/internal/zzauw$zze;->zzbxC:[Lcom/google/android/gms/internal/zzauw$zza;

    iget-object v2, v1, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxc:Ljava/lang/Long;

    iput-object v2, v15, Lcom/google/android/gms/internal/zzauw$zze;->zzbxm:Ljava/lang/Long;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxc:Ljava/lang/Long;

    iput-object v1, v15, Lcom/google/android/gms/internal/zzauw$zze;->zzbxn:Ljava/lang/Long;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzatc;->zzKs()J

    move-result-wide v1

    cmp-long v3, v1, v16

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_4

    :cond_8
    move-object v3, v4

    :goto_4
    iput-object v3, v15, Lcom/google/android/gms/internal/zzauw$zze;->zzbxp:Ljava/lang/Long;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzatc;->zzKr()J

    move-result-wide v6

    cmp-long v3, v6, v16

    if-nez v3, :cond_9

    goto :goto_5

    :cond_9
    move-wide v1, v6

    :goto_5
    cmp-long v3, v1, v16

    if-eqz v3, :cond_a

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_6

    :cond_a
    move-object v1, v4

    :goto_6
    iput-object v1, v15, Lcom/google/android/gms/internal/zzauw$zze;->zzbxo:Ljava/lang/Long;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzatc;->zzKB()V

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzatc;->zzKy()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/gms/internal/zzauw$zze;->zzbxA:Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzati;->zzKv()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/gms/internal/zzauw$zze;->zzbxv:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/gms/internal/zzauw$zze;->zzbxl:Ljava/lang/Long;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v15, Lcom/google/android/gms/internal/zzauw$zze;->zzbxB:Ljava/lang/Boolean;

    iget-object v1, v15, Lcom/google/android/gms/internal/zzauw$zze;->zzbxm:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v13, v1, v2}, Lcom/google/android/gms/internal/zzatc;->zzY(J)V

    iget-object v1, v15, Lcom/google/android/gms/internal/zzauw$zze;->zzbxn:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v13, v1, v2}, Lcom/google/android/gms/internal/zzatc;->zzZ(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatc;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatj;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    move-object/from16 v1, v22

    :try_start_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzauw$zzd;->zzafB()I

    move-result v2

    new-array v2, v2, [B

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbyc;->zzah([B)Lcom/google/android/gms/internal/zzbyc;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzauw$zzd;->zza(Lcom/google/android/gms/internal/zzbyc;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbyc;->zzafo()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzaut;->zzk([B)[B

    move-result-object v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Data loss. Failed to bundle and serialize. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v3, v6, v1}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v5, p0

    :goto_7
    move-object v1, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    throw v1
.end method

.method zzaq(J)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzaue;->zzl(Ljava/lang/String;J)Z

    move-result p1

    return p1
.end method

.method zzb(Lcom/google/android/gms/internal/zzatc;)V
    .locals 7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzke()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzaue;->zzb(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->getAppInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzati;->zzP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMf()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Fetching remote configuration"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzke()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKi()Lcom/google/android/gms/internal/zzauc;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzke()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzauc;->zzfL(Ljava/lang/String;)Lcom/google/android/gms/internal/zzauv$zzb;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKi()Lcom/google/android/gms/internal/zzauc;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzke()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzauc;->zzfM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v3, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v3}, Landroid/support/v4/util/ArrayMap;-><init>()V

    const-string v2, "If-Modified-Since"

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMz()Lcom/google/android/gms/internal/zzaty;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzke()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/zzaue$4;

    invoke-direct {v5, p0}, Lcom/google/android/gms/internal/zzaue$4;-><init>(Lcom/google/android/gms/internal/zzaue;)V

    invoke-virtual {v2, v4, v1, v3, v5}, Lcom/google/android/gms/internal/zzaty;->zza(Ljava/lang/String;Ljava/net/URL;Ljava/util/Map;Lcom/google/android/gms/internal/zzaty$zza;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Failed to parse config URL. Not fetching. appId"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzke()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method zzb(Lcom/google/android/gms/internal/zzatd;J)V
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_c"

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "_r"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v1, Lcom/google/android/gms/internal/zzatq;

    const-string v5, "_v"

    new-instance v6, Lcom/google/android/gms/internal/zzato;

    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/zzato;-><init>(Landroid/os/Bundle;)V

    const-string v7, "auto"

    move-object v4, v1

    move-wide v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/zzatq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzato;Ljava/lang/String;J)V

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/zzaue;->zzb(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    return-void
.end method

.method zzb(Lcom/google/android/gms/internal/zzatg;Lcom/google/android/gms/internal/zzatd;)V
    .locals 10

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->zzbqW:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->zzbqX:Lcom/google/android/gms/internal/zzauq;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->zzbqX:Lcom/google/android/gms/internal/zzauq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzatd;->zzbqK:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzatd;->zzbqP:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaue;->zzf(Lcom/google/android/gms/internal/zzatd;)V

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzatg;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzatg;-><init>(Lcom/google/android/gms/internal/zzatg;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatj;->beginTransaction()V

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzatg;->zzbqX:Lcom/google/android/gms/internal/zzauq;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzatj;->zzT(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzatg;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-boolean v3, v1, Lcom/google/android/gms/internal/zzatg;->zzbqZ:Z

    if-eqz v3, :cond_2

    iget-object v2, v1, Lcom/google/android/gms/internal/zzatg;->zzbqW:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzatg;->zzbqW:Ljava/lang/String;

    iget-wide v2, v1, Lcom/google/android/gms/internal/zzatg;->zzbqY:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzatg;->zzbqY:J

    iget-object v2, v1, Lcom/google/android/gms/internal/zzatg;->zzbra:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzatg;->zzbra:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzatg;->zzbrd:Lcom/google/android/gms/internal/zzatq;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzatg;->zzbrd:Lcom/google/android/gms/internal/zzatq;

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/internal/zzatg;->zzbra:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, v0, Lcom/google/android/gms/internal/zzatg;->zzbqX:Lcom/google/android/gms/internal/zzauq;

    new-instance v1, Lcom/google/android/gms/internal/zzauq;

    iget-object v4, p1, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/internal/zzatg;->zzbqY:J

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzauq;->getValue()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p1, Lcom/google/android/gms/internal/zzauq;->zzbqW:Ljava/lang/String;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzauq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzatg;->zzbqX:Lcom/google/android/gms/internal/zzauq;

    iput-boolean v2, v0, Lcom/google/android/gms/internal/zzatg;->zzbqZ:Z

    move p1, v2

    :cond_3
    :goto_0
    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzatg;->zzbqZ:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/google/android/gms/internal/zzatg;->zzbqX:Lcom/google/android/gms/internal/zzauq;

    new-instance v9, Lcom/google/android/gms/internal/zzaus;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->zzbqW:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/internal/zzauq;->zzbwf:J

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzauq;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/zzaus;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzaus;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "User property updated immediately"

    iget-object v3, v0, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    iget-object v4, v9, Lcom/google/android/gms/internal/zzaus;->mName:Ljava/lang/String;

    iget-object v5, v9, Lcom/google/android/gms/internal/zzaus;->mValue:Ljava/lang/Object;

    :goto_1
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v0, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v9, Lcom/google/android/gms/internal/zzaus;->mName:Ljava/lang/String;

    iget-object v5, v9, Lcom/google/android/gms/internal/zzaus;->mValue:Ljava/lang/Object;

    goto :goto_1

    :goto_2
    if-eqz p1, :cond_5

    iget-object p1, v0, Lcom/google/android/gms/internal/zzatg;->zzbrd:Lcom/google/android/gms/internal/zzatq;

    if-eqz p1, :cond_5

    new-instance p1, Lcom/google/android/gms/internal/zzatq;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzatg;->zzbrd:Lcom/google/android/gms/internal/zzatq;

    iget-wide v2, v0, Lcom/google/android/gms/internal/zzatg;->zzbqY:J

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzatq;-><init>(Lcom/google/android/gms/internal/zzatq;J)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzaue;->zzc(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatg;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string p2, "Conditional property added"

    iget-object v1, v0, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzatg;->zzbqX:Lcom/google/android/gms/internal/zzauq;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzatg;->zzbqX:Lcom/google/android/gms/internal/zzauq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauq;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_3
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzatg;->zzbqX:Lcom/google/android/gms/internal/zzauq;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzatg;->zzbqX:Lcom/google/android/gms/internal/zzauq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauq;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatj;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    throw p1
.end method

.method zzb(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V
    .locals 13

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    iget-wide v8, p1, Lcom/google/android/gms/internal/zzatq;->zzbrI:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/zzaut;->zzd(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p2, Lcom/google/android/gms/internal/zzatd;->zzbqP:Z

    if-nez v1, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaue;->zzf(Lcom/google/android/gms/internal/zzatd;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatj;->beginTransaction()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1, v0, v8, v9}, Lcom/google/android/gms/internal/zzatj;->zzh(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzatg;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v3

    const-string v4, "User property timed out"

    iget-object v5, v2, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    iget-object v6, v2, Lcom/google/android/gms/internal/zzatg;->zzbqX:Lcom/google/android/gms/internal/zzauq;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    iget-object v7, v2, Lcom/google/android/gms/internal/zzatg;->zzbqX:Lcom/google/android/gms/internal/zzauq;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzauq;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v2, Lcom/google/android/gms/internal/zzatg;->zzbrb:Lcom/google/android/gms/internal/zzatq;

    if-eqz v3, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/zzatq;

    iget-object v4, v2, Lcom/google/android/gms/internal/zzatg;->zzbrb:Lcom/google/android/gms/internal/zzatq;

    invoke-direct {v3, v4, v8, v9}, Lcom/google/android/gms/internal/zzatq;-><init>(Lcom/google/android/gms/internal/zzatq;J)V

    invoke-virtual {p0, v3, p2}, Lcom/google/android/gms/internal/zzaue;->zzc(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v3

    iget-object v2, v2, Lcom/google/android/gms/internal/zzatg;->zzbqX:Lcom/google/android/gms/internal/zzauq;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/internal/zzatj;->zzU(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1, v0, v8, v9}, Lcom/google/android/gms/internal/zzatj;->zzi(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzatg;

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v4

    const-string v5, "User property expired"

    iget-object v6, v3, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    iget-object v7, v3, Lcom/google/android/gms/internal/zzatg;->zzbqX:Lcom/google/android/gms/internal/zzauq;

    iget-object v7, v7, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    iget-object v10, v3, Lcom/google/android/gms/internal/zzatg;->zzbqX:Lcom/google/android/gms/internal/zzauq;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzauq;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v4, v5, v6, v7, v10}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/gms/internal/zzatg;->zzbqX:Lcom/google/android/gms/internal/zzauq;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lcom/google/android/gms/internal/zzatj;->zzR(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/google/android/gms/internal/zzatg;->zzbrf:Lcom/google/android/gms/internal/zzatq;

    if-eqz v4, :cond_6

    iget-object v4, v3, Lcom/google/android/gms/internal/zzatg;->zzbrf:Lcom/google/android/gms/internal/zzatq;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v4

    iget-object v3, v3, Lcom/google/android/gms/internal/zzatg;->zzbqX:Lcom/google/android/gms/internal/zzauq;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Lcom/google/android/gms/internal/zzatj;->zzU(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzatq;

    new-instance v3, Lcom/google/android/gms/internal/zzatq;

    invoke-direct {v3, v2, v8, v9}, Lcom/google/android/gms/internal/zzatq;-><init>(Lcom/google/android/gms/internal/zzatq;J)V

    invoke-virtual {p0, v3, p2}, Lcom/google/android/gms/internal/zzaue;->zzc(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v8, v9}, Lcom/google/android/gms/internal/zzatj;->zzc(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v0

    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/google/android/gms/internal/zzatg;

    if-eqz v11, :cond_9

    iget-object v1, v11, Lcom/google/android/gms/internal/zzatg;->zzbqX:Lcom/google/android/gms/internal/zzauq;

    new-instance v12, Lcom/google/android/gms/internal/zzaus;

    iget-object v2, v11, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    iget-object v3, v11, Lcom/google/android/gms/internal/zzatg;->zzbqW:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzauq;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v1, v12

    move-wide v5, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzaus;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzaus;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "User property triggered"

    iget-object v3, v11, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    iget-object v4, v12, Lcom/google/android/gms/internal/zzaus;->mName:Ljava/lang/String;

    iget-object v5, v12, Lcom/google/android/gms/internal/zzaus;->mValue:Ljava/lang/Object;

    :goto_4
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Too many active user properties, ignoring"

    iget-object v3, v11, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v12, Lcom/google/android/gms/internal/zzaus;->mName:Ljava/lang/String;

    iget-object v5, v12, Lcom/google/android/gms/internal/zzaus;->mValue:Ljava/lang/Object;

    goto :goto_4

    :goto_5
    iget-object v1, v11, Lcom/google/android/gms/internal/zzatg;->zzbrd:Lcom/google/android/gms/internal/zzatq;

    if-eqz v1, :cond_b

    iget-object v1, v11, Lcom/google/android/gms/internal/zzatg;->zzbrd:Lcom/google/android/gms/internal/zzatq;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    new-instance v1, Lcom/google/android/gms/internal/zzauq;

    invoke-direct {v1, v12}, Lcom/google/android/gms/internal/zzauq;-><init>(Lcom/google/android/gms/internal/zzaus;)V

    iput-object v1, v11, Lcom/google/android/gms/internal/zzatg;->zzbqX:Lcom/google/android/gms/internal/zzauq;

    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/google/android/gms/internal/zzatg;->zzbqZ:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatg;)Z

    goto :goto_3

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzaue;->zzc(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzatq;

    new-instance v1, Lcom/google/android/gms/internal/zzatq;

    invoke-direct {v1, v0, v8, v9}, Lcom/google/android/gms/internal/zzatq;-><init>(Lcom/google/android/gms/internal/zzatq;J)V

    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/zzaue;->zzc(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    goto :goto_6

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatj;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    throw p1
.end method

.method zzb(Lcom/google/android/gms/internal/zzatq;Ljava/lang/String;)V
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatj;->zzfu(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatc;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatc;->zzmZ()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzadg;->zzbi(Landroid/content/Context;)Lcom/google/android/gms/internal/zzadf;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/zzadf;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatc;->zzmZ()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatc;->zzmZ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatx;->zzMb()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v3

    const-string v4, "App version does not match; dropping event. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v3, "_ui"

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatx;->zzMb()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v3

    const-string v4, "Could not find package. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    new-instance v15, Lcom/google/android/gms/internal/zzatd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatc;->getGmpAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatc;->zzmZ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatc;->zzKt()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatc;->zzKu()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatc;->zzKv()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatc;->zzKw()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatc;->zzKx()Z

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatc;->zzKq()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatc;->zzuW()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    move-object v1, v15

    move-object/from16 v22, v15

    move-object/from16 v15, v16

    move-wide/from16 v16, v17

    move-wide/from16 v18, v19

    move/from16 v20, v21

    invoke-direct/range {v1 .. v20}, Lcom/google/android/gms/internal/zzatd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJI)V

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzaue;->zzb(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    return-void

    :cond_2
    :goto_0
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v3, "No app data available; dropping event"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method zzb(Lcom/google/android/gms/internal/zzauh;)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/zzaue;->zzbuD:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/zzaue;->zzbuD:I

    return-void
.end method

.method zzb(Lcom/google/android/gms/internal/zzauq;Lcom/google/android/gms/internal/zzatd;)V
    .locals 11

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzatd;->zzbqK:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzatd;->zzbqP:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaue;->zzf(Lcom/google/android/gms/internal/zzatd;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaut;->zzfX(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object p2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzati;->zzKN()I

    move-result v4

    invoke-virtual {p2, v3, v4, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p1, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object p1

    const-string v1, "_ev"

    invoke-virtual {p1, v0, v1, p2, v2}, Lcom/google/android/gms/internal/zzaut;->zza(ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v0

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzauq;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/zzaut;->zzl(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object p2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzati;->zzKN()I

    move-result v4

    invoke-virtual {p2, v3, v4, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzauq;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_4

    instance-of v1, p1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object p1

    const-string v1, "_ev"

    invoke-virtual {p1, v0, v1, p2, v2}, Lcom/google/android/gms/internal/zzaut;->zza(ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzauq;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/zzaut;->zzm(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v1, Lcom/google/android/gms/internal/zzaus;

    iget-object v5, p2, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    iget-object v6, p1, Lcom/google/android/gms/internal/zzauq;->zzbqW:Ljava/lang/String;

    iget-object v7, p1, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    iget-wide v8, p1, Lcom/google/android/gms/internal/zzauq;->zzbwf:J

    move-object v4, v1

    move-object v10, v0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/zzaus;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string v3, "Setting user property"

    iget-object v4, v1, Lcom/google/android/gms/internal/zzaus;->mName:Ljava/lang/String;

    invoke-virtual {p1, v3, v4, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatj;->beginTransaction()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaue;->zzf(Lcom/google/android/gms/internal/zzatd;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzaus;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzatj;->setTransactionSuccessful()V

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string p2, "User property set"

    iget-object v0, v1, Lcom/google/android/gms/internal/zzaus;->mName:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaus;->mValue:Ljava/lang/Object;

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string p2, "Too many unique user properties are set. Ignoring user property"

    iget-object v0, v1, Lcom/google/android/gms/internal/zzaus;->mName:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaus;->mValue:Ljava/lang/Object;

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object p1

    const/16 p2, 0x9

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0, v2}, Lcom/google/android/gms/internal/zzaut;->zza(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    throw p1
.end method

.method zzb(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p4, :cond_0

    new-array p4, v0, [B

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatj;->beginTransaction()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzatj;->zzfu(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatc;

    move-result-object v1

    const/16 v2, 0xc8

    const/4 v3, 0x1

    const/16 v4, 0x130

    if-eq p2, v2, :cond_1

    const/16 v2, 0xcc

    if-eq p2, v2, :cond_1

    if-ne p2, v4, :cond_2

    :cond_1
    if-nez p3, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzatx;->zzMb()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p2

    const-string p3, "App does not exist in onConfigFetched. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_3
    const/16 v5, 0x194

    if-nez v2, :cond_8

    if-ne p2, v5, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object p4

    invoke-interface {p4}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/internal/zzatc;->zzaf(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object p4

    invoke-virtual {p4, v1}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatc;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/internal/zzatx;->zzMf()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p4

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKi()Lcom/google/android/gms/internal/zzauc;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/zzauc;->zzfN(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzaua;->zzbtc:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/zzaua$zzb;->set(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_5

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_6

    :cond_5
    move v0, v3

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzaua;->zzbtd:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/zzaua$zzb;->set(J)V

    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaue;->zzMK()V

    goto/16 :goto_7

    :cond_8
    :goto_1
    const/4 p3, 0x0

    if-eqz p5, :cond_9

    const-string v2, "Last-Modified"

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    goto :goto_2

    :cond_9
    move-object p5, p3

    :goto_2
    if-eqz p5, :cond_a

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    goto :goto_3

    :cond_a
    move-object p5, p3

    :goto_3
    if-eq p2, v5, :cond_c

    if-ne p2, v4, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKi()Lcom/google/android/gms/internal/zzauc;

    move-result-object p3

    invoke-virtual {p3, p1, p4, p5}, Lcom/google/android/gms/internal/zzauc;->zzb(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_d

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    return-void

    :cond_c
    :goto_5
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKi()Lcom/google/android/gms/internal/zzauc;

    move-result-object p5

    invoke-virtual {p5, p1}, Lcom/google/android/gms/internal/zzauc;->zzfL(Ljava/lang/String;)Lcom/google/android/gms/internal/zzauv$zzb;

    move-result-object p5

    if-nez p5, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKi()Lcom/google/android/gms/internal/zzauc;

    move-result-object p5

    invoke-virtual {p5, p1, p3, p3}, Lcom/google/android/gms/internal/zzauc;->zzb(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_d

    goto :goto_4

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzatc;->zzae(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatc;)V

    if-ne p2, v5, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzatx;->zzMc()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p2

    const-string p3, "Config not found. Using empty config. appId"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzMf()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string p3, "Successfully fetched config. Got network response. code, size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length p4, p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMz()Lcom/google/android/gms/internal/zzaty;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaty;->zzqa()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaue;->zzMJ()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMI()V

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatj;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    throw p1
.end method

.method zzc(Lcom/google/android/gms/internal/zzatd;J)V
    .locals 12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatj;->zzfu(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatc;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->getGmpAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->zzbqK:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatc;->zzae(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatc;)V

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_c"

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "_r"

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "_uwa"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "_pfo"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "_sys"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "_sysu"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v3

    const-string v4, "PackageManager is null, first open report might be inaccurate. appId"

    iget-object v5, p1, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    const/4 v3, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/internal/zzadg;->zzbi(Landroid/content/Context;)Lcom/google/android/gms/internal/zzadf;

    move-result-object v7

    iget-object v8, p1, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Lcom/google/android/gms/internal/zzadf;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v8

    const-string v9, "Package info is null, first open report might be inaccurate. appId"

    iget-object v10, p1, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-static {v10}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v7}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v7, v6

    :goto_0
    if-eqz v7, :cond_2

    iget-wide v8, v7, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    cmp-long v10, v8, v1

    if-eqz v10, :cond_2

    iget-wide v8, v7, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v10, v7, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v7, v8, v10

    if-eqz v7, :cond_2

    const-string v7, "_uwa"

    invoke-virtual {v0, v7, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/internal/zzadg;->zzbi(Landroid/content/Context;)Lcom/google/android/gms/internal/zzadf;

    move-result-object v7

    iget-object v8, p1, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Lcom/google/android/gms/internal/zzadf;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v7

    const-string v8, "Application info is null, first open report might be inaccurate. appId"

    iget-object v9, p1, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v3}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v6

    :goto_1
    if-eqz v3, :cond_4

    iget v6, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    const-string v6, "_sys"

    invoke-virtual {v0, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_3
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_4

    const-string v3, "_sysu"

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzatj;->zzfA(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-ltz v5, :cond_5

    const-string v1, "_pfo"

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_5
    new-instance v1, Lcom/google/android/gms/internal/zzatq;

    const-string v6, "_f"

    new-instance v7, Lcom/google/android/gms/internal/zzato;

    invoke-direct {v7, v0}, Lcom/google/android/gms/internal/zzato;-><init>(Landroid/os/Bundle;)V

    const-string v8, "auto"

    move-object v5, v1

    move-wide v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/zzatq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzato;Ljava/lang/String;J)V

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/zzaue;->zzb(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    return-void
.end method

.method zzc(Lcom/google/android/gms/internal/zzatg;Lcom/google/android/gms/internal/zzatd;)V
    .locals 8

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->zzbqX:Lcom/google/android/gms/internal/zzauq;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->zzbqX:Lcom/google/android/gms/internal/zzauq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzatd;->zzbqK:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzatd;->zzbqP:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaue;->zzf(Lcom/google/android/gms/internal/zzatd;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->beginTransaction()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaue;->zzf(Lcom/google/android/gms/internal/zzatd;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatg;->zzbqX:Lcom/google/android/gms/internal/zzauq;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatj;->zzT(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzatg;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Removing conditional user property"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/internal/zzatg;->zzbqX:Lcom/google/android/gms/internal/zzauq;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatg;->zzbqX:Lcom/google/android/gms/internal/zzauq;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzatj;->zzU(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzatg;->zzbqZ:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatg;->zzbqX:Lcom/google/android/gms/internal/zzauq;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzatj;->zzR(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p1, Lcom/google/android/gms/internal/zzatg;->zzbrf:Lcom/google/android/gms/internal/zzatq;

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatg;->zzbrf:Lcom/google/android/gms/internal/zzatq;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzatq;->zzbrH:Lcom/google/android/gms/internal/zzato;

    if-eqz v2, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatg;->zzbrf:Lcom/google/android/gms/internal/zzatq;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzatq;->zzbrH:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzato;->zzLW()Landroid/os/Bundle;

    move-result-object v1

    :cond_3
    move-object v2, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatg;->zzbrf:Lcom/google/android/gms/internal/zzatq;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->zzbqW:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzatg;->zzbrf:Lcom/google/android/gms/internal/zzatq;

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzatq;->zzbrI:J

    const/4 p1, 0x1

    const/4 v7, 0x0

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move-wide v4, v5

    move v6, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/internal/zzatq;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzaue;->zzc(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzatx;->zzMb()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p2

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzatg;->zzbqX:Lcom/google/android/gms/internal/zzauq;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatj;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    throw p1
.end method

.method zzc(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V
    .locals 25

    move-object/from16 v11, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v12, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    iget-object v15, v12, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    invoke-virtual {v2, v1, v12}, Lcom/google/android/gms/internal/zzaut;->zzd(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-boolean v2, v12, Lcom/google/android/gms/internal/zzatd;->zzbqP:Z

    if-nez v2, :cond_1

    invoke-direct {v11, v12}, Lcom/google/android/gms/internal/zzaue;->zzf(Lcom/google/android/gms/internal/zzatd;)V

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKi()Lcom/google/android/gms/internal/zzauc;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    invoke-virtual {v2, v15, v3}, Lcom/google/android/gms/internal/zzauc;->zzaa(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v10, 0x0

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMb()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v4, "Dropping blacklisted event. appId"

    invoke-static {v15}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v6}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/google/android/gms/internal/zzaut;->zzgg(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/google/android/gms/internal/zzaut;->zzgh(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v3, v10

    :cond_3
    :goto_0
    if-nez v3, :cond_4

    const-string v2, "_err"

    iget-object v4, v1, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    const/16 v4, 0xb

    const-string v5, "_ev"

    iget-object v1, v1, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v1, v10}, Lcom/google/android/gms/internal/zzaut;->zza(ILjava/lang/String;Ljava/lang/String;I)V

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/zzatj;->zzfu(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatc;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatc;->zzKA()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatc;->zzKz()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzati;->zzLm()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Fetching config for blacklisted app"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/zzaue;->zzb(Lcom/google/android/gms/internal/zzatc;)V

    :cond_5
    return-void

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/zzatx;->zzak(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMf()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v4, "Logging event"

    invoke-virtual {v2, v4, v1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatj;->beginTransaction()V

    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/internal/zzatq;->zzbrH:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzato;->zzLW()Landroid/os/Bundle;

    move-result-object v8

    invoke-direct {v11, v12}, Lcom/google/android/gms/internal/zzaue;->zzf(Lcom/google/android/gms/internal/zzatd;)V

    const-string v2, "_iap"

    iget-object v4, v1, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-nez v2, :cond_9

    :try_start_1
    const-string v2, "ecommerce_purchase"

    iget-object v4, v1, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_8

    goto :goto_1

    :cond_8
    move-object v9, v11

    const/4 v11, 0x0

    move/from16 v24, v10

    move-object v10, v8

    move/from16 v8, v24

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v4, v11

    goto/16 :goto_a

    :cond_9
    :goto_1
    :try_start_2
    const-string v2, "currency"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "ecommerce_purchase"

    iget-object v5, v1, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    if-eqz v4, :cond_c

    :try_start_3
    const-string v4, "value"

    invoke-virtual {v8, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide v16, 0x412e848000000000L    # 1000000.0

    mul-double v4, v4, v16

    const-wide/16 v18, 0x0

    cmpl-double v7, v4, v18

    if-nez v7, :cond_a

    const-string v4, "value"

    invoke-virtual {v8, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-double v4, v4

    mul-double v4, v4, v16

    :cond_a
    const-wide/high16 v16, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v7, v4, v16

    if-gtz v7, :cond_b

    const-wide/high16 v16, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v7, v4, v16

    if-ltz v7, :cond_b

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    goto :goto_2

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMb()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Data lost. Currency value is too big. appId"

    invoke-static {v15}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatj;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    return-void

    :cond_c
    :try_start_4
    const-string v4, "value"

    invoke-virtual {v8, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-nez v7, :cond_8

    :try_start_5
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "[A-Z]{3}"

    invoke-virtual {v2, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "_ltv_"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_d

    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    move-object v7, v2

    goto :goto_4

    :cond_d
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2, v15, v7}, Lcom/google/android/gms/internal/zzatj;->zzS(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzaus;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-object v6, v2, Lcom/google/android/gms/internal/zzaus;->mValue:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Long;

    if-nez v6, :cond_e

    move-object v10, v8

    move-object v9, v11

    const/4 v11, 0x0

    goto :goto_5

    :cond_e
    iget-object v2, v2, Lcom/google/android/gms/internal/zzaus;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    new-instance v16, Lcom/google/android/gms/internal/zzaus;

    iget-object v6, v1, Lcom/google/android/gms/internal/zzatq;->zzbqW:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-long v10, v2, v4

    :try_start_6
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v2, v16

    move-object v3, v15

    move-object v4, v6

    move-object v5, v7

    const/4 v11, 0x0

    move-wide/from16 v6, v17

    move-object v10, v8

    move-object v8, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/zzaus;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v2, v16

    move-object/from16 v9, p0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v4, p0

    goto/16 :goto_a

    :cond_f
    move-object v10, v8

    const/4 v11, 0x0

    move-object/from16 v9, p0

    :goto_5
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v6

    invoke-virtual {v6, v15}, Lcom/google/android/gms/internal/zzati;->zzfn(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v2, v15, v6}, Lcom/google/android/gms/internal/zzatj;->zzz(Ljava/lang/String;I)V

    new-instance v16, Lcom/google/android/gms/internal/zzaus;

    iget-object v6, v1, Lcom/google/android/gms/internal/zzatq;->zzbqW:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v17

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v2, v16

    move-object v3, v15

    move-object v4, v6

    move-object v5, v7

    move-wide/from16 v6, v17

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/zzaus;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object/from16 v2, v16

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzaus;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v3

    const-string v4, "Too many unique user properties are set. Ignoring user property. appId"

    invoke-static {v15}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/internal/zzaus;->mName:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaus;->mValue:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    const/16 v3, 0x9

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v11, v11, v8}, Lcom/google/android/gms/internal/zzaut;->zza(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_7

    :cond_10
    const/4 v8, 0x0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v4, v9

    goto/16 :goto_a

    :goto_7
    :try_start_8
    iget-object v2, v1, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzaut;->zzfT(Ljava/lang/String;)Z

    move-result v16

    const-string v2, "_err"

    iget-object v3, v1, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzMG()J

    move-result-wide v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    const/4 v6, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v5, v15

    move/from16 v7, v16

    move/from16 v20, v8

    move/from16 v8, v18

    move/from16 v9, v17

    move-object v11, v10

    move-wide/from16 v22, v13

    move/from16 v13, v20

    move/from16 v10, v19

    :try_start_9
    invoke-virtual/range {v2 .. v10}, Lcom/google/android/gms/internal/zzatj;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/zzatj$zza;

    move-result-object v2

    iget-wide v3, v2, Lcom/google/android/gms/internal/zzatj$zza;->zzbrp:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzati;->zzKV()J

    move-result-wide v5

    sub-long v7, v3, v5

    const-wide/16 v3, 0x0

    cmp-long v5, v7, v3

    const/16 v6, 0x10

    const-wide/16 v9, 0x3e8

    const-wide/16 v3, 0x1

    if-lez v5, :cond_12

    rem-long/2addr v7, v9

    cmp-long v5, v7, v3

    if-nez v5, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v3

    const-string v4, "Data loss. Too many events logged. appId, count"

    invoke-static {v15}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-wide v7, v2, Lcom/google/android/gms/internal/zzatj$zza;->zzbrp:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    const-string v3, "_ev"

    iget-object v1, v1, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    invoke-virtual {v2, v6, v3, v1, v13}, Lcom/google/android/gms/internal/zzaut;->zza(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatj;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    return-void

    :cond_12
    if-eqz v16, :cond_14

    :try_start_a
    iget-wide v7, v2, Lcom/google/android/gms/internal/zzatj$zza;->zzbro:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzati;->zzKW()J

    move-result-wide v18

    sub-long v20, v7, v18

    const-wide/16 v7, 0x0

    cmp-long v5, v20, v7

    if-lez v5, :cond_14

    rem-long v20, v20, v9

    cmp-long v5, v20, v3

    if-nez v5, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v3

    const-string v4, "Data loss. Too many public events logged. appId, count"

    invoke-static {v15}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-wide v7, v2, Lcom/google/android/gms/internal/zzatj$zza;->zzbro:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    const-string v3, "_ev"

    iget-object v1, v1, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    invoke-virtual {v2, v6, v3, v1, v13}, Lcom/google/android/gms/internal/zzaut;->zza(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatj;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    return-void

    :cond_14
    if-eqz v17, :cond_16

    :try_start_b
    iget-wide v5, v2, Lcom/google/android/gms/internal/zzatj$zza;->zzbrr:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v7

    iget-object v8, v12, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/zzati;->zzfj(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    sub-long v9, v5, v7

    const-wide/16 v5, 0x0

    cmp-long v7, v9, v5

    if-lez v7, :cond_16

    cmp-long v1, v9, v3

    if-nez v1, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v3, "Too many error events logged. appId, count"

    invoke-static {v15}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v2, Lcom/google/android/gms/internal/zzatj$zza;->zzbrr:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v3, v4, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatj;->setTransactionSuccessful()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    return-void

    :cond_16
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    const-string v5, "_o"

    iget-object v6, v1, Lcom/google/android/gms/internal/zzatq;->zzbqW:Ljava/lang/String;

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/zzaut;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/google/android/gms/internal/zzaut;->zzge(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    const-string v5, "_dbg"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/zzaut;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    const-string v5, "_r"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v11, v5, v3}, Lcom/google/android/gms/internal/zzaut;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/google/android/gms/internal/zzatj;->zzfv(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzatx;->zzMb()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v4

    const-string v5, "Data lost. Too many events stored on disk, deleted. appId"

    invoke-static {v15}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v6, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    new-instance v14, Lcom/google/android/gms/internal/zzatm;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzatq;->zzbqW:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/internal/zzatq;->zzbrI:J

    const-wide/16 v8, 0x0

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v4, v15

    move-object v10, v11

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/zzatm;-><init>(Lcom/google/android/gms/internal/zzaue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    iget-object v2, v14, Lcom/google/android/gms/internal/zzatm;->mName:Ljava/lang/String;

    invoke-virtual {v1, v15, v2}, Lcom/google/android/gms/internal/zzatj;->zzQ(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzatn;

    move-result-object v1

    if-nez v1, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/zzatj;->zzfC(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzati;->zzKU()I

    const-wide/16 v3, 0x1f4

    cmp-long v5, v1, v3

    if-ltz v5, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Too many event names used, ignoring event. appId, name, supported count"

    invoke-static {v15}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v14, Lcom/google/android/gms/internal/zzatm;->mName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzati;->zzKU()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v13}, Lcom/google/android/gms/internal/zzaut;->zza(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    return-void

    :cond_19
    :try_start_d
    new-instance v10, Lcom/google/android/gms/internal/zzatn;

    iget-object v3, v14, Lcom/google/android/gms/internal/zzatm;->mName:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    iget-wide v8, v14, Lcom/google/android/gms/internal/zzatm;->zzaxb:J

    move-object v1, v10

    move-object v2, v15

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/zzatn;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ)V

    move-object/from16 v4, p0

    goto :goto_8

    :cond_1a
    iget-wide v2, v1, Lcom/google/android/gms/internal/zzatn;->zzbrD:J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    move-object/from16 v4, p0

    :try_start_e
    invoke-virtual {v14, v4, v2, v3}, Lcom/google/android/gms/internal/zzatm;->zza(Lcom/google/android/gms/internal/zzaue;J)Lcom/google/android/gms/internal/zzatm;

    move-result-object v14

    iget-wide v2, v14, Lcom/google/android/gms/internal/zzatm;->zzaxb:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzatn;->zzap(J)Lcom/google/android/gms/internal/zzatn;

    move-result-object v10

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatn;)V

    invoke-virtual {v4, v14, v12}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzatm;Lcom/google/android/gms/internal/zzatd;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatj;->setTransactionSuccessful()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatx;->zzak(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMf()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Event recorded"

    invoke-virtual {v1, v2, v14}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzMK()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMf()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Background event processing time, ms"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long v7, v5, v22

    const-wide/32 v5, 0x7a120

    add-long v9, v7, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v9, v5

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_3
    move-exception v0

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v4, v9

    goto :goto_9

    :catchall_6
    move-exception v0

    move-object v4, v11

    :goto_9
    move-object v1, v0

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    throw v1
.end method

.method zzc(Lcom/google/android/gms/internal/zzauq;Lcom/google/android/gms/internal/zzatd;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzatd;->zzbqK:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzatd;->zzbqP:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaue;->zzf(Lcom/google/android/gms/internal/zzatd;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Removing user property"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->beginTransaction()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaue;->zzf(Lcom/google/android/gms/internal/zzatd;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/internal/zzatj;->zzR(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzatj;->setTransactionSuccessful()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p2

    const-string v0, "User property removed"

    iget-object p1, p1, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    throw p1
.end method

.method zzd(Lcom/google/android/gms/internal/zzatd;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaue;->zzf(Lcom/google/android/gms/internal/zzatd;)V

    return-void
.end method

.method zzd(Lcom/google/android/gms/internal/zzatd;J)V
    .locals 10

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_et"

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v1, Lcom/google/android/gms/internal/zzatq;

    const-string v5, "_e"

    new-instance v6, Lcom/google/android/gms/internal/zzato;

    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/zzato;-><init>(Landroid/os/Bundle;)V

    const-string v7, "auto"

    move-object v4, v1

    move-wide v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/zzatq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzato;Ljava/lang/String;J)V

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/zzaue;->zzb(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    return-void
.end method

.method zzd(Lcom/google/android/gms/internal/zzatg;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zzfO(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzaue;->zzb(Lcom/google/android/gms/internal/zzatg;Lcom/google/android/gms/internal/zzatd;)V

    :cond_0
    return-void
.end method

.method public zze(Lcom/google/android/gms/internal/zzatd;)V
    .locals 12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatd;->zzbqK:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzatd;->zzbqP:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaue;->zzf(Lcom/google/android/gms/internal/zzatd;)V

    return-void

    :cond_1
    iget-wide v0, p1, Lcom/google/android/gms/internal/zzatd;->zzbqU:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    :cond_2
    iget v2, p1, Lcom/google/android/gms/internal/zzatd;->zzbqV:I

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzatx;->zzMb()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v4

    const-string v5, "Incorrect app type, assuming installed app. appId, appType"

    iget-object v6, p1, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v5, v6, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzatj;->beginTransaction()V

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzatd;J)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaue;->zzf(Lcom/google/android/gms/internal/zzatd;)V

    const/4 v4, 0x0

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    const-string v6, "_f"

    :goto_0
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/zzatj;->zzQ(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzatn;

    move-result-object v4

    goto :goto_1

    :cond_4
    if-ne v2, v3, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    const-string v6, "_v"

    goto :goto_0

    :cond_5
    :goto_1
    if-nez v4, :cond_8

    const-wide/16 v4, 0x1

    const-wide/32 v6, 0x36ee80

    div-long v8, v0, v6

    add-long v10, v4, v8

    mul-long/2addr v10, v6

    if-nez v2, :cond_6

    new-instance v8, Lcom/google/android/gms/internal/zzauq;

    const-string v3, "_fot"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "auto"

    move-object v2, v8

    move-wide v4, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzauq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v8, p1}, Lcom/google/android/gms/internal/zzaue;->zzb(Lcom/google/android/gms/internal/zzauq;Lcom/google/android/gms/internal/zzatd;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaue;->zzc(Lcom/google/android/gms/internal/zzatd;J)V

    goto :goto_2

    :cond_6
    if-ne v2, v3, :cond_7

    new-instance v8, Lcom/google/android/gms/internal/zzauq;

    const-string v3, "_fvt"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "auto"

    move-object v2, v8

    move-wide v4, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzauq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v8, p1}, Lcom/google/android/gms/internal/zzaue;->zzb(Lcom/google/android/gms/internal/zzauq;Lcom/google/android/gms/internal/zzatd;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaue;->zzb(Lcom/google/android/gms/internal/zzatd;J)V

    :cond_7
    :goto_2
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaue;->zzd(Lcom/google/android/gms/internal/zzatd;J)V

    goto :goto_3

    :cond_8
    iget-boolean v2, p1, Lcom/google/android/gms/internal/zzatd;->zzbqQ:Z

    if-eqz v2, :cond_9

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaue;->zze(Lcom/google/android/gms/internal/zzatd;J)V

    :cond_9
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatj;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    throw p1
.end method

.method zze(Lcom/google/android/gms/internal/zzatd;J)V
    .locals 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/zzatq;

    const-string v2, "_cd"

    new-instance v3, Lcom/google/android/gms/internal/zzato;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/zzato;-><init>(Landroid/os/Bundle;)V

    const-string v4, "auto"

    move-object v1, v7

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzatq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzato;Ljava/lang/String;J)V

    invoke-virtual {p0, v7, p1}, Lcom/google/android/gms/internal/zzaue;->zzb(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    return-void
.end method

.method zze(Lcom/google/android/gms/internal/zzatg;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zzfO(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzaue;->zzc(Lcom/google/android/gms/internal/zzatg;Lcom/google/android/gms/internal/zzatd;)V

    :cond_0
    return-void
.end method

.method zzfO(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatd;
    .locals 21

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatj;->zzfu(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatc;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->zzmZ()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzadg;->zzbi(Landroid/content/Context;)Lcom/google/android/gms/internal/zzadf;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/internal/zzadf;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->zzmZ()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->zzmZ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatx;->zzMb()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v3

    const-string v4, "App version does not match; dropping. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    :cond_1
    new-instance v20, Lcom/google/android/gms/internal/zzatd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->getGmpAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->zzmZ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->zzKt()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->zzKu()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->zzKv()J

    move-result-wide v7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->zzKw()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->zzKx()Z

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->zzKq()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->zzuW()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v20

    invoke-direct/range {v0 .. v19}, Lcom/google/android/gms/internal/zzatd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJI)V

    return-object v20

    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v3, "No app data available; dropping"

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2
.end method

.method public zzfP(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzaue$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzaue$2;-><init>(Lcom/google/android/gms/internal/zzaue;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaud;->zzd(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v1, 0x7530

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Failed to get app instance id. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public zzmR()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaud;->zzmR()V

    return-void
.end method

.method public zznR()Lcom/google/android/gms/common/util/zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzuP:Lcom/google/android/gms/common/util/zze;

    return-object v0
.end method

.method zzob()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaue;->zzadP:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method zzy(II)Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    const/4 v0, 0x0

    if-le p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Panic: can\'t downgrade version. Previous, current version"

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :cond_0
    if-ge p1, p2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMC()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/google/android/gms/internal/zzaue;->zza(ILjava/nio/channels/FileChannel;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMf()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Storage version upgraded. Previous, current version"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Storage version upgrade failed. Previous, current version"

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1
.end method
