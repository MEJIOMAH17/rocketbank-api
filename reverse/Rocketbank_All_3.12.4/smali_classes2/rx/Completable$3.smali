.class final Lrx/Completable$3;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->amb([Lrx/Completable;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$sources:[Lrx/Completable;


# direct methods
.method constructor <init>([Lrx/Completable;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lrx/Completable$3;->val$sources:[Lrx/Completable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 101
    check-cast p1, Lrx/CompletableSubscriber;

    invoke-virtual {p0, p1}, Lrx/Completable$3;->call(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public final call(Lrx/CompletableSubscriber;)V
    .locals 9

    .line 104
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    .line 105
    invoke-interface {p1, v0}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 107
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 109
    new-instance v2, Lrx/Completable$3$1;

    invoke-direct {v2, p0, v1, v0, p1}, Lrx/Completable$3$1;-><init>(Lrx/Completable$3;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/subscriptions/CompositeSubscription;Lrx/CompletableSubscriber;)V

    .line 135
    iget-object v3, p0, Lrx/Completable$3;->val$sources:[Lrx/Completable;

    const/4 v4, 0x0

    array-length v5, v3

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_5

    aget-object v7, v3, v6

    .line 136
    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v8

    if-eqz v8, :cond_0

    return-void

    :cond_0
    if-nez v7, :cond_2

    .line 140
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "One of the sources is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 141
    invoke-virtual {v1, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 143
    invoke-interface {p1, v2}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 145
    :cond_1
    invoke-static {v2}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 149
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    .line 154
    :cond_3
    invoke-virtual {v7, v2}, Lrx/Completable;->unsafeSubscribe(Lrx/CompletableSubscriber;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void

    :cond_5
    return-void
.end method
