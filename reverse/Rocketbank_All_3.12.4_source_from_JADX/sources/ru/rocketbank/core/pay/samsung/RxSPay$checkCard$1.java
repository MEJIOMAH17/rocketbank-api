package ru.rocketbank.core.pay.samsung;

import com.samsung.android.sdk.samsungpay.v2.card.Card;
import java.util.Collection;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.pay.samsung.RxSPay.Status;
import rx.Observable;
import rx.functions.Func1;

/* compiled from: RxSPay.kt */
final class RxSPay$checkCard$1<T, R> implements Func1<T, Observable<? extends R>> {
    final /* synthetic */ String $maskedPan;
    final /* synthetic */ RxSPay this$0;

    RxSPay$checkCard$1(RxSPay rxSPay, String str) {
        this.this$0 = rxSPay;
        this.$maskedPan = str;
    }

    public final /* bridge */ /* synthetic */ Object call(Object obj) {
        SPayStatus sPayStatus = (SPayStatus) obj;
        if (sPayStatus.getStatus() == 2) {
            return RxSPay.access$getCards(this.this$0).map(new Func1<T, R>() {
                public final /* bridge */ /* synthetic */ Object call(Object obj) {
                    List list = (List) obj;
                    String str = this.$maskedPan;
                    int length = this.$maskedPan.length() - 4;
                    int length2 = this.$maskedPan.length();
                    if (str == null) {
                        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                    }
                    str = str.substring(length, length2);
                    Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    Intrinsics.checkExpressionValueIsNotNull(list, "it");
                    Iterable<Card> iterable = list;
                    length2 = 0;
                    if (!(iterable instanceof Collection) || !((Collection) iterable).isEmpty()) {
                        for (Card cardInfo : iterable) {
                            if (Intrinsics.areEqual(cardInfo.getCardInfo().getString("last4Fpan"), str)) {
                                length2++;
                            }
                        }
                    }
                    return length2 > 0 ? Status.CARD_ADDED : Status.NO_CARD;
                }
            });
        }
        switch (sPayStatus.getStatus()) {
            case -357:
                obj = Status.UPDATE_NEED;
                break;
            case -356:
            case 1:
                obj = Status.NOT_READY;
                break;
            case null:
                obj = Status.NOT_SUPPORTED;
                break;
            default:
                obj = Status.NOT_SUPPORTED;
                break;
        }
        return Observable.just(obj);
    }
}
