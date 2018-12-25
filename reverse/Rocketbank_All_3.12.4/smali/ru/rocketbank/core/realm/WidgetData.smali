.class public Lru/rocketbank/core/realm/WidgetData;
.super Lio/realm/RealmObject;
.source "WidgetData.kt"

# interfaces
.implements Lio/realm/WidgetDataRealmProxyInterface;


# instance fields
.field private balance:Ljava/lang/String;

.field private friends:Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmList<",
            "Lru/rocketbank/core/realm/RealmWidgetFriend;",
            ">;"
        }
    .end annotation
.end field

.field private id:J

.field private limit:I

.field private miles:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private operation:Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmList<",
            "Lru/rocketbank/core/realm/RealmOperation;",
            ">;"
        }
    .end annotation
.end field

.field private operator:Ljava/lang/String;

.field private unlimitedCashouts:Z

.field private usedOperation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 21
    :cond_0
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lru/rocketbank/core/realm/WidgetData;->realmSet$friends(Lio/realm/RealmList;)V

    .line 22
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lru/rocketbank/core/realm/WidgetData;->realmSet$operation(Lio/realm/RealmList;)V

    return-void
.end method


# virtual methods
.method public realmGet$balance()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/WidgetData;->balance:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$friends()Lio/realm/RealmList;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/WidgetData;->friends:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmGet$id()J
    .locals 2

    iget-wide v0, p0, Lru/rocketbank/core/realm/WidgetData;->id:J

    return-wide v0
.end method

.method public realmGet$limit()I
    .locals 1

    iget v0, p0, Lru/rocketbank/core/realm/WidgetData;->limit:I

    return v0
.end method

.method public realmGet$miles()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/WidgetData;->miles:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$number()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/WidgetData;->number:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$operation()Lio/realm/RealmList;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/WidgetData;->operation:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmGet$operator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/WidgetData;->operator:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$unlimitedCashouts()Z
    .locals 1

    iget-boolean v0, p0, Lru/rocketbank/core/realm/WidgetData;->unlimitedCashouts:Z

    return v0
.end method

.method public realmGet$usedOperation()I
    .locals 1

    iget v0, p0, Lru/rocketbank/core/realm/WidgetData;->usedOperation:I

    return v0
.end method

.method public realmSet$balance(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/WidgetData;->balance:Ljava/lang/String;

    return-void
.end method

.method public realmSet$friends(Lio/realm/RealmList;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/WidgetData;->friends:Lio/realm/RealmList;

    return-void
.end method

.method public realmSet$id(J)V
    .locals 0

    iput-wide p1, p0, Lru/rocketbank/core/realm/WidgetData;->id:J

    return-void
.end method

.method public realmSet$limit(I)V
    .locals 0

    iput p1, p0, Lru/rocketbank/core/realm/WidgetData;->limit:I

    return-void
.end method

.method public realmSet$miles(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/WidgetData;->miles:Ljava/lang/String;

    return-void
.end method

.method public realmSet$number(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/WidgetData;->number:Ljava/lang/String;

    return-void
.end method

.method public realmSet$operation(Lio/realm/RealmList;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/WidgetData;->operation:Lio/realm/RealmList;

    return-void
.end method

.method public realmSet$operator(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/WidgetData;->operator:Ljava/lang/String;

    return-void
.end method

.method public realmSet$unlimitedCashouts(Z)V
    .locals 0

    iput-boolean p1, p0, Lru/rocketbank/core/realm/WidgetData;->unlimitedCashouts:Z

    return-void
.end method

.method public realmSet$usedOperation(I)V
    .locals 0

    iput p1, p0, Lru/rocketbank/core/realm/WidgetData;->usedOperation:I

    return-void
.end method
