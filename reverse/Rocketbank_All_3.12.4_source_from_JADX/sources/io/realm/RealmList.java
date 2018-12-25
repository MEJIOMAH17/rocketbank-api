package io.realm;

import io.realm.internal.Collection;
import io.realm.internal.InvalidRow;
import io.realm.internal.LinkView;
import io.realm.internal.RealmObjectProxy;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

public class RealmList<E extends RealmModel> extends AbstractList<E> implements OrderedRealmCollection<E> {
    protected Class<E> clazz;
    private final Collection collection;
    protected BaseRealm realm;
    private List<E> unmanagedList;
    final LinkView view;

    class RealmItr implements Iterator<E> {
        int cursor;
        int expectedModCount;
        int lastRet;

        private RealmItr() {
            this.cursor = null;
            this.lastRet = -1;
            this.expectedModCount = RealmList.this.modCount;
        }

        public boolean hasNext() {
            RealmList.this.realm.checkIfValid();
            if (RealmList.this.modCount == this.expectedModCount) {
                return this.cursor != RealmList.this.size();
            } else {
                throw new ConcurrentModificationException();
            }
        }

        private E next() {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r4 = this;
            r0 = io.realm.RealmList.this;
            r0 = r0.realm;
            r0.checkIfValid();
            r0 = io.realm.RealmList.this;
            r0 = r0.modCount;
            r1 = r4.expectedModCount;
            if (r0 == r1) goto L_0x0017;
        L_0x0011:
            r0 = new java.util.ConcurrentModificationException;
            r0.<init>();
            throw r0;
        L_0x0017:
            r0 = r4.cursor;
            r1 = io.realm.RealmList.this;	 Catch:{ IndexOutOfBoundsException -> 0x0026 }
            r1 = r1.get(r0);	 Catch:{ IndexOutOfBoundsException -> 0x0026 }
            r4.lastRet = r0;	 Catch:{ IndexOutOfBoundsException -> 0x0026 }
            r2 = r0 + 1;	 Catch:{ IndexOutOfBoundsException -> 0x0026 }
            r4.cursor = r2;	 Catch:{ IndexOutOfBoundsException -> 0x0026 }
            return r1;
        L_0x0026:
            r1 = io.realm.RealmList.this;
            r1 = r1.modCount;
            r2 = r4.expectedModCount;
            if (r1 == r2) goto L_0x0036;
        L_0x0030:
            r0 = new java.util.ConcurrentModificationException;
            r0.<init>();
            throw r0;
        L_0x0036:
            r1 = new java.util.NoSuchElementException;
            r2 = new java.lang.StringBuilder;
            r3 = "Cannot access index ";
            r2.<init>(r3);
            r2.append(r0);
            r0 = " when size is ";
            r2.append(r0);
            r0 = io.realm.RealmList.this;
            r0 = r0.size();
            r2.append(r0);
            r0 = ". Remember to check hasNext() before using next().";
            r2.append(r0);
            r0 = r2.toString();
            r1.<init>(r0);
            throw r1;
            */
            throw new UnsupportedOperationException("Method not decompiled: io.realm.RealmList.RealmItr.next():E");
        }

        public void remove() {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r2 = this;
            r0 = io.realm.RealmList.this;
            r0 = r0.realm;
            r0.checkIfValid();
            r0 = r2.lastRet;
            if (r0 >= 0) goto L_0x0013;
        L_0x000b:
            r0 = new java.lang.IllegalStateException;
            r1 = "Cannot call remove() twice. Must call next() in between.";
            r0.<init>(r1);
            throw r0;
        L_0x0013:
            r0 = io.realm.RealmList.this;
            r0 = r0.modCount;
            r1 = r2.expectedModCount;
            if (r0 == r1) goto L_0x0023;
        L_0x001d:
            r0 = new java.util.ConcurrentModificationException;
            r0.<init>();
            throw r0;
        L_0x0023:
            r0 = io.realm.RealmList.this;	 Catch:{ IndexOutOfBoundsException -> 0x0042 }
            r1 = r2.lastRet;	 Catch:{ IndexOutOfBoundsException -> 0x0042 }
            r0.remove(r1);	 Catch:{ IndexOutOfBoundsException -> 0x0042 }
            r0 = r2.lastRet;	 Catch:{ IndexOutOfBoundsException -> 0x0042 }
            r1 = r2.cursor;	 Catch:{ IndexOutOfBoundsException -> 0x0042 }
            if (r0 >= r1) goto L_0x0036;	 Catch:{ IndexOutOfBoundsException -> 0x0042 }
        L_0x0030:
            r0 = r2.cursor;	 Catch:{ IndexOutOfBoundsException -> 0x0042 }
            r0 = r0 + -1;	 Catch:{ IndexOutOfBoundsException -> 0x0042 }
            r2.cursor = r0;	 Catch:{ IndexOutOfBoundsException -> 0x0042 }
        L_0x0036:
            r0 = -1;	 Catch:{ IndexOutOfBoundsException -> 0x0042 }
            r2.lastRet = r0;	 Catch:{ IndexOutOfBoundsException -> 0x0042 }
            r0 = io.realm.RealmList.this;	 Catch:{ IndexOutOfBoundsException -> 0x0042 }
            r0 = r0.modCount;	 Catch:{ IndexOutOfBoundsException -> 0x0042 }
            r2.expectedModCount = r0;	 Catch:{ IndexOutOfBoundsException -> 0x0042 }
            return;
        L_0x0042:
            r0 = new java.util.ConcurrentModificationException;
            r0.<init>();
            throw r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: io.realm.RealmList.RealmItr.remove():void");
        }
    }

