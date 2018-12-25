.class public interface abstract Lio/realm/WidgetDataRealmProxyInterface;
.super Ljava/lang/Object;
.source "WidgetDataRealmProxyInterface.java"


# virtual methods
.method public abstract realmGet$balance()Ljava/lang/String;
.end method

.method public abstract realmGet$friends()Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lru/rocketbank/core/realm/RealmWidgetFriend;",
            ">;"
        }
    .end annotation
.end method

.method public abstract realmGet$id()J
.end method

.method public abstract realmGet$limit()I
.end method

.method public abstract realmGet$miles()Ljava/lang/String;
.end method

.method public abstract realmGet$number()Ljava/lang/String;
.end method

.method public abstract realmGet$operation()Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lru/rocketbank/core/realm/RealmOperation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract realmGet$operator()Ljava/lang/String;
.end method

.method public abstract realmGet$unlimitedCashouts()Z
.end method

.method public abstract realmGet$usedOperation()I
.end method

.method public abstract realmSet$balance(Ljava/lang/String;)V
.end method

.method public abstract realmSet$friends(Lio/realm/RealmList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Lru/rocketbank/core/realm/RealmWidgetFriend;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract realmSet$id(J)V
.end method

.method public abstract realmSet$limit(I)V
.end method

.method public abstract realmSet$miles(Ljava/lang/String;)V
.end method

.method public abstract realmSet$number(Ljava/lang/String;)V
.end method

.method public abstract realmSet$operation(Lio/realm/RealmList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Lru/rocketbank/core/realm/RealmOperation;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract realmSet$operator(Ljava/lang/String;)V
.end method

.method public abstract realmSet$unlimitedCashouts(Z)V
.end method

.method public abstract realmSet$usedOperation(I)V
.end method
