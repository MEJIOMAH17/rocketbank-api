package ru.rocketbank.r2d2.registration.new_passport;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.api.RegistrationApi;
import ru.rocketbank.core.network.model.new_passport.NewPassportBody;
import ru.rocketbank.core.utils.presenter.Presenter;
import ru.rocketbank.r2d2.RocketApplication;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;
import rx.schedulers.Schedulers;
import rx.subscriptions.Subscriptions;

/* compiled from: NewPassportStepPresenter.kt */
public final class NewPassportStepPresenter extends Presenter {
    @Deprecated
    public static final Companion Companion = new Companion();
    private static final Map<String, Integer> images = new LinkedHashMap();
    private final RegistrationApi api = RocketApplication.Companion.getInjector().getRegistrationApi();
    private Subscription subscription = Subscriptions.empty();
    private NewPassportStepView view;

    /* compiled from: NewPassportStepPresenter.kt */
    private static final class Companion {
        private Companion() {
        }

        public final Map<String, Integer> getImages() {
            return NewPassportStepPresenter.images;
        }
    }

    private final String imageFieldForStep(int i) {
        switch (i) {
            case 1:
                return "passport_main";
            case 2:
                return "passport_registration";
            default:
                return "previous_passport";
        }
    }

    public final RegistrationApi getApi() {
        return this.api;
    }

    public final void onAttach(NewPassportStepView newPassportStepView) {
        Intrinsics.checkParameterIsNotNull(newPassportStepView, "view");
        this.view = newPassportStepView;
    }

    public final void onDetach() {
        this.view = null;
    }

    public final void uploadImage(int i, String str) {
        Intrinsics.checkParameterIsNotNull(str, "path");
        NewPassportStepView newPassportStepView = this.view;
        if (newPassportStepView != null) {
            newPassportStepView.showProgress();
            this.subscription = Observable.create((OnSubscribe) new NewPassportStepPresenter$uploadImage$$inlined$run$lambda$1(this, str, i)).flatMap(new NewPassportStepPresenter$uploadImage$$inlined$run$lambda$2(this, str, i)).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe((Action1) new NewPassportStepPresenter$uploadImage$$inlined$run$lambda$3(newPassportStepView, this, str, i), (Action1) new NewPassportStepPresenter$uploadImage$1$4(newPassportStepView));
        }
    }

    public final void onReadyClicked(Long l) {
        NewPassportStepView newPassportStepView = this.view;
        if (newPassportStepView != null) {
            newPassportStepView.showProgress();
            this.api.uploadNewPassportImages(new NewPassportBody(images, l)).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.io()).subscribe((Action1) new NewPassportStepPresenter$onReadyClicked$1$1(newPassportStepView), (Action1) new NewPassportStepPresenter$onReadyClicked$1$2(newPassportStepView));
        }
    }
}
