package ru.rocketbank.core.utils.presenter;

import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import rx.Observable;
import rx.Subscription;
import rx.functions.Action1;
import rx.subjects.BehaviorSubject;

/* compiled from: RxPresenter.kt */
public class RxPresenter<Z> extends Presenter {
    private static final String CACHED_REQUSTS = "CACHED_REQUSTS";
    public static final Companion Companion = new Companion();
    private static final String INSTANCE_ID = "INSTANCE_ID";
    private static final String REQUEST_IDS = "REQUEST_IDS";
    private static final String TAG = "RxPresenter";
    private SparseArray<Parcelable> requestCache = new SparseArray();
    private ArrayList<Integer> requestedIds = new ArrayList();
    private SparseArray<Subscription> subscriptionsMap = new SparseArray();
    private final BehaviorSubject<Z> targetPublish;

    /* compiled from: RxPresenter.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public RxPresenter() {
        BehaviorSubject create = BehaviorSubject.create();
        Intrinsics.checkExpressionValueIsNotNull(create, "BehaviorSubject.create()");
        this.targetPublish = create;
    }

    public final BehaviorSubject<Z> getTargetPublish() {
        return this.targetPublish;
    }

    public final ArrayList<Integer> getRequestedIds() {
        return this.requestedIds;
    }

    public final void setRequestedIds(ArrayList<Integer> arrayList) {
        Intrinsics.checkParameterIsNotNull(arrayList, "<set-?>");
        this.requestedIds = arrayList;
    }

    public final SparseArray<Parcelable> getRequestCache() {
        return this.requestCache;
    }

    public final void setRequestCache(SparseArray<Parcelable> sparseArray) {
        Intrinsics.checkParameterIsNotNull(sparseArray, "<set-?>");
        this.requestCache = sparseArray;
    }

    public final SparseArray<Subscription> getSubscriptionsMap() {
        return this.subscriptionsMap;
    }

    public final void setSubscriptionsMap(SparseArray<Subscription> sparseArray) {
        Intrinsics.checkParameterIsNotNull(sparseArray, "<set-?>");
        this.subscriptionsMap = sparseArray;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            Log.v(TAG, "Restoring state");
            ArrayList integerArrayList = bundle.getIntegerArrayList(REQUEST_IDS);
            Intrinsics.checkExpressionValueIsNotNull(integerArrayList, "savedInstanceState.getIn…gerArrayList(REQUEST_IDS)");
            this.requestedIds = integerArrayList;
            bundle = bundle.getSparseParcelableArray(CACHED_REQUSTS);
            Intrinsics.checkExpressionValueIsNotNull(bundle, "savedInstanceState.getSp…ableArray(CACHED_REQUSTS)");
            this.requestCache = bundle;
            bundle = TAG;
            StringBuilder stringBuilder = new StringBuilder("requestedIds: ");
            stringBuilder.append(this.requestedIds.size());
            Log.v(bundle, stringBuilder.toString());
            bundle = TAG;
            stringBuilder = new StringBuilder("requestCache: ");
            stringBuilder.append(this.requestCache.size());
            Log.v(bundle, stringBuilder.toString());
        } else {
            Log.v(TAG, "create new");
        }
        this.targetPublish.subscribe();
    }

    public final void removeInstance(int i) {
        this.requestedIds.remove(Integer.valueOf(i));
        Subscription subscription = (Subscription) this.subscriptionsMap.get(i);
        if (subscription != null) {
            if (!subscription.isUnsubscribed()) {
                subscription.unsubscribe();
            }
            this.subscriptionsMap.remove(i);
        }
        this.requestCache.remove(i);
    }

    public final <T> void simpleCall(int i, Function0<? extends Observable<T>> function0, Function2<? super Z, ? super T, Unit> function2, Function2<? super Z, ? super Throwable, Unit> function22) {
        Intrinsics.checkParameterIsNotNull(function0, "factory");
        createNewInstance(i, new RxPresenter$simpleCall$1(this, function2, function22, function0, i));
    }

    public static /* bridge */ /* synthetic */ void singleCallOrRestart$default(RxPresenter rxPresenter, int i, Function0 function0, Function2 function2, Function2 function22, Function2 function23, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: singleCallOrRestart");
        }
        if ((i2 & 16) != 0) {
            function23 = null;
        }
        rxPresenter.singleCallOrRestart(i, function0, function2, function22, function23);
    }

    public final <T> void singleCallOrRestart(int i, Function0<? extends Observable<T>> function0, Function2<? super Z, ? super T, Unit> function2, Function2<? super Z, ? super Throwable, Unit> function22, Function2<? super Z, ? super T, Unit> function23) {
        Intrinsics.checkParameterIsNotNull(function0, "factory");
        if (this.requestedIds.contains(Integer.valueOf(i))) {
            if (function23 == null) {
                function23 = function2;
            }
            if (isRestarted()) {
                Object obj = this.requestCache.get(i);
                if (obj != null) {
                    Observable.just(obj).compose(deliverCacheSingle(i, this.requestCache)).subscribe(split(function23, null));
                    return;
                }
                removeInstance(i);
                createNewInstance(i, (Function0) new RxPresenter$singleCallOrRestart$1(this, function2, function22, function0, i));
                return;
            }
            function0 = this.requestCache.get(i);
            if (function0 != null) {
                Observable.just(function0).compose(deliverCacheSingle(i, this.requestCache)).subscribe(split(function23, null));
            }
            return;
        }
        createNewInstance(i, (Function0) new RxPresenter$singleCallOrRestart$2(this, function2, function22, function0, i));
    }

    public static /* bridge */ /* synthetic */ void singleCallOrReplay$default(RxPresenter rxPresenter, int i, Function0 function0, Function2 function2, Function2 function22, Function2 function23, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: singleCallOrReplay");
        }
        if ((i2 & 16) != 0) {
            function23 = null;
        }
        rxPresenter.singleCallOrReplay(i, function0, function2, function22, function23);
    }

    public final <T> void singleCallOrReplay(int i, Function0<? extends Observable<T>> function0, Function2<? super Z, ? super T, Unit> function2, Function2<? super Z, ? super Throwable, Unit> function22, Function2<? super Z, ? super T, Unit> function23) {
        Intrinsics.checkParameterIsNotNull(function0, "factory");
        if (this.requestedIds.contains(Integer.valueOf(i))) {
            Log.v(TAG, "singleCallOrReplay: Requested");
            if (function23 != null) {
                function2 = function23;
            }
            if (isRestarted() != null) {
                Log.v(TAG, "singleCallOrReplay: restarted");
                function0 = this.requestCache.get(i);
                if (function0 != null) {
                    Log.v(TAG, "singleCallOrReplay: sending cached value");
                    Observable.just(function0).compose(deliverCacheSingle(i, this.requestCache)).subscribe(split(function2, null));
                    return;
                }
                Log.v(TAG, "singleCallOrReplay: sending error: no result");
                Observable.error((Throwable) new SingleCallRestartedException()).compose(deliverCacheSingle(i, this.requestCache)).subscribe(split(null, function22));
                return;
            }
            Log.v(TAG, "singleCallOrReplay: not restarted");
            function0 = this.requestCache.get(i);
            if (function0 != null) {
                Log.v(TAG, "singleCallOrReplay: sending cached result");
                Observable.just(function0).compose(deliverCacheSingle(i, this.requestCache)).subscribe(split(function2, null));
            }
            return;
        }
        createNewInstance(i, (Function0) new RxPresenter$singleCallOrReplay$1(this, function2, function22, function0, i));
    }

    public final void createNewInstance(int i, Function0<? extends Subscription> function0) {
        Intrinsics.checkParameterIsNotNull(function0, "instanceCreation");
        Log.v("RXPR", "Create new instance");
        this.requestedIds.add(Integer.valueOf(i));
        this.subscriptionsMap.put(i, (Subscription) function0.invoke());
    }

    public final <T> DeliverCacheSingle<Z, T> deliverCacheSingle(int i, SparseArray<Parcelable> sparseArray) {
        Intrinsics.checkParameterIsNotNull(sparseArray, "requestId");
        return new DeliverCacheSingle(i, sparseArray, this.targetPublish);
    }

    public final <T> DeliverSimple<Z, T> deliverSimple(int i) {
        return new DeliverSimple(i, this.targetPublish);
    }

    public final <T> Action1<Delivery<Z, T>> split(Function2<? super Z, ? super T, Unit> function2, Function2<? super Z, ? super Throwable, Unit> function22) {
        return new RxPresenter$split$1(function2, function22);
    }

    public void onSavedInstanceState(Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "outState");
        super.onSavedInstanceState(bundle);
        Log.v(TAG, "Saving state");
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder("Saving requestedIds: ");
        stringBuilder.append(this.requestedIds.size());
        Log.v(str, stringBuilder.toString());
        str = TAG;
        stringBuilder = new StringBuilder("Saving requestCache: ");
        stringBuilder.append(this.requestCache.size());
        Log.v(str, stringBuilder.toString());
        bundle.putSparseParcelableArray(CACHED_REQUSTS, this.requestCache);
        bundle.putIntegerArrayList(REQUEST_IDS, this.requestedIds);
    }

    public void onDestroy() {
        super.onDestroy();
        int size = this.subscriptionsMap.size() - 1;
        if (size >= 0) {
            int i = 0;
            while (true) {
                Subscription subscription = (Subscription) this.subscriptionsMap.valueAt(i);
                if (subscription != null) {
                    subscription.unsubscribe();
                }
                this.subscriptionsMap.removeAt(i);
                if (i == size) {
                    break;
                }
                i++;
            }
        }
        this.targetPublish.onCompleted();
    }

    public void onAttached(Object obj) {
        Intrinsics.checkParameterIsNotNull(obj, "target");
        super.onAttached(obj);
        Log.v(TAG, "onAttached");
        this.targetPublish.onNext(obj);
    }

    public void onDetached(Object obj) {
        Intrinsics.checkParameterIsNotNull(obj, "target");
        super.onDetached(obj);
        Log.v(TAG, "onDetached");
        this.targetPublish.onNext(null);
    }
}
