package ru.rocketbank.core.dagger;

import android.util.Log;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import ru.rocketbank.core.manager.GeolocationManager;

/* compiled from: GeoLocationModule.kt */
public final class GeoLocationModule {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(GeoLocationModule.class), "geolocation", "getGeolocation()Lru/rocketbank/core/manager/GeolocationManager;"))};
    private final Lazy geolocation$delegate = ExceptionsKt__ExceptionsKt.lazyOf(new GeolocationManager());

    public GeoLocationModule() {
        Log.v("GeoLocationModule", "GeoLocationModule");
    }

    public final GeolocationManager provideAuthorization() {
        Log.v("GeoLocation", "Creating GeoLocationModule");
        return (GeolocationManager) this.geolocation$delegate.getValue();
    }
}
