.class public Lcom/google/android/gms/common/zzh;
.super Ljava/lang/Object;


# static fields
.field private static zzayD:Lcom/google/android/gms/common/zzh;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzayE:Lcom/google/android/gms/internal/zzadf;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/zzh;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/google/android/gms/common/zzh;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzadg;->zzbi(Landroid/content/Context;)Lcom/google/android/gms/internal/zzadf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/zzh;->zzayE:Lcom/google/android/gms/internal/zzadf;

    return-void
.end method

.method public static zzaN(Landroid/content/Context;)Lcom/google/android/gms/common/zzh;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/google/android/gms/common/zzh;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/zzh;->zzayD:Lcom/google/android/gms/common/zzh;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/common/zzf;->zzaG(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/gms/common/zzh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/zzh;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/common/zzh;->zzayD:Lcom/google/android/gms/common/zzh;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/google/android/gms/common/zzh;->zzayD:Lcom/google/android/gms/common/zzh;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method varargs zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzf$zza;)Lcom/google/android/gms/common/zzf$zza;
    .locals 3

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x1

    array-length v0, v0

    if-eq v0, v2, :cond_1

    const-string p1, "GoogleSignatureVerifier"

    const-string p2, "Package has more than one signature."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/zzf$zzb;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/zzf$zzb;-><init>([B)V

    :goto_0
    array-length p1, p2

    if-ge v2, p1, :cond_3

    aget-object p1, p2, v2

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/zzf$zza;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    aget-object p1, p2, v2

    return-object p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public zza(Landroid/content/pm/PackageInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/zzh;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/common/zzg;->zzaJ(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/common/zzh;->zzb(Landroid/content/pm/PackageInfo;Z)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/zzh;->zzb(Landroid/content/pm/PackageInfo;Z)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/common/zzh;->zzb(Landroid/content/pm/PackageInfo;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "GoogleSignatureVerifier"

    const-string v1, "Test-keys aren\'t accepted on this build."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method

.method public zza(Landroid/content/pm/PackageInfo;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    sget-object p2, Lcom/google/android/gms/common/zzf$zzd;->zzayw:[Lcom/google/android/gms/common/zzf$zza;

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/zzh;->zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzf$zza;)Lcom/google/android/gms/common/zzf$zza;

    move-result-object p1

    goto :goto_1

    :cond_0
    new-array p2, v1, [Lcom/google/android/gms/common/zzf$zza;

    sget-object v2, Lcom/google/android/gms/common/zzf$zzd;->zzayw:[Lcom/google/android/gms/common/zzf$zza;

    aget-object v2, v2, v0

    aput-object v2, p2, v0

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public zza(Landroid/content/pm/PackageManager;I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/zzh;->zzcx(I)Z

    move-result p1

    return p1
.end method

.method public zza(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/zzh;->zzb(Landroid/content/pm/PackageInfo;)Z

    move-result p1

    return p1
.end method

.method public zzb(Landroid/content/pm/PackageInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/zzh;->zza(Landroid/content/pm/PackageInfo;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/common/zzh;->zza(Landroid/content/pm/PackageInfo;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/common/zzh;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/common/zzg;->zzaJ(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    const-string p1, "GoogleSignatureVerifier"

    const-string v1, "Test-keys aren\'t accepted on this build."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0
.end method

.method zzb(Landroid/content/pm/PackageInfo;Z)Z
    .locals 3

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    const/4 v2, 0x1

    array-length v0, v0

    if-eq v0, v2, :cond_0

    const-string p1, "GoogleSignatureVerifier"

    const-string p2, "Package has more than one signature."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/zzf$zzb;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/zzf$zzb;-><init>([B)V

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-static {p1, v0}, Lcom/google/android/gms/common/zzf;->zzb(Ljava/lang/String;Lcom/google/android/gms/common/zzf$zza;)Z

    move-result p1

    goto :goto_0

    :cond_1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/zzf;->zza(Ljava/lang/String;Lcom/google/android/gms/common/zzf$zza;)Z

    move-result p1

    :goto_0
    if-nez p1, :cond_2

    const-string v0, "GoogleSignatureVerifier"

    const/16 v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Cert not in list. atk="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p1
.end method

.method public zzcx(I)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/zzh;->zzayE:Lcom/google/android/gms/internal/zzadf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzadf;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    array-length v1, p1

    if-nez v1, :cond_0

    return v0

    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/google/android/gms/common/zzh;->zzdd(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public zzdd(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/zzh;->zzayE:Lcom/google/android/gms/internal/zzadf;

    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzadf;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/zzh;->zza(Landroid/content/pm/PackageInfo;)Z

    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
