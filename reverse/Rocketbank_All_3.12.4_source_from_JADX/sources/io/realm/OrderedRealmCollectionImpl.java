package io.realm;

import io.realm.internal.Collection;
import io.realm.internal.Collection.Iterator;
import io.realm.internal.Collection.ListIterator;
import io.realm.internal.InvalidRow;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.UncheckedRow;
import java.util.AbstractList;

abstract class OrderedRealmCollectionImpl<E extends RealmModel> extends AbstractList<E> implements OrderedRealmCollection<E> {
    final String className;
    final Class<E> classSpec;
    final Collection collection;
    final BaseRealm realm;

    class RealmCollectionIterator extends Iterator<E> {
        RealmCollectionIterator() {
            super(OrderedRealmCollectionImpl.this.collection);
        }

        protected final /* bridge */ /* synthetic */ Object convertRowToObject(UncheckedRow uncheckedRow) {
            return OrderedRealmCollectionImpl.this.realm.get$2592edba(OrderedRealmCollectionImpl.this.classSpec, uncheckedRow);
        }
    }

    class RealmCollectionListIterator extends ListIterator<E> {
        RealmCollectionListIterator(int i) {
            super(OrderedRealmCollectionImpl.this.collection, i);
        }

        protected final /* bridge */ /* synthetic */ Object convertRowToObject(UncheckedRow uncheckedRow) {
            return OrderedRealmCollectionImpl.this.realm.get$2592edba(OrderedRealmCollectionImpl.this.classSpec, uncheckedRow);
        }
    }

    OrderedRealmCollectionImpl(BaseRealm baseRealm, Collection collection, Class<E> cls) {
        this(baseRealm, collection, cls, (byte) 0);
    }

    private OrderedRealmCollectionImpl(BaseRealm baseRealm, Collection collection, Class<E> cls, byte b) {
        this.realm = baseRealm;
        this.collection = collection;
        this.classSpec = cls;
        this.className = null;
    }

    public boolean contains(Object obj) {
        if (!isLoaded() || ((obj instanceof RealmObjectProxy) && ((RealmObjectProxy) obj).realmGet$proxyState().getRow$realm() == InvalidRow.INSTANCE)) {
            return false;
        }
        java.util.Iterator it = iterator();
        while (it.hasNext()) {
            if (((RealmModel) it.next()).equals(obj)) {
                return true;
            }
        }
        return false;
    }

    public E get(int i) {
        this.realm.checkIfValid();
        return this.realm.get$2592edba(this.classSpec, this.collection.getUncheckedRow(i));
    }

    public boolean deleteAllFromRealm() {
        this.realm.checkIfValid();
        if (size() <= 0) {
            return false;
        }
        this.collection.clear();
        return true;
    }

    public java.util.Iterator<E> iterator() {
        return new RealmCollectionIterator();
    }

    public java.util.ListIterator<E> listIterator() {
        return new RealmCollectionListIterator(0);
    }

    public java.util.ListIterator<E> listIterator(int i) {
        return new RealmCollectionListIterator(i);
    }

    public int size() {
        if (!isLoaded()) {
            return 0;
        }
        long size = this.collection.size();
        return size > 2147483647L ? ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED : (int) size;
    }

    @Deprecated
    public E remove(int i) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Deprecated
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Deprecated
    public boolean removeAll(java.util.Collection<?> collection) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Deprecated
    public E set(int i, E e) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Deprecated
    public boolean retainAll(java.util.Collection<?> collection) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Deprecated
    public void clear() {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Deprecated
    public boolean add(E e) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Deprecated
    public void add(int i, E e) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Deprecated
    public boolean addAll(int i, java.util.Collection<? extends E> collection) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Deprecated
    public boolean addAll(java.util.Collection<? extends E> collection) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }
}
