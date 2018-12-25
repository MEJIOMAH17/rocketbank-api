package rx;

import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import rx.Observable.Operator;
import rx.Scheduler.Worker;
import rx.annotations.Beta;
import rx.annotations.Experimental;
import rx.exceptions.Exceptions;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.functions.Actions;
import rx.functions.Func0;
import rx.functions.Func1;
import rx.functions.Func2;
import rx.functions.Func3;
import rx.functions.Func4;
import rx.functions.Func5;
import rx.functions.Func6;
import rx.functions.Func7;
import rx.functions.Func8;
import rx.functions.Func9;
import rx.functions.FuncN;
import rx.internal.operators.CompletableFlatMapSingleToCompletable;
import rx.internal.operators.SingleDelay;
import rx.internal.operators.SingleDoAfterTerminate;
import rx.internal.operators.SingleDoOnEvent;
import rx.internal.operators.SingleDoOnSubscribe;
import rx.internal.operators.SingleDoOnUnsubscribe;
import rx.internal.operators.SingleFromCallable;
import rx.internal.operators.SingleFromFuture;
import rx.internal.operators.SingleFromObservable;
import rx.internal.operators.SingleLiftObservableOperator;
import rx.internal.operators.SingleObserveOn;
import rx.internal.operators.SingleOnErrorReturn;
import rx.internal.operators.SingleOnSubscribeDelaySubscriptionOther;
import rx.internal.operators.SingleOnSubscribeMap;
import rx.internal.operators.SingleOnSubscribeUsing;
import rx.internal.operators.SingleOperatorOnErrorResumeNext;
import rx.internal.operators.SingleOperatorZip;
import rx.internal.operators.SingleTakeUntilCompletable;
import rx.internal.operators.SingleTakeUntilObservable;
import rx.internal.operators.SingleTakeUntilSingle;
import rx.internal.operators.SingleTimeout;
import rx.internal.operators.SingleToObservable;
import rx.internal.util.ScalarSynchronousSingle;
import rx.internal.util.UtilityFunctions;
import rx.observers.SafeSubscriber;
import rx.plugins.RxJavaHooks;
import rx.schedulers.Schedulers;
import rx.singles.BlockingSingle;

public class Single<T> {
    final OnSubscribe<T> onSubscribe;

    public interface Transformer<T, R> extends Func1<Single<T>, Single<R>> {
    }

    public interface OnSubscribe<T> extends Action1<SingleSubscriber<? super T>> {
    }

    protected Single(OnSubscribe<T> onSubscribe) {
        this.onSubscribe = RxJavaHooks.onCreate((OnSubscribe) onSubscribe);
    }

    @Deprecated
    protected Single(rx.Observable.OnSubscribe<T> onSubscribe) {
        this.onSubscribe = RxJavaHooks.onCreate(new SingleFromObservable(onSubscribe));
    }

    public static <T> Single<T> create(OnSubscribe<T> onSubscribe) {
        return new Single((OnSubscribe) onSubscribe);
    }

    @Beta
    public final <R> Single<R> lift(Operator<? extends R, ? super T> operator) {
        return create(new SingleLiftObservableOperator(this.onSubscribe, operator));
    }

    public <R> Single<R> compose(Transformer<? super T, ? extends R> transformer) {
        return (Single) transformer.call(this);
    }

    private static <T> Observable<T> asObservable(Single<T> single) {
        return Observable.create(new SingleToObservable(single.onSubscribe));
    }

    public static <T> Observable<T> concat(Single<? extends T> single, Single<? extends T> single2) {
        return Observable.concat(asObservable(single), asObservable(single2));
    }

    public static <T> Observable<T> concat(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3) {
        return Observable.concat(asObservable(single), asObservable(single2), asObservable(single3));
    }

    public static <T> Observable<T> concat(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3, Single<? extends T> single4) {
        return Observable.concat(asObservable(single), asObservable(single2), asObservable(single3), asObservable(single4));
    }

    public static <T> Observable<T> concat(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3, Single<? extends T> single4, Single<? extends T> single5) {
        return Observable.concat(asObservable(single), asObservable(single2), asObservable(single3), asObservable(single4), asObservable(single5));
    }

    public static <T> Observable<T> concat(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3, Single<? extends T> single4, Single<? extends T> single5, Single<? extends T> single6) {
        return Observable.concat(asObservable(single), asObservable(single2), asObservable(single3), asObservable(single4), asObservable(single5), asObservable(single6));
    }

