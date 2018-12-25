package ru.rocketbank.r2d2.fragments.delivery;

import ru.rocketbank.core.dagger.component.RocketComponent;
import ru.rocketbank.core.manager.DeliveryManager;
import ru.rocketbank.core.network.api.DeliveryApi;
import ru.rocketbank.core.utils.presenter.Presenter;
import ru.rocketbank.r2d2.RocketApplication;

/* compiled from: AbstractDeliveryPresenter.kt */
public abstract class AbstractDeliveryPresenter extends Presenter {
    private final DeliveryApi deliveryApi = this.injector.getDeliveryApi();
    private final DeliveryManager deliveryManager = this.injector.getDeliveryManager();
    private final RocketComponent injector = RocketApplication.Companion.getInjector();

    protected final RocketComponent getInjector() {
        return this.injector;
    }

    protected final DeliveryManager getDeliveryManager() {
        return this.deliveryManager;
    }

    protected final DeliveryApi getDeliveryApi() {
        return this.deliveryApi;
    }
}
