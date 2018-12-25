package ru.rocketbank.r2d2.fragments.refill.bank;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import ru.rocketbank.core.model.AccountDetailsModel;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.enums.PermalinkTariff;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.r2d2.ActionBarTitleInstaller;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.fragments.RocketFragment;

public class AccountDetailsFragment extends RocketFragment implements ActionBarTitleInstaller {
    private static final String TAG = "AccountDetail";
    protected static final String TOKEN = "TOKEN";
    private TextView account;
    Authorization authorization;
    private TextView bankAddressView;
    private TextView bankCorrView;
    private TextView bankName;
    private TextView bankReceiverView;
    private TextView bic;
    private TextView correspondentAccount;
    private TextView goal;
    private TextView inn;
    private LinearLayout internationalView;
    private TextView kpp;
    private String requisites = "";
    private LinearLayout russiaView;
    private TextView sender;
    private TextView swiftView;
    private String token;
    private UserModel userModel;

    public static AccountDetailsFragment newInstance() {
        return new AccountDetailsFragment();
    }

    public static AccountDetailsFragment newInstance(String str) {
        AccountDetailsFragment accountDetailsFragment = new AccountDetailsFragment();
        Bundle bundle = new Bundle();
        bundle.putString("TOKEN", str);
        accountDetailsFragment.setArguments(bundle);
        return accountDetailsFragment;
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        setHasOptionsMenu(true);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater = layoutInflater.inflate(C0859R.layout.fragment_userfeed_accout_info, viewGroup, false);
        onViewInit(layoutInflater);
        return layoutInflater;
    }

    protected void onViewInit(View view) {
        this.authorization = getInjector().getAuthorization();
        this.russiaView = (LinearLayout) view.findViewById(C0859R.id.russia);
        this.internationalView = (LinearLayout) view.findViewById(C0859R.id.international);
        this.bankName = (TextView) view.findViewById(C0859R.id.bank_name);
        this.bankCorrView = (TextView) view.findViewById(C0859R.id.bank_corr);
        this.bankReceiverView = (TextView) view.findViewById(C0859R.id.bank_name_receiver);
        this.bankAddressView = (TextView) view.findViewById(C0859R.id.bank_address);
        this.swiftView = (TextView) view.findViewById(C0859R.id.swift_input);
        this.correspondentAccount = (TextView) view.findViewById(C0859R.id.correspondent_account);
        this.bic = (TextView) view.findViewById(C0859R.id.fragment_refill_transfer_textview_bic);
        this.inn = (TextView) view.findViewById(C0859R.id.fragment_refill_transfer_textview_inn);
        this.kpp = (TextView) view.findViewById(C0859R.id.fragment_refill_transfer_textview_kpp);
        this.goal = (TextView) view.findViewById(C0859R.id.fragment_refill_transfer_textview_target);
        this.account = (TextView) view.findViewById(C0859R.id.fragment_refill_transfer_textview_account);
        this.sender = (TextView) view.findViewById(C0859R.id.fragment_refill_transfer_textview_sender);
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        view = getArguments();
        if (view != null) {
            this.token = view.getString("TOKEN");
        }
    }

    public void onUserModel(UserModel userModel) {
        super.onUserModel(userModel);
        setupUserModel(userModel);
        if (this.token == null) {
            userModel = userModel.getActiveAccount();
        } else {
            userModel = this.authorization.getAccountImmediate(userModel, this.token);
        }
        if (userModel != null) {
            if (userModel.getCurrencyCode().equalsIgnoreCase("RUB")) {
                fillDetails(userModel.getAccountDetails());
                return;
            }
            fillDetailsInternational(userModel.getAccountDetails());
        }
    }

    private void setupUserModel(UserModel userModel) {
        this.userModel = userModel;
    }

    public void fillDetailsInternational(AccountDetailsModel accountDetailsModel) {
        this.internationalView.setVisibility(0);
        this.bankCorrView.setText(accountDetailsModel.getCorr());
        this.bankReceiverView.setText(accountDetailsModel.getBenefBank());
        this.bankAddressView.setText(accountDetailsModel.getBenefBankAddress());
        this.swiftView.setText(accountDetailsModel.getBenefSwift());
        this.sender.setText(accountDetailsModel.getOwner());
        this.account.setText(accountDetailsModel.getAccount());
        this.requisites = String.format("Банк корреспондент: %s\n\nБанк получателя: %s\n\nАдрес банка получателя: %s\n\nSWIFT: %s\n\nНомер счёта: %s\n\nПолучатель: %s", new Object[]{accountDetailsModel.getCorr(), accountDetailsModel.getBenefBank(), accountDetailsModel.getBenefBankAddress(), accountDetailsModel.getBenefSwift(), accountDetailsModel.getAccount(), accountDetailsModel.getOwner()});
    }

    public void fillDetails(AccountDetailsModel accountDetailsModel) {
        this.russiaView.setVisibility(0);
        this.bankName.setText(accountDetailsModel.getBankName());
        if (!(this.userModel.getCurrentAccount() == null || this.userModel.getCurrentAccount().getCurrentTariff() == null || this.userModel.getCurrentAccount().getCurrentTariff().getPermalink() != PermalinkTariff.METROPOLIS)) {
            this.bankName.setText(C0859R.string.metropolis_bank_name);
        }
        this.correspondentAccount.setText(accountDetailsModel.getKs());
        this.bic.setText(accountDetailsModel.getBic());
        this.inn.setText(accountDetailsModel.getInn());
        this.kpp.setText(accountDetailsModel.getKpp());
        this.account.setText(accountDetailsModel.getAccount());
        this.sender.setText(accountDetailsModel.getOwner());
        this.goal.setText(accountDetailsModel.getGoal());
        this.requisites = String.format("Банк: %s\n\nКорр. счет: %s\n\nБИК: %s\n\nИНН: %s\n\nКПП: %s\n\nНомер счёта: %s\n\nПолучатель: %s\n\nНазначение платежа: %s", new Object[]{this.bankName.getText(), this.correspondentAccount.getText(), this.bic.getText(), this.inn.getText(), this.kpp.getText(), this.account.getText(), this.sender.getText(), this.goal.getText()});
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menuInflater.inflate(C0859R.menu.fragment_account_details, menu);
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != C0859R.id.shareItem) {
            return super.onOptionsItemSelected(menuItem);
        }
        Utils.shareText(getActivity(), "Отправить реквизиты", "Реквизиты", this.requisites);
        return true;
    }

    public String getActionBarTitle() {
        return getResources().getString(C0859R.string.fragment_refill_transfer_title);
    }
}
