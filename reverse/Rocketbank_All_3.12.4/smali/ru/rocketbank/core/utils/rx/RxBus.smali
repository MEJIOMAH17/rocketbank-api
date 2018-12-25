.class public final Lru/rocketbank/core/utils/rx/RxBus;
.super Ljava/lang/Object;
.source "RxBus.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Type:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final bus:Lrx/subjects/SerializedSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/SerializedSubject<",
            "TType;TType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lrx/subjects/SerializedSubject;

    invoke-static {}, Lrx/subjects/PublishSubject;->create()Lrx/subjects/PublishSubject;

    move-result-object v1

    check-cast v1, Lrx/subjects/Subject;

    invoke-direct {v0, v1}, Lrx/subjects/SerializedSubject;-><init>(Lrx/subjects/Subject;)V

    iput-object v0, p0, Lru/rocketbank/core/utils/rx/RxBus;->bus:Lrx/subjects/SerializedSubject;

    return-void
.end method


# virtual methods
.method public final hasObservers()Z
    .locals 1

    .line 28
    iget-object v0, p0, Lru/rocketbank/core/utils/rx/RxBus;->bus:Lrx/subjects/SerializedSubject;

    invoke-virtual {v0}, Lrx/subjects/SerializedSubject;->hasObservers()Z

    move-result v0

    return v0
.end method

.method public final send(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;)V"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lru/rocketbank/core/utils/rx/RxBus;->bus:Lrx/subjects/SerializedSubject;

    invoke-virtual {v0, p1}, Lrx/subjects/SerializedSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final toObserverable()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "TType;>;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lru/rocketbank/core/utils/rx/RxBus;->bus:Lrx/subjects/SerializedSubject;

    check-cast v0, Lrx/Observable;

    return-object v0
.end method
