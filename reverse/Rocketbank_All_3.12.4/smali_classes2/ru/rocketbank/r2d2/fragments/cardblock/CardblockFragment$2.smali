.class Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$2;
.super Ljava/lang/Object;
.source "CardblockFragment.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lru/rocketbank/core/model/UserModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 154
    check-cast p1, Lru/rocketbank/core/model/UserModel;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$2;->call(Lru/rocketbank/core/model/UserModel;)V

    return-void
.end method

.method public call(Lru/rocketbank/core/model/UserModel;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->access$000(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;Lru/rocketbank/core/model/UserModel;)V

    .line 159
    invoke-static {}, Lru/rocketbank/r2d2/RocketHandler;->getInstance()Lru/rocketbank/r2d2/RocketHandler;

    move-result-object p1

    new-instance v0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$2$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$2$1;-><init>(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$2;)V

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/RocketHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
