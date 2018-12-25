.class final Lru/rocketbank/core/model/shop/CartStorage$clear$1;
.super Ljava/lang/Object;
.source "CartStorage.kt"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/model/shop/CartStorage;->clear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/model/shop/CartStorage;


# direct methods
.method constructor <init>(Lru/rocketbank/core/model/shop/CartStorage;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/model/shop/CartStorage$clear$1;->this$0:Lru/rocketbank/core/model/shop/CartStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lio/realm/Realm;)V
    .locals 1

    .line 87
    iget-object p1, p0, Lru/rocketbank/core/model/shop/CartStorage$clear$1;->this$0:Lru/rocketbank/core/model/shop/CartStorage;

    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/CartStorage;->getRealm()Lio/realm/Realm;

    move-result-object p1

    const-class v0, Lru/rocketbank/core/realm/RealmCartItem;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmResults;->deleteAllFromRealm()Z

    return-void
.end method
