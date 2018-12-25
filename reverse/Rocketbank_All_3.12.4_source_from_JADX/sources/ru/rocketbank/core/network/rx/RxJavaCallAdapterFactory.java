package ru.rocketbank.core.network.rx;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicBoolean;
import retrofit2.Call;
import retrofit2.CallAdapter;
import retrofit2.CallAdapter.Factory;
import retrofit2.Response;
import retrofit2.Retrofit;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Producer;
import rx.Scheduler;
import rx.Subscriber;
import rx.Subscription;
import rx.exceptions.Exceptions;
import rx.functions.Func1;

public final class RxJavaCallAdapterFactory extends Factory {
    private final Scheduler scheduler;

    static final class RequestArbiter<T> extends AtomicBoolean implements Producer, Subscription {
        private final Call<T> call;
        private final Subscriber<? super Response<T>> subscriber;

        RequestArbiter(Call<T> call, Subscriber<? super Response<T>> subscriber) {
            this.call = call;
            this.subscriber = subscriber;
        }

        public final void request(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("n < 0: ".concat(String.valueOf(j)));
            } else if (j != 0 && compareAndSet(0, true) != null) {
                try {
                    j = this.call.execute();
                    if (!this.subscriber.isUnsubscribed()) {
                        this.subscriber.onNext(j);
                    }
                    if (this.subscriber.isUnsubscribed() == null) {
                        this.subscriber.onCompleted();
                    }
                } catch (long j2) {
                    Exceptions.throwIfFatal(j2);
                    if (!this.subscriber.isUnsubscribed()) {
                        this.subscriber.onError(j2);
                    }
                }
            }
        }

        public final void unsubscribe() {
            this.call.cancel();
        }

        public final boolean isUnsubscribed() {
            return this.call.isCanceled();
        }
    }

    static final class ResponseCallAdapter implements CallAdapter<Observable<?>> {
        private final Type responseType;
        private final Scheduler scheduler;

        ResponseCallAdapter(Type type, Scheduler scheduler) {
            this.responseType = type;
            this.scheduler = scheduler;
        }

        public final Type responseType() {
            return this.responseType;
        }

        public final <R> Observable<Response<R>> adapt(Call<R> call) {
            call = Observable.create(new CallOnSubscribe(call));
            return this.scheduler != null ? call.subscribeOn(this.scheduler) : call;
        }
    }

    static final class ResultCallAdapter implements CallAdapter<Observable<?>> {
        private final Type responseType;
        private final Scheduler scheduler;

        /* renamed from: ru.rocketbank.core.network.rx.RxJavaCallAdapterFactory$ResultCallAdapter$1 */
        class C14301 implements Func1<Throwable, Result<R>> {
            C14301() {
            }

            public Result<R> call(Throwable th) {
                return Result.error(ErrorConverter.covertCause(th));
            }
        }

        /* renamed from: ru.rocketbank.core.network.rx.RxJavaCallAdapterFactory$ResultCallAdapter$2 */
        class C14312 implements Func1<Throwable, Result<R>> {
            C14312() {
            }

            public Result<R> call(Throwable th) {
                return Result.error(th);
            }
        }

        /* renamed from: ru.rocketbank.core.network.rx.RxJavaCallAdapterFactory$ResultCallAdapter$3 */
        class C14323 implements Func1<Response<R>, Result<R>> {
            C14323() {
            }

            public Result<R> call(Response<R> response) {
                return Result.response(response);
            }
        }

        ResultCallAdapter(Type type, Scheduler scheduler) {
            this.responseType = type;
            this.scheduler = scheduler;
        }

        public final Type responseType() {
            return this.responseType;
        }

        public final <R> Observable<Result<R>> adapt(Call<R> call) {
            call = Observable.create(new CallOnSubscribe(call)).map(new C14323()).onErrorReturn(new C14312()).onErrorReturn(new C14301());
            return this.scheduler != null ? call.subscribeOn(this.scheduler) : call;
        }
    }

    static final class SimpleCallAdapter implements CallAdapter<Observable<?>> {
        private final Type responseType;
        private final Scheduler scheduler;

        SimpleCallAdapter(Type type, Scheduler scheduler) {
            this.responseType = type;
            this.scheduler = scheduler;
        }

        public final Type responseType() {
            return this.responseType;
        }

        public final <R> Observable<R> adapt(Call<R> call) {
            call = Observable.create(new CallOnSubscribe(call)).lift(OperatorMapResponseToBodyOrError.instance());
            return this.scheduler != null ? call.subscribeOn(this.scheduler) : call;
        }
    }

    static final class CallOnSubscribe<T> implements OnSubscribe<Response<T>> {
        private final Call<T> originalCall;

        CallOnSubscribe(Call<T> call) {
            this.originalCall = call;
        }

        public final void call(Subscriber<? super Response<T>> subscriber) {
            Object requestArbiter = new RequestArbiter(this.originalCall.clone(), subscriber);
            subscriber.add(requestArbiter);
            subscriber.setProducer(requestArbiter);
        }
    }

    public static RxJavaCallAdapterFactory create() {
        return new RxJavaCallAdapterFactory(null);
    }

    public static RxJavaCallAdapterFactory createWithScheduler(Scheduler scheduler) {
        if (scheduler != null) {
            return new RxJavaCallAdapterFactory(scheduler);
        }
        throw new NullPointerException("scheduler == null");
    }

    private RxJavaCallAdapterFactory(Scheduler scheduler) {
        this.scheduler = scheduler;
    }

    public final CallAdapter<?> get(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        annotationArr = Factory.getRawType(type);
        retrofit = annotationArr.getCanonicalName();
        boolean equals = "rx.Single".equals(retrofit);
        retrofit = "rx.Completable".equals(retrofit);
        if (annotationArr != Observable.class && !equals && retrofit == null) {
            return null;
        }
        if (retrofit == null && (type instanceof ParameterizedType) == null) {
            type = equals ? "Single" : "Observable";
            retrofit = new StringBuilder();
            retrofit.append(type);
            retrofit.append(" return type must be parameterized as ");
            retrofit.append(type);
            retrofit.append("<Foo> or ");
            retrofit.append(type);
            retrofit.append("<? extends Foo>");
            throw new IllegalStateException(retrofit.toString());
        } else if (retrofit != null) {
            return CompletableHelper.createCallAdapter(this.scheduler);
        } else {
            type = getCallAdapter(type, this.scheduler);
            return equals ? SingleHelper.makeSingle(type) : type;
        }
    }

    private CallAdapter<Observable<?>> getCallAdapter(Type type, Scheduler scheduler) {
        type = Factory.getParameterUpperBound(0, (ParameterizedType) type);
        Class rawType = Factory.getRawType(type);
        if (rawType == Response.class) {
            if (type instanceof ParameterizedType) {
                return new ResponseCallAdapter(Factory.getParameterUpperBound(0, (ParameterizedType) type), scheduler);
            }
            throw new IllegalStateException("Response must be parameterized as Response<Foo> or Response<? extends Foo>");
        } else if (rawType != Result.class) {
            return new SimpleCallAdapter(type, scheduler);
        } else {
            if (type instanceof ParameterizedType) {
                return new ResultCallAdapter(Factory.getParameterUpperBound(0, (ParameterizedType) type), scheduler);
            }
            throw new IllegalStateException("Result must be parameterized as Result<Foo> or Result<? extends Foo>");
        }
    }
}
