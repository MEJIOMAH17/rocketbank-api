package ru.rocketbank.r2d2.service;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.dagger.component.RocketComponent;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.manager.GeolocationManager;
import ru.rocketbank.core.network.api.OperationApi;
import ru.rocketbank.core.network.model.CoordinatesBody;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.r2d2.RocketApplication;
import rx.Subscriber;
import rx.schedulers.Schedulers;

/* compiled from: SendLocationIntentService.kt */
public final class SendLocationIntentService extends IntentService {
    private static final String ACTION_LOCATION = "ru.rocketbank.r2d2.service.action.LOCATION";
    public static final Companion Companion = new Companion();
    private static final String EXTRA_ID = "ID";
    public Authorization authorization;
    public GeolocationManager geoLocation;
    public OperationApi operationApi;

    /* compiled from: SendLocationIntentService.kt */
    public static final class Companion {
        private Companion() {
        }

        public final void startActionLocation(Context context, long j) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intent intent = new Intent(context, SendLocationIntentService.class);
            intent.setAction(SendLocationIntentService.ACTION_LOCATION);
            intent.putExtra(SendLocationIntentService.EXTRA_ID, j);
            context.startService(intent);
        }
    }

    public SendLocationIntentService() {
        super("SendLocationIntentService");
    }

    public final GeolocationManager getGeoLocation() {
        GeolocationManager geolocationManager = this.geoLocation;
        if (geolocationManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("geoLocation");
        }
        return geolocationManager;
    }

    public final void setGeoLocation(GeolocationManager geolocationManager) {
        Intrinsics.checkParameterIsNotNull(geolocationManager, "<set-?>");
        this.geoLocation = geolocationManager;
    }

    public final OperationApi getOperationApi() {
        OperationApi operationApi = this.operationApi;
        if (operationApi == null) {
            Intrinsics.throwUninitializedPropertyAccessException("operationApi");
        }
        return operationApi;
    }

    public final void setOperationApi(OperationApi operationApi) {
        Intrinsics.checkParameterIsNotNull(operationApi, "<set-?>");
        this.operationApi = operationApi;
    }

    public final Authorization getAuthorization() {
        Authorization authorization = this.authorization;
        if (authorization == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authorization");
        }
        return authorization;
    }

    public final void setAuthorization(Authorization authorization) {
        Intrinsics.checkParameterIsNotNull(authorization, "<set-?>");
        this.authorization = authorization;
    }

    public final void onCreate() {
        super.onCreate();
        RocketComponent injector = RocketApplication.Companion.getInjector();
        this.operationApi = injector.getOperationApi();
        this.authorization = injector.getAuthorization();
        this.geoLocation = injector.getGeolocationManager();
    }

    protected final void onHandleIntent(Intent intent) {
        if (intent != null) {
            if (Intrinsics.areEqual(ACTION_LOCATION, intent.getAction())) {
                long longExtra = intent.getLongExtra(EXTRA_ID, -1);
                if (longExtra != -1) {
                    try {
                        intent = this.authorization;
                        if (intent == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("authorization");
                        }
                        if (intent.getToken() != null) {
                            intent = this.geoLocation;
                            if (intent == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("geoLocation");
                            }
                            intent.updateWithAction(new SendLocationIntentService$onHandleIntent$1(this, longExtra));
                        }
                    } catch (Intent intent2) {
                        AnalyticsManager.logException(intent2);
                    }
                }
            }
        }
    }

    private final void onLocation(long j, Location location) {
        if (location != null) {
            CoordinatesBody coordinatesBody = new CoordinatesBody(location.getAccuracy(), location.getLatitude(), location.getLongitude(), j);
            location = this.operationApi;
            if (location == null) {
                Intrinsics.throwUninitializedPropertyAccessException("operationApi");
            }
            location.sendCoordinates(j, coordinatesBody).subscribeOn(Schedulers.io()).subscribe((Subscriber) new SendLocationIntentService$onLocation$1());
        }
    }
}
