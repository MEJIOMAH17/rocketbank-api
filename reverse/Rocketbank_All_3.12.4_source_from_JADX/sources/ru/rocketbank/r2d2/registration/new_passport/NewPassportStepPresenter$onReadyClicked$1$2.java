package ru.rocketbank.r2d2.registration.new_passport;

import rx.functions.Action1;

/* compiled from: NewPassportStepPresenter.kt */
final class NewPassportStepPresenter$onReadyClicked$1$2<T> implements Action1<Throwable> {
    final /* synthetic */ NewPassportStepView receiver$0;

    NewPassportStepPresenter$onReadyClicked$1$2(NewPassportStepView newPassportStepView) {
        this.receiver$0 = newPassportStepView;
    }

    public final void call(Throwable th) {
        this.receiver$0.hideProgress();
        this.receiver$0.showError("Произошла ошибка");
    }
}
