package io.realm;

import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;
import rx.Observable;

public final class RealmResults<E extends RealmModel> extends OrderedRealmCollectionImpl<E> {
    @Deprecated
    public final /* bridge */ /* synthetic */ void add(int i, RealmModel realmModel) {
        super.add(i, realmModel);
    }

    @Deprecated
    public final /* bridge */ /* synthetic */ boolean add(RealmModel realmModel) {
        return super.add(realmModel);
    }

    @Deprecated
    public final /* bridge */ /* synthetic */ boolean addAll(int i, Collection collection) {
        return super.addAll(i, collection);
    }

    @Deprecated
    public final /* bridge */ /* synthetic */ boolean addAll(Collection collection) {
        return super.addAll(collection);
    }

    @Deprecated
    public final /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    public final /* bridge */ /* synthetic */ boolean contains(Object obj) {
        return super.contains(obj);
    }

    public final /* bridge */ /* synthetic */ boolean deleteAllFromRealm() {
        return super.deleteAllFromRealm();
    }

    public final /* bridge */ /* synthetic */ RealmModel get(int i) {
        return super.get(i);
    }

    public final /* bridge */ /* synthetic */ Iterator iterator() {
        return super.iterator();
    }

    public final /* bridge */ /* synthetic */ ListIterator listIterator() {
        return super.listIterator();
    }

    public final /* bridge */ /* synthetic */ ListIterator listIterator(int i) {
        return super.listIterator(i);
    }

    @Deprecated
    public final /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    @Deprecated
    public final /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    @Deprecated
    public final /* bridge */ /* synthetic */ RealmModel set(int i, RealmModel realmModel) {
        return super.set(i, realmModel);
    }

    public final /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    RealmResults(BaseRealm baseRealm, io.realm.internal.Collection collection, Class<E> cls) {
        super(baseRealm, collection, cls);
    }

    public final boolean isLoaded() {
        this.realm.checkIfValid();
        return this.collection.isLoaded();
    }

    public final boolean load() {
        this.realm.checkIfValid();
        this.collection.load();
        return true;
    }

    public final void addChangeListener(RealmChangeListener<RealmResults<E>> realmChangeListener) {
        checkForAddRemoveListener$4cfd3ce3(realmChangeListener);
        this.collection.addListener((Object) this, (RealmChangeListener) realmChangeListener);
    }

    private void checkForAddRemoveListener$4cfd3ce3(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("Listener should not be null");
        }
        this.realm.checkIfValid();
        this.realm.sharedRealm.capabilities.checkCanDeliverNotification("Listeners cannot be used on current thread.");
    }

    public final void removeChangeListener(RealmChangeListener<RealmResults<E>> realmChangeListener) {
        checkForAddRemoveListener$4cfd3ce3(realmChangeListener);
        this.collection.removeListener((Object) this, (RealmChangeListener) realmChangeListener);
    }

    public final Observable<RealmResults<E>> asObservable() {
        if (this.realm instanceof Realm) {
            return this.realm.configuration.getRxFactory().from((Realm) this.realm, this);
        }
        if (this.realm instanceof DynamicRealm) {
            return this.realm.configuration.getRxFactory().from((DynamicRealm) this.realm, this);
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.realm.getClass());
        stringBuilder.append(" does not support RxJava.");
        throw new UnsupportedOperationException(stringBuilder.toString());
    }
}
