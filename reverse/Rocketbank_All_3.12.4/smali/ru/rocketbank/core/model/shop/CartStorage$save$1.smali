.class final Lru/rocketbank/core/model/shop/CartStorage$save$1;
.super Ljava/lang/Object;
.source "CartStorage.kt"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/model/shop/CartStorage;->save(Lru/rocketbank/core/model/shop/CartItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $cartItem:Lru/rocketbank/core/model/shop/CartItem;

.field final synthetic this$0:Lru/rocketbank/core/model/shop/CartStorage;


# direct methods
.method constructor <init>(Lru/rocketbank/core/model/shop/CartStorage;Lru/rocketbank/core/model/shop/CartItem;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/model/shop/CartStorage$save$1;->this$0:Lru/rocketbank/core/model/shop/CartStorage;

    iput-object p2, p0, Lru/rocketbank/core/model/shop/CartStorage$save$1;->$cartItem:Lru/rocketbank/core/model/shop/CartItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lio/realm/Realm;)V
    .locals 6

    .line 37
    iget-object p1, p0, Lru/rocketbank/core/model/shop/CartStorage$save$1;->$cartItem:Lru/rocketbank/core/model/shop/CartItem;

    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/CartItem;->getId()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lru/rocketbank/core/model/shop/CartStorage$save$1;->this$0:Lru/rocketbank/core/model/shop/CartStorage;

    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/CartStorage;->getRealm()Lio/realm/Realm;

    move-result-object p1

    const-class v0, Lru/rocketbank/core/realm/RealmCartItem;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lio/realm/RealmQuery;->max(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    move-wide v0, v4

    .line 38
    :goto_0
    iget-object p1, p0, Lru/rocketbank/core/model/shop/CartStorage$save$1;->$cartItem:Lru/rocketbank/core/model/shop/CartItem;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lru/rocketbank/core/model/shop/CartItem;->setId(Ljava/lang/Long;)V

    .line 39
    iget-object p1, p0, Lru/rocketbank/core/model/shop/CartStorage$save$1;->this$0:Lru/rocketbank/core/model/shop/CartStorage;

    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/CartStorage;->getRealm()Lio/realm/Realm;

    move-result-object p1

    new-instance v2, Lru/rocketbank/core/realm/RealmCartItem;

    iget-object v3, p0, Lru/rocketbank/core/model/shop/CartStorage$save$1;->$cartItem:Lru/rocketbank/core/model/shop/CartItem;

    invoke-direct {v2, v0, v1, v3}, Lru/rocketbank/core/realm/RealmCartItem;-><init>(JLru/rocketbank/core/model/shop/CartItem;)V

    check-cast v2, Lio/realm/RealmModel;

    invoke-virtual {p1, v2}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    return-void
.end method
