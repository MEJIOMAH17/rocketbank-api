package ru.rocketbank.core.network.exception;

import de.greenrobot.event.EventBus;
import java.io.IOException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.events.EventTokenIsDead;
import ru.rocketbank.core.model.dto.GenericRequestResponseData;
import ru.rocketbank.core.model.dto.ResponseData;

/* compiled from: RocketResponseException.kt */
public final class RocketResponseException extends Exception {
    private GenericRequestResponseData genericResponse;
    private Throwable retrofitError;

    public final GenericRequestResponseData getGenericResponse() {
        return this.genericResponse;
    }

    public final void setGenericResponse(GenericRequestResponseData genericRequestResponseData) {
        this.genericResponse = genericRequestResponseData;
    }

    public RocketResponseException(Throwable th, GenericRequestResponseData genericRequestResponseData) {
        Intrinsics.checkParameterIsNotNull(th, "retrofitError");
        super(th);
        this.genericResponse = genericRequestResponseData;
        this.retrofitError = th;
        if (genericRequestResponseData != null) {
            th = genericRequestResponseData.getResponse();
            if (!(th == null || th.getStatus() == 200)) {
                th = th.getCode();
                if (th != null) {
                    if (th.hashCode() == 1456878751) {
                        if (th.equals("INCORRECT_TOKEN") != null) {
                            EventBus.getDefault().post(new EventTokenIsDead());
                        }
                    }
                }
            }
        }
    }

    public final GenericRequestResponseData getGenericRequestResponseData() {
        return this.genericResponse;
    }

    public final String toString() {
        return String.valueOf(this.retrofitError);
    }

    public RocketResponseException(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "retrofitError");
        super(th);
        this.retrofitError = th;
    }

    public final boolean isNetworkError() {
        return this.retrofitError instanceof IOException;
    }

    public final boolean isStatusEqual(int i) {
        GenericRequestResponseData genericRequestResponseData = this.genericResponse;
        if ((genericRequestResponseData != null ? genericRequestResponseData.getResponse() : null) == null) {
            return false;
        }
        genericRequestResponseData = this.genericResponse;
        if (genericRequestResponseData == null) {
            Intrinsics.throwNpe();
        }
        ResponseData response = genericRequestResponseData.getResponse();
        if (response == null) {
            Intrinsics.throwNpe();
        }
        if (response.getStatus() == i) {
            return true;
        }
        return false;
    }

    public final String getDescription() {
        if (this.genericResponse != null) {
            GenericRequestResponseData genericRequestResponseData = this.genericResponse;
            if (genericRequestResponseData == null) {
                Intrinsics.throwNpe();
            }
            if (genericRequestResponseData.getResponse() != null) {
                genericRequestResponseData = this.genericResponse;
                if (genericRequestResponseData == null) {
                    Intrinsics.throwNpe();
                }
                ResponseData response = genericRequestResponseData.getResponse();
                if (response == null) {
                    Intrinsics.throwNpe();
                }
                return response.getDescription();
            }
        }
        return null;
    }

    public final ResponseData getResponse() {
        if (this.genericResponse == null) {
            return null;
        }
        GenericRequestResponseData genericRequestResponseData = this.genericResponse;
        if (genericRequestResponseData == null) {
            Intrinsics.throwNpe();
        }
        return genericRequestResponseData.getResponse();
    }
}
