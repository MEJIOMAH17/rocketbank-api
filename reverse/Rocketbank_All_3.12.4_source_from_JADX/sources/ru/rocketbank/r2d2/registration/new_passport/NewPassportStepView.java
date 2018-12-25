package ru.rocketbank.r2d2.registration.new_passport;

/* compiled from: NewPassportStepView.kt */
public interface NewPassportStepView {
    void changeButtonsEnabled(boolean z);

    void hideProgress();

    void nextStep(int i);

    void onReady();

    void showError(String str);

    void showProgress();
}