    public static <T> Observable<T> concat(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3, Single<? extends T> single4, Single<? extends T> single5, Single<? extends T> single6, Single<? extends T> single7) {
        return Observable.concat(asObservable(single), asObservable(single2), asObservable(single3), asObservable(single4), asObservable(single5), asObservable(single6), asObservable(single7));
    }

    public static <T> Observable<T> concat(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3, Single<? extends T> single4, Single<? extends T> single5, Single<? extends T> single6, Single<? extends T> single7, Single<? extends T> single8) {
        return Observable.concat(asObservable(single), asObservable(single2), asObservable(single3), asObservable(single4), asObservable(single5), asObservable(single6), asObservable(single7), asObservable(single8));
    }

    public static <T> Observable<T> concat(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3, Single<? extends T> single4, Single<? extends T> single5, Single<? extends T> single6, Single<? extends T> single7, Single<? extends T> single8, Single<? extends T> single9) {
        return Observable.concat(asObservable(single), asObservable(single2), asObservable(single3), asObservable(single4), asObservable(single5), asObservable(single6), asObservable(single7), asObservable(single8), asObservable(single9));
    }

    public static <T> Single<T> error(final Throwable th) {
        return create(new OnSubscribe<T>() {
            public final void call(SingleSubscriber<? super T> singleSubscriber) {
                singleSubscriber.onError(th);
            }
        });
    }

    public static <T> Single<T> from(Future<? extends T> future) {
        return create(new SingleFromFuture(future, 0, null));
    }

    public static <T> Single<T> from(Future<? extends T> future, long j, TimeUnit timeUnit) {
        if (timeUnit != null) {
            return create(new SingleFromFuture(future, j, timeUnit));
        }
        throw new NullPointerException("unit is null");
    }

    public static <T> Single<T> from(Future<? extends T> future, Scheduler scheduler) {
        return from(future).subscribeOn(scheduler);
    }

    public static <T> Single<T> fromCallable(Callable<? extends T> callable) {
        return create(new SingleFromCallable(callable));
    }

    public static <T> Single<T> just(T t) {
        return ScalarSynchronousSingle.create(t);
    }

    public static <T> Single<T> merge(final Single<? extends Single<? extends T>> single) {
        if (single instanceof ScalarSynchronousSingle) {
            return ((ScalarSynchronousSingle) single).scalarFlatMap(UtilityFunctions.identity());
        }
        return create(new OnSubscribe<T>() {
            public final void call(final SingleSubscriber<? super T> singleSubscriber) {
                SingleSubscriber c18471 = new SingleSubscriber<Single<? extends T>>() {
                    public void onSuccess(Single<? extends T> single) {
                        single.subscribe(singleSubscriber);
                    }

                    public void onError(Throwable th) {
                        singleSubscriber.onError(th);
                    }
                };
                singleSubscriber.add(c18471);
                single.subscribe(c18471);
            }
        });
    }

    public static <T> Observable<T> merge(Single<? extends T> single, Single<? extends T> single2) {
        return Observable.merge(asObservable(single), asObservable(single2));
    }

    public static <T> Observable<T> merge(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3) {
        return Observable.merge(asObservable(single), asObservable(single2), asObservable(single3));
    }

    public static <T> Observable<T> merge(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3, Single<? extends T> single4) {
        return Observable.merge(asObservable(single), asObservable(single2), asObservable(single3), asObservable(single4));
    }

    public static <T> Observable<T> merge(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3, Single<? extends T> single4, Single<? extends T> single5) {
        return Observable.merge(asObservable(single), asObservable(single2), asObservable(single3), asObservable(single4), asObservable(single5));
    }

    public static <T> Observable<T> merge(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3, Single<? extends T> single4, Single<? extends T> single5, Single<? extends T> single6) {
        return Observable.merge(asObservable(single), asObservable(single2), asObservable(single3), asObservable(single4), asObservable(single5), asObservable(single6));
    }

    public static <T> Observable<T> merge(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3, Single<? extends T> single4, Single<? extends T> single5, Single<? extends T> single6, Single<? extends T> single7) {
        return Observable.merge(asObservable(single), asObservable(single2), asObservable(single3), asObservable(single4), asObservable(single5), asObservable(single6), asObservable(single7));
    }

    public static <T> Observable<T> merge(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3, Single<? extends T> single4, Single<? extends T> single5, Single<? extends T> single6, Single<? extends T> single7, Single<? extends T> single8) {
        return Observable.merge(asObservable(single), asObservable(single2), asObservable(single3), asObservable(single4), asObservable(single5), asObservable(single6), asObservable(single7), asObservable(single8));
    }

