.class Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$2;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 127
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$2;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;->access$100(Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;Ljava/lang/Throwable;)V

    return-void
.end method
