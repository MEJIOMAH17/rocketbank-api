package rx.android.schedulers;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.concurrent.TimeUnit;
import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.Subscription;
import rx.android.plugins.RxAndroidPlugins;
import rx.android.plugins.RxAndroidSchedulersHook;
import rx.exceptions.OnErrorNotImplementedException;
import rx.functions.Action0;
import rx.plugins.RxJavaPlugins;
import rx.subscriptions.Subscriptions;

class LooperScheduler extends Scheduler {
    private final Handler handler;

    static final class ScheduledAction implements Runnable, Subscription {
        private final Action0 action;
        private final Handler handler;
        private volatile boolean unsubscribed;

        ScheduledAction(Action0 action0, Handler handler) {
            this.action = action0;
            this.handler = handler;
        }

        public final void run() {
            try {
                this.action.call();
            } catch (Throwable th) {
                Throwable illegalStateException;
                if (th instanceof OnErrorNotImplementedException) {
                    illegalStateException = new IllegalStateException("Exception thrown on Scheduler.Worker thread. Add `onError` handling.", th);
                } else {
                    illegalStateException = new IllegalStateException("Fatal Exception thrown on Scheduler.Worker thread.", th);
                }
                RxJavaPlugins.getInstance().getErrorHandler().handleError(illegalStateException);
                Thread currentThread = Thread.currentThread();
                currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, illegalStateException);
            }
        }

        public final void unsubscribe() {
            this.unsubscribed = true;
            this.handler.removeCallbacks(this);
        }

        public final boolean isUnsubscribed() {
            return this.unsubscribed;
        }
    }

    static class HandlerWorker extends Worker {
        private final Handler handler;
        private final RxAndroidSchedulersHook hook = RxAndroidPlugins.getInstance().getSchedulersHook();
        private volatile boolean unsubscribed;

        HandlerWorker(Handler handler) {
            this.handler = handler;
        }

        public void unsubscribe() {
            this.unsubscribed = true;
            this.handler.removeCallbacksAndMessages(this);
        }

        public boolean isUnsubscribed() {
            return this.unsubscribed;
        }

        public Subscription schedule(Action0 action0, long j, TimeUnit timeUnit) {
            if (this.unsubscribed) {
                return Subscriptions.unsubscribed();
            }
            Object scheduledAction = new ScheduledAction(this.hook.onSchedule(action0), this.handler);
            action0 = Message.obtain(this.handler, scheduledAction);
            action0.obj = this;
            this.handler.sendMessageDelayed(action0, timeUnit.toMillis(j));
            if (this.unsubscribed == null) {
                return scheduledAction;
            }
            this.handler.removeCallbacks(scheduledAction);
            return Subscriptions.unsubscribed();
        }

        public Subscription schedule(Action0 action0) {
            return schedule(action0, 0, TimeUnit.MILLISECONDS);
        }
    }

    LooperScheduler(Looper looper) {
        this.handler = new Handler(looper);
    }

    LooperScheduler(Handler handler) {
        this.handler = handler;
    }

    public Worker createWorker() {
        return new HandlerWorker(this.handler);
    }
}
