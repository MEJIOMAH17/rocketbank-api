.class public Lru/rocketbank/core/realm/DeviceInfoData;
.super Lio/realm/RealmObject;
.source "DeviceInfoData.kt"

# interfaces
.implements Lio/realm/DeviceInfoDataRealmProxyInterface;


# instance fields
.field private activation:Ljava/lang/String;

.field private androidId:Ljava/lang/String;

.field private final appVersion:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private final deviceName:Ljava/lang/String;

.field private final deviceOs:Ljava/lang/String;

.field private id:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    const-string v0, "3.12.4"

    .line 20
    iput-object v0, p0, Lru/rocketbank/core/realm/DeviceInfoData;->appVersion:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/realm/DeviceInfoData;->deviceName:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Android "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/realm/DeviceInfoData;->deviceOs:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAppVersion()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lru/rocketbank/core/realm/DeviceInfoData;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lru/rocketbank/core/realm/DeviceInfoData;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceOs()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lru/rocketbank/core/realm/DeviceInfoData;->deviceOs:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$activation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/DeviceInfoData;->activation:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$androidId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/DeviceInfoData;->androidId:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$deviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/DeviceInfoData;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$id()J
    .locals 2

    iget-wide v0, p0, Lru/rocketbank/core/realm/DeviceInfoData;->id:J

    return-wide v0
.end method

.method public realmSet$activation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/DeviceInfoData;->activation:Ljava/lang/String;

    return-void
.end method

.method public realmSet$androidId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/DeviceInfoData;->androidId:Ljava/lang/String;

    return-void
.end method

.method public realmSet$deviceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/DeviceInfoData;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public realmSet$id(J)V
    .locals 0

    iput-wide p1, p0, Lru/rocketbank/core/realm/DeviceInfoData;->id:J

    return-void
.end method
