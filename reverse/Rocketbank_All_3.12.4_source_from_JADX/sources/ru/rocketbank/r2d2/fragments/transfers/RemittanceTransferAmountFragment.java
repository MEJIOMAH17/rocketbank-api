package ru.rocketbank.r2d2.fragments.transfers;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.PopupMenu;
import android.support.v7.widget.PopupMenu.OnMenuItemClickListener;
import android.support.v7.widget.SwitchCompat;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.jakewharton.rxbinding.widget.RxTextView;
import de.greenrobot.event.EventBus;
import de.hdodenhof.circleimageview.CircleImageView;
import ru.rocketbank.core.events.NextButtonEvent;
import ru.rocketbank.core.manager.CurrencyManager;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.enums.PermalinkTariff;
import ru.rocketbank.core.model.facade.Account;
import ru.rocketbank.core.model.response.CommissionResponse;
import ru.rocketbank.core.model.transfers.bank.BiksResponseData;
import ru.rocketbank.core.model.transfers.bank.RemittanceKindResponseData.Kind;
import ru.rocketbank.core.model.transfers.bank.RemittanceOutgoing;
import ru.rocketbank.core.network.api.RocketAPI;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.core.utils.rx.TextObserverToDouble;
import ru.rocketbank.core.widgets.listener.AddCurrencyListener;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.fragments.NextButtonListener;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import ru.rocketbank.r2d2.helpers.UIHelper;
import ru.rocketbank.r2d2.widget.AccountWidget;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;
import rx.schedulers.Schedulers;

public class RemittanceTransferAmountFragment extends RocketFragment implements NextButtonListener {
    private static final String DATA_EXTRA = "data";
    private static final int STATE_COMMISSION_LOADED = 0;
    private static final int STATE_COMMISSION_LOADING = 1;
    private Account accountFrom;
    private AccountWidget accountWidget;
    private Double amount = Double.valueOf(0.0d);
    private ImageButton bespInfo;
    private String bespPopupText;
    private SwitchCompat bespSwitch;
    private TextView bespTextView;
    private View bespView;
    private Subscription bikSubscription;
    private ImageView btn_more;
    public boolean buttonEnabled = false;
    private TextView commission;
    private Subscription commissionSubscription;
    CurrencyManager currencyManager;
    private RemittanceOutgoing data;
    private EditText edittextAmount;
    private boolean hasCommission = false;
    private CircleImageView logo;
    MoneyFormatter moneyFormatter;
    private TextView name;
    private TextView number_card;
    private PopupWindow popup;
    private ProgressBar progressBar;
    RocketAPI rocketAPI;
    private ScrollView scrollView;
    private Subscription selectAccountSubscription;
    private Subscription textSubscriptionAmount;
    private UserModel userModel;

    /* renamed from: ru.rocketbank.r2d2.fragments.transfers.RemittanceTransferAmountFragment$5 */
    class C15665 implements OnClickListener {
        C15665() {
        }

