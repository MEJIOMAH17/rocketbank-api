.class public Lcom/google/android/gms/common/zze;
.super Ljava/lang/Object;


# static fields
.field public static final GOOGLE_PLAY_SERVICES_PACKAGE:Ljava/lang/String; = "com.google.android.gms"

.field public static final GOOGLE_PLAY_SERVICES_VERSION_CODE:I

.field private static final zzayo:Lcom/google/android/gms/common/zze;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/google/android/gms/common/zzg;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    sput v0, Lcom/google/android/gms/common/zze;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    new-instance v0, Lcom/google/android/gms/common/zze;

    invoke-direct {v0}, Lcom/google/android/gms/common/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/zze;->zzayo:Lcom/google/android/gms/common/zze;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zzB(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gcore_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/google/android/gms/common/zze;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_2

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/zzadg;->zzbi(Landroid/content/Context;)Lcom/google/android/gms/internal/zzadf;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1}, Lcom/google/android/gms/internal/zzadf;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzuY()Lcom/google/android/gms/common/zze;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/zze;->zzayo:Lcom/google/android/gms/common/zze;

    return-object v0
.end method


# virtual methods
.method public getErrorResolutionPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/zze;->zza(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public getErrorString(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/common/zzg;->getErrorString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOpenSourceSoftwareLicenseInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/common/zzg;->getOpenSourceSoftwareLicenseInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isGooglePlayServicesAvailable(Landroid/content/Context;)I
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/zzg;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/zzg;->zzd(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v0, 0x12

    :cond_0
    return v0
.end method

.method public isUserResolvableError(I)Z
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/common/zzg;->isUserRecoverableError(I)Z

    move-result p1

    return p1
.end method

.method public zzA(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/gms/common/zzg;->zzA(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public zza(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;
    .locals 0

    invoke-virtual {p0, p1, p2, p4}, Lcom/google/android/gms/common/zze;->zzb(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/high16 p4, 0x10000000

    invoke-static {p1, p3, p2, p4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public zzaC(Landroid/content/Context;)I
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/common/zzg;->zzaC(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public zzaE(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/GooglePlayServicesRepairableException;,
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/zzg;->zzaq(Landroid/content/Context;)V

    return-void
.end method

.method public zzaF(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/common/zzg;->zzaF(Landroid/content/Context;)V

    return-void
.end method

.method public zzb(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 0

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    const-string p1, "com.google.android.gms"

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzp;->zzdp(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :pswitch_1
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/common/util/zzj;->zzba(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/internal/zzp;->zzyb()Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p2, "com.google.android.gms"

    invoke-static {p1, p3}, Lcom/google/android/gms/common/zze;->zzB(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/zzp;->zzD(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public zzcw(I)Landroid/content/Intent;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/android/gms/common/zze;->zzb(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public zzd(Landroid/content/Context;I)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/gms/common/zzg;->zzd(Landroid/content/Context;I)Z

    move-result p1

    return p1
.end method
