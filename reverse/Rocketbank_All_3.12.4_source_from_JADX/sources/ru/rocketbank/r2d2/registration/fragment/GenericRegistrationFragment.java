package ru.rocketbank.r2d2.registration.fragment;

import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import ru.rocketbank.core.network.api.RegistrationApi;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.registration.GenericFormFragment;
import ru.rocketbank.r2d2.registration.RegistrationStep;

public abstract class GenericRegistrationFragment extends GenericFormFragment<RegistrationStep, RegistrationApi> {

    /* renamed from: ru.rocketbank.r2d2.registration.fragment.GenericRegistrationFragment$1 */
    class C16111 implements OnClickListener {
        C16111() {
        }

        public void onClick(View view) {
            view.setEnabled(false);
            GenericRegistrationFragment.this.onButtonClicked();
            view.setEnabled(true);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.registration.fragment.GenericRegistrationFragment$2 */
    class C16122 implements OnClickListener {
        C16122() {
        }

        public void onClick(View view) {
            view.setEnabled(false);
            GenericRegistrationFragment.this.onBottomButtonClicked();
            view.setEnabled(true);
        }
    }

    protected void onBottomButtonClicked() {
    }

    protected void onButtonClicked() {
    }

    protected void updateModel(RegistrationStep registrationStep) {
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.api = getInjector().getRegistrationApi();
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    protected void initView() {
        super.initView();
        this.image.setColorFilter(ContextCompat.getColor(getContext(), C0859R.color.orange));
        this.button.setBackgroundResource(C0859R.drawable.orange_button_background);
        this.buttonBottom.setTextColor(ContextCompat.getColor(getContext(), C0859R.color.registration_bottom_button_text_color_selector));
        this.button.setOnClickListener(new C16111());
        this.buttonBottom.setOnClickListener(new C16122());
    }

    protected void onRequestCompleted(RegistrationStep registrationStep) {
        hideSpinner();
        if (registrationStep == null) {
            showSnack((int) C0859R.string.data_not_received);
            return;
        }
        finishStep(registrationStep);
        updateModel(registrationStep);
    }
}
