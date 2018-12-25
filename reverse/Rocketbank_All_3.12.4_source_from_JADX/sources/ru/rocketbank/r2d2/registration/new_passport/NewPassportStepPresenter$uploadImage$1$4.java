package ru.rocketbank.r2d2.registration.new_passport;

import rx.functions.Action1;

/* compiled from: NewPassportStepPresenter.kt */
final class NewPassportStepPresenter$uploadImage$1$4<T> implements Action1<Throwable> {
    final /* synthetic */ NewPassportStepView receiver$0;

    NewPassportStepPresenter$uploadImage$1$4(NewPassportStepView newPassportStepView) {
        this.receiver$0 = newPassportStepView;
    }

    public final void call(Throwable th) {
        this.receiver$0.hideProgress();
        this.receiver$0.showError("Не удалось загрузить");
    }
}
