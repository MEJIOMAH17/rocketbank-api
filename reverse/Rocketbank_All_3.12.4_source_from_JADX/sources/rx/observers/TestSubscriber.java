package rx.observers;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import rx.Notification;
import rx.Observer;
import rx.Subscriber;
import rx.annotations.Experimental;
import rx.exceptions.CompositeException;

public class TestSubscriber<T> extends Subscriber<T> {
    private static final Observer<Object> INERT = new C17361();
    private int completions;
    private final Observer<T> delegate;
    private final List<Throwable> errors;
    private volatile Thread lastSeenThread;
    private final CountDownLatch latch;
    private volatile int valueCount;
    private final List<T> values;

    /* renamed from: rx.observers.TestSubscriber$1 */
    static class C17361 implements Observer<Object> {
        public final void onCompleted() {
        }

        public final void onError(Throwable th) {
        }

        public final void onNext(Object obj) {
        }

        C17361() {
        }
    }

    public TestSubscriber(long j) {
        this(INERT, j);
    }

    public TestSubscriber(Observer<T> observer, long j) {
        this.latch = new CountDownLatch(1);
        if (observer == null) {
            throw new NullPointerException();
        }
        this.delegate = observer;
        if (j >= 0) {
            request(j);
        }
        this.values = new ArrayList();
        this.errors = new ArrayList();
    }

    public TestSubscriber(Subscriber<T> subscriber) {
        this(subscriber, -1);
    }

    public TestSubscriber(Observer<T> observer) {
        this(observer, -1);
    }

    public TestSubscriber() {
        this(-1);
    }

    public static <T> TestSubscriber<T> create() {
        return new TestSubscriber();
    }

    public static <T> TestSubscriber<T> create(long j) {
        return new TestSubscriber(j);
    }

    public static <T> TestSubscriber<T> create(Observer<T> observer, long j) {
        return new TestSubscriber(observer, j);
    }

    public static <T> TestSubscriber<T> create(Subscriber<T> subscriber) {
        return new TestSubscriber((Subscriber) subscriber);
    }

    public static <T> TestSubscriber<T> create(Observer<T> observer) {
        return new TestSubscriber((Observer) observer);
    }

    public void onCompleted() {
        try {
            this.completions++;
            this.lastSeenThread = Thread.currentThread();
            this.delegate.onCompleted();
        } finally {
            this.latch.countDown();
        }
    }

