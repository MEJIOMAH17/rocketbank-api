.class public final Lru/rocketbank/core/manager/PresenterManager$add$1;
.super Ljava/lang/Object;
.source "PresenterManager.kt"

# interfaces
.implements Lru/rocketbank/core/utils/presenter/Presenter$OnDestroyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/manager/PresenterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $presenter:Lru/rocketbank/core/utils/presenter/Presenter;

.field final synthetic $uuid:Ljava/util/UUID;


# direct methods
.method constructor <init>(Ljava/util/UUID;Lru/rocketbank/core/utils/presenter/Presenter;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lru/rocketbank/core/manager/PresenterManager$add$1;->$uuid:Ljava/util/UUID;

    iput-object p2, p0, Lru/rocketbank/core/manager/PresenterManager$add$1;->$presenter:Lru/rocketbank/core/utils/presenter/Presenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 2

    .line 19
    sget-object v0, Lru/rocketbank/core/manager/PresenterManager;->INSTANCE:Lru/rocketbank/core/manager/PresenterManager;

    invoke-static {}, Lru/rocketbank/core/manager/PresenterManager;->access$getUuidPresenter$p$120e57be()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/manager/PresenterManager$add$1;->$uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lru/rocketbank/core/manager/PresenterManager;->INSTANCE:Lru/rocketbank/core/manager/PresenterManager;

    invoke-static {}, Lru/rocketbank/core/manager/PresenterManager;->access$getReverseResolve$p$120e57be()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/manager/PresenterManager$add$1;->$presenter:Lru/rocketbank/core/utils/presenter/Presenter;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
