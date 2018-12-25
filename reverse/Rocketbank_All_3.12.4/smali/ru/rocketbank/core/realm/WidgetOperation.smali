.class public Lru/rocketbank/core/realm/WidgetOperation;
.super Lio/realm/RealmObject;
.source "WidgetOperation.kt"

# interfaces
.implements Lio/realm/WidgetOperationRealmProxyInterface;


# instance fields
.field private amountText:Ljava/lang/String;

.field private bitmap:[B

.field private iconUrl:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    return-void
.end method


# virtual methods
.method public realmGet$amountText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/WidgetOperation;->amountText:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$bitmap()[B
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/WidgetOperation;->bitmap:[B

    return-object v0
.end method

.method public realmGet$iconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/WidgetOperation;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/WidgetOperation;->name:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$amountText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/WidgetOperation;->amountText:Ljava/lang/String;

    return-void
.end method

.method public realmSet$bitmap([B)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/WidgetOperation;->bitmap:[B

    return-void
.end method

.method public realmSet$iconUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/WidgetOperation;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/WidgetOperation;->name:Ljava/lang/String;

    return-void
.end method