    public static <T> Observable<T> merge(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3, Single<? extends T> single4, Single<? extends T> single5, Single<? extends T> single6, Single<? extends T> single7, Single<? extends T> single8, Single<? extends T> single9) {
        return Observable.merge(asObservable(single), asObservable(single2), asObservable(single3), asObservable(single4), asObservable(single5), asObservable(single6), asObservable(single7), asObservable(single8), asObservable(single9));
    }

    public static <T1, T2, R> Single<R> zip(Single<? extends T1> single, Single<? extends T2> single2, final Func2<? super T1, ? super T2, ? extends R> func2) {
        return SingleOperatorZip.zip(new Single[]{single, single2}, new FuncN<R>() {
            public final R call(Object... objArr) {
                return func2.call(objArr[0], objArr[1]);
            }
        });
    }

    public static <T1, T2, T3, R> Single<R> zip(Single<? extends T1> single, Single<? extends T2> single2, Single<? extends T3> single3, final Func3<? super T1, ? super T2, ? super T3, ? extends R> func3) {
        return SingleOperatorZip.zip(new Single[]{single, single2, single3}, new FuncN<R>() {
            public final R call(Object... objArr) {
                return func3.call(objArr[0], objArr[1], objArr[2]);
            }
        });
    }

    public static <T1, T2, T3, T4, R> Single<R> zip(Single<? extends T1> single, Single<? extends T2> single2, Single<? extends T3> single3, Single<? extends T4> single4, final Func4<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> func4) {
        return SingleOperatorZip.zip(new Single[]{single, single2, single3, single4}, new FuncN<R>() {
            public final R call(Object... objArr) {
                return func4.call(objArr[0], objArr[1], objArr[2], objArr[3]);
            }
        });
    }

