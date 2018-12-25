package ru.rocketbank.r2d2.fragments.delivery;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.manager.GeolocationManager;
import ru.rocketbank.r2d2.RocketApplication;

/* compiled from: MapPresenter.kt */
final class MapPresenter$geolocationManager$2 extends Lambda implements Function0<GeolocationManager> {
    public static final MapPresenter$geolocationManager$2 INSTANCE = new MapPresenter$geolocationManager$2();

    MapPresenter$geolocationManager$2() {
        super(0);
    }

    public final GeolocationManager invoke() {
        return RocketApplication.Companion.getInjector().getGeolocationManager();
    }
}
