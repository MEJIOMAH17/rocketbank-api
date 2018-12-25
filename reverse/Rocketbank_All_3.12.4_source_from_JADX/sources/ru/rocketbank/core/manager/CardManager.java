package ru.rocketbank.core.manager;

import android.support.v4.util.ArrayMap;
import android.util.Log;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.BinResponseData;
import ru.rocketbank.core.network.api.RocketAPI;
import rx.Observable;
import rx.android.schedulers.AndroidSchedulers;
import rx.subjects.BehaviorSubject;

/* compiled from: CardManager.kt */
public final class CardManager {
    private final String TAG = "CardManager";
    private final ArrayMap<String, BehaviorSubject<BinResponseData>> binCache = new ArrayMap();
    private final ReentrantLock lock = new ReentrantLock();
    private final RocketAPI rocketApi;

    public CardManager(RocketAPI rocketAPI) {
        Intrinsics.checkParameterIsNotNull(rocketAPI, "rocketApi");
        this.rocketApi = rocketAPI;
    }

    public final ArrayMap<String, BehaviorSubject<BinResponseData>> getBinCache() {
        return this.binCache;
    }

    public final Observable<BinResponseData> getBin(String str) {
        Intrinsics.checkParameterIsNotNull(str, "pan");
        if (str.length() < 6) {
            str = Observable.error((Throwable) new IllegalArgumentException("Pan lenght less then 6"));
            Intrinsics.checkExpressionValueIsNotNull(str, "Observable.error<BinResp…Pan lenght less then 6\"))");
            return str;
        }
        BehaviorSubject behaviorSubject;
        Observable<BinResponseData> observable;
        str = str.substring(0, 6);
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        this.lock.lock();
        try {
            behaviorSubject = (BehaviorSubject) this.binCache.get(str);
            if (behaviorSubject != null) {
                observable = behaviorSubject;
                this.lock.unlock();
                return observable;
            }
        } catch (Exception e) {
            Log.e(this.TAG, "Update cache failed", e);
        } catch (Throwable th) {
            this.lock.unlock();
        }
        this.lock.unlock();
        this.lock.lock();
        try {
            behaviorSubject = BehaviorSubject.create();
            Intrinsics.checkExpressionValueIsNotNull(behaviorSubject, "BehaviorSubject.create()");
            this.rocketApi.requestBin(str).observeOn(AndroidSchedulers.mainThread()).subscribe(new CardManager$getBin$subscription$1(this, behaviorSubject, str));
            this.binCache.put(str, behaviorSubject);
            observable = behaviorSubject;
        } catch (String str2) {
            Log.e(this.TAG, "Update cache failed", (Throwable) str2);
            str2 = Observable.error((Throwable) str2);
            Intrinsics.checkExpressionValueIsNotNull(str2, "subscription");
            return str2;
        } finally {
            observable = this.lock;
            observable.unlock();
        }
        return observable;
    }
}
