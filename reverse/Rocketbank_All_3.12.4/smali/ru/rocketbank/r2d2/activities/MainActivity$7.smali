.class Lru/rocketbank/r2d2/activities/MainActivity$7;
.super Lrx/Subscriber;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/MainActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/UserModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/MainActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/MainActivity;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity$7;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 409
    new-instance v0, Lru/rocketbank/core/exceptions/RocketException;

    const-string/jumbo v1, "\u0427\u0442\u043e-\u0442\u043e \u043f\u043e\u0448\u043b\u043e \u043d\u0435 \u0442\u0430\u043a?"

    invoke-direct {v0, v1, p1}, Lru/rocketbank/core/exceptions/RocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 401
    check-cast p1, Lru/rocketbank/core/model/UserModel;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/MainActivity$7;->onNext(Lru/rocketbank/core/model/UserModel;)V

    return-void
.end method

.method public onNext(Lru/rocketbank/core/model/UserModel;)V
    .locals 1

    .line 414
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity$7;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/activities/MainActivity;->access$700(Lru/rocketbank/r2d2/activities/MainActivity;Lru/rocketbank/core/model/UserModel;)V

    return-void
.end method