        public void onClick(View view) {
            RemittanceTransferAmountFragment.this.hidePopup();
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.transfers.RemittanceTransferAmountFragment$6 */
    class C15676 implements OnTouchListener {
        C15676() {
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            RemittanceTransferAmountFragment.this.hidePopup();
            return null;
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.transfers.RemittanceTransferAmountFragment$7 */
    class C15687 implements OnClickListener {
        C15687() {
        }

        public void onClick(View view) {
            RemittanceTransferAmountFragment.this.showPopup(RemittanceTransferAmountFragment.this.bespPopupText);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.transfers.RemittanceTransferAmountFragment$4 */
    class C17844 extends Subscriber<BiksResponseData> {

        /* renamed from: ru.rocketbank.r2d2.fragments.transfers.RemittanceTransferAmountFragment$4$1 */
        class C15651 implements OnClickListener {
            C15651() {
            }

            public void onClick(View view) {
                RemittanceTransferAmountFragment.this.showPopup(RemittanceTransferAmountFragment.this.bespPopupText);
            }
        }

        public void onCompleted() {
        }

        C17844() {
        }

        public void onError(Throwable th) {
            RemittanceTransferAmountFragment.this.bespView.setVisibility(8);
            RemittanceTransferAmountFragment.this.bespSwitch.setChecked(false);
        }

        public void onNext(BiksResponseData biksResponseData) {
            biksResponseData = biksResponseData.getBik();
            boolean besp = biksResponseData.getBesp();
            int i = 8;
            RemittanceTransferAmountFragment.this.bespView.setVisibility(besp ? 0 : 8);
            if (!besp) {
                RemittanceTransferAmountFragment.this.bespSwitch.setChecked(false);
            }
            if (!(biksResponseData.getBesp_text2() == null || biksResponseData.getBesp_text2().isEmpty())) {
                RemittanceTransferAmountFragment.this.bespTextView.setText(biksResponseData.getBesp_text2());
            }
            ImageButton access$500 = RemittanceTransferAmountFragment.this.bespInfo;
            if (biksResponseData.getBesp_text1() != null) {
                i = 0;
            }
            access$500.setVisibility(i);
            RemittanceTransferAmountFragment.this.bespPopupText = biksResponseData.getBesp_text1();
            RemittanceTransferAmountFragment.this.bespInfo.setOnClickListener(new C15651());
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.transfers.RemittanceTransferAmountFragment$8 */
    class C17858 extends Subscriber<Double> {
        public void onCompleted() {
        }

        public void onError(Throwable th) {
        }

        C17858() {
        }

        public void onNext(Double d) {
            RemittanceTransferAmountFragment.this.amount = d;
            RemittanceTransferAmountFragment.this.checkAmount();
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.transfers.RemittanceTransferAmountFragment$9 */
    class C17869 extends Subscriber<CommissionResponse> {
        public void onCompleted() {
        }

        C17869() {
        }

        public void onError(Throwable th) {
            RemittanceTransferAmountFragment.this.hidePopup();
            RemittanceTransferAmountFragment.this.setComissionText((int) C0859R.string.ta_commission_failed);
            RemittanceTransferAmountFragment.this.progressBar.setVisibility(8);
            RemittanceTransferAmountFragment.this.commission.setVisibility(0);
            RemittanceTransferAmountFragment.this.hasCommission = false;
            RemittanceTransferAmountFragment.this.updateButton(false);
        }

        public void onNext(CommissionResponse commissionResponse) {
            RemittanceTransferAmountFragment.this.hidePopup();
            if (RemittanceTransferAmountFragment.this.userModel != null) {
                RemittanceTransferAmountFragment.this.hasCommission = commissionResponse.getCommission() > BitmapDescriptorFactory.HUE_RED;
                if (RemittanceTransferAmountFragment.this.hasCommission) {
                    RemittanceTransferAmountFragment.this.setComissionText((String) RemittanceTransferAmountFragment.this.getString(RemittanceTransferAmountFragment.this.userModel.getCurrentAccount().getCurrentTariff().getPermalink() == PermalinkTariff.METROPOLIS ? C0859R.string.ta_commission_metropolis : C0859R.string.ta_commission, new Object[]{RemittanceTransferAmountFragment.this.moneyFormatter.format((double) commissionResponse.getCommission(), "rub", true)}));
                } else {
                    RemittanceTransferAmountFragment.this.setComissionText((int) C0859R.string.ta_no_commission);
                }
                RemittanceTransferAmountFragment.this.updateButton(RemittanceTransferAmountFragment.this.enoughMoney());
            }
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.transfers.RemittanceTransferAmountFragment$1 */
    class C20131 implements Action1<Account> {
        C20131() {
        }

        public void call(Account account) {
            RemittanceTransferAmountFragment.this.onSelectAccount(account);
        }
    }

    public void setUserModel(UserModel userModel) {
        this.userModel = userModel;
    }

    public static Fragment newInstance(RemittanceOutgoing remittanceOutgoing) {
        Fragment remittanceTransferAmountFragment = new RemittanceTransferAmountFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("data", remittanceOutgoing);
        remittanceTransferAmountFragment.setArguments(bundle);
        return remittanceTransferAmountFragment;
    }

    public void onPause() {
        unsubscribe(this.commissionSubscription);
        unsubscribe(this.textSubscriptionAmount);
        unsubscribe(this.bikSubscription);
        unsubscribe(this.selectAccountSubscription);
        hidePopup();
        super.onPause();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater = layoutInflater.inflate(C0859R.layout.fragment_userfeed_transfers_bank_amount, viewGroup, false);
        this.rocketAPI = getInjector().getRocketApi();
        this.currencyManager = getInjector().getCurrencyManager();
        this.moneyFormatter = getInjector().getMoneyFormatter();
        this.commission = (TextView) layoutInflater.findViewById(C0859R.id.transfers_bank_comission);
        this.progressBar = (ProgressBar) layoutInflater.findViewById(C0859R.id.progressBar);
        this.scrollView = (ScrollView) layoutInflater.findViewById(C0859R.id.scrollView);
        this.edittextAmount = (EditText) layoutInflater.findViewById(C0859R.id.edittext_transfers_bank_amount);
        this.logo = (CircleImageView) layoutInflater.findViewById(C0859R.id.logo);
        this.name = (TextView) layoutInflater.findViewById(C0859R.id.tv_name);
        this.number_card = (TextView) layoutInflater.findViewById(C0859R.id.tv_number_card);
        this.btn_more = (ImageView) layoutInflater.findViewById(C0859R.id.item_more);
        this.bespView = layoutInflater.findViewById(C0859R.id.besp);
        this.bespTextView = (TextView) layoutInflater.findViewById(C0859R.id.bespTextView);
        this.bespSwitch = (SwitchCompat) layoutInflater.findViewById(C0859R.id.bespSwitch);
        this.bespInfo = (ImageButton) layoutInflater.findViewById(C0859R.id.bespInfo);
        this.accountWidget = (AccountWidget) layoutInflater.findViewById(C0859R.id.accountWidget);
        layoutInflater.findViewById(C0859R.id.secureDots).setVisibility(8);
        this.data = (RemittanceOutgoing) getArguments().getParcelable("data");
        this.accountWidget.setup(getChildFragmentManager(), AccountWidget.ROCKET_FILTER);
        setRemittanceInfo();
        return layoutInflater;
    }

    private void onSelectAccount(Account account) {
        this.accountFrom = account;
        checkAmount();
    }

    private void checkAmount() {
        unsubscribe(this.commissionSubscription);
        this.commissionSubscription = null;
        hidePopup();
        if (this.amount.doubleValue() == 0.0d) {
            emptyAmount();
            return;
        }
        this.accountWidget.highlightAmount(enoughMoney() ? C0859R.color.rocketBlack : C0859R.color.coral);
        if (enoughMoney()) {
            requestComission();
            return;
        }
        this.progressBar.setVisibility(8);
        this.commission.setVisibility(0);
        this.commission.setText(C0859R.string.not_enough_money);
        updateButton(false);
    }

    public void onResume() {
        super.onResume();
        this.accountWidget.init();
        this.selectAccountSubscription = this.accountWidget.getOnAccountSelected().observeOn(AndroidSchedulers.mainThread()).subscribe(new C20131());
        updateNextButton(getParentFragment() == null ? this : getParentFragment());
        this.edittextAmount.addTextChangedListener(new AddCurrencyListener(this.edittextAmount) {
            protected String getCurrency() {
                return RemittanceTransferAmountFragment.this.currencyManager.getCurrencySymbol("RUB");
            }
        });
        final Subscriber createAmountSubscriber = createAmountSubscriber();
        this.textSubscriptionAmount = RxTextView.afterTextChangeEvents(this.edittextAmount).map(new TextObserverToDouble()).observeOn(AndroidSchedulers.mainThread()).subscribe(createAmountSubscriber);
        if (Kind.valueOf(this.data.getRemittance_kind()) != Kind.budget) {
            this.bespSwitch.setOnCheckedChangeListener(new OnCheckedChangeListener() {
                public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    createAmountSubscriber.onNext(RemittanceTransferAmountFragment.this.amount);
                }
            });
            this.bikSubscription = this.rocketAPI.getBiks(this.data.getBik()).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C17844());
        } else {
            this.bespView.setVisibility(8);
            this.bespSwitch.setChecked(false);
        }
        if (this.edittextAmount.getText().length() == 0) {
            this.edittextAmount.setText(AppEventsConstants.EVENT_PARAM_VALUE_NO);
            this.edittextAmount.setSelection(1);
        }
    }

    private void showPopup(String str) {
        hidePopup();
        if (str != null) {
            if (!str.isEmpty()) {
                this.bespInfo.setAlpha(1.0f);
                this.bespInfo.setColorFilter(ContextCompat.getColor(getContext(), C0859R.color.orange));
                this.bespInfo.setOnClickListener(new C15665());
                this.popup = new PopupWindow(-2, -2);
                View inflate = getActivity().getLayoutInflater().inflate(C0859R.layout.budget_popup, null);
                inflate.setOnTouchListener(new C15676());
                ((TextView) inflate.findViewById(C0859R.id.textView)).setText(str);
                inflate.measure(-2, -2);
                this.popup.setContentView(inflate);
                str = new int[2];
                this.bespInfo.getLocationOnScreen(str);
                this.popup.showAtLocation(this.bespInfo, 48, str[0], str[1] - inflate.getMeasuredHeight());
            }
        }
    }

    private void hidePopup() {
        if (this.bespInfo != null) {
            this.bespInfo.setAlpha(0.24f);
            this.bespInfo.setColorFilter(ContextCompat.getColor(getContext(), C0859R.color.rocketBlack));
            if (this.popup != null) {
                this.popup.dismiss();
            }
            this.bespInfo.setOnClickListener(new C15687());
        }
    }

    public void updateNextButton(Fragment fragment) {
        EventBus.getDefault().post(new NextButtonEvent(fragment, this.buttonEnabled, Integer.valueOf(0), getString(C0859R.string.next)));
    }

    private Subscriber<Double> createAmountSubscriber() {
        return new C17858();
    }

    private void requestComission() {
        if (Kind.valueOf(this.data.getRemittance_kind()) == Kind.budget) {
            updateButton(enoughMoney());
            return;
        }
        unsubscribe(this.commissionSubscription);
        this.commissionSubscription = null;
        this.progressBar.setVisibility(0);
        this.commission.setVisibility(8);
        this.commissionSubscription = this.rocketAPI.remittancesCommission(this.amount.doubleValue(), this.data.getBik(), this.data.isVat(), this.data.getCorr_bank(), this.data.getRecipient_name(), this.data.getPurpose(), Boolean.valueOf(getIsBesp())).observeOn(AndroidSchedulers.mainThread()).subscribe(new C17869());
    }

    private boolean enoughMoney() {
        return this.amount.doubleValue() > 0.0d && this.accountFrom != null && this.amount.doubleValue() <= this.accountFrom.getBalance();
    }

    private boolean getIsBesp() {
        return this.bespSwitch.isChecked();
    }

    private void emptyAmount() {
        this.progressBar.setVisibility(8);
        this.commission.setVisibility(4);
        this.commission.setText("");
        updateButton(false);
    }

    private void setComissionText(String str) {
        this.commission.setText(str);
        this.progressBar.setVisibility(8);
        this.commission.setVisibility(0);
        if (str != null && str.isEmpty() == null) {
            this.scrollView.smoothScrollTo(0, this.commission.getBottom());
        }
    }

    private void setComissionText(int i) {
        setComissionText(getString(i));
    }

    private void updateButton(boolean z) {
        this.buttonEnabled = z;
        updateNextButton(!getParentFragment() ? this : getParentFragment());
    }

    private void setRemittanceInfo() {
        if (this.data.getLogo() == null) {
            Glide.with(getActivity()).load(Integer.valueOf(C0859R.drawable.ic_perevody_unknown_card)).into(this.logo);
        } else {
            Glide.with(getActivity()).load(this.data.getLogo()).into(this.logo);
        }
        this.name.setText(this.data.getRecipient_name());
        this.number_card.setText(this.data.getCorr_number());
        this.btn_more.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                RemittanceTransferAmountFragment.this.createPopUpMenu(view);
            }
        });
    }

    private void createPopUpMenu(View view) {
        PopupMenu popupMenu = new PopupMenu(getActivity(), view);
        popupMenu.setGravity(8388661);
        popupMenu.getMenu().add(0, 0, 0, "Редактировать");
        popupMenu.setOnMenuItemClickListener(new OnMenuItemClickListener() {
            public boolean onMenuItemClick(MenuItem menuItem) {
                if (menuItem.getItemId() != null) {
                    return null;
                }
                ((BankAmountActivity) RemittanceTransferAmountFragment.this.getActivity()).callEditInfoFragment();
                return true;
            }
        });
        popupMenu.show();
    }

    public void onUserModel(UserModel userModel) {
        super.onUserModel(userModel);
        setUserModel(userModel);
    }

    private void moveToTheConfirmScreen(final RemittanceOutgoing remittanceOutgoing) {
        remittanceOutgoing.setCardAccount(this.accountFrom.getToken());
        if (this.hasCommission) {
            UIHelper.showAlertDialog(getActivity(), this.commission.getText().toString(), (int) C0859R.string.next, new Runnable() {
                public void run() {
                    RemittanceTransferAmountFragment.this.onConfirm(remittanceOutgoing);
                }
            }, null);
        } else {
            onConfirm(remittanceOutgoing);
        }
    }

    private void onConfirm(RemittanceOutgoing remittanceOutgoing) {
        ((BankAmountActivity) getActivity()).callConfirmFragment(remittanceOutgoing);
    }

    public void onNextButtonClick() {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
*/
        /*
        r5 = this;
        r0 = r5.getActivity();
        r1 = "input_method";
        r0 = r0.getSystemService(r1);
        r0 = (android.view.inputmethod.InputMethodManager) r0;
        r1 = r5.getView();
        r1 = r1.getWindowToken();
        r2 = 0;
        r0.hideSoftInputFromWindow(r1, r2);
        r0 = r5.amount;	 Catch:{ NumberFormatException -> 0x0048 }
        r0 = r0.doubleValue();	 Catch:{ NumberFormatException -> 0x0048 }
        r2 = 0;	 Catch:{ NumberFormatException -> 0x0048 }
        r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));	 Catch:{ NumberFormatException -> 0x0048 }
        if (r4 == 0) goto L_0x0042;	 Catch:{ NumberFormatException -> 0x0048 }
    L_0x0024:
        r0 = r5.data;	 Catch:{ NumberFormatException -> 0x0048 }
        r1 = r5.amount;	 Catch:{ NumberFormatException -> 0x0048 }
        r1 = r1.toString();	 Catch:{ NumberFormatException -> 0x0048 }
        r0.setAmount(r1);	 Catch:{ NumberFormatException -> 0x0048 }
        r0 = r5.data;	 Catch:{ NumberFormatException -> 0x0048 }
        r1 = r5.getIsBesp();	 Catch:{ NumberFormatException -> 0x0048 }
        r1 = java.lang.Boolean.valueOf(r1);	 Catch:{ NumberFormatException -> 0x0048 }
        r0.setBesp(r1);	 Catch:{ NumberFormatException -> 0x0048 }
        r0 = r5.data;	 Catch:{ NumberFormatException -> 0x0048 }
        r5.moveToTheConfirmScreen(r0);	 Catch:{ NumberFormatException -> 0x0048 }
        return;	 Catch:{ NumberFormatException -> 0x0048 }
    L_0x0042:
        r0 = "Пожалуйста, введите корректную сумму.";	 Catch:{ NumberFormatException -> 0x0048 }
        r5.showAlert(r0);	 Catch:{ NumberFormatException -> 0x0048 }
        return;
    L_0x0048:
        r0 = "Пожалуйста, введите корректную сумму.";
        r5.showAlert(r0);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.fragments.transfers.RemittanceTransferAmountFragment.onNextButtonClick():void");
    }
}
