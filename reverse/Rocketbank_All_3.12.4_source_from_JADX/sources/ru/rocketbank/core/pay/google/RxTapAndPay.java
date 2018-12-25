package ru.rocketbank.core.pay.google;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.tapandpay.TapAndPay;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import rx.Observable;
import rx.subjects.PublishSubject;

/* compiled from: RxTapAndPay.kt */
public final class RxTapAndPay extends BaseTapAndPay {
    public static final Companion Companion = new Companion();
    private final Observable<Unit> changesObservable = this.changesSubject.asObservable();
    private final PublishSubject<Unit> changesSubject = PublishSubject.create();

    /* compiled from: RxTapAndPay.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    /* compiled from: RxTapAndPay.kt */
    public enum RxTokenState {
    }

    public RxTapAndPay(GoogleApiClient googleApiClient, TapAndPay tapAndPay) {
        Intrinsics.checkParameterIsNotNull(googleApiClient, "googleApiClient");
        Intrinsics.checkParameterIsNotNull(tapAndPay, "tapAndPay");
        super(googleApiClient, tapAndPay);
    }

    public final Observable<String> getActiveWalledId() {
        Observable<String> flatMap = connectObservable().flatMap(new RxTapAndPay$getActiveWalledId$1(this));
        Intrinsics.checkExpressionValueIsNotNull(flatMap, "connectObservable().flat…}\n            }\n        }");
        return flatMap;
    }

    public final Observable<Pair<RxTokenState, Boolean>> getTokenStatus(String str) {
        Intrinsics.checkParameterIsNotNull(str, "token");
        str = connectObservable().flatMap(new RxTapAndPay$getTokenStatus$1(this, str));
        Intrinsics.checkExpressionValueIsNotNull(str, "connectObservable().flat…}\n            }\n        }");
        return str;
    }

    public final Observable<String> getEnvironment() {
        Observable<String> flatMap = connectObservable().flatMap(new RxTapAndPay$getEnvironment$1(this));
        Intrinsics.checkExpressionValueIsNotNull(flatMap, "connectObservable().flat…}\n            }\n        }");
        return flatMap;
    }
}
