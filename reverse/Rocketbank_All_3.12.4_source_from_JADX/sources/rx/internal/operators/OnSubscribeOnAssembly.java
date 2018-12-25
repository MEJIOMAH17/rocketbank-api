package rx.internal.operators;

import rx.Observable.OnSubscribe;
import rx.Subscriber;
import rx.exceptions.AssemblyStackTraceException;

public final class OnSubscribeOnAssembly<T> implements OnSubscribe<T> {
    public static volatile boolean fullStackTrace;
    final OnSubscribe<T> source;
    final String stacktrace = createStacktrace();

    static final class OnAssemblySubscriber<T> extends Subscriber<T> {
        final Subscriber<? super T> actual;
        final String stacktrace;

        public OnAssemblySubscriber(Subscriber<? super T> subscriber, String str) {
            super(subscriber);
            this.actual = subscriber;
            this.stacktrace = str;
        }

        public final void onCompleted() {
            this.actual.onCompleted();
        }

        public final void onError(Throwable th) {
            new AssemblyStackTraceException(this.stacktrace).attachTo(th);
            this.actual.onError(th);
        }

        public final void onNext(T t) {
            this.actual.onNext(t);
        }
    }

    public OnSubscribeOnAssembly(OnSubscribe<T> onSubscribe) {
        this.source = onSubscribe;
    }

    static String createStacktrace() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        StringBuilder stringBuilder = new StringBuilder("Assembly trace:");
        for (StackTraceElement stackTraceElement : stackTrace) {
            String stackTraceElement2 = stackTraceElement.toString();
            if (fullStackTrace || !(stackTraceElement.getLineNumber() <= 1 || stackTraceElement2.contains("RxJavaHooks.") || stackTraceElement2.contains("OnSubscribeOnAssembly") || stackTraceElement2.contains(".junit.runner") || stackTraceElement2.contains(".junit4.runner") || stackTraceElement2.contains(".junit.internal") || stackTraceElement2.contains("sun.reflect") || stackTraceElement2.contains("java.lang.Thread.") || stackTraceElement2.contains("ThreadPoolExecutor") || stackTraceElement2.contains("org.apache.catalina.") || stackTraceElement2.contains("org.apache.tomcat."))) {
                stringBuilder.append("\n at ");
                stringBuilder.append(stackTraceElement2);
            }
        }
        stringBuilder.append("\nOriginal exception:");
        return stringBuilder.toString();
    }

    public final void call(Subscriber<? super T> subscriber) {
        this.source.call(new OnAssemblySubscriber(subscriber, this.stacktrace));
    }
}
