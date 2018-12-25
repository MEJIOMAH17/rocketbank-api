package ru.rocketbank.r2d2.registration.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import ru.rocketbank.core.events.CheckCardEvent;
import ru.rocketbank.core.events.EventHelper;
import ru.rocketbank.core.events.EventHelper.IEvent;
import ru.rocketbank.core.events.PinActivationEvent;
import ru.rocketbank.core.events.RetryEvent;
import ru.rocketbank.core.model.PrivacyResponse;
import ru.rocketbank.core.model.migration.UpdateTitleEvent;
import ru.rocketbank.core.network.api.RegistrationApi;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.activities.AbstractActivity;
import ru.rocketbank.r2d2.activities.ChangeCodeActivity;
import ru.rocketbank.r2d2.activities.StartupActivity;
import ru.rocketbank.r2d2.fragments.CheckCardFragment;
import ru.rocketbank.r2d2.fragments.EnterPinFragment;
import ru.rocketbank.r2d2.fragments.NextButtonListener;
import ru.rocketbank.r2d2.fragments.RegistrationFromFragment;
import ru.rocketbank.r2d2.helpers.UIHelper;
import ru.rocketbank.r2d2.registration.GenericFormFragment.FormContent;
import ru.rocketbank.r2d2.registration.RegistrationStep;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.schedulers.Schedulers;

public class PinRegistrationFragment extends RegistrationFromFragment implements NextButtonListener {
    private static final String KEY_PLASTIC_CHECK_ID = "KEY_PLASTIC_CHECK_ID";
    private String plasticCheckId = null;

    /* renamed from: ru.rocketbank.r2d2.registration.fragment.PinRegistrationFragment$1 */
    class C16131 implements OnClickListener {
        C16131() {
        }

        public void onClick(View view) {
            view = EventHelper.INSTANCE;
            EventHelper.send(new RetryEvent());
        }
    }

    private static class SubmitEvent implements IEvent {
        private SubmitEvent() {
        }
    }

    public static class AttentionRegistrationFragment extends GenericRegistrationFragment {

        /* renamed from: ru.rocketbank.r2d2.registration.fragment.PinRegistrationFragment$AttentionRegistrationFragment$1 */
        class C20391 implements Action1<PrivacyResponse> {

            /* renamed from: ru.rocketbank.r2d2.registration.fragment.PinRegistrationFragment$AttentionRegistrationFragment$1$2 */
            class C20372 implements Action0 {
                C20372() {
                }

                public void call() {
                    EventHelper eventHelper = EventHelper.INSTANCE;
                    EventHelper.send(new SubmitEvent());
                }
            }

            /* renamed from: ru.rocketbank.r2d2.registration.fragment.PinRegistrationFragment$AttentionRegistrationFragment$1$3 */
            class C20383 implements Action0 {
                C20383() {
                }

                public void call() {
                    System.exit(0);
                }
            }

            C20391() {
            }

            public void call(PrivacyResponse privacyResponse) {
                final AbstractActivity abstractActivity = (AbstractActivity) AttentionRegistrationFragment.this.getActivity();
                UIHelper.showPrivacyDialog(abstractActivity, privacyResponse.getUrl(), new Action0() {
                    public void call() {
                        abstractActivity.hideProgressDialog();
                    }
                }, new C20372(), new C20383());
            }
        }

        /* renamed from: ru.rocketbank.r2d2.registration.fragment.PinRegistrationFragment$AttentionRegistrationFragment$2 */
        class C20402 implements Action1<Throwable> {
            C20402() {
            }

            public void call(Throwable th) {
                AttentionRegistrationFragment.this.onError(th);
            }
        }

        protected FormContent getFormContent() {
            return new FormContent().setTopHintTextRes(C0859R.string.registration_ready_hint_top_text).setImageRes(C0859R.drawable.yees).setBottomHintTextRes(C0859R.string.registration_ready_hint_bottom_text).setButtonTextRes(C0859R.string.migration_next).setBottomButtonVisible(false);
        }

        protected void onButtonClicked() {
            onStartButtonClick();
        }

        public void onStartButtonClick() {
            ((AbstractActivity) getActivity()).showProgressDialog();
            ((RegistrationApi) getApi()).openPrivacy().subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C20391(), new C20402());
        }
    }

    protected void updateModel(RegistrationStep registrationStep) {
    }

    public void updateNextButton(Fragment fragment) {
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(C0859R.layout.fragment_migration_ready, viewGroup, false);
    }

    public String getTitle() {
        return RocketApplication.getContext().getResources().getString(C0859R.string.step, new Object[]{Integer.valueOf(4)});
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (bundle == null) {
            view = new AttentionRegistrationFragment();
            view.setArguments(getArguments());
            replaceFragment(view);
            bundle = EventHelper.INSTANCE;
            EventHelper.send(new UpdateTitleEvent(view.getTitle()));
            return;
        }
        this.plasticCheckId = bundle.getString("KEY_PLASTIC_CHECK_ID");
    }

    private void replaceFragment(Fragment fragment) {
        getChildFragmentManager().beginTransaction().setCustomAnimations(C0859R.anim.slide_in_right, C0859R.anim.slide_out_left).replace(C0859R.id.content, fragment).commit();
    }

    public void onEventMainThread(PinActivationEvent pinActivationEvent) {
        startActivity(new Intent(getActivity(), StartupActivity.class));
    }

    public void onEventMainThread(CheckCardEvent checkCardEvent) {
        if (checkCardEvent.getException() != null) {
            UIHelper.showSnackWithError(checkCardEvent.getView(), checkCardEvent.getException(), C0859R.string.retry, new C16131());
            return;
        }
        checkCardEvent = checkCardEvent.getPlasticsCheckResponse();
        if (checkCardEvent.response == null || checkCardEvent.response.getStatus() == Callback.DEFAULT_DRAG_ANIMATION_DURATION) {
            if (!(checkCardEvent.plastic == null || checkCardEvent.plastic.getValidation() == null)) {
                if (checkCardEvent.plastic.getValidation().getId() != null) {
                    this.plasticCheckId = checkCardEvent.plastic.getValidation().getId();
                    checkCardEvent = ((RegistrationStep) getModel()).getStatusResponseData().getPin();
                    replaceFragment(EnterPinFragment.newInstance(checkCardEvent.getPinText(), checkCardEvent.getCheckCard().getToken(), this.plasticCheckId));
                    return;
                }
            }
            showSnack((int) C0859R.string.data_not_received);
            return;
        }
        showSnack((String) checkCardEvent.response.getDescription());
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("KEY_PLASTIC_CHECK_ID", this.plasticCheckId);
    }

    public void onEventMainThread(SubmitEvent submitEvent) {
        submitEvent = ((RegistrationStep) getModel()).getStatusResponseData().getPin();
        if (submitEvent != null) {
            submitEvent = CheckCardFragment.newInstance(submitEvent.getCheckCard());
            submitEvent.getArguments().putBoolean(ChangeCodeActivity.KEY_IS_ACTIVATION, true);
            replaceFragment(submitEvent);
        }
    }

    public void onNextButtonClick() {
        Fragment findFragmentById = getChildFragmentManager().findFragmentById(C0859R.id.content);
        if (findFragmentById instanceof NextButtonListener) {
            ((NextButtonListener) findFragmentById).onNextButtonClick();
        }
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
