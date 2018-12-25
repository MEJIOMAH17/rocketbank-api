package io.realm.rx;

import io.realm.DynamicRealm;
import io.realm.DynamicRealmObject;
import io.realm.Realm;
import io.realm.RealmChangeListener;
import io.realm.RealmList;
import io.realm.RealmModel;
import io.realm.RealmResults;
import java.util.IdentityHashMap;
import java.util.Map;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Subscriber;
import rx.functions.Action0;
import rx.subscriptions.Subscriptions;

public final class RealmObservableFactory implements RxObservableFactory {
    ThreadLocal<StrongReferenceCounter<RealmList>> listRefs = new C07552();
    ThreadLocal<StrongReferenceCounter<RealmModel>> objectRefs = new C07563();
    ThreadLocal<StrongReferenceCounter<RealmResults>> resultsRefs = new C07541();

    /* renamed from: io.realm.rx.RealmObservableFactory$1 */
    class C07541 extends ThreadLocal<StrongReferenceCounter<RealmResults>> {
        C07541() {
        }

        protected final /* bridge */ /* synthetic */ Object initialValue() {
            return new StrongReferenceCounter();
        }
    }

    /* renamed from: io.realm.rx.RealmObservableFactory$2 */
    class C07552 extends ThreadLocal<StrongReferenceCounter<RealmList>> {
        C07552() {
        }

        protected final /* bridge */ /* synthetic */ Object initialValue() {
            return new StrongReferenceCounter();
        }
    }

    /* renamed from: io.realm.rx.RealmObservableFactory$3 */
    class C07563 extends ThreadLocal<StrongReferenceCounter<RealmModel>> {
        C07563() {
        }

        protected final /* bridge */ /* synthetic */ Object initialValue() {
            return new StrongReferenceCounter();
        }
    }

    static class StrongReferenceCounter<K> {
        private final Map<K, Integer> references;

        private StrongReferenceCounter() {
            this.references = new IdentityHashMap();
        }

        public final void acquireReference(K k) {
            Integer num = (Integer) this.references.get(k);
            if (num == null) {
                this.references.put(k, Integer.valueOf(1));
            } else {
                this.references.put(k, Integer.valueOf(num.intValue() + 1));
            }
        }

        public final void releaseReference(K k) {
            Integer num = (Integer) this.references.get(k);
            if (num == null) {
                throw new IllegalStateException("Object does not have any references: ".concat(String.valueOf(k)));
            } else if (num.intValue() > 1) {
                this.references.put(k, Integer.valueOf(num.intValue() - 1));
            } else if (num.intValue() == 1) {
                this.references.remove(k);
            } else {
                throw new IllegalStateException("Invalid reference count: ".concat(String.valueOf(num)));
            }
        }
    }

    public final int hashCode() {
        return 37;
    }

    public final <E extends RealmModel> Observable<RealmResults<E>> from(Realm realm, final RealmResults<E> realmResults) {
        realm = realm.getConfiguration();
        return Observable.create(new OnSubscribe<RealmResults<E>>() {
            public final /* bridge */ /* synthetic */ void call(Object obj) {
                final Subscriber subscriber = (Subscriber) obj;
                final Realm instance = Realm.getInstance(realm);
                ((StrongReferenceCounter) RealmObservableFactory.this.resultsRefs.get()).acquireReference(realmResults);
                final RealmChangeListener c12891 = new RealmChangeListener<RealmResults<E>>() {
                    public final /* bridge */ /* synthetic */ void onChange$5d527811() {
                        if (!subscriber.isUnsubscribed()) {
                            subscriber.onNext(realmResults);
                        }
                    }
                };
                realmResults.addChangeListener(c12891);
                subscriber.add(Subscriptions.create(new Action0() {
                    public final void call() {
                        realmResults.removeChangeListener(c12891);
                        instance.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.resultsRefs.get()).releaseReference(realmResults);
                    }
                }));
                subscriber.onNext(realmResults);
            }
        });
    }

    public final Observable<RealmResults<DynamicRealmObject>> from(DynamicRealm dynamicRealm, final RealmResults<DynamicRealmObject> realmResults) {
        dynamicRealm = dynamicRealm.getConfiguration();
        return Observable.create(new OnSubscribe<RealmResults<DynamicRealmObject>>() {
            public final /* bridge */ /* synthetic */ void call(Object obj) {
                final Subscriber subscriber = (Subscriber) obj;
                final DynamicRealm instance = DynamicRealm.getInstance(dynamicRealm);
                ((StrongReferenceCounter) RealmObservableFactory.this.resultsRefs.get()).acquireReference(realmResults);
                final RealmChangeListener c12901 = new RealmChangeListener<RealmResults<DynamicRealmObject>>() {
                    public final /* bridge */ /* synthetic */ void onChange$5d527811() {
                        if (!subscriber.isUnsubscribed()) {
                            subscriber.onNext(realmResults);
                        }
                    }
                };
                realmResults.addChangeListener(c12901);
                subscriber.add(Subscriptions.create(new Action0() {
                    public final void call() {
                        realmResults.removeChangeListener(c12901);
                        instance.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.resultsRefs.get()).releaseReference(realmResults);
                    }
                }));
                subscriber.onNext(realmResults);
            }
        });
    }

    public final boolean equals(Object obj) {
        return obj instanceof RealmObservableFactory;
    }
}
