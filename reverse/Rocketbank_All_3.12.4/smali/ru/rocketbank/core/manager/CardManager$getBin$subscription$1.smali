.class public final Lru/rocketbank/core/manager/CardManager$getBin$subscription$1;
.super Lrx/Subscriber;
.source "CardManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/manager/CardManager;->getBin(Ljava/lang/String;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/dto/BinResponseData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $bin:Ljava/lang/String;

.field final synthetic $requestSubject:Lrx/subjects/BehaviorSubject;

.field final synthetic this$0:Lru/rocketbank/core/manager/CardManager;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/CardManager;Lrx/subjects/BehaviorSubject;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/BehaviorSubject;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lru/rocketbank/core/manager/CardManager$getBin$subscription$1;->this$0:Lru/rocketbank/core/manager/CardManager;

    iput-object p2, p0, Lru/rocketbank/core/manager/CardManager$getBin$subscription$1;->$requestSubject:Lrx/subjects/BehaviorSubject;

    iput-object p3, p0, Lru/rocketbank/core/manager/CardManager$getBin$subscription$1;->$bin:Ljava/lang/String;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lru/rocketbank/core/manager/CardManager$getBin$subscription$1;->$requestSubject:Lrx/subjects/BehaviorSubject;

    invoke-virtual {v0, p1}, Lrx/subjects/BehaviorSubject;->onError(Ljava/lang/Throwable;)V

    .line 48
    iget-object p1, p0, Lru/rocketbank/core/manager/CardManager$getBin$subscription$1;->this$0:Lru/rocketbank/core/manager/CardManager;

    invoke-virtual {p1}, Lru/rocketbank/core/manager/CardManager;->getBinCache()Landroid/support/v4/util/ArrayMap;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/core/manager/CardManager$getBin$subscription$1;->$bin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 1

    .line 45
    check-cast p1, Lru/rocketbank/core/model/dto/BinResponseData;

    .line 1052
    iget-object v0, p0, Lru/rocketbank/core/manager/CardManager$getBin$subscription$1;->$requestSubject:Lrx/subjects/BehaviorSubject;

    invoke-virtual {v0, p1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
