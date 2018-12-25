package ru.rocketbank.core.manager;

import android.content.Context;
import android.support.v4.content.Loader.OnLoadCompleteListener;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.api.WidgetApi;
import ru.rocketbank.core.realm.WidgetData;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.user.WidgetStorage;
import ru.rocketbank.core.utils.MoneyFormatter;

/* compiled from: WidgetManager.kt */
public final class WidgetManager {
    public static final Companion Companion = new Companion();
    private static final String TAG = "WidgetManager";
    private final Authorization authorization;
    private final Context context;
    private final MoneyFormatter moneyFormatter;
    private final WidgetApi widgetApi;
    private final WidgetStorage widgetStorage;
    private OnLoadCompleteListener widgetUpdateListener$67c53dc7;

    /* compiled from: WidgetManager.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public WidgetManager(Context context, Authorization authorization, MoneyFormatter moneyFormatter, WidgetStorage widgetStorage, WidgetApi widgetApi) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(authorization, "authorization");
        Intrinsics.checkParameterIsNotNull(moneyFormatter, "moneyFormatter");
        Intrinsics.checkParameterIsNotNull(widgetStorage, "widgetStorage");
        Intrinsics.checkParameterIsNotNull(widgetApi, "widgetApi");
        this.context = context;
        this.authorization = authorization;
        this.moneyFormatter = moneyFormatter;
        this.widgetStorage = widgetStorage;
        this.widgetApi = widgetApi;
    }

    public final void updateWidgetData() {
        String realmGet$widgetToken = this.authorization.getUserData().realmGet$widgetToken();
        if (realmGet$widgetToken != null) {
            if ((((CharSequence) realmGet$widgetToken).length() == 0 ? 1 : null) == null) {
                this.widgetStorage.clear();
            }
        }
    }

    public final WidgetData getWidgeState() {
        WidgetData read = this.widgetStorage.read();
        return read == null ? new WidgetData() : read;
    }

    public final void setUpdateListener$4abaf3d4(OnLoadCompleteListener onLoadCompleteListener) {
        Intrinsics.checkParameterIsNotNull(onLoadCompleteListener, "widgetUpdateListener");
        this.widgetUpdateListener$67c53dc7 = onLoadCompleteListener;
    }
}
