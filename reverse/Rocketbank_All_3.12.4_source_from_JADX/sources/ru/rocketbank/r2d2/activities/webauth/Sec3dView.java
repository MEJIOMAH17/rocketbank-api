package ru.rocketbank.r2d2.activities.webauth;

/* compiled from: Sec3dView.kt */
public interface Sec3dView {
    void cancel();

    void hideProgress();

    void onTimeOut();

    void showError();

    void showProgress();

    void updateButtons(boolean z);

    void updateTime(String str);
}
