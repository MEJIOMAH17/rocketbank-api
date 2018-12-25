package ru.rocketbank.core.network.rx;

import java.lang.reflect.Type;
import retrofit2.Call;
import retrofit2.CallAdapter;
import retrofit2.Response;
import rx.Completable;
import rx.Completable.OnSubscribe;
import rx.CompletableSubscriber;
import rx.Scheduler;
import rx.Subscription;
import rx.exceptions.Exceptions;
import rx.functions.Action0;
import rx.subscriptions.Subscriptions;

final class CompletableHelper {

    static class CompletableCallAdapter implements CallAdapter<Completable> {
        private final Scheduler scheduler;

        CompletableCallAdapter(Scheduler scheduler) {
            this.scheduler = scheduler;
        }

        public Type responseType() {
            return Void.class;
        }

        public Completable adapt(Call call) {
            call = Completable.create(new CompletableCallOnSubscribe(call));
            return this.scheduler != null ? call.subscribeOn(this.scheduler) : call;
        }
    }

    private static final class CompletableCallOnSubscribe implements OnSubscribe {
        private final Call originalCall;

        CompletableCallOnSubscribe(Call call) {
            this.originalCall = call;
        }

        public final void call(CompletableSubscriber completableSubscriber) {
            final Call clone = this.originalCall.clone();
            Subscription create = Subscriptions.create(new Action0() {
                public void call() {
                    clone.cancel();
                }
            });
            completableSubscriber.onSubscribe(create);
            try {
                Response execute = clone.execute();
                if (!create.isUnsubscribed()) {
                    if (execute.isSuccessful()) {
                        completableSubscriber.onCompleted();
                        return;
                    }
                    completableSubscriber.onError(new HttpException(execute));
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                if (!create.isUnsubscribed()) {
                    completableSubscriber.onError(th);
                }
            }
        }
    }

    CompletableHelper() {
    }

    static CallAdapter<Completable> createCallAdapter(Scheduler scheduler) {
        return new CompletableCallAdapter(scheduler);
    }
}
