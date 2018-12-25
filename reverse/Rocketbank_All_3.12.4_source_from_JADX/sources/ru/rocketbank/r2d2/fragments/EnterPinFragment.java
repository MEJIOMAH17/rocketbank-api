package ru.rocketbank.r2d2.fragments;

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
import ru.rocketbank.core.model.RegistrationStatus;
import ru.rocketbank.core.model.dto.ActivationResponse;
import ru.rocketbank.core.model.dto.ResponseData;
import ru.rocketbank.core.network.api.PlasticsApi;
import ru.rocketbank.core.network.exception.RocketResponseException;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.utils.TextWatcherAbstract;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;

public class EnterPinFragment extends RocketFragment {
    private static final String KEY_PIN_TEXT = "KEY_PIN_TEXT";
    public static final String KEY_PLASTIC_CHECK_ID = "KEY_PLASTIC_CHECK_ID";
    public static final String KEY_TOKEN_PLASTIC = "key_token_plastic";
    private Subscription activateSubscription;
    Authorization authorization;
    private String code;
    private boolean isFirst = true;
    private String pinText;
    private String plasticToken;
    private String plastic_check_id;
    PlasticsApi plasticsApi;
    private TextWatcher textWatcher;

    public static EnterPinFragment newInstance(String str, String str2, String str3) {
        Bundle bundle = new Bundle();
        bundle.putString("KEY_PIN_TEXT", str);
        bundle.putString("key_token_plastic", str2);
        bundle.putString("KEY_PLASTIC_CHECK_ID", str3);
        str = new EnterPinFragment();
        str.setArguments(bundle);
        return str;
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
        init(view);
    }

    public void onDestroyView() {
        if (!(this.activateSubscription == null || this.activateSubscription.isUnsubscribed())) {
            this.activateSubscription.unsubscribe();
        }
        super.onDestroyView();
    }

    private void init(final View view) {
        final PinEntryView pinEntryView = (PinEntryView) view.findViewById(C0859R.id.editText);
        TextView textView = (TextView) view.findViewById(C0859R.id.textView);
        TextView textView2 = (TextView) view.findViewById(C0859R.id.textViewDescription);
        final TextView textView3 = (TextView) view.findViewById(C0859R.id.textViewErrors);
        pinEntryView.clearText();
        view.findViewById(C0859R.id.toolbarInclude).setVisibility(8);
        if (this.textWatcher != null) {
            pinEntryView.removeTextChangedListener(this.textWatcher);
        }
        this.textWatcher = new TextWatcherAbstract() {

            /* renamed from: ru.rocketbank.r2d2.fragments.EnterPinFragment$1$1 */
            class C17441 extends Subscriber<ActivationResponse> {
                public void onCompleted() {
                }

                C17441() {
                }

                public void onError(Throwable th) {
                    EnterPinFragment.this.hideSpinner();
                    if (th instanceof RocketResponseException) {
                        th = ((RocketResponseException) th).getGenericResponse();
                        if (th != null) {
                            Toast.makeText(EnterPinFragment.this.getActivity(), th.getResponse().getDescription(), 0).show();
                            EnterPinFragment.this.reset(view);
                            if (th.getErrors() != null) {
                                textView3.setText(th.getErrors());
                                textView3.setVisibility(0);
                            }
                            return;
                        }
                    }
                    Toast.makeText(EnterPinFragment.this.getActivity(), "Произошла ошибка", 0).show();
                    EnterPinFragment.this.reset(view);
                }

                public void onNext(ActivationResponse activationResponse) {
                    EnterPinFragment.this.hideSpinner();
                    ResponseData response = activationResponse.getResponse();
                    if (response == null || response.getStatus() != Callback.DEFAULT_DRAG_ANIMATION_DURATION) {
                        Toast.makeText(EnterPinFragment.this.getActivity(), "Не удалось получить данные", 0).show();
                        EnterPinFragment.this.reset(view);
                        return;
                    }
                    Toast.makeText(EnterPinFragment.this.getActivity(), response.getDescription(), 0).show();
                    EnterPinFragment.this.authorization.setStatus(RegistrationStatus.UserFeed);
                    EnterPinFragment.this.authorization.setToken(activationResponse.getToken());
                    EnterPinFragment.this.authorization.setUserModel(activationResponse.getUser());
                    activationResponse = EventHelper.INSTANCE;
                    EventHelper.send(new PinActivationEvent());
                }
            }

            public void afterTextChanged(Editable editable) {
                if (editable.length() == 4) {
                    editable = editable.toString();
                    if (EnterPinFragment.this.isFirst) {
                        EnterPinFragment.this.code = editable;
                        EnterPinFragment.this.isFirst = false;
                        EnterPinFragment.this.init(view);
                        textView3.setVisibility(8);
                        return;
                    }
                    Utils.closeKeyboardIfExists(EnterPinFragment.this.getActivity());
                    if (EnterPinFragment.this.code.equals(editable) == null) {
                        Toast.makeText(EnterPinFragment.this.getActivity(), "Код не совпадает", 0).show();
                        EnterPinFragment.this.reset(view);
                        return;
                    }
                    EnterPinFragment.this.showSpinner();
                    EnterPinFragment.this.activateSubscription = EnterPinFragment.this.plasticsApi.activate(EnterPinFragment.this.plasticToken, EnterPinFragment.this.plastic_check_id, EnterPinFragment.this.code).observeOn(AndroidSchedulers.mainThread()).subscribe(new C17441());
                    EnterPinFragment.this.code = null;
                    EnterPinFragment.this.isFirst = true;
                }
            }
        };
        pinEntryView.addTextChangedListener(this.textWatcher);
        pinEntryView.post(new Runnable() {
            public void run() {
                pinEntryView.requestFocus();
            }
        });
        textView.setText(this.isFirst != null ? "Введите новый PIN-код карты" : "Повторите PIN-код карты");
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
