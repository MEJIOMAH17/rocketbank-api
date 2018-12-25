package io.card.payment.i18n;

public interface SupportedLocale<E extends Enum<?>> {
    String getAdaptedDisplay(E e, String str);

    String getName();
}
