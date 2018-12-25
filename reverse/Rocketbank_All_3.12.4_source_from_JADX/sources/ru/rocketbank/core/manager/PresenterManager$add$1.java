package ru.rocketbank.core.manager;

import java.util.UUID;
import ru.rocketbank.core.utils.presenter.Presenter;
import ru.rocketbank.core.utils.presenter.Presenter.OnDestroyListener;

/* compiled from: PresenterManager.kt */
public final class PresenterManager$add$1 implements OnDestroyListener {
    final /* synthetic */ Presenter $presenter;
    final /* synthetic */ UUID $uuid;

    PresenterManager$add$1(UUID uuid, Presenter presenter) {
        this.$uuid = uuid;
        this.$presenter = presenter;
    }

    public final void onDestroy() {
        PresenterManager presenterManager = PresenterManager.INSTANCE;
        PresenterManager.uuidPresenter.remove(this.$uuid);
        presenterManager = PresenterManager.INSTANCE;
        PresenterManager.reverseResolve.remove(this.$presenter);
    }
}
