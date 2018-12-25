package rx.observers;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import rx.Notification;
import rx.Observer;
import rx.exceptions.CompositeException;

@Deprecated
public class TestObserver<T> implements Observer<T> {
    private static final Observer<Object> INERT = new C17351();
    private final Observer<T> delegate;
    private final List<Notification<T>> onCompletedEvents;
    private final List<Throwable> onErrorEvents;
    private final List<T> onNextEvents;

    /* renamed from: rx.observers.TestObserver$1 */
    static class C17351 implements Observer<Object> {
        public final void onCompleted() {
        }

        public final void onError(Throwable th) {
        }

        public final void onNext(Object obj) {
        }

        C17351() {
        }
    }

    public TestObserver(Observer<T> observer) {
        this.onNextEvents = new ArrayList();
        this.onErrorEvents = new ArrayList();
        this.onCompletedEvents = new ArrayList();
        this.delegate = observer;
    }

    public TestObserver() {
        this.onNextEvents = new ArrayList();
        this.onErrorEvents = new ArrayList();
        this.onCompletedEvents = new ArrayList();
        this.delegate = INERT;
    }

    public void onCompleted() {
        this.onCompletedEvents.add(Notification.createOnCompleted());
        this.delegate.onCompleted();
    }

    public List<Notification<T>> getOnCompletedEvents() {
        return Collections.unmodifiableList(this.onCompletedEvents);
    }

    public void onError(Throwable th) {
        this.onErrorEvents.add(th);
        this.delegate.onError(th);
    }

    public List<Throwable> getOnErrorEvents() {
        return Collections.unmodifiableList(this.onErrorEvents);
    }

    public void onNext(T t) {
        this.onNextEvents.add(t);
        this.delegate.onNext(t);
    }

    public List<T> getOnNextEvents() {
        return Collections.unmodifiableList(this.onNextEvents);
    }

    public List<Object> getEvents() {
        List arrayList = new ArrayList();
        arrayList.add(this.onNextEvents);
        arrayList.add(this.onErrorEvents);
        arrayList.add(this.onCompletedEvents);
        return Collections.unmodifiableList(arrayList);
    }

    public void assertReceivedOnNext(List<T> list) {
        if (this.onNextEvents.size() != list.size()) {
            StringBuilder stringBuilder = new StringBuilder("Number of items does not match. Provided: ");
            stringBuilder.append(list.size());
            stringBuilder.append("  Actual: ");
            stringBuilder.append(this.onNextEvents.size());
            stringBuilder.append(".\nProvided values: ");
            stringBuilder.append(list);
            stringBuilder.append("\nActual values: ");
            stringBuilder.append(this.onNextEvents);
            stringBuilder.append("\n");
            assertionError(stringBuilder.toString());
        }
        for (int i = 0; i < list.size(); i++) {
            Object obj = list.get(i);
            Object obj2 = this.onNextEvents.get(i);
            if (obj == null) {
                if (obj2 != null) {
                    StringBuilder stringBuilder2 = new StringBuilder("Value at index: ");
                    stringBuilder2.append(i);
                    stringBuilder2.append(" expected to be [null] but was: [");
                    stringBuilder2.append(obj2);
                    stringBuilder2.append("]\n");
                    assertionError(stringBuilder2.toString());
                }
            } else if (!obj.equals(obj2)) {
                StringBuilder stringBuilder3 = new StringBuilder("Value at index: ");
                stringBuilder3.append(i);
                stringBuilder3.append(" expected to be [");
                stringBuilder3.append(obj);
                stringBuilder3.append("] (");
                stringBuilder3.append(obj.getClass().getSimpleName());
                stringBuilder3.append(") but was: [");
                stringBuilder3.append(obj2);
                stringBuilder3.append("] (");
                stringBuilder3.append(obj2 != null ? obj2.getClass().getSimpleName() : "null");
                stringBuilder3.append(")\n");
                assertionError(stringBuilder3.toString());
            }
        }
    }

    public void assertTerminalEvent() {
        if (this.onErrorEvents.size() > 1) {
            StringBuilder stringBuilder = new StringBuilder("Too many onError events: ");
            stringBuilder.append(this.onErrorEvents.size());
            assertionError(stringBuilder.toString());
        }
        if (this.onCompletedEvents.size() > 1) {
            stringBuilder = new StringBuilder("Too many onCompleted events: ");
            stringBuilder.append(this.onCompletedEvents.size());
            assertionError(stringBuilder.toString());
        }
        if (this.onCompletedEvents.size() == 1 && this.onErrorEvents.size() == 1) {
            assertionError("Received both an onError and onCompleted. Should be one or the other.");
        }
        if (this.onCompletedEvents.isEmpty() && this.onErrorEvents.isEmpty()) {
            assertionError("No terminal events received.");
        }
    }

    final void assertionError(String str) {
        StringBuilder stringBuilder = new StringBuilder(str.length() + 32);
        stringBuilder.append(str);
        stringBuilder.append(" (");
        str = this.onCompletedEvents.size();
        stringBuilder.append(str);
        stringBuilder.append(" completion");
        if (str != 1) {
            stringBuilder.append('s');
        }
        stringBuilder.append(')');
        if (!this.onErrorEvents.isEmpty()) {
            int size = this.onErrorEvents.size();
            stringBuilder.append(" (+");
            stringBuilder.append(size);
            stringBuilder.append(" error");
            if (size != 1) {
                stringBuilder.append('s');
            }
            stringBuilder.append(')');
        }
        str = new AssertionError(stringBuilder.toString());
        if (!this.onErrorEvents.isEmpty()) {
            if (this.onErrorEvents.size() == 1) {
                str.initCause((Throwable) this.onErrorEvents.get(0));
            } else {
                str.initCause(new CompositeException(this.onErrorEvents));
            }
        }
        throw str;
    }
}
