package ru.rocketbank.r2d2.fragments.deposit;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import ru.rocketbank.core.model.RequisitesModel;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.fragments.RocketFragment;

public class DepositRequisitesFragment extends RocketFragment {
    private static final String REQUISITES = "REQUISITES";
    private TextView account;
    private TextView bankName;
    private TextView bic;
    private TextView correspondentAccount;
    private TextView goal;
    private TextView inn;
    private TextView kpp;
    private String requisites;
    private RequisitesModel requisitesModel;
    private TextView sender;

    public static DepositRequisitesFragment newInstance(RequisitesModel requisitesModel) {
        DepositRequisitesFragment depositRequisitesFragment = new DepositRequisitesFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable(REQUISITES, requisitesModel);
        depositRequisitesFragment.setArguments(bundle);
        return depositRequisitesFragment;
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        setHasOptionsMenu(true);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater = layoutInflater.inflate(C0859R.layout.fragment_deposit_detail, viewGroup, false);
        this.bankName = (TextView) layoutInflater.findViewById(C0859R.id.bank_name);
        this.correspondentAccount = (TextView) layoutInflater.findViewById(C0859R.id.correspondent_account);
        this.bic = (TextView) layoutInflater.findViewById(C0859R.id.fragment_refill_transfer_textview_bic);
        this.inn = (TextView) layoutInflater.findViewById(C0859R.id.fragment_refill_transfer_textview_inn);
        this.kpp = (TextView) layoutInflater.findViewById(C0859R.id.fragment_refill_transfer_textview_kpp);
        this.account = (TextView) layoutInflater.findViewById(C0859R.id.fragment_refill_transfer_textview_account);
        this.sender = (TextView) layoutInflater.findViewById(C0859R.id.fragment_refill_transfer_textview_sender);
        this.goal = (TextView) layoutInflater.findViewById(C0859R.id.fragment_refill_transfer_textview_target);
        return layoutInflater;
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        bundle = getArguments();
        if (bundle != null) {
            this.requisitesModel = (RequisitesModel) bundle.getParcelable(REQUISITES);
        }
        setupDefaultToolbar(view, C0859R.id.toolbar);
        fillDetails(this.requisitesModel);
    }

    public void fillDetails(RequisitesModel requisitesModel) {
        this.bankName.setText(requisitesModel.getBankName());
        this.correspondentAccount.setText(requisitesModel.getKs());
        this.bic.setText(requisitesModel.getBic());
        this.inn.setText(requisitesModel.getInn());
        this.kpp.setText(requisitesModel.getKpp());
        this.account.setText(requisitesModel.getAccount());
        this.sender.setText(requisitesModel.getOwner());
        this.goal.setText(requisitesModel.getGoal());
        this.requisites = String.format("Банк: %s\n\nКорр. счет: %s\n\nБИК: %s\n\nИНН: %s\n\nКПП: %s\n\nНомер счёта: %s\n\nПолучатель: %s\n\nНазначение платежа: %s", new Object[]{this.bankName.getText(), this.correspondentAccount.getText(), this.bic.getText(), this.inn.getText(), this.kpp.getText(), this.account.getText(), this.sender.getText(), this.goal.getText()});
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menuInflater.inflate(C0859R.menu.menu_empty, menu);
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != C0859R.id.shareItem) {
            return super.onOptionsItemSelected(menuItem);
        }
        Utils.shareText(getActivity(), "Отправить реквизиты", "Реквизиты", this.requisites);
        return true;
    }
}
