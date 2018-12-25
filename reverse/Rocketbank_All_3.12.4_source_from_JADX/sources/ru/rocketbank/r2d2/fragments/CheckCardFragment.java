package ru.rocketbank.r2d2.fragments;

import android.content.pm.PackageManager;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import de.greenrobot.event.EventBus;
import ru.rocketbank.core.events.CheckCardEvent;
import ru.rocketbank.core.events.NextButtonEvent;
import ru.rocketbank.core.events.RetryEvent;
import ru.rocketbank.core.model.dto.CheckCardData;
import ru.rocketbank.core.network.api.PlasticsApi;
import ru.rocketbank.core.network.model.PlasticsCheckResponse;
import ru.rocketbank.core.widgets.CreditCardView;
import ru.rocketbank.core.widgets.listener.CardNumberListener;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.activities.AbstractActivity;
import ru.rocketbank.r2d2.activities.ChangeCodeActivity;
import ru.rocketbank.r2d2.data.binding.card.CardAbilityData;
import ru.rocketbank.r2d2.data.binding.card.CardAbilityHandler;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonData;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonHandler;
import ru.rocketbank.r2d2.databinding.FragmentCheckBinding;
import ru.rocketbank.r2d2.utils.NfcInputCard;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;

public class CheckCardFragment extends RocketFragment implements CardNumberListener, CardAbilityHandler, ToolbarWithButtonHandler, NextButtonListener {
    private static final String KEY_CARD_IS_VALID = "KEY_CARD_IS_VALID";
    private FragmentCheckBinding binding;
    private CardAbilityData cardAbilityData;
    private boolean cardIsValid = false;
    private CheckCardData checkCardData;
    private Subscription checkSubscription;
    private CreditCardView creditCardView;
    private String digits;
    private EventBus eventBus = EventBus.getDefault();
    private boolean isActivation;
    private Button newNextButton;
    private NfcInputCard nfcInputCard;
    private String plasticToken;
    PlasticsApi plasticsApi;
    private ToolbarWithButtonData toolbarWithButtonData;

    /* renamed from: ru.rocketbank.r2d2.fragments.CheckCardFragment$1 */
    class C15191 implements OnClickListener {
        C15191() {
        }

