package ru.rocketbank.r2d2.shop;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import ru.rocketbank.core.model.shop.CartStorage;
import ru.rocketbank.core.network.api.ShopApi;
import ru.rocketbank.core.utils.Interactor;
import ru.rocketbank.core.utils.presenter.Presenter;
import ru.rocketbank.r2d2.RocketApplication;
import rx.Subscription;
import rx.subscriptions.CompositeSubscription;

/* compiled from: AbstractShopPresenter.kt */
public class AbstractShopPresenter<V extends ShopViewInterface> extends Presenter implements ShopPresenterInterface {
    private final CartStorage cartStorage = RocketApplication.Companion.getInjector().getCartStorage();
    private final List<Interactor<?>> interactors = new ArrayList();
    private final ShopApi shopApi = RocketApplication.Companion.getInjector().getShopApi();
    private final CompositeSubscription subscriptions = new CompositeSubscription();
    private V view;

    public final V getView() {
        return this.view;
    }

    public final void setView(V v) {
        this.view = v;
    }

    protected final ShopApi getShopApi() {
        return this.shopApi;
    }

    protected final CartStorage getCartStorage() {
        return this.cartStorage;
    }

    protected final void addSubscription(Subscription subscription) {
        Intrinsics.checkParameterIsNotNull(subscription, "subscription");
        this.subscriptions.add(subscription);
    }

    protected final boolean addInteractor(Interactor<?> interactor) {
        Intrinsics.checkParameterIsNotNull(interactor, "interactor");
        return this.interactors.add(interactor);
    }

    protected final void unsubscribe(Interactor<?> interactor) {
        if (interactor != null) {
            interactor.unsubscribe();
        }
        Collection collection = this.interactors;
        if (collection == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.MutableCollection<T>");
        }
        TypeIntrinsics.asMutableCollection(collection).remove(interactor);
    }

    public void onPause() {
        super.onPause();
        this.subscriptions.clear();
        for (Interactor unsubscribe : this.interactors) {
            unsubscribe.unsubscribe();
        }
        this.interactors.clear();
    }

    public void onDestroy() {
        super.onDestroy();
        this.view = null;
    }

    public final void unsubscribe(Subscription subscription) {
        if (subscription != null && !subscription.isUnsubscribed()) {
            subscription.unsubscribe();
        }
    }
}
