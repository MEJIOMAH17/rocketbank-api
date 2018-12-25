package ru.rocketbank.r2d2.registration.new_passport;

import rx.functions.Action1;

/* compiled from: NewPassportStepPresenter.kt */
final class NewPassportStepPresenter$onReadyClicked$1$1<T> implements Action1<Void> {
    final /* synthetic */ NewPassportStepView receiver$0;

    NewPassportStepPresenter$onReadyClicked$1$1(NewPassportStepView newPassportStepView) {
        this.receiver$0 = newPassportStepView;
    }

    public final void call(Void voidR) {
        this.receiver$0.hideProgress();
        this.receiver$0.onReady();
    }
}