        public void onClick(View view) {
            CheckCardFragment.this.nextPressed(view);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.CheckCardFragment$2 */
    class C17432 extends Subscriber<PlasticsCheckResponse> {
        public void onCompleted() {
        }

        C17432() {
        }

        public void onError(Throwable th) {
            CheckCardFragment.this.getAbstractActivity().hideProgressDialog();
            CheckCardFragment.this.eventBus.post(new CheckCardEvent(th, CheckCardFragment.this.getView()));
        }

        public void onNext(PlasticsCheckResponse plasticsCheckResponse) {
            CheckCardFragment.this.getAbstractActivity().hideProgressDialog();
            CheckCardFragment.this.eventBus.post(new CheckCardEvent(plasticsCheckResponse, CheckCardFragment.this.getView()));
        }
    }

    public void allCardIsValid(String str, String str2, String str3) {
    }

    public void binReady(String str) {
    }

    public void cancelBin() {
    }

    public void cardChanged() {
    }

    public void cardInvalid() {
    }

    public void cvvIsInvalid() {
    }

    public void cvvIsValid() {
    }

    public void dateIsInvalid() {
    }

    public void dateIsValid() {
    }

    public static CheckCardFragment newInstance(CheckCardData checkCardData) {
        Bundle bundle = new Bundle();
        bundle.putParcelable(ChangeCodeActivity.KEY_CHECK_CARD_DATA, checkCardData);
        bundle.putString("key_token_plastic", checkCardData.getToken());
        checkCardData = new CheckCardFragment();
        checkCardData.setArguments(bundle);
        return checkCardData;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.plasticsApi = getInjector().getPlasticApi();
        this.checkCardData = (CheckCardData) getArguments().getParcelable(ChangeCodeActivity.KEY_CHECK_CARD_DATA);
        this.isActivation = getArguments().getBoolean(ChangeCodeActivity.KEY_IS_ACTIVATION);
        this.plasticToken = getArguments().getString("key_token_plastic");
        this.binding = FragmentCheckBinding.inflate(layoutInflater, viewGroup, false);
        this.cardAbilityData = new CardAbilityData();
        this.binding.setActions(this);
        this.binding.setAbility(this.cardAbilityData);
        this.binding.setHandler(this);
        this.toolbarWithButtonData = new ToolbarWithButtonData(getString(C0859R.string.confirm_card), getString(C0859R.string.next), false, 0);
        this.binding.setToolbarBinding(this.toolbarWithButtonData);
        this.creditCardView = this.binding.creditCard;
        this.creditCardView.setNeedCheckBin$1385ff();
        this.newNextButton = this.binding.newNext;
        this.newNextButton.setOnClickListener(new C15191());
        layoutInflater = this.binding.textViewInputCardDigitsHint;
        if (bundle != null) {
            this.cardIsValid = bundle.getBoolean(KEY_CARD_IS_VALID, false);
        }
        if (this.checkCardData != null) {
            layoutInflater.setText(this.checkCardData.getText());
            this.creditCardView.setCardHolder(this.checkCardData.getName());
            layoutInflater = this.checkCardData.getDigits();
            if (layoutInflater != null) {
                this.creditCardView.setCardNumberHint(layoutInflater);
            }
            layoutInflater = this.checkCardData.getCardImage();
            if (layoutInflater != null && layoutInflater.isEmpty() == null) {
                this.creditCardView.setCardBackground(layoutInflater);
            }
        }
        if (this.isActivation == null) {
            layoutInflater = getAbstractActivity();
            if (layoutInflater.getSupportActionBar() == null) {
                layoutInflater.setSupportActionBar(this.binding.toolbarInclude.toolbar);
            }
            layoutInflater.getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        } else {
            this.toolbarWithButtonData.getToolbarVisible().set(false);
        }
        return this.binding.getRoot();
    }

    public void onDestroyView() {
        if (!(this.checkSubscription == null || this.checkSubscription.isUnsubscribed())) {
            this.checkSubscription.unsubscribe();
        }
        super.onDestroyView();
    }

    public void onResume() {
        super.onResume();
        PackageManager packageManager = getActivity().getPackageManager();
        this.cardAbilityData.updateAbility(packageManager.hasSystemFeature("android.hardware.nfc"), packageManager.hasSystemFeature("android.hardware.camera"));
        this.nfcInputCard.onCreate();
        updateNextButton();
    }

    public void onPause() {
        this.nfcInputCard.onStop();
        super.onPause();
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.creditCardView.setCardNumberListener(this);
        this.nfcInputCard = new NfcInputCard(getActivity(), getActivity().getClass());
        if (this.isActivation != null) {
            this.binding.toolbarInclude.getRoot().setVisibility(8);
        }
        getActivity().setTitle(C0859R.string.card_confirm);
    }

    private void checkCard(String str) {
        this.digits = str;
        getAbstractActivity().showProgressDialog();
        if (!(this.checkSubscription == null || this.checkSubscription.isUnsubscribed())) {
            this.checkSubscription.unsubscribe();
        }
        this.checkSubscription = this.plasticsApi.check(str, this.plasticToken).observeOn(AndroidSchedulers.mainThread()).subscribe(new C17432());
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean(KEY_CARD_IS_VALID, this.cardIsValid);
    }

    public void onEvent(RetryEvent retryEvent) {
        checkCard(this.digits);
    }

    private AbstractActivity getAbstractActivity() {
        return (AbstractActivity) getActivity();
    }

    public void cardNumberIsValid(String str) {
        this.cardIsValid = true;
        updateNextButton();
    }

    public void cardNumberIsInvalid(String str) {
        this.cardIsValid = null;
        updateNextButton();
    }

    public void onPressedPhoto(android.view.View r1) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
*/
        /*
        r0 = this;
        r1 = r0.getActivity();	 Catch:{ ClassCastException -> 0x000a }
        r1 = (ru.rocketbank.r2d2.activities.AbstractActivity) r1;	 Catch:{ ClassCastException -> 0x000a }
        r1.takeAShot();	 Catch:{ ClassCastException -> 0x000a }
        return;
    L_0x000a:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.fragments.CheckCardFragment.onPressedPhoto(android.view.View):void");
    }

    public void nextPressed(View view) {
        view = this.creditCardView.getCardNumber();
        checkCard(view.substring(view.length() - this.checkCardData.getDigitsCount(), view.length()));
    }

    private void updateNextButton() {
        updateNextButton(getParentFragment() == null ? this : getParentFragment());
    }

    public void onNextButtonClick() {
        nextPressed(null);
    }

    public void updateNextButton(Fragment fragment) {
        this.toolbarWithButtonData.getButtonEnabled().set(this.cardIsValid);
        this.newNextButton.setEnabled(this.cardIsValid);
        if (getActivity() != null) {
            EventBus.getDefault().post(new NextButtonEvent(fragment, this.cardIsValid, Integer.valueOf(0), RocketApplication.getContext().getString(C0859R.string.next_cap)));
        }
    }
}