    @Deprecated
    public List<Notification<T>> getOnCompletedEvents() {
        int i = this.completions;
        List<Notification<T>> arrayList = new ArrayList(i != 0 ? i : 1);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(Notification.createOnCompleted());
        }
        return arrayList;
    }

    @Experimental
    public final int getCompletions() {
        return this.completions;
    }

    public void onError(Throwable th) {
        try {
            this.lastSeenThread = Thread.currentThread();
            this.errors.add(th);
            this.delegate.onError(th);
        } finally {
            this.latch.countDown();
        }
    }

    public List<Throwable> getOnErrorEvents() {
        return this.errors;
    }

    public void onNext(T t) {
        this.lastSeenThread = Thread.currentThread();
        this.values.add(t);
        this.valueCount = this.values.size();
        this.delegate.onNext(t);
    }

    public final int getValueCount() {
        return this.valueCount;
    }

    public void requestMore(long j) {
        request(j);
    }

    public List<T> getOnNextEvents() {
        return this.values;
    }

    public void assertReceivedOnNext(List<T> list) {
        if (this.values.size() != list.size()) {
            StringBuilder stringBuilder = new StringBuilder("Number of items does not match. Provided: ");
            stringBuilder.append(list.size());
            stringBuilder.append("  Actual: ");
            stringBuilder.append(this.values.size());
            stringBuilder.append(".\nProvided values: ");
            stringBuilder.append(list);
            stringBuilder.append("\nActual values: ");
            stringBuilder.append(this.values);
            stringBuilder.append("\n");
            assertionError(stringBuilder.toString());
        }
        for (int i = 0; i < list.size(); i++) {
            assertItem(list.get(i), i);
        }
    }

    private void assertItem(T t, int i) {
        Object obj = this.values.get(i);
        if (t == null) {
            if (obj != null) {
                t = new StringBuilder("Value at index: ");
                t.append(i);
                t.append(" expected to be [null] but was: [");
                t.append(obj);
                t.append("]\n");
                assertionError(t.toString());
            }
        } else if (!t.equals(obj)) {
            StringBuilder stringBuilder = new StringBuilder("Value at index: ");
            stringBuilder.append(i);
            stringBuilder.append(" expected to be [");
            stringBuilder.append(t);
            stringBuilder.append("] (");
            stringBuilder.append(t.getClass().getSimpleName());
            stringBuilder.append(") but was: [");
            stringBuilder.append(obj);
            stringBuilder.append("] (");
            stringBuilder.append(obj != null ? obj.getClass().getSimpleName() : "null");
            stringBuilder.append(")\n");
            assertionError(stringBuilder.toString());
        }
    }

    @Experimental
    public final boolean awaitValueCount(int i, long j, TimeUnit timeUnit) {
        while (j != 0 && this.valueCount < i) {
            try {
                timeUnit.sleep(1);
                j--;
            } catch (int i2) {
                throw new IllegalStateException("Interrupted", i2);
            }
        }
        return this.valueCount >= i2;
    }

    public void assertTerminalEvent() {
        if (this.errors.size() > 1) {
            StringBuilder stringBuilder = new StringBuilder("Too many onError events: ");
            stringBuilder.append(this.errors.size());
            assertionError(stringBuilder.toString());
        }
        if (this.completions > 1) {
            stringBuilder = new StringBuilder("Too many onCompleted events: ");
            stringBuilder.append(this.completions);
            assertionError(stringBuilder.toString());
        }
        if (this.completions == 1 && this.errors.size() == 1) {
            assertionError("Received both an onError and onCompleted. Should be one or the other.");
        }
        if (this.completions == 0 && this.errors.isEmpty()) {
            assertionError("No terminal events received.");
        }
    }

    public void assertUnsubscribed() {
        if (!isUnsubscribed()) {
            assertionError("Not unsubscribed.");
        }
    }

    public void assertNoErrors() {
        if (!getOnErrorEvents().isEmpty()) {
            assertionError("Unexpected onError events");
        }
    }

    public void awaitTerminalEvent() {
        try {
            this.latch.await();
        } catch (Throwable e) {
            throw new IllegalStateException("Interrupted", e);
        }
    }

    public void awaitTerminalEvent(long j, TimeUnit timeUnit) {
        try {
            this.latch.await(j, timeUnit);
        } catch (long j2) {
            throw new IllegalStateException("Interrupted", j2);
        }
    }

    public void awaitTerminalEventAndUnsubscribeOnTimeout(long r2, java.util.concurrent.TimeUnit r4) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