    class RealmListItr extends RealmItr implements ListIterator<E> {
        public final /* bridge */ /* synthetic */ void add(java.lang.Object r3) {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r2 = this;
            r3 = (io.realm.RealmModel) r3;
            r0 = io.realm.RealmList.this;
            r0 = r0.realm;
            r0.checkIfValid();
            r0 = r2.this$0;
            r0 = r0.modCount;
            r1 = r2.expectedModCount;
            if (r0 == r1) goto L_0x0019;
        L_0x0013:
            r3 = new java.util.ConcurrentModificationException;
            r3.<init>();
            throw r3;
        L_0x0019:
            r0 = r2.cursor;	 Catch:{ IndexOutOfBoundsException -> 0x0030 }
            r1 = io.realm.RealmList.this;	 Catch:{ IndexOutOfBoundsException -> 0x0030 }
            r1.add(r0, r3);	 Catch:{ IndexOutOfBoundsException -> 0x0030 }
            r3 = -1;	 Catch:{ IndexOutOfBoundsException -> 0x0030 }
            r2.lastRet = r3;	 Catch:{ IndexOutOfBoundsException -> 0x0030 }
            r0 = r0 + 1;	 Catch:{ IndexOutOfBoundsException -> 0x0030 }
            r2.cursor = r0;	 Catch:{ IndexOutOfBoundsException -> 0x0030 }
            r3 = io.realm.RealmList.this;	 Catch:{ IndexOutOfBoundsException -> 0x0030 }
            r3 = r3.modCount;	 Catch:{ IndexOutOfBoundsException -> 0x0030 }
            r2.expectedModCount = r3;	 Catch:{ IndexOutOfBoundsException -> 0x0030 }
            return;
        L_0x0030:
            r3 = new java.util.ConcurrentModificationException;
            r3.<init>();
            throw r3;
            */
            throw new UnsupportedOperationException("Method not decompiled: io.realm.RealmList.RealmListItr.add(java.lang.Object):void");
        }

        public final /* bridge */ /* synthetic */ void set(java.lang.Object r3) {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r2 = this;
            r3 = (io.realm.RealmModel) r3;
            r0 = io.realm.RealmList.this;
            r0 = r0.realm;
            r0.checkIfValid();
            r0 = r2.lastRet;
            if (r0 >= 0) goto L_0x0013;
        L_0x000d:
            r3 = new java.lang.IllegalStateException;
            r3.<init>();
            throw r3;
        L_0x0013:
            r0 = r2.this$0;
            r0 = r0.modCount;
            r1 = r2.expectedModCount;
            if (r0 == r1) goto L_0x0023;
        L_0x001d:
            r3 = new java.util.ConcurrentModificationException;
            r3.<init>();
            throw r3;
        L_0x0023:
            r0 = io.realm.RealmList.this;	 Catch:{ IndexOutOfBoundsException -> 0x0033 }
            r1 = r2.lastRet;	 Catch:{ IndexOutOfBoundsException -> 0x0033 }
            r0.set(r1, r3);	 Catch:{ IndexOutOfBoundsException -> 0x0033 }
            r3 = io.realm.RealmList.this;	 Catch:{ IndexOutOfBoundsException -> 0x0033 }
            r3 = r3.modCount;	 Catch:{ IndexOutOfBoundsException -> 0x0033 }
            r2.expectedModCount = r3;	 Catch:{ IndexOutOfBoundsException -> 0x0033 }
            return;
        L_0x0033:
            r3 = new java.util.ConcurrentModificationException;
            r3.<init>();
            throw r3;
            */
            throw new UnsupportedOperationException("Method not decompiled: io.realm.RealmList.RealmListItr.set(java.lang.Object):void");
        }

