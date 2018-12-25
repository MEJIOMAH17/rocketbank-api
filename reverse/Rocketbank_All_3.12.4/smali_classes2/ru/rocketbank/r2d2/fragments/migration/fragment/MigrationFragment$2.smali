.class Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment$2;
.super Ljava/lang/Object;
.source "MigrationFragment.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;->execute(Lrx/Observable;)V
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
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 78
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment$2;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
