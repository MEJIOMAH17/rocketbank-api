.class final Lio/realm/OrderedRealmCollectionImpl$RealmCollectionListIterator;
.super Lio/realm/internal/Collection$ListIterator;
.source "OrderedRealmCollectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/OrderedRealmCollectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RealmCollectionListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/internal/Collection$ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/OrderedRealmCollectionImpl;


# direct methods
.method constructor <init>(Lio/realm/OrderedRealmCollectionImpl;I)V
    .locals 0

    .line 544
    iput-object p1, p0, Lio/realm/OrderedRealmCollectionImpl$RealmCollectionListIterator;->this$0:Lio/realm/OrderedRealmCollectionImpl;

    .line 545
    iget-object p1, p1, Lio/realm/OrderedRealmCollectionImpl;->collection:Lio/realm/internal/Collection;

    invoke-direct {p0, p1, p2}, Lio/realm/internal/Collection$ListIterator;-><init>(Lio/realm/internal/Collection;I)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic convertRowToObject(Lio/realm/internal/UncheckedRow;)Ljava/lang/Object;
    .locals 2

    .line 1550
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl$RealmCollectionListIterator;->this$0:Lio/realm/OrderedRealmCollectionImpl;

    iget-object v0, v0, Lio/realm/OrderedRealmCollectionImpl;->realm:Lio/realm/BaseRealm;

    iget-object v1, p0, Lio/realm/OrderedRealmCollectionImpl$RealmCollectionListIterator;->this$0:Lio/realm/OrderedRealmCollectionImpl;

    iget-object v1, v1, Lio/realm/OrderedRealmCollectionImpl;->classSpec:Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Lio/realm/BaseRealm;->get$2592edba(Ljava/lang/Class;Lio/realm/internal/UncheckedRow;)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1
.end method