        RealmListItr(int i) {
            super();
            if (i < 0 || i > RealmList.this.size()) {
                StringBuilder stringBuilder = new StringBuilder("Starting location must be a valid index: [0, ");
                stringBuilder.append(RealmList.this.size() - 1);
                stringBuilder.append("]. Index was ");
                stringBuilder.append(i);
                throw new IndexOutOfBoundsException(stringBuilder.toString());
            }
            this.cursor = i;
        }

        public final boolean hasPrevious() {
            return this.cursor != 0;
        }

        public final int nextIndex() {
            return this.cursor;
        }

        public final int previousIndex() {
            return this.cursor - 1;
        }

        private E previous() {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r4 = this;
            r0 = r4.this$0;
            r0 = r0.modCount;
            r1 = r4.expectedModCount;
            if (r0 == r1) goto L_0x0010;
        L_0x000a:
            r0 = new java.util.ConcurrentModificationException;
            r0.<init>();
            throw r0;
        L_0x0010:
            r0 = r4.cursor;
            r0 = r0 + -1;
            r1 = io.realm.RealmList.this;	 Catch:{ IndexOutOfBoundsException -> 0x001f }
            r1 = r1.get(r0);	 Catch:{ IndexOutOfBoundsException -> 0x001f }
            r4.cursor = r0;	 Catch:{ IndexOutOfBoundsException -> 0x001f }
            r4.lastRet = r0;	 Catch:{ IndexOutOfBoundsException -> 0x001f }
            return r1;
        L_0x001f:
            r1 = r4.this$0;
            r1 = r1.modCount;
            r2 = r4.expectedModCount;
            if (r1 == r2) goto L_0x002f;
        L_0x0029:
            r0 = new java.util.ConcurrentModificationException;
            r0.<init>();
            throw r0;
        L_0x002f:
            r1 = new java.util.NoSuchElementException;
            r2 = new java.lang.StringBuilder;
            r3 = "Cannot access index less than zero. This was ";
            r2.<init>(r3);
            r2.append(r0);
            r0 = ". Remember to check hasPrevious() before using previous().";
            r2.append(r0);
            r0 = r2.toString();
            r1.<init>(r0);
            throw r1;
            */
            throw new UnsupportedOperationException("Method not decompiled: io.realm.RealmList.RealmListItr.previous():E");
        }
    }

    public final boolean isLoaded() {
        return true;
    }

    public RealmList() {
        this.collection = null;
        this.view = null;
        this.unmanagedList = new ArrayList();
    }

    RealmList(Class<E> cls, LinkView linkView, BaseRealm baseRealm) {
        this.collection = new Collection(baseRealm.sharedRealm, linkView, null);
        this.clazz = cls;
        this.view = linkView;
        this.realm = baseRealm;
    }

    public final boolean isManaged() {
        return this.realm != null;
    }

