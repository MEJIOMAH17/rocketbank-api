.class public Lru/rocketbank/core/realm/UserData;
.super Lio/realm/RealmObject;
.source "UserData.kt"

# interfaces
.implements Lio/realm/UserDataRealmProxyInterface;


# instance fields
.field private activation:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private balance:Ljava/lang/Double;

.field private cobrand:Lru/rocketbank/core/model/enums/Cobrand;

.field private cobrandName:Ljava/lang/String;

.field private cover:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private firstName:Ljava/lang/String;

.field private geneder:Ljava/lang/String;

.field private id:J

.field private lastName:Ljava/lang/String;

.field private login:Ljava/lang/String;

.field private miles:Ljava/lang/Double;

.field private providersHash:I

.field private status:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private widgetData:Lru/rocketbank/core/realm/WidgetData;

.field private widgetToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 42
    :cond_0
    sget-object v0, Lru/rocketbank/core/model/enums/Cobrand;->ROCKETBANK:Lru/rocketbank/core/model/enums/Cobrand;

    iput-object v0, p0, Lru/rocketbank/core/realm/UserData;->cobrand:Lru/rocketbank/core/model/enums/Cobrand;

    return-void
.end method


# virtual methods
.method public realmGet$activation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/UserData;->activation:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$avatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/UserData;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$balance()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/UserData;->balance:Ljava/lang/Double;

    return-object v0
.end method

.method public realmGet$cobrandName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/UserData;->cobrandName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$cover()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/UserData;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$deviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/UserData;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$firstName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/UserData;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$geneder()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/UserData;->geneder:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$id()J
    .locals 2

    iget-wide v0, p0, Lru/rocketbank/core/realm/UserData;->id:J

    return-wide v0
.end method

.method public realmGet$lastName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/UserData;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$login()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/UserData;->login:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$miles()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/UserData;->miles:Ljava/lang/Double;

    return-object v0
.end method

.method public realmGet$providersHash()I
    .locals 1

    iget v0, p0, Lru/rocketbank/core/realm/UserData;->providersHash:I

    return v0
.end method

.method public realmGet$status()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/UserData;->status:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$token()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/UserData;->token:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$widgetData()Lru/rocketbank/core/realm/WidgetData;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/UserData;->widgetData:Lru/rocketbank/core/realm/WidgetData;

    return-object v0
.end method

.method public realmGet$widgetToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/UserData;->widgetToken:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$activation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/UserData;->activation:Ljava/lang/String;

    return-void
.end method

.method public realmSet$avatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/UserData;->avatar:Ljava/lang/String;

    return-void
.end method

.method public realmSet$balance(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/UserData;->balance:Ljava/lang/Double;

    return-void
.end method

.method public realmSet$cobrandName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/UserData;->cobrandName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$cover(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/UserData;->cover:Ljava/lang/String;

    return-void
.end method

.method public realmSet$deviceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/UserData;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public realmSet$firstName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/UserData;->firstName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$geneder(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/UserData;->geneder:Ljava/lang/String;

    return-void
.end method

.method public realmSet$id(J)V
    .locals 0

    iput-wide p1, p0, Lru/rocketbank/core/realm/UserData;->id:J

    return-void
.end method

.method public realmSet$lastName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/UserData;->lastName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$login(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/UserData;->login:Ljava/lang/String;

    return-void
.end method

.method public realmSet$miles(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/UserData;->miles:Ljava/lang/Double;

    return-void
.end method

.method public realmSet$providersHash(I)V
    .locals 0

    iput p1, p0, Lru/rocketbank/core/realm/UserData;->providersHash:I

    return-void
.end method

.method public realmSet$status(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/UserData;->status:Ljava/lang/String;

    return-void
.end method

.method public realmSet$token(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/UserData;->token:Ljava/lang/String;

    return-void
.end method

.method public realmSet$widgetData(Lru/rocketbank/core/realm/WidgetData;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/UserData;->widgetData:Lru/rocketbank/core/realm/WidgetData;

    return-void
.end method

.method public realmSet$widgetToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/UserData;->widgetToken:Ljava/lang/String;

    return-void
.end method
