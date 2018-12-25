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

public class PassportRegRegistrationFragment extends PhotoRegistrationFragment {

    /* renamed from: ru.rocketbank.r2d2.registration.fragment.PassportRegRegistrationFragment$2 */
    class C20322 implements Action1<UploadImageResponse> {
        C20322() {
        }

        public void call(UploadImageResponse uploadImageResponse) {
            RocketApplication.Companion.getInjector().getAnalyticsManager().leadPassportSecond();
        }
    }

    protected int getHintTopReadyTextRes() {
        return C0859R.string.migration_needs_registration_hint_top_ready_text;
    }

    protected int getImageRes() {
        return C0859R.drawable.pass_b;
    }

    protected Observable<RegistrationStep> sendPhoto(Part part) {
        final RegistrationStep registrationStep = (RegistrationStep) getModel();
        registrationStep.setStep(Step.FILL_FORM);
        if (!MigrationActivity.DEMO) {
            return ((RegistrationApi) getApi()).uploadImage(part, false).doOnNext(new Action1<UploadImageResponse>() {
                public void call(UploadImageResponse uploadImageResponse) {
                    registrationStep.setRegistrationPageId(uploadImageResponse.getImage().getId());
                }
            }).doOnNext(new C20322()).map(new Func1<UploadImageResponse, RegistrationStep>() {
                public RegistrationStep call(UploadImageResponse uploadImageResponse) {
                    return registrationStep;
                }
            });
        }
        finishStep(registrationStep);
        return Observable.just(null);
    }

    public String getTitle() {
        return RocketApplication.getContext().getResources().getString(C0859R.string.step, new Object[]{Integer.valueOf(1)});
    }

    protected FormContent getFormContent() {
        return new FormContent().setTopHintTextRes(C0859R.string.migration_needs_passport_registration_hint_top_text).setBottomHintTextRes(C0859R.string.migration_needs_passport_registration_hint_bottom_text).setButtonTextRes(C0859R.string.migration_needs_passport_button_caption);
    }
}
