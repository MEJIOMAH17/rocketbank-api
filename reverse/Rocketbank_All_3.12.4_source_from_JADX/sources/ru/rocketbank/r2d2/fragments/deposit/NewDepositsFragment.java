package ru.rocketbank.r2d2.fragments.deposit;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.TabLayout;
import android.support.design.widget.TabLayout.OnTabSelectedListener;
import android.support.design.widget.TabLayout.Tab;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.util.ArrayMap;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPager;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.Toolbar.LayoutParams;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.network.api.DepositApi;
import ru.rocketbank.core.network.model.Deposit;
import ru.rocketbank.core.network.model.DepositsResponse;
import ru.rocketbank.core.widgets.RocketButton;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.MainActivity;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.schedulers.Schedulers;

public class NewDepositsFragment extends RocketFragment implements OnTabSelectedListener {
    private static final String TAG = "NewDeposits";
    private AppBarLayout appBarLayout;
    private DepositApi depositAPI;
    private DepositAdapter depositAdapter;
    private Subscription depositSubscription;
    private ArrayList<Deposits> depositses;
    private TabLayout tabLayout;
    private Toolbar toolbar;
    private ViewPager viewPager;

    /* renamed from: ru.rocketbank.r2d2.fragments.deposit.NewDepositsFragment$2 */
    class C15362 implements OnClickListener {
        C15362() {
        }

        public void onClick(View view) {
            ((MainActivity) NewDepositsFragment.this.getActivity()).toggleDrawer();
        }
    }

    public static class Deposits implements Parcelable {
        public static final Creator<Deposits> CREATOR = new C15371();
        private String currency;
        private List<Deposit> deposits;

        /* renamed from: ru.rocketbank.r2d2.fragments.deposit.NewDepositsFragment$Deposits$1 */
        static class C15371 implements Creator<Deposits> {
            C15371() {
            }

            public final Deposits createFromParcel(Parcel parcel) {
                return new Deposits(parcel);
            }

            public final Deposits[] newArray(int i) {
                return new Deposits[i];
            }
        }

        public int describeContents() {
            return 0;
        }

        public String getCurrency() {
            return this.currency;
        }

        public void setCurrency(String str) {
            this.currency = str;
        }

        public List<Deposit> getDeposits() {
            return this.deposits;
        }

        public void setDeposits(List<Deposit> list) {
            this.deposits = list;
        }

        protected Deposits(Parcel parcel) {
            this.currency = parcel.readString();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.currency);
            parcel.writeList(this.deposits);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.deposit.NewDepositsFragment$1 */
    class C17501 extends Subscriber<DepositsResponse> {

        /* renamed from: ru.rocketbank.r2d2.fragments.deposit.NewDepositsFragment$1$1 */
        class C15351 implements Comparator<Deposits> {
            C15351() {
            }

            public int compare(Deposits deposits, Deposits deposits2) {
                return getWeight(deposits.getCurrency()) - getWeight(deposits2.getCurrency());
            }

            private int getWeight(String str) {
                int i = "rub".equalsIgnoreCase(str) ? 1 : 255;
                if ("usd".equalsIgnoreCase(str)) {
                    i = 2;
                }
                return "eur".equalsIgnoreCase(str) != null ? 3 : i;
            }
        }

        public void onCompleted() {
        }

        C17501() {
        }

        public void onError(Throwable th) {
            Log.e(NewDepositsFragment.TAG, "Failed to execute", th);
            NewDepositsFragment.this.hideSpinner();
        }

        public void onNext(DepositsResponse depositsResponse) {
            Object arrayList = new ArrayList();
            for (String str : depositsResponse.keySet()) {
                Deposits deposits = new Deposits();
                deposits.setCurrency(str);
                deposits.setDeposits((List) depositsResponse.get(str));
                arrayList.add(deposits);
            }
            Collections.sort(arrayList, new C15351());
            depositsResponse = NewDepositsFragment.this.tabLayout.getSelectedTabPosition();
            NewDepositsFragment.this.depositses = arrayList;
            NewDepositsFragment.this.depositAdapter.notifyDataSetChanged();
            NewDepositsFragment.this.viewPager.setCurrentItem(depositsResponse);
            NewDepositsFragment.this.hideSpinner();
        }
    }

