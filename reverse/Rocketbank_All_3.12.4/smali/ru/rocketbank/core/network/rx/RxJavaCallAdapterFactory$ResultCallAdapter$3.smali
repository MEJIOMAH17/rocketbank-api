.class Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$ResultCallAdapter$3;
.super Ljava/lang/Object;
.source "RxJavaCallAdapterFactory.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$ResultCallAdapter;->adapt(Lretrofit2/Call;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Lretrofit2/Response<",
        "TR;>;",
        "Lru/rocketbank/core/network/rx/Result<",
        "TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$ResultCallAdapter;


# direct methods
.method constructor <init>(Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$ResultCallAdapter;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$ResultCallAdapter$3;->this$0:Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$ResultCallAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 246
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$ResultCallAdapter$3;->call(Lretrofit2/Response;)Lru/rocketbank/core/network/rx/Result;

    move-result-object p1

    return-object p1
.end method

.method public call(Lretrofit2/Response;)Lru/rocketbank/core/network/rx/Result;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "TR;>;)",
            "Lru/rocketbank/core/network/rx/Result<",
            "TR;>;"
        }
    .end annotation

    .line 248
    invoke-static {p1}, Lru/rocketbank/core/network/rx/Result;->response(Lretrofit2/Response;)Lru/rocketbank/core/network/rx/Result;

    move-result-object p1

    return-object p1
.end method
