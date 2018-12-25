package android.arch.lifecycle;

import android.arch.core.executor.ArchTaskExecutor;
import android.arch.core.internal.SafeIterableMap;
import android.arch.lifecycle.Lifecycle.Event;
import android.arch.lifecycle.Lifecycle.State;
import java.util.Iterator;
import java.util.Map.Entry;
import kotlin.reflect.KParameter;

public abstract class LiveData<T> {
    private static final Object NOT_SET = new Object();
    static final int START_VERSION = -1;
    private int mActiveCount = 0;
    private volatile Object mData = NOT_SET;
    private final Object mDataLock = new Object();
    private boolean mDispatchInvalidated;
    private boolean mDispatchingValue;
    private SafeIterableMap<KParameter<T>, ObserverWrapper> mObservers = new SafeIterableMap();
    private volatile Object mPendingData = NOT_SET;
    private final Runnable mPostValueRunnable = new C00041();
    private int mVersion = -1;

    /* renamed from: android.arch.lifecycle.LiveData$1 */
    class C00041 implements Runnable {
        C00041() {
        }

        public final void run() {
            Object access$100;
            synchronized (LiveData.this.mDataLock) {
                access$100 = LiveData.this.mPendingData;
                LiveData.this.mPendingData = LiveData.NOT_SET;
            }
            LiveData.this.setValue(access$100);
        }
    }

    abstract class ObserverWrapper {
        boolean mActive;
        int mLastVersion = -1;
        final KParameter<T> mObserver$3232bbad;

        void detachObserver() {
        }

        boolean isAttachedTo(LifecycleOwner lifecycleOwner) {
            return false;
        }

        abstract boolean shouldBeActive();

        ObserverWrapper(KParameter<T> kParameter) {
            this.mObserver$3232bbad = kParameter;
        }

        final void activeStateChanged(boolean z) {
            if (z != this.mActive) {
                this.mActive = z;
                int i = 1;
                z = !LiveData.this.mActiveCount;
                LiveData liveData = LiveData.this;
                int access$300 = liveData.mActiveCount;
                if (!this.mActive) {
                    i = -1;
                }
                liveData.mActiveCount = access$300 + i;
                if (z && this.mActive) {
                    LiveData.this.onActive();
                }
                if (!(LiveData.this.mActiveCount || this.mActive)) {
                    LiveData.this.onInactive();
                }
                if (this.mActive) {
                    LiveData.this.dispatchingValue(this);
                }
            }
        }
    }

    class AlwaysActiveObserver extends ObserverWrapper {
        final boolean shouldBeActive() {
            return true;
        }

        AlwaysActiveObserver(KParameter<T> kParameter) {
            super(kParameter);
        }
    }

    class LifecycleBoundObserver extends ObserverWrapper implements GenericLifecycleObserver {
        final LifecycleOwner mOwner;

        LifecycleBoundObserver(LifecycleOwner lifecycleOwner, KParameter<T> kParameter) {
            super(kParameter);
            this.mOwner = lifecycleOwner;
        }

        final boolean shouldBeActive() {
            return this.mOwner.getLifecycle().getCurrentState().isAtLeast(State.STARTED);
        }

        public final void onStateChanged(LifecycleOwner lifecycleOwner, Event event) {
            if (this.mOwner.getLifecycle().getCurrentState() == State.DESTROYED) {
                LiveData.this.removeObserver$4691b048(this.mObserver$3232bbad);
            } else {
                activeStateChanged(this.mOwner.getLifecycle().getCurrentState().isAtLeast(State.STARTED));
            }
        }

        final boolean isAttachedTo(LifecycleOwner lifecycleOwner) {
            return this.mOwner == lifecycleOwner ? true : null;
        }

        final void detachObserver() {
            this.mOwner.getLifecycle().removeObserver(this);
        }
    }

    protected void onActive() {
    }

    protected void onInactive() {
    }

