package ru.rocketbank.r2d2.registration.fragment;

import okhttp3.MultipartBody.Part;
import ru.rocketbank.core.network.api.RegistrationApi;
import ru.rocketbank.core.network.model.UploadImageResponse;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.activities.MigrationActivity;
import ru.rocketbank.r2d2.registration.GenericFormFragment.FormContent;
import ru.rocketbank.r2d2.registration.RegistrationStep;
import ru.rocketbank.r2d2.registration.RegistrationStep.Step;
import rx.Observable;
import rx.functions.Action1;
import rx.functions.Func1;

public class PassportRegistrationFragment extends PhotoRegistrationFragment {

    /* renamed from: ru.rocketbank.r2d2.registration.fragment.PassportRegistrationFragment$2 */
    class C20342 implements Action1<UploadImageResponse> {
        C20342() {
        }

        public void call(UploadImageResponse uploadImageResponse) {
            RocketApplication.getInjector().getAnalyticsManager().leadPassportFirst();
        }
    }

    protected int getHintTopReadyTextRes() {
        return C0859R.string.migration_needs_passport_hint_top_ready_text;
    }

    protected int getImageRes() {
        return C0859R.drawable.pass_a;
    }

    public String getTitle() {
        return "Регистрация";
    }

    protected Observable<RegistrationStep> sendPhoto(Part part) {
        final RegistrationStep registrationStep = (RegistrationStep) getModel();
        registrationStep.setStep(Step.NEEDS_REGISTRATION);
        if (!MigrationActivity.DEMO) {
            return ((RegistrationApi) getApi()).uploadImage(part, false).doOnNext(new Action1<UploadImageResponse>() {
                public void call(UploadImageResponse uploadImageResponse) {
                    registrationStep.setPassportPageId(uploadImageResponse.getImage().getId());
                }
            }).doOnNext(new C20342()).map(new Func1<UploadImageResponse, RegistrationStep>() {
                public RegistrationStep call(UploadImageResponse uploadImageResponse) {
                    return registrationStep;
                }
            });
        }
        finishStep(registrationStep);
        return Observable.just(null);
    }

    protected FormContent getFormContent() {
        return new FormContent().setTopHintTextRes(C0859R.string.migration_needs_passport_hint_top_text).setBottomHintTextRes(C0859R.string.migration_needs_passport_hint_bottom_text).setButtonTextRes(C0859R.string.migration_needs_passport_button_caption);
    }
}