    private E copyToRealmIfNeeded(E e) {
        if (e instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) e;
            if (realmObjectProxy instanceof DynamicRealmObject) {
                String className = this.view.getTargetTable().getClassName();
                if (realmObjectProxy.realmGet$proxyState().getRealm$realm() == this.realm) {
                    if (className.equals(((DynamicRealmObject) e).getType())) {
                        return e;
                    }
                    throw new IllegalArgumentException(String.format("The object has a different type from list's. Type of the list is '%s', type of object is '%s'.", new Object[]{className, ((DynamicRealmObject) e).getType()}));
                } else if (this.realm.threadId == realmObjectProxy.realmGet$proxyState().getRealm$realm().threadId) {
                    throw new IllegalArgumentException("Cannot copy DynamicRealmObject between Realm instances.");
                } else {
                    throw new IllegalStateException("Cannot copy an object to a Realm instance created in another thread.");
                }
            } else if (realmObjectProxy.realmGet$proxyState().getRow$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(this.realm.getPath())) {
                if (this.realm == realmObjectProxy.realmGet$proxyState().getRealm$realm()) {
                    return e;
                }
                throw new IllegalArgumentException("Cannot copy an object from another Realm instance.");
            }
        }
        Realm realm = (Realm) this.realm;
        if (realm.getTable(e.getClass()).hasPrimaryKey()) {
            return realm.copyToRealmOrUpdate(e);
        }
        return realm.copyToRealm(e);
    }

    public ListIterator<E> listIterator() {
        return listIterator(0);
    }

    private void checkValidView() {
        this.realm.checkIfValid();
        if (this.view != null) {
            if (this.view.isAttached()) {
                return;
            }
        }
        throw new IllegalStateException("Realm instance has been closed or this object or its parent has been deleted.");
    }

    public String toString() {
        int i;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(((this.realm != null ? 1 : 0) != 0 ? this.clazz : getClass()).getSimpleName());
        stringBuilder.append("@[");
        if ((this.realm != null ? 1 : 0) != 0) {
            i = (this.view == null || !this.view.isAttached()) ? 0 : 1;
            if (i == 0) {
                stringBuilder.append("invalid");
                stringBuilder.append("]");
                return stringBuilder.toString();
            }
        }
        for (i = 0; i < size(); i++) {
            if ((this.realm != null ? 1 : 0) != 0) {
                stringBuilder.append(((RealmObjectProxy) get(i)).realmGet$proxyState().getRow$realm().getIndex());
            } else {
                stringBuilder.append(System.identityHashCode(get(i)));
            }
            if (i < size() - 1) {
                stringBuilder.append(',');
            }
        }
        stringBuilder.append("]");
        return stringBuilder.toString();
    }

    public final void add(int i, E e) {
        if (e == null) {
            throw new IllegalArgumentException("RealmList does not accept null values");
        }
        if ((this.realm != null ? 1 : 0) != 0) {
            checkValidView();
            if (i >= 0) {
                if (i <= size()) {
                    this.view.insert((long) i, ((RealmObjectProxy) copyToRealmIfNeeded(e)).realmGet$proxyState().getRow$realm().getIndex());
                }
            }
            StringBuilder stringBuilder = new StringBuilder("Invalid index ");
            stringBuilder.append(i);
            stringBuilder.append(", size is ");
            stringBuilder.append(size());
            throw new IndexOutOfBoundsException(stringBuilder.toString());
        }
        this.unmanagedList.add(i, e);
        this.modCount++;
    }

    public final boolean add(E e) {
        if (e == null) {
            throw new IllegalArgumentException("RealmList does not accept null values");
        }
        if (this.realm != null) {
            checkValidView();
            this.view.add(((RealmObjectProxy) copyToRealmIfNeeded(e)).realmGet$proxyState().getRow$realm().getIndex());
        } else {
            this.unmanagedList.add(e);
        }
        this.modCount += 1;
        return true;
    }

    public final E set(int i, E e) {
        if (e == null) {
            throw new IllegalArgumentException("RealmList does not accept null values");
        }
        if ((this.realm != null ? 1 : null) == null) {
            return (RealmModel) this.unmanagedList.set(i, e);
        }
        checkValidView();
        RealmObjectProxy realmObjectProxy = (RealmObjectProxy) copyToRealmIfNeeded(e);
        E e2 = get(i);
        this.view.set((long) i, realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex());
        return e2;
    }

    public void clear() {
        if ((this.realm != null ? 1 : 0) != 0) {
            checkValidView();
            this.view.clear();
        } else {
            this.unmanagedList.clear();
        }
        this.modCount++;
    }

    public final E remove(int i) {
        E e;
        if ((this.realm != null ? 1 : 0) != 0) {
            checkValidView();
            e = get(i);
            this.view.remove((long) i);
        } else {
            e = (RealmModel) this.unmanagedList.remove(i);
        }
        this.modCount++;
        return e;
    }

    public boolean remove(Object obj) {
        if ((this.realm != null ? 1 : null) == null || this.realm.isInTransaction()) {
            return super.remove(obj);
        }
        throw new IllegalStateException("Objects can only be removed from inside a write transaction");
    }

    public boolean removeAll(java.util.Collection<?> collection) {
        if ((this.realm != null ? 1 : null) == null || this.realm.isInTransaction()) {
            return super.removeAll(collection);
        }
        throw new IllegalStateException("Objects can only be removed from inside a write transaction");
    }

    public final E get(int i) {
        if ((this.realm != null ? 1 : null) == null) {
            return (RealmModel) this.unmanagedList.get(i);
        }
        checkValidView();
        return this.realm.get$5a829220(this.clazz, this.view.getTargetRowIndex((long) i));
    }

    public int size() {
        if ((this.realm != null ? 1 : null) == null) {
            return this.unmanagedList.size();
        }
        checkValidView();
        long size = this.view.size();
        return size < 2147483647L ? (int) size : ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    }

    public boolean contains(Object obj) {
        if (!(this.realm != null)) {
            return this.unmanagedList.contains(obj);
        }
        this.realm.checkIfValid();
        if ((obj instanceof RealmObjectProxy) && ((RealmObjectProxy) obj).realmGet$proxyState().getRow$realm() == InvalidRow.INSTANCE) {
            return false;
        }
        Iterator it = iterator();
        while (it.hasNext()) {
            if (((RealmModel) it.next()).equals(obj)) {
                return true;
            }
        }
        return false;
    }

    public Iterator<E> iterator() {
        if ((this.realm != null ? (byte) 1 : (byte) 0) != (byte) 0) {
            return new RealmItr();
        }
        return super.iterator();
    }

    public ListIterator<E> listIterator(int i) {
        if ((this.realm != null ? 1 : null) != null) {
            return new RealmListItr(i);
        }
        return super.listIterator(i);
    }
}
