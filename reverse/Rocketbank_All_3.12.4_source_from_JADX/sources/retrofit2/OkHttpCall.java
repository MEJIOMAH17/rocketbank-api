package retrofit2;

import android.support.v7.widget.helper.ItemTouchHelper;
import java.io.IOException;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSource;
import okio.ForwardingSource;
import okio.Okio;

final class OkHttpCall<T> implements Call<T> {
    private final Object[] args;
    private volatile boolean canceled;
    private Throwable creationFailure;
    private boolean executed;
    private Call rawCall;
    private final ServiceMethod<T> serviceMethod;

    static final class ExceptionCatchingRequestBody extends ResponseBody {
        private final ResponseBody delegate;
        IOException thrownException;

        ExceptionCatchingRequestBody(ResponseBody responseBody) {
            this.delegate = responseBody;
        }

        public final MediaType contentType() {
            return this.delegate.contentType();
        }

        public final long contentLength() {
            return this.delegate.contentLength();
        }

        public final BufferedSource source() {
            return Okio.buffer(new ForwardingSource(this.delegate.source()) {
                public long read(Buffer buffer, long j) throws IOException {
                    try {
                        return super.read(buffer, j);
                    } catch (Buffer buffer2) {
                        ExceptionCatchingRequestBody.this.thrownException = buffer2;
                        throw buffer2;
                    }
                }
            });
        }

        public final void close() {
            this.delegate.close();
        }

        final void throwIfCaught() throws IOException {
            if (this.thrownException != null) {
                throw this.thrownException;
            }
        }
    }

    static final class NoContentResponseBody extends ResponseBody {
        private final long contentLength;
        private final MediaType contentType;

        NoContentResponseBody(MediaType mediaType, long j) {
            this.contentType = mediaType;
            this.contentLength = j;
        }

        public final MediaType contentType() {
            return this.contentType;
        }

        public final long contentLength() {
            return this.contentLength;
        }

        public final BufferedSource source() {
            throw new IllegalStateException("Cannot read raw response body of a converted body.");
        }
    }

    OkHttpCall(ServiceMethod<T> serviceMethod, Object[] objArr) {
        this.serviceMethod = serviceMethod;
        this.args = objArr;
    }

    public final OkHttpCall<T> clone() {
        return new OkHttpCall(this.serviceMethod, this.args);
    }

    public final synchronized Request request() {
        Call call = this.rawCall;
        if (call != null) {
            return call.request();
        } else if (this.creationFailure == null) {
            try {
                call = createRawCall();
                this.rawCall = call;
                return call.request();
            } catch (Throwable e) {
                this.creationFailure = e;
                throw e;
            } catch (Throwable e2) {
                this.creationFailure = e2;
                throw new RuntimeException("Unable to create request.", e2);
            }
        } else if (this.creationFailure instanceof IOException) {
            throw new RuntimeException("Unable to create request.", this.creationFailure);
        } else {
            throw ((RuntimeException) this.creationFailure);
        }
    }

    public final void enqueue(final Callback<T> callback) {
        if (callback == null) {
            throw new NullPointerException("callback == null");
        }
        synchronized (this) {
            if (this.executed) {
                throw new IllegalStateException("Already executed.");
            }
            this.executed = true;
            Call call = this.rawCall;
            Throwable th = this.creationFailure;
            if (call == null && th == null) {
                try {
                    Call createRawCall = createRawCall();
                    this.rawCall = createRawCall;
                    call = createRawCall;
                } catch (Throwable th2) {
                    th = th2;
                    this.creationFailure = th;
                }
            }
        }
        if (th != null) {
            callback.onFailure(this, th);
            return;
        }
        if (this.canceled) {
            call.cancel();
        }
        call.enqueue(new Callback() {
            public void onResponse(Call call, Response response) throws IOException {
                try {
                    callSuccess(OkHttpCall.this.parseResponse(response));
                } catch (Call call2) {
                    callFailure(call2);
                }
            }

            public void onFailure(Call call, IOException iOException) {
                try {
                    callback.onFailure(OkHttpCall.this, iOException);
                } catch (Call call2) {
                    call2.printStackTrace();
                }
            }

            private void callFailure(Throwable th) {
                try {
                    callback.onFailure(OkHttpCall.this, th);
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            }

            private void callSuccess(Response<T> response) {
                try {
                    callback.onResponse(OkHttpCall.this, response);
                } catch (Response<T> response2) {
                    response2.printStackTrace();
                }
            }
        });
    }

    public final synchronized boolean isExecuted() {
        return this.executed;
    }

    public final Response<T> execute() throws IOException {
        Call call;
        synchronized (this) {
            if (this.executed) {
                throw new IllegalStateException("Already executed.");
            }
            this.executed = true;
            if (this.creationFailure == null) {
                call = this.rawCall;
                if (call == null) {
                    try {
                        call = createRawCall();
                        this.rawCall = call;
                    } catch (Throwable e) {
                        this.creationFailure = e;
                        throw e;
                    }
                }
            } else if (this.creationFailure instanceof IOException) {
                throw ((IOException) this.creationFailure);
            } else {
                throw ((RuntimeException) this.creationFailure);
            }
        }
        if (this.canceled) {
            call.cancel();
        }
        return parseResponse(call.execute());
    }

    private Call createRawCall() throws IOException {
        Call newCall = this.serviceMethod.callFactory.newCall(this.serviceMethod.toRequest(this.args));
        if (newCall != null) {
            return newCall;
        }
        throw new NullPointerException("Call.Factory returned null.");
    }

    final Response<T> parseResponse(Response response) throws IOException {
        ResponseBody body = response.body();
        response = response.newBuilder().body(new NoContentResponseBody(body.contentType(), body.contentLength())).build();
        int code = response.code();
        if (code >= ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION) {
            if (code < 300) {
                if (code != 204) {
                    if (code != 205) {
                        ResponseBody exceptionCatchingRequestBody = new ExceptionCatchingRequestBody(body);
                        try {
                            return Response.success(this.serviceMethod.toResponse(exceptionCatchingRequestBody), response);
                        } catch (Response response2) {
                            exceptionCatchingRequestBody.throwIfCaught();
                            throw response2;
                        }
                    }
                }
                return Response.success(null, response2);
            }
        }
        try {
            response2 = Response.error(Utils.buffer(body), response2);
            return response2;
        } finally {
            body.close();
        }
    }

    public final void cancel() {
        this.canceled = true;
        synchronized (this) {
            Call call = this.rawCall;
        }
        if (call != null) {
            call.cancel();
        }
    }

    public final boolean isCanceled() {
        return this.canceled;
    }
}
