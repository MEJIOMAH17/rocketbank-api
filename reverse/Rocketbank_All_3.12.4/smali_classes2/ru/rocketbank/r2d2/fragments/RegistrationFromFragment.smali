.class public abstract Lru/rocketbank/r2d2/fragments/RegistrationFromFragment;
.super Lru/rocketbank/r2d2/registration/FormFragment;
.source "RegistrationFromFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/registration/FormFragment<",
        "Lru/rocketbank/r2d2/registration/RegistrationStep;",
        "Lru/rocketbank/core/network/api/RegistrationApi;",
        ">;"
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/FormFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/RegistrationFromFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/RegistrationFromFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/RegistrationFromFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/RegistrationFromFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/RegistrationFromFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/RegistrationFromFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 14
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/registration/FormFragment;->onCreate(Landroid/os/Bundle;)V

    .line 16
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getRegistrationApi()Lru/rocketbank/core/network/api/RegistrationApi;

    move-result-object p1

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/RegistrationFromFragment;->setApi(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/registration/FormFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/RegistrationFromFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method
