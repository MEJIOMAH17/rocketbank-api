package ru.rocketbank.core.network.rx;

import android.util.Log;
import com.google.gson.Gson;
import java.io.IOException;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import ru.rocketbank.core.BaseRocketApplication;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.model.dto.GenericRequestResponseData;
import ru.rocketbank.core.network.exception.RocketResponseException;

/* compiled from: ErrorConverter.kt */
public final class ErrorConverter {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(ErrorConverter.class), "gson", "getGson()Lcom/google/gson/Gson;"))};
    public static final ErrorConverter INSTANCE = new ErrorConverter();
    public static final String TAG = "ErrorConverter";
    private static final Lazy gson$delegate = ExceptionsKt__ExceptionsKt.lazy(ErrorConverter$gson$2.INSTANCE);

    private final Gson getGson() {
        return (Gson) gson$delegate.getValue();
    }

    private ErrorConverter() {
    }

    public static final Throwable covertCause(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "cause");
        if (th instanceof IOException) {
            return new RocketResponseException(th, null);
        }
        return th instanceof RocketResponseException ? th : th;
    }

    public static final RocketResponseException bodyExtract(HttpException httpException, String str) {
        Intrinsics.checkParameterIsNotNull(httpException, "httpException");
        Intrinsics.checkParameterIsNotNull(str, "body");
        try {
            if (httpException.response().code() == 401) {
                BaseRocketApplication.getContext().needLockApplication();
                Log.e(TAG, httpException.getMessage(), httpException);
                AnalyticsManager.logException(new RocketResponseException(httpException));
            }
            GenericRequestResponseData genericRequestResponseData = (GenericRequestResponseData) INSTANCE.getGson().fromJson(str, GenericRequestResponseData.class);
            if ((genericRequestResponseData != null ? genericRequestResponseData.getResponse() : null) != null) {
                return new RocketResponseException(httpException, genericRequestResponseData);
            }
            return new RocketResponseException(httpException, null);
        } catch (String str2) {
            Log.e("ExceptionConvertor", "Covert tot exception", (Throwable) str2);
            return new RocketResponseException(httpException, null);
        }
    }
}