    public static <T1, T2, T3, T4, T5, R> Single<R> zip(Single<? extends T1> single, Single<? extends T2> single2, Single<? extends T3> single3, Single<? extends T4> single4, Single<? extends T5> single5, final Func5<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> func5) {
        return SingleOperatorZip.zip(new Single[]{single, single2, single3, single4, single5}, new FuncN<R>() {
            public final R call(Object... objArr) {
                return func5.call(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4]);
            }
        });
    }

    public static <T1, T2, T3, T4, T5, T6, R> Single<R> zip(Single<? extends T1> single, Single<? extends T2> single2, Single<? extends T3> single3, Single<? extends T4> single4, Single<? extends T5> single5, Single<? extends T6> single6, final Func6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> func6) {
        return SingleOperatorZip.zip(new Single[]{single, single2, single3, single4, single5, single6}, new FuncN<R>() {
            public final R call(Object... objArr) {
                return func6.call(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5]);
            }
        });
    }

    public static <T1, T2, T3, T4, T5, T6, T7, R> Single<R> zip(Single<? extends T1> single, Single<? extends T2> single2, Single<? extends T3> single3, Single<? extends T4> single4, Single<? extends T5> single5, Single<? extends T6> single6, Single<? extends T7> single7, final Func7<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> func7) {
        return SingleOperatorZip.zip(new Single[]{single, single2, single3, single4, single5, single6, single7}, new FuncN<R>() {
            public final R call(Object... objArr) {
                return func7.call(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6]);
            }
        });
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> Single<R> zip(Single<? extends T1> single, Single<? extends T2> single2, Single<? extends T3> single3, Single<? extends T4> single4, Single<? extends T5> single5, Single<? extends T6> single6, Single<? extends T7> single7, Single<? extends T8> single8, final Func8<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> func8) {
        return SingleOperatorZip.zip(new Single[]{single, single2, single3, single4, single5, single6, single7, single8}, new FuncN<R>() {
            public final R call(Object... objArr) {
                return func8.call(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6], objArr[7]);
            }
        });
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> Single<R> zip(Single<? extends T1> single, Single<? extends T2> single2, Single<? extends T3> single3, Single<? extends T4> single4, Single<? extends T5> single5, Single<? extends T6> single6, Single<? extends T7> single7, Single<? extends T8> single8, Single<? extends T9> single9, final Func9<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> func9) {
        return SingleOperatorZip.zip(new Single[]{single, single2, single3, single4, single5, single6, single7, single8, single9}, new FuncN<R>() {
            public final R call(Object... objArr) {
                return func9.call(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6], objArr[7], objArr[8]);
            }
        });
    }

    public static <R> Single<R> zip(Iterable<? extends Single<?>> iterable, FuncN<? extends R> funcN) {
        return SingleOperatorZip.zip(iterableToArray(iterable), funcN);
    }

    @Experimental
    public final Single<T> cache() {
        return toObservable().cacheWithInitialCapacity(1).toSingle();
    }

    public final Observable<T> concatWith(Single<? extends T> single) {
        return concat(this, single);
    }

    public final <R> Single<R> flatMap(Func1<? super T, ? extends Single<? extends R>> func1) {
        if (this instanceof ScalarSynchronousSingle) {
            return ((ScalarSynchronousSingle) this).scalarFlatMap(func1);
        }
        return merge(map(func1));
    }

    public final <R> Observable<R> flatMapObservable(Func1<? super T, ? extends Observable<? extends R>> func1) {
        return Observable.merge(asObservable(map(func1)));
    }

    @Beta
    public final Completable flatMapCompletable(Func1<? super T, ? extends Completable> func1) {
        return Completable.create(new CompletableFlatMapSingleToCompletable(this, func1));
    }

    public final <R> Single<R> map(Func1<? super T, ? extends R> func1) {
        return create(new SingleOnSubscribeMap(this, func1));
    }

    public final Observable<T> mergeWith(Single<? extends T> single) {
        return merge(this, single);
    }

    public final Single<T> observeOn(Scheduler scheduler) {
        if (this instanceof ScalarSynchronousSingle) {
            return ((ScalarSynchronousSingle) this).scalarScheduleOn(scheduler);
        }
        if (scheduler != null) {
            return create(new SingleObserveOn(this.onSubscribe, scheduler));
        }
        throw new NullPointerException("scheduler is null");
    }

    public final Single<T> onErrorReturn(Func1<Throwable, ? extends T> func1) {
        return create(new SingleOnErrorReturn(this.onSubscribe, func1));
    }

    @Beta
    public final Single<T> onErrorResumeNext(Single<? extends T> single) {
        return new Single(SingleOperatorOnErrorResumeNext.withOther(this, single));
    }

    @Beta
    public final Single<T> onErrorResumeNext(Func1<Throwable, ? extends Single<? extends T>> func1) {
        return new Single(SingleOperatorOnErrorResumeNext.withFunction(this, func1));
    }

    public final Subscription subscribe() {
        return subscribe(Actions.empty(), Actions.errorNotImplemented());
    }

    public final Subscription subscribe(Action1<? super T> action1) {
        return subscribe(action1, Actions.errorNotImplemented());
    }

    public final Subscription subscribe(final Action1<? super T> action1, final Action1<Throwable> action12) {
        if (action1 == null) {
            throw new IllegalArgumentException("onSuccess can not be null");
        } else if (action12 != null) {
            return subscribe(new SingleSubscriber<T>() {
                public final void onError(Throwable th) {
                    try {
                        action12.call(th);
                    } finally {
                        unsubscribe();
                    }
                }

                public final void onSuccess(T t) {
                    try {
                        action1.call(t);
                    } finally {
                        unsubscribe();
                    }
                }
            });
        } else {
            throw new IllegalArgumentException("onError can not be null");
        }
    }

    public final Subscription unsafeSubscribe(Subscriber<? super T> subscriber) {
        return unsafeSubscribe(subscriber, true);
    }

    private Subscription unsafeSubscribe(Subscriber<? super T> subscriber, boolean z) {
        if (z) {
            try {
                subscriber.onStart();
            } catch (Subscriber<? super T> subscriber2) {
                Exceptions.throwIfFatal(subscriber2);
                StringBuilder stringBuilder = new StringBuilder("Error occurred attempting to subscribe [");
                stringBuilder.append(z.getMessage());
                stringBuilder.append("] and then again while trying to pass to onError.");
                RxJavaHooks.onSingleError(new RuntimeException(stringBuilder.toString(), subscriber2));
            }
        }
        RxJavaHooks.onSingleStart(this, this.onSubscribe).call(SingleLiftObservableOperator.wrap(subscriber2));
        return RxJavaHooks.onSingleReturn(subscriber2);
    }

    public final Subscription subscribe(final Observer<? super T> observer) {
        if (observer != null) {
            return subscribe(new SingleSubscriber<T>() {
                public void onSuccess(T t) {
                    observer.onNext(t);
                    observer.onCompleted();
                }

                public void onError(Throwable th) {
                    observer.onError(th);
                }
            });
        }
        throw new NullPointerException("observer is null");
    }

    public final Subscription subscribe(Subscriber<? super T> subscriber) {
        if (subscriber == null) {
            throw new IllegalArgumentException("observer can not be null");
        }
        subscriber.onStart();
        if (subscriber instanceof SafeSubscriber) {
            return unsafeSubscribe(subscriber, true);
        }
        return unsafeSubscribe(new SafeSubscriber(subscriber), null);
    }

    public final Subscription subscribe(SingleSubscriber<? super T> singleSubscriber) {
        if (singleSubscriber == null) {
            throw new IllegalArgumentException("te is null");
        }
        try {
            RxJavaHooks.onSingleStart(this, this.onSubscribe).call(singleSubscriber);
            return RxJavaHooks.onSingleReturn(singleSubscriber);
        } catch (SingleSubscriber<? super T> singleSubscriber2) {
            Exceptions.throwIfFatal(singleSubscriber2);
            StringBuilder stringBuilder = new StringBuilder("Error occurred attempting to subscribe [");
            stringBuilder.append(th.getMessage());
            stringBuilder.append("] and then again while trying to pass to onError.");
            RxJavaHooks.onSingleError(new RuntimeException(stringBuilder.toString(), singleSubscriber2));
        }
    }

    public final Single<T> subscribeOn(final Scheduler scheduler) {
        if (this instanceof ScalarSynchronousSingle) {
            return ((ScalarSynchronousSingle) this).scalarScheduleOn(scheduler);
        }
        return create(new OnSubscribe<T>() {
            public void call(final SingleSubscriber<? super T> singleSubscriber) {
                final Worker createWorker = scheduler.createWorker();
                singleSubscriber.add(createWorker);
                createWorker.schedule(new Action0() {

                    /* renamed from: rx.Single$13$1$1 */
                    class C18461 extends SingleSubscriber<T> {
                        C18461() {
                        }

                        public void onSuccess(T t) {
                            try {
                                singleSubscriber.onSuccess(t);
                            } finally {
                                createWorker.unsubscribe();
                            }
                        }

                        public void onError(Throwable th) {
                            try {
                                singleSubscriber.onError(th);
                            } finally {
                                createWorker.unsubscribe();
                            }
                        }
                    }

                    public void call() {
                        SingleSubscriber c18461 = new C18461();
                        singleSubscriber.add(c18461);
                        Single.this.subscribe(c18461);
                    }
                });
            }
        });
    }

    public final Single<T> takeUntil(Completable completable) {
        return create(new SingleTakeUntilCompletable(this.onSubscribe, completable));
    }

    public final <E> Single<T> takeUntil(Observable<? extends E> observable) {
        return create(new SingleTakeUntilObservable(this.onSubscribe, observable));
    }

    public final <E> Single<T> takeUntil(Single<? extends E> single) {
        return create(new SingleTakeUntilSingle(this.onSubscribe, single));
    }

    @Experimental
    public final <R> R to(Func1<? super Single<T>, R> func1) {
        return func1.call(this);
    }

    public final Observable<T> toObservable() {
        return asObservable(this);
    }

    @Beta
    public final Completable toCompletable() {
        return Completable.fromSingle(this);
    }

    public final Single<T> timeout(long j, TimeUnit timeUnit) {
        return timeout(j, timeUnit, null, Schedulers.computation());
    }

    public final Single<T> timeout(long j, TimeUnit timeUnit, Scheduler scheduler) {
        return timeout(j, timeUnit, null, scheduler);
    }

    public final Single<T> timeout(long j, TimeUnit timeUnit, Single<? extends T> single) {
        return timeout(j, timeUnit, single, Schedulers.computation());
    }

    public final Single<T> timeout(long j, TimeUnit timeUnit, Single<? extends T> single, Scheduler scheduler) {
        if (single == null) {
            single = error(new TimeoutException());
        }
        return create(new SingleTimeout(this.onSubscribe, j, timeUnit, scheduler, single.onSubscribe));
    }

    @Beta
    public final BlockingSingle<T> toBlocking() {
        return BlockingSingle.from(this);
    }

    public final <T2, R> Single<R> zipWith(Single<? extends T2> single, Func2<? super T, ? super T2, ? extends R> func2) {
        return zip(this, single, func2);
    }

    @Beta
    public final Single<T> doOnError(final Action1<Throwable> action1) {
        if (action1 != null) {
            return create(new SingleDoOnEvent(this, Actions.empty(), new Action1<Throwable>() {
                public void call(Throwable th) {
                    action1.call(th);
                }
            }));
        }
        throw new IllegalArgumentException("onError is null");
    }

    @Experimental
    public final Single<T> doOnEach(final Action1<Notification<? extends T>> action1) {
        if (action1 != null) {
            return create(new SingleDoOnEvent(this, new Action1<T>() {
                public void call(T t) {
                    action1.call(Notification.createOnNext(t));
                }
            }, new Action1<Throwable>() {
                public void call(Throwable th) {
                    action1.call(Notification.createOnError(th));
                }
            }));
        }
        throw new IllegalArgumentException("onNotification is null");
    }

    @Experimental
    public final Single<T> doOnSuccess(Action1<? super T> action1) {
        if (action1 != null) {
            return create(new SingleDoOnEvent(this, action1, Actions.empty()));
        }
        throw new IllegalArgumentException("onSuccess is null");
    }

    @Beta
    public final Single<T> doOnSubscribe(Action0 action0) {
        return create(new SingleDoOnSubscribe(this.onSubscribe, action0));
    }

    @Beta
    public final Single<T> delay(long j, TimeUnit timeUnit, Scheduler scheduler) {
        return create(new SingleDelay(this.onSubscribe, j, timeUnit, scheduler));
    }

    @Beta
    public final Single<T> delay(long j, TimeUnit timeUnit) {
        return delay(j, timeUnit, Schedulers.computation());
    }

    @Beta
    public static <T> Single<T> defer(final Callable<Single<T>> callable) {
        return create(new OnSubscribe<T>() {
            public final void call(SingleSubscriber<? super T> singleSubscriber) {
                try {
                    ((Single) callable.call()).subscribe((SingleSubscriber) singleSubscriber);
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    singleSubscriber.onError(th);
                }
            }
        });
    }

    @Beta
    public final Single<T> doOnUnsubscribe(Action0 action0) {
        return create(new SingleDoOnUnsubscribe(this.onSubscribe, action0));
    }

    @Beta
    public final Single<T> doAfterTerminate(Action0 action0) {
        return create(new SingleDoAfterTerminate(this, action0));
    }

    static <T> Single<? extends T>[] iterableToArray(Iterable<? extends Single<? extends T>> iterable) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            return (Single[]) collection.toArray(new Single[collection.size()]);
        }
        Iterable<? extends Single<? extends T>> iterable2 = new Single[8];
        Iterable<? extends Single<? extends T>> iterable3 = iterable2;
        int i = 0;
        for (Single single : iterable) {
            if (i == iterable3.length) {
                Iterable<? extends Single<? extends T>> iterable4 = new Single[((i >> 2) + i)];
                System.arraycopy(iterable3, 0, iterable4, 0, i);
                iterable3 = iterable4;
            }
            iterable3[i] = single;
            i++;
        }
        if (iterable3.length == i) {
            return iterable3;
        }
        iterable = new Single[i];
        System.arraycopy(iterable3, 0, iterable, 0, i);
        return iterable;
    }

    public final Single<T> retry() {
        return toObservable().retry().toSingle();
    }

    public final Single<T> retry(long j) {
        return toObservable().retry(j).toSingle();
    }

    public final Single<T> retry(Func2<Integer, Throwable, Boolean> func2) {
        return toObservable().retry((Func2) func2).toSingle();
    }

    public final Single<T> retryWhen(Func1<Observable<? extends Throwable>, ? extends Observable<?>> func1) {
        return toObservable().retryWhen(func1).toSingle();
    }

    @Beta
    public static <T, Resource> Single<T> using(Func0<Resource> func0, Func1<? super Resource, ? extends Single<? extends T>> func1, Action1<? super Resource> action1) {
        return using(func0, func1, action1, false);
    }

    @Beta
    public static <T, Resource> Single<T> using(Func0<Resource> func0, Func1<? super Resource, ? extends Single<? extends T>> func1, Action1<? super Resource> action1, boolean z) {
        if (func0 == null) {
            throw new NullPointerException("resourceFactory is null");
        } else if (func1 == null) {
            throw new NullPointerException("singleFactory is null");
        } else if (action1 != null) {
            return create(new SingleOnSubscribeUsing(func0, func1, action1, z));
        } else {
            throw new NullPointerException("disposeAction is null");
        }
    }

    @Beta
    public final Single<T> delaySubscription(Observable<?> observable) {
        if (observable != null) {
            return create(new SingleOnSubscribeDelaySubscriptionOther(this, observable));
        }
        throw new NullPointerException();
    }
}
