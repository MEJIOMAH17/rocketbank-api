package ru.rocketbank.core.network.rx;

import retrofit2.Response;

public final class Result<T> {
    private final Throwable error;
    private final Response<T> response;

    public static <T> Result<T> error(Throwable th) {
        if (th != null) {
            return new Result(null, th);
        }
        throw new NullPointerException("error == null");
    }

    public static <T> Result<T> response(Response<T> response) {
        if (response != null) {
            return new Result(response, null);
        }
        throw new NullPointerException("response == null");
    }

    private Result(Response<T> response, Throwable th) {
        this.response = response;
        this.error = th;
    }

    public final Response<T> response() {
        return this.response;
    }

    public final Throwable error() {
        return this.error;
    }

    public final boolean isError() {
        return this.error != null;
    }
}
