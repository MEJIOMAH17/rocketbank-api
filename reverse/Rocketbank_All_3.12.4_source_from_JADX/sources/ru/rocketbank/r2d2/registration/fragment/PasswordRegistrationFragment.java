package ru.rocketbank.r2d2.registration.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import ru.rocketbank.core.events.EventHelper.IEvent;
import ru.rocketbank.core.events.PinActivationEvent;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.activities.StartupActivity;
import ru.rocketbank.r2d2.fragments.RegistrationFromFragment;
import ru.rocketbank.r2d2.registration.EnterPasswordFragment;
import ru.rocketbank.r2d2.registration.RegistrationStep;

public class PasswordRegistrationFragment extends RegistrationFromFragment {
    private static final String KEY_PLASTIC_CHECK_ID = "KEY_PLASTIC_CHECK_ID";
    ViewGroup content;
    private String plasticCheckId = null;

    private static class SubmitEvent implements IEvent {
        private SubmitEvent() {
        }
    }

    protected void updateModel(RegistrationStep registrationStep) {
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(C0859R.layout.fragment_migration_ready, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.content = (ViewGroup) view.findViewById(C0859R.id.content);
        if (bundle == null) {
            RocketApplication.Companion.getInjector().getDataManager();
            this.authorization.setToken(((RegistrationStep) getModel()).getStatusResponseData().getToken());
            replaceFragment(EnterPasswordFragment.newInstance());
            return;
        }
        this.plasticCheckId = bundle.getString("KEY_PLASTIC_CHECK_ID");
    }

    private void replaceFragment(Fragment fragment) {
        getChildFragmentManager().beginTransaction().setCustomAnimations(C0859R.anim.slide_in_right, C0859R.anim.slide_out_left).replace(C0859R.id.content, fragment).commit();
    }

    public void onStart() {
        super.onStart();
        View view = getView();
        if (view != null) {
            view = view.findViewById(C0859R.id.toolbarInclude);
            if (view != null) {
                view.setVisibility(8);
            }
        }
    }

    public void onEventMainThread(PinActivationEvent pinActivationEvent) {
        startActivity(new Intent(getActivity(), StartupActivity.class));
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("KEY_PLASTIC_CHECK_ID", this.plasticCheckId);
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

    public String getTitle() {
        return RocketApplication.getContext().getResources().getString(C0859R.string.step, new Object[]{Integer.valueOf(4)});
    }
}
