.class final Lru/rocketbank/core/network/rx/CompletableHelper$CompletableCallOnSubscribe;
.super Ljava/lang/Object;
.source "CompletableHelper.java"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/network/rx/CompletableHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CompletableCallOnSubscribe"
.end annotation


# instance fields
.field private final originalCall:Lretrofit2/Call;


# direct methods
.method constructor <init>(Lretrofit2/Call;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lru/rocketbank/core/network/rx/CompletableHelper$CompletableCallOnSubscribe;->originalCall:Lretrofit2/Call;

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Lrx/CompletableSubscriber;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/network/rx/CompletableHelper$CompletableCallOnSubscribe;->call(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public final call(Lrx/CompletableSubscriber;)V
    .locals 3

    .line 31
    iget-object v0, p0, Lru/rocketbank/core/network/rx/CompletableHelper$CompletableCallOnSubscribe;->originalCall:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->clone()Lretrofit2/Call;

    move-result-object v0

    .line 34
    new-instance v1, Lru/rocketbank/core/network/rx/CompletableHelper$CompletableCallOnSubscribe$1;

    invoke-direct {v1, p0, v0}, Lru/rocketbank/core/network/rx/CompletableHelper$CompletableCallOnSubscribe$1;-><init>(Lru/rocketbank/core/network/rx/CompletableHelper$CompletableCallOnSubscribe;Lretrofit2/Call;)V

    invoke-static {v1}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v1

    .line 39
    invoke-interface {p1, v1}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 42
    :try_start_0
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    .line 43
    invoke-interface {v1}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 44
    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    invoke-interface {p1}, Lrx/CompletableSubscriber;->onCompleted()V

    return-void

    .line 47
    :cond_0
    new-instance v2, Lru/rocketbank/core/network/rx/HttpException;

    invoke-direct {v2, v0}, Lru/rocketbank/core/network/rx/HttpException;-><init>(Lretrofit2/Response;)V

    invoke-interface {p1, v2}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 51
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 52
    invoke-interface {v1}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 53
    invoke-interface {p1, v0}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method
