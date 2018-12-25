.class public final Lru/rocketbank/core/manager/AppInfoManager;
.super Ljava/lang/Object;
.source "AppInfoManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppInfoManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppInfoManager.kt\nru/rocketbank/core/manager/AppInfoManager\n*L\n1#1,56:1\n*E\n"
.end annotation


# instance fields
.field private final androidId:Ljava/lang/String;

.field private final appInfoStorage:Lru/rocketbank/core/user/AppInformationStorage;

.field private cachedData:Lru/rocketbank/core/realm/DeviceInfoData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lru/rocketbank/core/user/AppInformationStorage;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appInfoStorage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lru/rocketbank/core/manager/AppInfoManager;->appInfoStorage:Lru/rocketbank/core/user/AppInformationStorage;

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "android_id"

    invoke-static {p1, p2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lru/rocketbank/core/manager/AppInfoManager;->androidId:Ljava/lang/String;

    .line 17
    invoke-virtual {p0}, Lru/rocketbank/core/manager/AppInfoManager;->getDeviceData()Lru/rocketbank/core/realm/DeviceInfoData;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/manager/AppInfoManager;->cachedData:Lru/rocketbank/core/realm/DeviceInfoData;

    return-void
.end method


# virtual methods
.method public final generateDeviceData()Lru/rocketbank/core/realm/DeviceInfoData;
    .locals 5

    .line 45
    new-instance v0, Lru/rocketbank/core/realm/DeviceInfoData;

    invoke-direct {v0}, Lru/rocketbank/core/realm/DeviceInfoData;-><init>()V

    .line 47
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-ww"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ANDROID_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lru/rocketbank/core/manager/AppInfoManager;->androidId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "(this as java.lang.String).toUpperCase()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2013
    invoke-virtual {v0, v1}, Lru/rocketbank/core/realm/DeviceInfoData;->realmSet$activation(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lru/rocketbank/core/manager/AppInfoManager;->androidId:Ljava/lang/String;

    .line 2015
    invoke-virtual {v0, v1}, Lru/rocketbank/core/realm/DeviceInfoData;->realmSet$androidId(Ljava/lang/String;)V

    .line 2017
    invoke-virtual {v0, v2}, Lru/rocketbank/core/realm/DeviceInfoData;->realmSet$deviceId(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getDeviceData()Lru/rocketbank/core/realm/DeviceInfoData;
    .locals 1

    .line 25
    iget-object v0, p0, Lru/rocketbank/core/manager/AppInfoManager;->cachedData:Lru/rocketbank/core/realm/DeviceInfoData;

    if-eqz v0, :cond_0

    return-object v0

    .line 1041
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/manager/AppInfoManager;->appInfoStorage:Lru/rocketbank/core/user/AppInformationStorage;

    invoke-interface {v0}, Lru/rocketbank/core/user/AppInformationStorage;->readData()Lru/rocketbank/core/realm/DeviceInfoData;

    move-result-object v0

    .line 30
    iput-object v0, p0, Lru/rocketbank/core/manager/AppInfoManager;->cachedData:Lru/rocketbank/core/realm/DeviceInfoData;

    .line 32
    iget-object v0, p0, Lru/rocketbank/core/manager/AppInfoManager;->cachedData:Lru/rocketbank/core/realm/DeviceInfoData;

    if-nez v0, :cond_1

    new-instance v0, Lru/rocketbank/core/realm/DeviceInfoData;

    invoke-direct {v0}, Lru/rocketbank/core/realm/DeviceInfoData;-><init>()V

    :cond_1
    return-object v0
.end method

.method public final resetDeviceToNew()V
    .locals 2

    .line 21
    iget-object v0, p0, Lru/rocketbank/core/manager/AppInfoManager;->appInfoStorage:Lru/rocketbank/core/user/AppInformationStorage;

    invoke-virtual {p0}, Lru/rocketbank/core/manager/AppInfoManager;->generateDeviceData()Lru/rocketbank/core/realm/DeviceInfoData;

    move-result-object v1

    invoke-interface {v0, v1}, Lru/rocketbank/core/user/AppInformationStorage;->writeData(Lru/rocketbank/core/realm/DeviceInfoData;)V

    return-void
.end method

.method public final updateDeviceData(Lru/rocketbank/core/realm/DeviceInfoData;)V
    .locals 1

    const-string v0, "deviceInfoData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lru/rocketbank/core/manager/AppInfoManager;->cachedData:Lru/rocketbank/core/realm/DeviceInfoData;

    .line 37
    iget-object v0, p0, Lru/rocketbank/core/manager/AppInfoManager;->appInfoStorage:Lru/rocketbank/core/user/AppInformationStorage;

    invoke-interface {v0, p1}, Lru/rocketbank/core/user/AppInformationStorage;->writeData(Lru/rocketbank/core/realm/DeviceInfoData;)V

    return-void
.end method
