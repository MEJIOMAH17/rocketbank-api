package io.realm.internal;

import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public final class ObserverPairList<T extends ObserverPair> {
    private boolean cleared = false;
    private List<T> pairs = new CopyOnWriteArrayList();

    public interface Callback<T extends ObserverPair> {
        void onCalled(T t, Object obj);
    }

    public static abstract class ObserverPair<T, S> {
        protected final S listener;
        final WeakReference<T> observerRef;
        boolean removed = false;

        ObserverPair(T t, S s) {
            this.listener = s;
            this.observerRef = new WeakReference(t);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ObserverPair)) {
                return false;
            }
            ObserverPair observerPair = (ObserverPair) obj;
            return this.listener.equals(observerPair.listener) && this.observerRef.get() == observerPair.observerRef.get();
        }

        public int hashCode() {
            Object obj = this.observerRef.get();
            int i = 0;
            int hashCode = (527 + (obj != null ? obj.hashCode() : 0)) * 31;
            if (this.listener != null) {
                i = this.listener.hashCode();
            }
            return hashCode + i;
        }
    }

    public final void foreach(Callback<T> callback) {
        for (ObserverPair observerPair : this.pairs) {
            if (!this.cleared) {
                Object obj = observerPair.observerRef.get();
                if (obj == null) {
                    this.pairs.remove(observerPair);
                } else if (!observerPair.removed) {
                    callback.onCalled(observerPair, obj);
                }
            } else {
                return;
            }
        }
    }

    public final boolean isEmpty() {
        return this.pairs.isEmpty();
    }

    public final void clear() {
        this.cleared = true;
        this.pairs.clear();
    }

    public final void add(T t) {
        if (!this.pairs.contains(t)) {
            this.pairs.add(t);
            t.removed = false;
        }
        if (this.cleared != null) {
            this.cleared = false;
        }
    }

    public final <S, U> void remove(S s, U u) {
        for (ObserverPair observerPair : this.pairs) {
            if (s == observerPair.observerRef.get() && u.equals(observerPair.listener)) {
                observerPair.removed = true;
                this.pairs.remove(observerPair);
                return;
            }
        }
    }

    final void removeByObserver(Object obj) {
        for (ObserverPair observerPair : this.pairs) {
            Object obj2 = observerPair.observerRef.get();
            if (obj2 == null || obj2 == obj) {
                observerPair.removed = true;
                this.pairs.remove(observerPair);
            }
        }
    }

    public final int size() {
        return this.pairs.size();
    }
}
