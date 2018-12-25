.class final Lru/rocketbank/core/utils/presenter/DeliverCacheSingle$call$3;
.super Ljava/lang/Object;
.source "DeliverCacheSingle.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/utils/presenter/DeliverCacheSingle;->call(Lrx/Observable;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Lru/rocketbank/core/utils/presenter/Delivery<",
        "TR;TT;>;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/core/utils/presenter/DeliverCacheSingle$call$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/core/utils/presenter/DeliverCacheSingle$call$3;

    invoke-direct {v0}, Lru/rocketbank/core/utils/presenter/DeliverCacheSingle$call$3;-><init>()V

    sput-object v0, Lru/rocketbank/core/utils/presenter/DeliverCacheSingle$call$3;->INSTANCE:Lru/rocketbank/core/utils/presenter/DeliverCacheSingle$call$3;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8
    check-cast p1, Lru/rocketbank/core/utils/presenter/Delivery;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/utils/presenter/DeliverCacheSingle$call$3;->call(Lru/rocketbank/core/utils/presenter/Delivery;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final call(Lru/rocketbank/core/utils/presenter/Delivery;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/utils/presenter/Delivery<",
            "TR;TT;>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
