package io.realm.internal;

import io.realm.RealmChangeListener;
import io.realm.internal.Collection.Iterator;
import io.realm.internal.ObserverPairList.Callback;
import io.realm.internal.ObserverPairList.ObserverPair;
import java.io.Closeable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

@Keep
public abstract class RealmNotifier implements Closeable {
    private final Callback<RealmObserverPair> onChangeCallBack = new C12881();
    private ObserverPairList<RealmObserverPair> realmObserverPairs = new ObserverPairList();
    private SharedRealm sharedRealm;
    private List<Runnable> transactionCallbacks = new ArrayList();

    /* renamed from: io.realm.internal.RealmNotifier$1 */
    class C12881 implements Callback<RealmObserverPair> {
        C12881() {
        }

        public final /* bridge */ /* synthetic */ void onCalled(ObserverPair observerPair, Object obj) {
            RealmObserverPair realmObserverPair = (RealmObserverPair) observerPair;
            if (RealmNotifier.this.sharedRealm != null && !RealmNotifier.this.sharedRealm.isClosed()) {
                RealmObserverPair.access$100(realmObserverPair, obj);
            }
        }
    }

    static class RealmObserverPair<T> extends ObserverPair<T, RealmChangeListener<T>> {
        public RealmObserverPair(T t, RealmChangeListener<T> realmChangeListener) {
            super(t, realmChangeListener);
        }

        static /* synthetic */ void access$100(RealmObserverPair realmObserverPair, Object obj) {
            if (obj != null) {
                ((RealmChangeListener) realmObserverPair.listener).onChange$5d527811();
            }
        }
    }

    public abstract boolean post(Runnable runnable);

    protected RealmNotifier(SharedRealm sharedRealm) {
        this.sharedRealm = sharedRealm;
    }

    void didChange() {
        this.realmObserverPairs.foreach(this.onChangeCallBack);
        if (!this.transactionCallbacks.isEmpty()) {
            List<Runnable> list = this.transactionCallbacks;
            this.transactionCallbacks = new ArrayList();
            for (Runnable run : list) {
                run.run();
            }
        }
    }

    void beforeNotify() {
        SharedRealm sharedRealm = this.sharedRealm;
        for (WeakReference weakReference : sharedRealm.iterators) {
            Iterator iterator = (Iterator) weakReference.get();
            if (iterator != null) {
                iterator.iteratorCollection = null;
            }
        }
        sharedRealm.iterators.clear();
    }

    public void close() {
        removeAllChangeListeners();
    }

    public <T> void addChangeListener(T t, RealmChangeListener<T> realmChangeListener) {
        this.realmObserverPairs.add(new RealmObserverPair(t, realmChangeListener));
    }

    public <E> void removeChangeListener(E e, RealmChangeListener<E> realmChangeListener) {
        this.realmObserverPairs.remove(e, realmChangeListener);
    }

    public <E> void removeChangeListeners(E e) {
        this.realmObserverPairs.removeByObserver(e);
    }

    private void removeAllChangeListeners() {
        this.realmObserverPairs.clear();
    }

    public void addTransactionCallback(Runnable runnable) {
        this.transactionCallbacks.add(runnable);
    }

    public int getListenersListSize() {
        return this.realmObserverPairs.size();
    }
}