*/
        /*
        r1 = this;
        r0 = r1.latch;	 Catch:{ InterruptedException -> 0x000c }
        r2 = r0.await(r2, r4);	 Catch:{ InterruptedException -> 0x000c }
        if (r2 != 0) goto L_0x000b;	 Catch:{ InterruptedException -> 0x000c }
    L_0x0008:
        r1.unsubscribe();	 Catch:{ InterruptedException -> 0x000c }
    L_0x000b:
        return;
    L_0x000c:
        r1.unsubscribe();
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.observers.TestSubscriber.awaitTerminalEventAndUnsubscribeOnTimeout(long, java.util.concurrent.TimeUnit):void");
    }

    public Thread getLastSeenThread() {
        return this.lastSeenThread;
    }

    public void assertCompleted() {
        int i = this.completions;
        if (i == 0) {
            assertionError("Not completed!");
            return;
        }
        if (i > 1) {
            assertionError("Completed multiple times: ".concat(String.valueOf(i)));
        }
    }

    public void assertNotCompleted() {
        int i = this.completions;
        if (i == 1) {
            assertionError("Completed!");
            return;
        }
        if (i > 1) {
            assertionError("Completed multiple times: ".concat(String.valueOf(i)));
        }
    }

    public void assertError(Class<? extends Throwable> cls) {
        Collection collection = this.errors;
        if (collection.isEmpty()) {
            assertionError("No errors");
        } else if (collection.size() > 1) {
            StringBuilder stringBuilder = new StringBuilder("Multiple errors: ");
            stringBuilder.append(collection.size());
            cls = new AssertionError(stringBuilder.toString());
            cls.initCause(new CompositeException(collection));
            throw cls;
        } else if (!cls.isInstance(collection.get(0))) {
            StringBuilder stringBuilder2 = new StringBuilder("Exceptions differ; expected: ");
            stringBuilder2.append(cls);
            stringBuilder2.append(", actual: ");
            stringBuilder2.append(collection.get(0));
            AssertionError assertionError = new AssertionError(stringBuilder2.toString());
            assertionError.initCause((Throwable) collection.get(0));
            throw assertionError;
        }
    }

    public void assertError(Throwable th) {
        List list = this.errors;
        if (list.isEmpty()) {
            assertionError("No errors");
        } else if (list.size() > 1) {
            assertionError("Multiple errors");
        } else {
            if (!th.equals(list.get(0))) {
                StringBuilder stringBuilder = new StringBuilder("Exceptions differ; expected: ");
                stringBuilder.append(th);
                stringBuilder.append(", actual: ");
                stringBuilder.append(list.get(0));
                assertionError(stringBuilder.toString());
            }
        }
    }

    public void assertNoTerminalEvent() {
        List list = this.errors;
        int i = this.completions;
        if (!list.isEmpty() || i > 0) {
            StringBuilder stringBuilder;
            if (list.isEmpty()) {
                stringBuilder = new StringBuilder("Found ");
                stringBuilder.append(list.size());
                stringBuilder.append(" errors and ");
                stringBuilder.append(i);
                stringBuilder.append(" completion events instead of none");
                assertionError(stringBuilder.toString());
            } else if (list.size() == 1) {
                stringBuilder = new StringBuilder("Found ");
                stringBuilder.append(list.size());
                stringBuilder.append(" errors and ");
                stringBuilder.append(i);
                stringBuilder.append(" completion events instead of none");
                assertionError(stringBuilder.toString());
            } else {
                stringBuilder = new StringBuilder("Found ");
                stringBuilder.append(list.size());
                stringBuilder.append(" errors and ");
                stringBuilder.append(i);
                stringBuilder.append(" completion events instead of none");
                assertionError(stringBuilder.toString());
            }
        }
    }

    public void assertNoValues() {
        int size = this.values.size();
        if (size != 0) {
            assertionError("No onNext events expected yet some received: ".concat(String.valueOf(size)));
        }
    }

    public void assertValueCount(int i) {
        int size = this.values.size();
        if (size != i) {
            StringBuilder stringBuilder = new StringBuilder("Number of onNext events differ; expected: ");
            stringBuilder.append(i);
            stringBuilder.append(", actual: ");
            stringBuilder.append(size);
            assertionError(stringBuilder.toString());
        }
    }

    public void assertValues(T... tArr) {
        assertReceivedOnNext(Arrays.asList(tArr));
    }

    public void assertValue(T t) {
        assertReceivedOnNext(Collections.singletonList(t));
    }

    final void assertionError(String str) {
        StringBuilder stringBuilder = new StringBuilder(str.length() + 32);
        stringBuilder.append(str);
        stringBuilder.append(" (");
        str = this.completions;
        stringBuilder.append(str);
        stringBuilder.append(" completion");
        if (str != 1) {
            stringBuilder.append('s');
        }
        stringBuilder.append(')');
        if (!this.errors.isEmpty()) {
            int size = this.errors.size();
            stringBuilder.append(" (+");
            stringBuilder.append(size);
            stringBuilder.append(" error");
            if (size != 1) {
                stringBuilder.append('s');
            }
            stringBuilder.append(')');
        }
        str = new AssertionError(stringBuilder.toString());
        if (!this.errors.isEmpty()) {
            if (this.errors.size() == 1) {
                str.initCause((Throwable) this.errors.get(0));
            } else {
                str.initCause(new CompositeException(this.errors));
            }
        }
        throw str;
    }

    @Experimental
    public final void assertValuesAndClear(T t, T... tArr) {
        T t2 = null;
        assertValueCount(1 + tArr.length);
        assertItem(t, 0);
        while (t2 < tArr.length) {
            t = tArr[t2];
            t2++;
            assertItem(t, t2);
        }
        this.values.clear();
    }
}
