package ru.rocketbank.r2d2.shop;

import com.facebook.appevents.AppEventsConstants;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.utils.MoneyFormatter;

/* compiled from: ShopUtils.kt */
final class ShopUtilsKt$amountAnimation$format$1 extends Lambda implements Function1<Double, String> {
    final /* synthetic */ MoneyFormatter $floorMoneyFormatter;

    ShopUtilsKt$amountAnimation$format$1(MoneyFormatter moneyFormatter) {
        this.$floorMoneyFormatter = moneyFormatter;
        super(1);
    }

    public final String invoke(Double d) {
        if (d != null) {
            if (!Intrinsics.areEqual$3bd129e3(d)) {
                return this.$floorMoneyFormatter.format(d.doubleValue(), "", false);
            }
        }
        return AppEventsConstants.EVENT_PARAM_VALUE_NO;
    }
}