    private class DepositAdapter extends FragmentPagerAdapter {
        private final ArrayMap<String, Integer> titles = new ArrayMap(3);

        public Fragment getItem(int i) {
            return null;
        }

        DepositAdapter(FragmentManager fragmentManager) {
            super(fragmentManager);
            this.titles.put("rub", Integer.valueOf(C0859R.string.safe_acc_rub_title));
            this.titles.put("usd", Integer.valueOf(C0859R.string.safe_acc_usd_title));
            this.titles.put("eur", Integer.valueOf(C0859R.string.safe_acc_euro_title));
        }

        public CharSequence getPageTitle(int i) {
            return NewDepositsFragment.this.getString(((Integer) this.titles.get(((Deposits) NewDepositsFragment.this.depositses.get(i)).getCurrency().toLowerCase())).intValue());
        }

        public int getCount() {
            return NewDepositsFragment.this.depositses == null ? 0 : NewDepositsFragment.this.depositses.size();
        }
    }

    public void onTabReselected(Tab tab) {
    }

    public void onTabUnselected(Tab tab) {
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater = layoutInflater.inflate(C0859R.layout.fragment_new_deposit, viewGroup, false);
        this.toolbar = (Toolbar) layoutInflater.findViewById(C0859R.id.toolbar);
        this.appBarLayout = (AppBarLayout) layoutInflater.findViewById(C0859R.id.app_bar);
        this.tabLayout = (TabLayout) layoutInflater.findViewById(C0859R.id.sliding_tabs);
        this.viewPager = new ViewPager(getActivity());
        this.tabLayout.setupWithViewPager(this.viewPager);
        this.tabLayout.addOnTabSelectedListener(this);
        this.depositAdapter = new DepositAdapter(getChildFragmentManager());
        this.viewPager.setAdapter(this.depositAdapter);
        return layoutInflater;
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.depositAPI = getInjector().getDepositApi();
        setupToolbar();
    }

    public void onDestroyView() {
        super.onDestroyView();
        if (this.depositSubscription != null) {
            this.depositSubscription.unsubscribe();
        }
    }

    public void onUserModel(UserModel userModel) {
        super.onUserModel(userModel);
        refreshDeposits();
    }

    public void onTabSelected(Tab tab) {
        getFragmentManager().beginTransaction().replace(C0859R.id.deposit_fragment_container, OpenReplenishableDepositFragment.Companion.newInstance((Deposits) this.depositses.get(tab.getPosition()))).commit();
    }

    private void refreshDeposits() {
        showSpinner();
        this.depositSubscription = this.depositAPI.getDeposits().subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C17501());
    }

    private void setupToolbar() {
        int statusBarHeight = getStatusBarHeight();
        this.appBarLayout.setMinimumHeight(ViewCompat.getMinimumHeight(this.appBarLayout) + (statusBarHeight << 1));
        this.toolbar.setNavigationIcon(C0859R.drawable.ic_drawer_black);
        this.toolbar.setTitle(C0859R.string.open_deposit);
        View rocketButton = new RocketButton(getActivity());
        rocketButton.setBackgroundColor(0);
        rocketButton.setText(C0859R.string.button_next);
        rocketButton.setTextColor(getActivity().getResources().getColorStateList(C0859R.color.orange_text_button_selector));
        rocketButton.setId(C0859R.id.next_button);
        this.toolbar.addView(rocketButton, new LayoutParams(GravityCompat.END));
        this.toolbar.setTitleTextColor(getResources().getColor(C0859R.color.rocketBlack));
        setToolbarSize(this.toolbar, statusBarHeight);
        this.toolbar.setNavigationOnClickListener(new C15362());
    }

    public void onResume() {
        super.onResume();
        this.toolbar.setTitle(C0859R.string.open_deposit);
    }
}
