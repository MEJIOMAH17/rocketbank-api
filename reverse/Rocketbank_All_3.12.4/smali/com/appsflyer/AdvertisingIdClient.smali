.class public final Lcom/appsflyer/AdvertisingIdClient;
.super Ljava/lang/Object;
.source "AdvertisingIdClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/AdvertisingIdClient$AdvertisingInterface;,
        Lcom/appsflyer/AdvertisingIdClient$AdvertisingConnection;,
        Lcom/appsflyer/AdvertisingIdClient$AdInfo;
    }
.end annotation


# instance fields
.field public final analyticsSettingsData$e9546bb:Landroid/support/v7/recyclerview/R$dimen;

.field public final appData$13257fb6:Lbolts/AppLinkNavigation;

.field public final betaSettingsData$1b8c5181:Lcom/android/databinding/library/R;

.field public final cacheDuration:I

.field public final expiresAtMillis:J

.field public final featuresData$60521ed4:Lcom/android/databinding/library/R$id;

.field public final promptData$73c74dcd:Lcom/android/databinding/library/baseAdapters/R;

.field public final sessionData$32e49775:Lcom/android/databinding/library/baseAdapters/R$id;

.field public final settingsVersion:I


# direct methods
.method public constructor <init>(JLbolts/AppLinkNavigation;Lcom/android/databinding/library/baseAdapters/R$id;Lcom/android/databinding/library/baseAdapters/R;Lcom/android/databinding/library/R$id;Landroid/support/v7/recyclerview/R$dimen;Lcom/android/databinding/library/R;II)V
    .locals 0

    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1040
    iput-wide p1, p0, Lcom/appsflyer/AdvertisingIdClient;->expiresAtMillis:J

    .line 1041
    iput-object p3, p0, Lcom/appsflyer/AdvertisingIdClient;->appData$13257fb6:Lbolts/AppLinkNavigation;

    .line 1042
    iput-object p4, p0, Lcom/appsflyer/AdvertisingIdClient;->sessionData$32e49775:Lcom/android/databinding/library/baseAdapters/R$id;

    .line 1043
    iput-object p5, p0, Lcom/appsflyer/AdvertisingIdClient;->promptData$73c74dcd:Lcom/android/databinding/library/baseAdapters/R;

    .line 1044
    iput-object p6, p0, Lcom/appsflyer/AdvertisingIdClient;->featuresData$60521ed4:Lcom/android/databinding/library/R$id;

    .line 1045
    iput p9, p0, Lcom/appsflyer/AdvertisingIdClient;->settingsVersion:I

    .line 1046
    iput p10, p0, Lcom/appsflyer/AdvertisingIdClient;->cacheDuration:I

    .line 1047
    iput-object p7, p0, Lcom/appsflyer/AdvertisingIdClient;->analyticsSettingsData$e9546bb:Landroid/support/v7/recyclerview/R$dimen;

    .line 1048
    iput-object p8, p0, Lcom/appsflyer/AdvertisingIdClient;->betaSettingsData$1b8c5181:Lcom/android/databinding/library/R;

    return-void
.end method

.method public static getAdvertisingIdInfo(Landroid/content/Context;)Lcom/appsflyer/AdvertisingIdClient$AdInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot be called from the main thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 44
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    new-instance v0, Lcom/appsflyer/AdvertisingIdClient$AdvertisingConnection;

    invoke-direct {v0, v2}, Lcom/appsflyer/AdvertisingIdClient$AdvertisingConnection;-><init>(B)V

    .line 48
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    .line 49
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 50
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    :try_start_1
    new-instance v1, Lcom/appsflyer/AdvertisingIdClient$AdvertisingInterface;

    invoke-virtual {v0}, Lcom/appsflyer/AdvertisingIdClient$AdvertisingConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/appsflyer/AdvertisingIdClient$AdvertisingInterface;-><init>(Landroid/os/IBinder;)V

    .line 53
    new-instance v2, Lcom/appsflyer/AdvertisingIdClient$AdInfo;

    invoke-virtual {v1}, Lcom/appsflyer/AdvertisingIdClient$AdvertisingInterface;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/appsflyer/AdvertisingIdClient$AdvertisingInterface;->isLimitAdTrackingEnabled$138603()Z

    move-result v1

    invoke-direct {v2, v3, v1}, Lcom/appsflyer/AdvertisingIdClient$AdInfo;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 56
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v1

    .line 61
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Google Play connection failed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    .line 45
    throw p0
.end method
