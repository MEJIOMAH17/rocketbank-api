.class final Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$ResultCallAdapter;
.super Ljava/lang/Object;
.source "RxJavaCallAdapterFactory.java"

# interfaces
.implements Lretrofit2/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ResultCallAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/CallAdapter<",
        "Lrx/Observable<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private final responseType:Ljava/lang/reflect/Type;

.field private final scheduler:Lrx/Scheduler;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;Lrx/Scheduler;)V
    .locals 0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p1, p0, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$ResultCallAdapter;->responseType:Ljava/lang/reflect/Type;

    .line 237
    iput-object p2, p0, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$ResultCallAdapter;->scheduler:Lrx/Scheduler;

    return-void
.end method


# virtual methods
.method public final bridge synthetic adapt(Lretrofit2/Call;)Ljava/lang/Object;
    .locals 0

    .line 231
    invoke-virtual {p0, p1}, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$ResultCallAdapter;->adapt(Lretrofit2/Call;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final adapt(Lretrofit2/Call;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Call<",
            "TR;>;)",
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/rx/Result<",
            "TR;>;>;"
        }
    .end annotation

    .line 245
    new-instance v0, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$CallOnSubscribe;

    invoke-direct {v0, p1}, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$CallOnSubscribe;-><init>(Lretrofit2/Call;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$ResultCallAdapter$3;

    invoke-direct {v0, p0}, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$ResultCallAdapter$3;-><init>(Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$ResultCallAdapter;)V

    .line 246
    invoke-virtual {p1, v0}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$ResultCallAdapter$2;

    invoke-direct {v0, p0}, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$ResultCallAdapter$2;-><init>(Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$ResultCallAdapter;)V

    .line 250
    invoke-virtual {p1, v0}, Lrx/Observable;->onErrorReturn(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$ResultCallAdapter$1;

    invoke-direct {v0, p0}, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$ResultCallAdapter$1;-><init>(Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$ResultCallAdapter;)V

    .line 254
    invoke-virtual {p1, v0}, Lrx/Observable;->onErrorReturn(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    .line 262
    iget-object v0, p0, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$ResultCallAdapter;->scheduler:Lrx/Scheduler;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$ResultCallAdapter;->scheduler:Lrx/Scheduler;

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p1
.end method

.method public final responseType()Ljava/lang/reflect/Type;
    .locals 1

    .line 241
    iget-object v0, p0, Lru/rocketbank/core/network/rx/RxJavaCallAdapterFactory$ResultCallAdapter;->responseType:Ljava/lang/reflect/Type;

    return-object v0
.end method
