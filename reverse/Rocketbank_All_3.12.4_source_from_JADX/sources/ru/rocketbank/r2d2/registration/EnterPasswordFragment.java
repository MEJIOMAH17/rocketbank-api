package ru.rocketbank.r2d2.registration;

import android.os.Bundle;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import me.philio.pinentry.PinEntryView;
import ru.rocketbank.core.events.EventHelper;
import ru.rocketbank.core.events.PinActivationEvent;
import ru.rocketbank.core.manager.DataManager;
import ru.rocketbank.core.model.RegistrationStatus;
import ru.rocketbank.core.model.dto.ActivationResponse;
import ru.rocketbank.core.model.dto.ResponseData;
import ru.rocketbank.core.network.api.PlasticsApi;
import ru.rocketbank.core.network.exception.RocketResponseException;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.activities.AbstractActivity;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import ru.rocketbank.r2d2.utils.TextWatcherAbstract;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;

public class EnterPasswordFragment extends RocketFragment {
    private static final String KEY_PIN_TEXT = "KEY_PIN_TEXT";
    public static final String KEY_PLASTIC_CHECK_ID = "KEY_PLASTIC_CHECK_ID";
    public static final String KEY_TOKEN_PLASTIC = "key_token_plastic";
    private Subscription activateSubscription;
    Authorization authorization;
    private String code;
    DataManager dataManager;
    private boolean isFirst = true;
    private String pinText;
    private PinEntryView pinView;
    private String plasticToken;
    private String plastic_check_id;
    PlasticsApi plasticsApi;
    private TextWatcher textWatcher;

    public static EnterPasswordFragment newInstance() {
        Bundle bundle = new Bundle();
        EnterPasswordFragment enterPasswordFragment = new EnterPasswordFragment();
        enterPasswordFragment.setArguments(bundle);
        return enterPasswordFragment;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.pinText = getArguments().getString("KEY_PIN_TEXT");
        this.plasticToken = getArguments().getString("key_token_plastic");
        this.plastic_check_id = getArguments().getString("KEY_PLASTIC_CHECK_ID");
        return layoutInflater.inflate(C0859R.layout.fragment_change, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.plasticsApi = getInjector().getPlasticApi();
        this.authorization = getInjector().getAuthorization();
        this.dataManager = getInjector().getDataManager();
        init(view);
    }

    public void onPause() {
        if (this.pinView != null) {
            if (this.pinView.getText() != null) {
                this.pinView.getText().clearSpans();
            }
            this.pinView.clearText();
        }
        super.onPause();
    }

    public void onDestroyView() {
        if (!(this.activateSubscription == null || this.activateSubscription.isUnsubscribed())) {
            this.activateSubscription.unsubscribe();
        }
        super.onDestroyView();
    }

    private void init(final View view) {
        this.pinView = (PinEntryView) view.findViewById(C0859R.id.editText);
        TextView textView = (TextView) view.findViewById(C0859R.id.textView);
        TextView textView2 = (TextView) view.findViewById(C0859R.id.textViewDescription);
        final TextView textView3 = (TextView) view.findViewById(C0859R.id.textViewErrors);
        if (this.pinView.getText() != null) {
            this.pinView.getText().clearSpans();
        }
        this.pinView.clearText();
        if (this.textWatcher != null) {
            this.pinView.removeTextChangedListener(this.textWatcher);
        }
        this.textWatcher = new TextWatcherAbstract() {

            /* renamed from: ru.rocketbank.r2d2.registration.EnterPasswordFragment$1$1 */
            class C18111 extends Subscriber<ActivationResponse> {
                public void onCompleted() {
                }

                C18111() {
                }

                public void onError(Throwable th) {
                    EnterPasswordFragment.this.hideSpinner();
                    if (th instanceof RocketResponseException) {
                        th = ((RocketResponseException) th).getGenericResponse();
                        if (th != null) {
                            Toast.makeText(EnterPasswordFragment.this.getActivity(), th.getResponse().getDescription(), 0).show();
                            EnterPasswordFragment.this.reset(view);
                            if (th.getErrors() != null) {
                                textView3.setText(th.getErrors());
                                textView3.setVisibility(0);
                            }
                            return;
                        }
                    }
                    Toast.makeText(EnterPasswordFragment.this.getActivity(), "Произошла ошибка", 0).show();
                    EnterPasswordFragment.this.reset(view);
                }

                public void onNext(ActivationResponse activationResponse) {
                    EnterPasswordFragment.this.hideSpinner();
                    ResponseData response = activationResponse.getResponse();
                    if (response == null || response.getStatus() != Callback.DEFAULT_DRAG_ANIMATION_DURATION) {
                        Toast.makeText(EnterPasswordFragment.this.getActivity(), "Не удалось получить данные", 0).show();
                        EnterPasswordFragment.this.reset(view);
                        return;
                    }
                    Toast.makeText(EnterPasswordFragment.this.getActivity(), response.getDescription(), 0).show();
                    AbstractActivity abstractActivity = (AbstractActivity) EnterPasswordFragment.this.getActivity();
                    EnterPasswordFragment.this.authorization.setStatus(RegistrationStatus.UserFeed);
                    EnterPasswordFragment.this.authorization.setToken(activationResponse.getToken());
                    abstractActivity.getAuthorization().setUserModel(activationResponse.getUser());
                    activationResponse = EventHelper.INSTANCE;
                    EventHelper.send(new PinActivationEvent());
                }
            }

            public void afterTextChanged(Editable editable) {
                if (editable.length() == 4) {
                    editable = editable.toString();
                    if (EnterPasswordFragment.this.isFirst) {
                        EnterPasswordFragment.this.code = editable;
                        EnterPasswordFragment.this.isFirst = false;
                        EnterPasswordFragment.this.init(view);
                        textView3.setVisibility(8);
                        return;
                    }
                    Utils.closeKeyboardIfExists(EnterPasswordFragment.this.getActivity());
                    if (EnterPasswordFragment.this.code.equals(editable) == null) {
                        Toast.makeText(EnterPasswordFragment.this.getActivity(), "Код не совпадает", 0).show();
                        EnterPasswordFragment.this.reset(view);
                        return;
                    }
                    EnterPasswordFragment.this.showSpinner();
                    EnterPasswordFragment.this.activateSubscription = EnterPasswordFragment.this.plasticsApi.changeShortCode(EnterPasswordFragment.this.plastic_check_id, EnterPasswordFragment.this.code).observeOn(AndroidSchedulers.mainThread()).subscribe(new C18111());
                    EnterPasswordFragment.this.code = null;
                    EnterPasswordFragment.this.isFirst = true;
                }
            }
        };
        this.pinView.addTextChangedListener(this.textWatcher);
        this.pinView.requestFocus();
        textView.setText(this.isFirst != null ? "Введите новый пароль приложения" : "Повторите пароль приложения");
        if (this.pinText != null) {
            textView2.setText(this.pinText);
        }
    }

    private void reset(View view) {
        this.code = null;
        this.isFirst = true;
        init(view);
    }
}
