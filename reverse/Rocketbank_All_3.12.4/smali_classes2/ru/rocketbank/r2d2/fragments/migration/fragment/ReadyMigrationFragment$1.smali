.class Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$1;
.super Ljava/lang/Object;
.source "ReadyMigrationFragment.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;->onEventMainThread(Lru/rocketbank/core/events/PinActivationEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lru/rocketbank/core/network/model/UserResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 115
    check-cast p1, Lru/rocketbank/core/network/model/UserResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$1;->call(Lru/rocketbank/core/network/model/UserResponse;)V

    return-void
.end method

.method public call(Lru/rocketbank/core/network/model/UserResponse;)V
    .locals 1

    .line 118
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/UserResponse;->getUser()Lru/rocketbank/core/model/UserModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 119
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;

    const v0, 0x7f11012b

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;->showSnack(I)V

    .line 120
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;->access$000(Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;)V

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/UserResponse;->getUser()Lru/rocketbank/core/model/UserModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/core/user/Authorization;->setUserModel(Lru/rocketbank/core/model/UserModel;)V

    .line 124
    :goto_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;->getMigrationApi()Lru/rocketbank/core/network/api/MigrationApi;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/network/api/MigrationApi;->getJoining()Lrx/Observable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;->execute(Lrx/Observable;)V

    return-void
.end method
