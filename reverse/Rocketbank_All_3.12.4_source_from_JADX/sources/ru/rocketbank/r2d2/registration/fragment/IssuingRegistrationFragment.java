package ru.rocketbank.r2d2.registration.fragment;

import android.os.Parcelable;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.registration.GenericFormFragment.FormContent;
import ru.rocketbank.r2d2.registration.RegistrationActivity;
import ru.rocketbank.r2d2.registration.RegistrationStep;
import ru.rocketbank.r2d2.registration.RegistrationStep.Step;

public class IssuingRegistrationFragment extends GenericRegistrationFragment {
    protected void onBottomButtonClicked() {
    }

    protected FormContent getFormContent() {
        return new FormContent().setTopHintTextRes(C0859R.string.migration_issuing_hint_top_text).setImageRes(C0859R.drawable.printcard).setBottomHintTextRes(C0859R.string.migration_issuing_hint_bottom_text).setButtonVisible(false);
    }

    public String getTitle() {
        return RocketApplication.getContext().getResources().getString(C0859R.string.step, new Object[]{Integer.valueOf(2)});
    }

    protected void onButtonClicked() {
        Parcelable registrationStep = new RegistrationStep();
        registrationStep.setStatusResponseData(((RegistrationStep) getModel()).getStatusResponseData());
        registrationStep.setStep(Step.DELIVERING);
        if (RegistrationActivity.DEMO) {
            finishStep(registrationStep);
        } else {
            finishStep(registrationStep);
        }
    }
}
