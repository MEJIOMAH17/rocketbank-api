package ru.rocketbank.core.manager;

import java.util.Currency;
import java.util.Map;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.utils.CurrencyData;

/* compiled from: CurrencyManager.kt */
public final class CurrencyManager {
    private final Map<String, String> currencies = new CurrencyData().getHashMap();
    private final Currency rubCurrency = Currency.getInstance("RUB");
    private final String rubCurrencySymbol = "₽";

    public final String getCurrencySymbolRub() {
        return this.rubCurrencySymbol;
    }

    public final String getCurrencySymbol(String str) {
        if (str != null) {
            if (str == null) {
                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
            }
            String toUpperCase = str.toUpperCase();
            Intrinsics.checkExpressionValueIsNotNull(toUpperCase, "(this as java.lang.String).toUpperCase()");
            if (toUpperCase != null) {
                if (Intrinsics.areEqual(toUpperCase, "RUB")) {
                    return this.rubCurrencySymbol;
                }
                toUpperCase = (String) this.currencies.get(toUpperCase);
                if (toUpperCase != null) {
                    str = toUpperCase;
                }
                return str;
            }
        }
        return null;
    }
}
