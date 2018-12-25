package ru.rocketbank.core.manager;

import android.support.v4.util.ArrayMap;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.utils.presenter.Presenter;

/* compiled from: PresenterManager.kt */
public final class PresenterManager {
    public static final PresenterManager INSTANCE = new PresenterManager();
    private static final ArrayMap<Presenter, UUID> reverseResolve = new ArrayMap();
    private static final ArrayMap<UUID, Presenter> uuidPresenter = new ArrayMap();

    private PresenterManager() {
    }

    public static <T extends Presenter> T getOrCreatePresenter(UUID uuid, Class<T> cls) {
        Intrinsics.checkParameterIsNotNull(uuid, "id");
        Intrinsics.checkParameterIsNotNull(cls, "clz");
        Intrinsics.checkParameterIsNotNull(uuid, "id");
        Presenter presenter = (Presenter) uuidPresenter.get(uuid);
        if (presenter != null) {
            return presenter;
        }
        Intrinsics.checkParameterIsNotNull(cls, "clz");
        uuid = cls.newInstance();
        Intrinsics.checkExpressionValueIsNotNull(uuid, "clz.newInstance()");
        presenter = (Presenter) uuid;
        cls = UUID.randomUUID();
        uuidPresenter.put(cls, presenter);
        reverseResolve.put(presenter, cls);
        presenter.addOnDestroyListener(new PresenterManager$add$1(cls, presenter));
        return presenter;
    }

    public static <T extends Presenter> T getOrCreatePresenter(String str, Class<T> cls) {
        Intrinsics.checkParameterIsNotNull(str, "uuid");
        Intrinsics.checkParameterIsNotNull(cls, "clz");
        UUID fromString = UUID.fromString(str);
        Intrinsics.checkExpressionValueIsNotNull(fromString, "UUID.fromString(uuid)");
        return getOrCreatePresenter(fromString, (Class) cls);
    }
}
