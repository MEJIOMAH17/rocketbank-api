.class Lru/rocketbank/r2d2/activities/AbstractActivity$1;
.super Lrx/Subscriber;
.source "AbstractActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/AbstractActivity;->subscribeToUser()V
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
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/AbstractActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/AbstractActivity;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/AbstractActivity$1;->this$0:Lru/rocketbank/r2d2/activities/AbstractActivity;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 104
    check-cast p1, Lru/rocketbank/core/model/UserModel;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/AbstractActivity$1;->onNext(Lru/rocketbank/core/model/UserModel;)V

    return-void
.end method

.method public onNext(Lru/rocketbank/core/model/UserModel;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AbstractActivity$1;->this$0:Lru/rocketbank/r2d2/activities/AbstractActivity;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/activities/AbstractActivity;->onUserModel(Lru/rocketbank/core/model/UserModel;)V

    return-void
.end method