    private void considerNotify(ObserverWrapper observerWrapper) {
        if (!observerWrapper.mActive) {
            return;
        }
        if (!observerWrapper.shouldBeActive()) {
            observerWrapper.activeStateChanged(false);
        } else if (observerWrapper.mLastVersion < this.mVersion) {
            observerWrapper.mLastVersion = this.mVersion;
            observerWrapper.mObserver$3232bbad.onChanged(this.mData);
        }
    }

    private void dispatchingValue(ObserverWrapper observerWrapper) {
        if (this.mDispatchingValue) {
            this.mDispatchInvalidated = true;
            return;
        }
        this.mDispatchingValue = true;
        do {
            this.mDispatchInvalidated = false;
            if (observerWrapper == null) {
                Iterator iteratorWithAdditions = this.mObservers.iteratorWithAdditions();
                while (iteratorWithAdditions.hasNext()) {
                    considerNotify((ObserverWrapper) ((Entry) iteratorWithAdditions.next()).getValue());
                    if (this.mDispatchInvalidated) {
                        break;
                    }
                }
            }
            considerNotify(observerWrapper);
            observerWrapper = null;
        } while (this.mDispatchInvalidated);
        this.mDispatchingValue = false;
    }

    public void observe$93d9698(LifecycleOwner lifecycleOwner, KParameter<T> kParameter) {
        if (lifecycleOwner.getLifecycle().getCurrentState() != State.DESTROYED) {
            LifecycleObserver lifecycleBoundObserver = new LifecycleBoundObserver(lifecycleOwner, kParameter);
            ObserverWrapper observerWrapper = (ObserverWrapper) this.mObservers.putIfAbsent(kParameter, lifecycleBoundObserver);
            if (observerWrapper != null && !observerWrapper.isAttachedTo(lifecycleOwner)) {
                throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
            } else if (observerWrapper == null) {
                lifecycleOwner.getLifecycle().addObserver(lifecycleBoundObserver);
            }
        }
    }

    public void observeForever$4691b048(KParameter<T> kParameter) {
        AlwaysActiveObserver alwaysActiveObserver = new AlwaysActiveObserver(kParameter);
        ObserverWrapper observerWrapper = (ObserverWrapper) this.mObservers.putIfAbsent(kParameter, alwaysActiveObserver);
        if (observerWrapper != null && (observerWrapper instanceof LifecycleBoundObserver)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        } else if (observerWrapper == null) {
            alwaysActiveObserver.activeStateChanged(true);
        }
    }

    public void removeObserver$4691b048(KParameter<T> kParameter) {
        assertMainThread("removeObserver");
        ObserverWrapper observerWrapper = (ObserverWrapper) this.mObservers.remove(kParameter);
        if (observerWrapper != null) {
            observerWrapper.detachObserver();
            observerWrapper.activeStateChanged(false);
        }
    }

    public void removeObservers(LifecycleOwner lifecycleOwner) {
        assertMainThread("removeObservers");
        Iterator it = this.mObservers.iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            if (((ObserverWrapper) entry.getValue()).isAttachedTo(lifecycleOwner)) {
                removeObserver$4691b048((KParameter) entry.getKey());
            }
        }
    }

    protected void postValue(T t) {
        synchronized (this.mDataLock) {
            Object obj = this.mPendingData == NOT_SET ? 1 : null;
            this.mPendingData = t;
        }
        if (obj != null) {
            ArchTaskExecutor.getInstance().postToMainThread(this.mPostValueRunnable);
        }
    }

    protected void setValue(T t) {
        assertMainThread("setValue");
        this.mVersion++;
        this.mData = t;
        dispatchingValue(null);
    }

    public T getValue() {
        T t = this.mData;
        return t != NOT_SET ? t : null;
    }

    int getVersion() {
        return this.mVersion;
    }

    public boolean hasObservers() {
        return this.mObservers.size() > 0;
    }

    public boolean hasActiveObservers() {
        return this.mActiveCount > 0;
    }

    private static void assertMainThread(String str) {
        if (!ArchTaskExecutor.getInstance().isMainThread()) {
            StringBuilder stringBuilder = new StringBuilder("Cannot invoke ");
            stringBuilder.append(str);
            stringBuilder.append(" on a background thread");
            throw new IllegalStateException(stringBuilder.toString());
        }
    }
}
