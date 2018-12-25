.class final Lru/rocketbank/core/model/shop/CartStorage$readObservable$1;
.super Ljava/lang/Object;
.source "CartStorage.kt"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/model/shop/CartStorage;->readObservable()Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/model/shop/CartStorage;


# direct methods
.method constructor <init>(Lru/rocketbank/core/model/shop/CartStorage;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/model/shop/CartStorage$readObservable$1;->this$0:Lru/rocketbank/core/model/shop/CartStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/model/shop/CartStorage$readObservable$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public final call(Lrx/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lru/rocketbank/core/realm/RealmCartItem;",
            ">;>;)V"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lru/rocketbank/core/model/shop/CartStorage$readObservable$1;->this$0:Lru/rocketbank/core/model/shop/CartStorage;

    invoke-virtual {v0}, Lru/rocketbank/core/model/shop/CartStorage;->read()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    return-void
.end method
