.class public abstract Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryPresenter;
.super Lru/rocketbank/core/utils/presenter/Presenter;
.source "AbstractDeliveryPresenter.kt"


# instance fields
.field private final deliveryApi:Lru/rocketbank/core/network/api/DeliveryApi;

.field private final deliveryManager:Lru/rocketbank/core/manager/DeliveryManager;

.field private final injector:Lru/rocketbank/core/dagger/component/RocketComponent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lru/rocketbank/core/utils/presenter/Presenter;-><init>()V

    .line 12
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryPresenter;->injector:Lru/rocketbank/core/dagger/component/RocketComponent;

    .line 14
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryPresenter;->injector:Lru/rocketbank/core/dagger/component/RocketComponent;

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getDeliveryManager()Lru/rocketbank/core/manager/DeliveryManager;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryPresenter;->deliveryManager:Lru/rocketbank/core/manager/DeliveryManager;

    .line 15
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryPresenter;->injector:Lru/rocketbank/core/dagger/component/RocketComponent;

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getDeliveryApi()Lru/rocketbank/core/network/api/DeliveryApi;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryPresenter;->deliveryApi:Lru/rocketbank/core/network/api/DeliveryApi;

    return-void
.end method


# virtual methods
.method protected final getDeliveryApi()Lru/rocketbank/core/network/api/DeliveryApi;
    .locals 1

    .line 15
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryPresenter;->deliveryApi:Lru/rocketbank/core/network/api/DeliveryApi;

    return-object v0
.end method

.method protected final getDeliveryManager()Lru/rocketbank/core/manager/DeliveryManager;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryPresenter;->deliveryManager:Lru/rocketbank/core/manager/DeliveryManager;

    return-object v0
.end method

.method protected final getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryPresenter;->injector:Lru/rocketbank/core/dagger/component/RocketComponent;

    return-object v0
.end method
