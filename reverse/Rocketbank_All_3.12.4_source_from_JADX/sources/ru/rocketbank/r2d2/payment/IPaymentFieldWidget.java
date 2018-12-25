package ru.rocketbank.r2d2.payment;

import ru.rocketbank.core.model.provider.ProviderField;

public interface IPaymentFieldWidget {

    public interface OnPaymentFieldChangedListener {
        void onPaymentFieldChanged(ProviderField providerField, IPaymentFieldWidget iPaymentFieldWidget);
    }

    void clearError();

    String getParameterValue();

    boolean isValid();

    void setError(String str);

    void setOnPaymentFieldChangedListener(OnPaymentFieldChangedListener onPaymentFieldChangedListener);

    void setValue(String str);

    void showKeyboard();
}
