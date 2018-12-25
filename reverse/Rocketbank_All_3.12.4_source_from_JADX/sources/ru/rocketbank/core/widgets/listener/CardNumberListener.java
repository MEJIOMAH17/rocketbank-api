package ru.rocketbank.core.widgets.listener;

/* compiled from: CardNumberListener.kt */
public interface CardNumberListener {
    void allCardIsValid(String str, String str2, String str3);

    void binReady(String str);

    void cancelBin();

    void cardChanged();

    void cardInvalid();

    void cardNumberIsInvalid(String str);

    void cardNumberIsValid(String str);

    void cvvIsInvalid();

    void cvvIsValid();

    void dateIsInvalid();

    void dateIsValid();
}
