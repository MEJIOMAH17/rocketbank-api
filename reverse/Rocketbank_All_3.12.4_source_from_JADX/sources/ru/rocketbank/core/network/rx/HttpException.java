package ru.rocketbank.core.network.rx;

import retrofit2.Response;

public final class HttpException extends Exception {
    private final int code;
    private final String message;
    private final transient Response<?> response;

    public HttpException(Response<?> response) {
        StringBuilder stringBuilder = new StringBuilder("HTTP ");
        stringBuilder.append(response.code());
        stringBuilder.append(" ");
        stringBuilder.append(response.message());
        super(stringBuilder.toString());
        this.code = response.code();
        this.message = response.message();
        this.response = response;
    }

    public final int code() {
        return this.code;
    }

    public final String message() {
        return this.message;
    }

    public final Response<?> response() {
        return this.response;
    }
}
