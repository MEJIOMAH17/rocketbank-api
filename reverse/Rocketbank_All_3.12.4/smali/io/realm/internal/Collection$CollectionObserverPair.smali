.class final Lio/realm/internal/Collection$CollectionObserverPair;
.super Lio/realm/internal/ObserverPairList$ObserverPair;
.source "Collection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CollectionObserverPair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/realm/internal/ObserverPairList$ObserverPair<",
        "TT;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ObserverPairList$ObserverPair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final onChange$752bd380$7d342efc$5d527811()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lio/realm/internal/Collection$CollectionObserverPair;->listener:Ljava/lang/Object;

    instance-of v0, v0, Lio/realm/OrderedRealmCollectionChangeListener;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lio/realm/internal/Collection$CollectionObserverPair;->listener:Ljava/lang/Object;

    check-cast v0, Lio/realm/OrderedRealmCollectionChangeListener;

    invoke-interface {v0}, Lio/realm/OrderedRealmCollectionChangeListener;->onChange$752bd380$5d527811()V

    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lio/realm/internal/Collection$CollectionObserverPair;->listener:Ljava/lang/Object;

    instance-of v0, v0, Lio/realm/RealmChangeListener;

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lio/realm/internal/Collection$CollectionObserverPair;->listener:Ljava/lang/Object;

    check-cast v0, Lio/realm/RealmChangeListener;

    invoke-interface {v0}, Lio/realm/RealmChangeListener;->onChange$5d527811()V

    return-void

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported listener type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/realm/internal/Collection$CollectionObserverPair;->listener:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
