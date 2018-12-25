package ru.rocketbank.core.network.model.cafe;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: Response.kt */
public final class Response<T> {
    private final T response;

    public static /* bridge */ /* synthetic */ Response copy$default(Response response, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = response.response;
        }
        return response.copy(obj);
    }

    public final T component1() {
        return this.response;
    }

    public final Response<T> copy(T t) {
        return new Response(t);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof Response) {
                if (Intrinsics.areEqual(this.response, ((Response) obj).response)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        Object obj = this.response;
        return obj != null ? obj.hashCode() : 0;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("Response(response=");
        stringBuilder.append(this.response);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public Response(T t) {
        this.response = t;
    }

    public final T getResponse() {
        return this.response;
    }
}
