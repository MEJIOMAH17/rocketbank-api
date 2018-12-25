.class public interface abstract Lio/realm/rx/RxObservableFactory;
.super Ljava/lang/Object;
.source "RxObservableFactory.java"


# virtual methods
.method public abstract from(Lio/realm/DynamicRealm;Lio/realm/RealmResults;)Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/DynamicRealm;",
            "Lio/realm/RealmResults<",
            "Lio/realm/DynamicRealmObject;",
            ">;)",
            "Lrx/Observable<",
            "Lio/realm/RealmResults<",
            "Lio/realm/DynamicRealmObject;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract from(Lio/realm/Realm;Lio/realm/RealmResults;)Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/Realm;",
            "Lio/realm/RealmResults<",
            "TE;>;)",
            "Lrx/Observable<",
            "Lio/realm/RealmResults<",
            "TE;>;>;"
        }
    .end annotation
.end method
