package ru.rocketbank.r2d2.fragments.migration.fragment;

import android.os.Bundle;
import android.support.design.widget.Snackbar;
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
import ru.rocketbank.core.model.migration.Migration;
import ru.rocketbank.core.model.migration.Migration.Status;
import ru.rocketbank.core.model.migration.UpdateTitleEvent;
import ru.rocketbank.core.network.model.UserResponse;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.activities.AbstractActivity;
import ru.rocketbank.r2d2.activities.MigrationActivity;
import ru.rocketbank.r2d2.fragments.CheckCardFragment;
import ru.rocketbank.r2d2.fragments.EnterPinFragment;
import ru.rocketbank.r2d2.helpers.UIHelper;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.schedulers.Schedulers;

public class ReadyMigrationFragment extends MigrationFragment {
    private static final String KEY_PLASTIC_CHECK_ID = "KEY_PLASTIC_CHECK_ID";
    private ViewGroup content;
    private String plasticCheckId = null;

    /* renamed from: ru.rocketbank.r2d2.fragments.migration.fragment.ReadyMigrationFragment$3 */
    class C15473 implements OnClickListener {
        C15473() {
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

    /* renamed from: ru.rocketbank.r2d2.fragments.migration.fragment.ReadyMigrationFragment$1 */
    class C20011 implements Action1<UserResponse> {
        C20011() {
        }

        public void call(UserResponse userResponse) {
            if (userResponse.getUser() == null) {
                ReadyMigrationFragment.this.showSnack((int) C0859R.string.data_not_received);
                ReadyMigrationFragment.this.hideSpinner();
            } else {
                ReadyMigrationFragment.this.authorization.setUserModel(userResponse.getUser());
            }
            ReadyMigrationFragment.this.execute(ReadyMigrationFragment.this.getMigrationApi().getJoining());
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.migration.fragment.ReadyMigrationFragment$2 */
    class C20022 implements Action1<Throwable> {
        C20022() {
        }

        public void call(Throwable th) {
            ReadyMigrationFragment.this.onGetProfileError(th);
        }
    }

    public static class AttentionMigrationFragment extends GenericMigrationFragment {

        /* renamed from: ru.rocketbank.r2d2.fragments.migration.fragment.ReadyMigrationFragment$AttentionMigrationFragment$3 */
        class C15483 implements OnClickListener {
            C15483() {
            }

            public void onClick(View view) {
                AttentionMigrationFragment.this.onBottomButtonClick();
            }
        }

        /* renamed from: ru.rocketbank.r2d2.fragments.migration.fragment.ReadyMigrationFragment$AttentionMigrationFragment$4 */
        class C15494 implements OnClickListener {
            C15494() {
            }

            public void onClick(View view) {
                AttentionMigrationFragment.this.onStartButtonClick();
            }
        }

        /* renamed from: ru.rocketbank.r2d2.fragments.migration.fragment.ReadyMigrationFragment$AttentionMigrationFragment$1 */
        class C20061 implements Action1<PrivacyResponse> {

            /* renamed from: ru.rocketbank.r2d2.fragments.migration.fragment.ReadyMigrationFragment$AttentionMigrationFragment$1$2 */
            class C20042 implements Action0 {
                C20042() {
                }

                public void call() {
                    EventHelper eventHelper = EventHelper.INSTANCE;
                    EventHelper.send(new SubmitEvent());
                }
            }

            /* renamed from: ru.rocketbank.r2d2.fragments.migration.fragment.ReadyMigrationFragment$AttentionMigrationFragment$1$3 */
            class C20053 implements Action0 {
                C20053() {
                }

                public void call() {
                    System.exit(0);
                }
            }

            C20061() {
            }

            public void call(PrivacyResponse privacyResponse) {
                final AbstractActivity abstractActivity = (AbstractActivity) AttentionMigrationFragment.this.getActivity();
                UIHelper.showPrivacyDialog(AttentionMigrationFragment.this.getActivity(), privacyResponse.getUrl(), new Action0() {
                    public void call() {
                        abstractActivity.hideProgressDialog();
                    }
                }, new C20042(), new C20053());
            }
        }

        /* renamed from: ru.rocketbank.r2d2.fragments.migration.fragment.ReadyMigrationFragment$AttentionMigrationFragment$2 */
        class C20072 implements Action1<Throwable> {
            C20072() {
            }

            public void call(Throwable th) {
                AttentionMigrationFragment.this.onError(th);
            }
        }

        protected MigrationContent getMigrationContent() {
            return new MigrationContent().setTopHintTextRes(C0859R.string.migration_ready_hint_top_text).setImageRes(C0859R.drawable.attention).setBottomHintTextRes(C0859R.string.migration_ready_hint_bottom_text).setButtonTextRes(C0859R.string.migration_ready_button_caption).setBottomButtonVisible(true).setButtonBottomTextRes(C0859R.string.migration_ready_attention_bottom_button_text);
        }

        public void onStartButtonClick() {
            ((AbstractActivity) getActivity()).showProgressDialog();
            getMigrationApi().openPrivacy().subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C20061(), new C20072());
        }

        public void onViewCreated(View view, Bundle bundle) {
            super.onViewCreated(view, bundle);
            if (getMigrationURLs() == null || getMigrationURLs().getOldCardFateUrl() == null) {
                this.buttonBottom.setVisibility(4);
                this.buttonBottom.setEnabled(null);
            }
            this.button.setOnClickListener(new C15483());
            this.buttonBottom.setOnClickListener(new C15494());
        }

        public void onBottomButtonClick() {
            Utils.openUrl(getContext(), getMigrationURLs().getOldCardFateUrl());
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(C0859R.layout.fragment_migration_ready, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.content = (ViewGroup) view.findViewById(C0859R.id.content);
        if (bundle == null) {
            view = new AttentionMigrationFragment();
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

    public void onEventMainThread(SubmitEvent submitEvent) {
        submitEvent = getMigration().getCheckCard();
        if (submitEvent == null) {
            Snackbar.make(this.content, "Ошибка активации карты", -1).show();
        } else {
            replaceFragment(CheckCardFragment.newInstance(submitEvent));
        }
    }

    public void onEventMainThread(PinActivationEvent pinActivationEvent) {
        if (MigrationActivity.DEMO != null) {
            finishStep(new Migration(Status.activated, getMigration().getCities()));
            return;
        }
        showSpinner();
        getUserApi().getProfile().subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C20011(), new C20022());
    }

    private void onGetProfileError(Throwable th) {
        onError(th);
        execute(getMigrationApi().getJoining());
    }

    public void onEventMainThread(CheckCardEvent checkCardEvent) {
        if (checkCardEvent.getException() != null) {
            showRetryErrorSnackbarMessage();
            return;
        }
        checkCardEvent = checkCardEvent.getPlasticsCheckResponse();
        if (checkCardEvent.response == null || checkCardEvent.response.getStatus() == Callback.DEFAULT_DRAG_ANIMATION_DURATION) {
            if (!(checkCardEvent.plastic == null || checkCardEvent.plastic.getValidation() == null)) {
                if (checkCardEvent.plastic.getValidation().getId() != null) {
                    this.plasticCheckId = checkCardEvent.plastic.getValidation().getId();
                    checkCardEvent = this.authorization.getUserImmediate().getCurrentAccount().getChangePin();
                    replaceFragment(EnterPinFragment.newInstance(checkCardEvent.getPinText(), checkCardEvent.getCheckCard().getToken(), this.plasticCheckId));
                    return;
                }
            }
            Snackbar.make(this.content, C0859R.string.data_not_received, -1).show();
            return;
        }
        Snackbar.make(this.content, checkCardEvent.response.getDescription(), -1).show();
    }

    private void showRetryErrorSnackbarMessage() {
        Snackbar.make(this.content, C0859R.string.error_occur, -2).setAction(C0859R.string.retry, new C15473()).show();
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("KEY_PLASTIC_CHECK_ID", this.plasticCheckId);
    }
}
