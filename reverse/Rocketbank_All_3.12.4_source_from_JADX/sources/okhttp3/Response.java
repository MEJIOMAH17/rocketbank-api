package okhttp3;

import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import java.io.Closeable;
import javax.annotation.Nullable;

public final class Response implements Closeable {
    @Nullable
    final ResponseBody body;
    private volatile CacheControl cacheControl;
    @Nullable
    final Response cacheResponse;
    final int code;
    @Nullable
    final Handshake handshake;
    final Headers headers;
    final String message;
    @Nullable
    final Response networkResponse;
    @Nullable
    final Response priorResponse;
    final Protocol protocol;
    final long receivedResponseAtMillis;
    final Request request;
    final long sentRequestAtMillis;

    public static class Builder {
        ResponseBody body;
        Response cacheResponse;
        int code;
        @Nullable
        Handshake handshake;
        okhttp3.Headers.Builder headers;
        String message;
        Response networkResponse;
        Response priorResponse;
        Protocol protocol;
        long receivedResponseAtMillis;
        Request request;
        long sentRequestAtMillis;

        public Builder() {
            this.code = -1;
            this.headers = new okhttp3.Headers.Builder();
        }

        Builder(Response response) {
            this.code = -1;
            this.request = response.request;
            this.protocol = response.protocol;
            this.code = response.code;
            this.message = response.message;
            this.handshake = response.handshake;
            this.headers = response.headers.newBuilder();
            this.body = response.body;
            this.networkResponse = response.networkResponse;
            this.cacheResponse = response.cacheResponse;
            this.priorResponse = response.priorResponse;
            this.sentRequestAtMillis = response.sentRequestAtMillis;
            this.receivedResponseAtMillis = response.receivedResponseAtMillis;
        }

        public final Builder request(Request request) {
            this.request = request;
            return this;
        }

        public final Builder protocol(Protocol protocol) {
            this.protocol = protocol;
            return this;
        }

        public final Builder code(int i) {
            this.code = i;
            return this;
        }

        public final Builder message(String str) {
            this.message = str;
            return this;
        }

        public final Builder handshake(@Nullable Handshake handshake) {
            this.handshake = handshake;
            return this;
        }

        public final Builder addHeader(String str, String str2) {
            this.headers.add(str, str2);
            return this;
        }

        public final Builder headers(Headers headers) {
            this.headers = headers.newBuilder();
            return this;
        }

        public final Builder body(@Nullable ResponseBody responseBody) {
            this.body = responseBody;
            return this;
        }

        public final Builder networkResponse(@Nullable Response response) {
            if (response != null) {
                checkSupportResponse("networkResponse", response);
            }
            this.networkResponse = response;
            return this;
        }

        public final Builder cacheResponse(@Nullable Response response) {
            if (response != null) {
                checkSupportResponse("cacheResponse", response);
            }
            this.cacheResponse = response;
            return this;
        }

        private static void checkSupportResponse(String str, Response response) {
            StringBuilder stringBuilder;
            if (response.body != null) {
                stringBuilder = new StringBuilder();
                stringBuilder.append(str);
                stringBuilder.append(".body != null");
                throw new IllegalArgumentException(stringBuilder.toString());
            } else if (response.networkResponse != null) {
                stringBuilder = new StringBuilder();
                stringBuilder.append(str);
                stringBuilder.append(".networkResponse != null");
                throw new IllegalArgumentException(stringBuilder.toString());
            } else if (response.cacheResponse != null) {
                stringBuilder = new StringBuilder();
                stringBuilder.append(str);
                stringBuilder.append(".cacheResponse != null");
                throw new IllegalArgumentException(stringBuilder.toString());
            } else if (response.priorResponse != null) {
                stringBuilder = new StringBuilder();
                stringBuilder.append(str);
                stringBuilder.append(".priorResponse != null");
                throw new IllegalArgumentException(stringBuilder.toString());
            }
        }

        public final Builder sentRequestAtMillis(long j) {
            this.sentRequestAtMillis = j;
            return this;
        }

        public final Builder receivedResponseAtMillis(long j) {
            this.receivedResponseAtMillis = j;
            return this;
        }

        public final Response build() {
            if (this.request == null) {
                throw new IllegalStateException("request == null");
            } else if (this.protocol == null) {
                throw new IllegalStateException("protocol == null");
            } else if (this.code < 0) {
                StringBuilder stringBuilder = new StringBuilder("code < 0: ");
                stringBuilder.append(this.code);
                throw new IllegalStateException(stringBuilder.toString());
            } else if (this.message != null) {
                return new Response(this);
            } else {
                throw new IllegalStateException("message == null");
            }
        }

        public final Builder priorResponse(@Nullable Response response) {
            if (response == null || response.body == null) {
                this.priorResponse = response;
                return this;
            }
            throw new IllegalArgumentException("priorResponse.body != null");
        }
    }

    Response(Builder builder) {
        this.request = builder.request;
        this.protocol = builder.protocol;
        this.code = builder.code;
        this.message = builder.message;
        this.handshake = builder.handshake;
        this.headers = new Headers(builder.headers);
        this.body = builder.body;
        this.networkResponse = builder.networkResponse;
        this.cacheResponse = builder.cacheResponse;
        this.priorResponse = builder.priorResponse;
        this.sentRequestAtMillis = builder.sentRequestAtMillis;
        this.receivedResponseAtMillis = builder.receivedResponseAtMillis;
    }

    public final Request request() {
        return this.request;
    }

    public final int code() {
        return this.code;
    }

    public final boolean isSuccessful() {
        return this.code >= Callback.DEFAULT_DRAG_ANIMATION_DURATION && this.code < 300;
    }

    public final String message() {
        return this.message;
    }

    public final Handshake handshake() {
        return this.handshake;
    }

    public final Headers headers() {
        return this.headers;
    }

    @Nullable
    public final ResponseBody body() {
        return this.body;
    }

    public final Builder newBuilder() {
        return new Builder(this);
    }

    @Nullable
    public final Response priorResponse() {
        return this.priorResponse;
    }

    public final CacheControl cacheControl() {
        CacheControl cacheControl = this.cacheControl;
        if (cacheControl != null) {
            return cacheControl;
        }
        cacheControl = CacheControl.parse(this.headers);
        this.cacheControl = cacheControl;
        return cacheControl;
    }

    public final long sentRequestAtMillis() {
        return this.sentRequestAtMillis;
    }

    public final long receivedResponseAtMillis() {
        return this.receivedResponseAtMillis;
    }

    public final void close() {
        if (this.body == null) {
            throw new IllegalStateException("response is not eligible for a body and must not be closed");
        }
        this.body.close();
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("Response{protocol=");
        stringBuilder.append(this.protocol);
        stringBuilder.append(", code=");
        stringBuilder.append(this.code);
        stringBuilder.append(", message=");
        stringBuilder.append(this.message);
        stringBuilder.append(", url=");
        stringBuilder.append(this.request.url);
        stringBuilder.append('}');
        return stringBuilder.toString();
    }

    @Nullable
    public final String header(String str) {
        str = this.headers.get(str);
        return str != null ? str : null;
    }
}
