package ru.rocketbank.r2d2.fragments;

import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.AbstractActivity;
import ru.rocketbank.r2d2.fragments.refill.bank.AccountDetailsFragment;
import ru.rocketbank.r2d2.root.transfer.SmallAccountFragment;

public class AccountDetailsStandaloneFragment extends AccountDetailsFragment {
    private Toolbar toolbar;

    public static AccountDetailsStandaloneFragment newInstance() {
        return new AccountDetailsStandaloneFragment();
    }

    public static AccountDetailsStandaloneFragment newInstance(String str) {
        AccountDetailsStandaloneFragment accountDetailsStandaloneFragment = new AccountDetailsStandaloneFragment();
        Bundle bundle = new Bundle();
        bundle.putString(SmallAccountFragment.TOKEN, str);
        accountDetailsStandaloneFragment.setArguments(bundle);
        return accountDetailsStandaloneFragment;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater = layoutInflater.inflate(C0859R.layout.fragment_userfeed_accout_info_standalone, viewGroup, false);
        onViewInit(layoutInflater);
        return layoutInflater;
    }

    public void onViewCreated(View view, Bundle bundle) {
        this.toolbar = (Toolbar) view.findViewById(C0859R.id.toolbar);
        this.toolbar.setTitle(C0859R.string.requisits_title);
        AbstractActivity abstractActivity = (AbstractActivity) getActivity();
        abstractActivity.setSupportActionBar(this.toolbar);
        ActionBar supportActionBar = abstractActivity.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
        }
        super.onViewCreated(view, bundle);
    }
}
