.class final Lru/rocketbank/core/user/impl/RealmAppInformationStorage$writeData$1;
.super Ljava/lang/Object;
.source "RealmAppInformationStorage.kt"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/user/impl/RealmAppInformationStorage;->writeData(Lru/rocketbank/core/realm/DeviceInfoData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $deviceData:Lru/rocketbank/core/realm/DeviceInfoData;

.field final synthetic this$0:Lru/rocketbank/core/user/impl/RealmAppInformationStorage;


# direct methods
.method constructor <init>(Lru/rocketbank/core/user/impl/RealmAppInformationStorage;Lru/rocketbank/core/realm/DeviceInfoData;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/user/impl/RealmAppInformationStorage$writeData$1;->this$0:Lru/rocketbank/core/user/impl/RealmAppInformationStorage;

    iput-object p2, p0, Lru/rocketbank/core/user/impl/RealmAppInformationStorage$writeData$1;->$deviceData:Lru/rocketbank/core/realm/DeviceInfoData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lio/realm/Realm;)V
    .locals 1

    .line 57
    iget-object p1, p0, Lru/rocketbank/core/user/impl/RealmAppInformationStorage$writeData$1;->this$0:Lru/rocketbank/core/user/impl/RealmAppInformationStorage;

    invoke-virtual {p1}, Lru/rocketbank/core/user/impl/RealmAppInformationStorage;->getRealm()Lio/realm/Realm;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/core/user/impl/RealmAppInformationStorage$writeData$1;->$deviceData:Lru/rocketbank/core/realm/DeviceInfoData;

    check-cast v0, Lio/realm/RealmModel;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    return-void
.end method
