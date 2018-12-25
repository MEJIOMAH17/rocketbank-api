.class Lru/rocketbank/core/network/rx/OperatorMapResponseToBodyOrError$1;
.super Lrx/Subscriber;
.source "OperatorMapResponseToBodyOrError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/network/rx/OperatorMapResponseToBodyOrError;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lretrofit2/Response<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/network/rx/OperatorMapResponseToBodyOrError;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lru/rocketbank/core/network/rx/OperatorMapResponseToBodyOrError;Lrx/Subscriber;Lrx/Subscriber;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lru/rocketbank/core/network/rx/OperatorMapResponseToBodyOrError$1;->this$0:Lru/rocketbank/core/network/rx/OperatorMapResponseToBodyOrError;

    iput-object p3, p0, Lru/rocketbank/core/network/rx/OperatorMapResponseToBodyOrError$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 46
    iget-object v0, p0, Lru/rocketbank/core/network/rx/OperatorMapResponseToBodyOrError$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lru/rocketbank/core/network/rx/OperatorMapResponseToBodyOrError$1;->val$child:Lrx/Subscriber;

    invoke-static {p1}, Lru/rocketbank/core/network/rx/ErrorConverter;->covertCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/network/rx/OperatorMapResponseToBodyOrError$1;->onNext(Lretrofit2/Response;)V

    return-void
.end method

.method public onNext(Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 29
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lru/rocketbank/core/network/rx/OperatorMapResponseToBodyOrError$1;->val$child:Lrx/Subscriber;

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void

    .line 32
    :cond_0
    new-instance v0, Lru/rocketbank/core/network/rx/HttpException;

    invoke-direct {v0, p1}, Lru/rocketbank/core/network/rx/HttpException;-><init>(Lretrofit2/Response;)V

    .line 35
    :try_start_0
    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lru/rocketbank/core/network/rx/ErrorConverter;->bodyExtract(Lru/rocketbank/core/network/rx/HttpException;Ljava/lang/String;)Lru/rocketbank/core/network/exception/RocketResponseException;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 40
    :goto_0
    iget-object v0, p0, Lru/rocketbank/core/network/rx/OperatorMapResponseToBodyOrError$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
