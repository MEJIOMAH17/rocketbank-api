.class public Lcom/google/android/gms/internal/zzad;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/internal/zzm;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzad;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzz;)Lcom/google/android/gms/internal/zzm;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzz;)Lcom/google/android/gms/internal/zzm;
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "volley"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "volley/0"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v1

    :goto_0
    if-nez p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt p1, v1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzaa;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzaa;-><init>()V

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/zzx;

    invoke-static {p0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzx;-><init>(Lorg/apache/http/client/HttpClient;)V

    :cond_1
    :goto_1
    new-instance p0, Lcom/google/android/gms/internal/zzu;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzu;-><init>(Lcom/google/android/gms/internal/zzz;)V

    new-instance p1, Lcom/google/android/gms/internal/zzm;

    new-instance v1, Lcom/google/android/gms/internal/zzw;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzw;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v1, p0}, Lcom/google/android/gms/internal/zzm;-><init>(Lcom/google/android/gms/internal/zzb;Lcom/google/android/gms/internal/zzg;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzm;->start()V

    return-object p1
.end method
