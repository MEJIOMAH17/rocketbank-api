package ru.rocketbank.r2d2.fragments.transfers;

import android.os.Bundle;
import android.support.design.widget.TabLayout;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import java.util.ArrayList;
import ru.rocketbank.core.events.NextButtonEvent;
import ru.rocketbank.core.manager.TemplateManager;
import ru.rocketbank.core.model.TransferTemplates;
import ru.rocketbank.core.network.model.TransfersModelUrFiz;
import ru.rocketbank.core.utils.RocketPageAdapter;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonData;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonHandler;
import ru.rocketbank.r2d2.databinding.TransferTabsFragmentBinding;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import ru.rocketbank.r2d2.fragments.TabFragmentListener;
import rx.Subscriber;
import rx.Subscription;

public class TransferTabFragment extends RocketFragment implements ToolbarWithButtonHandler {
    static final String IS_EMPTY = "is_empty";
    private static final String KEY_BUDGET = "KEY_BUDGET";
    private static final String KEY_FIZ = "KEY_FIZ";
    private static final String KEY_UR = "KEY_UR";
    private static final String TAG = "TransferTabFragment";
    private TransferTabsFragmentBinding binding;
    private Button btnNext;
    private Fragment currentFragment;
    private TabLayout tabLayout;
    TemplateManager templateManager = getInjector().getTemplateManager();
    private Subscription templatesGetSubscription;
    private Toolbar toolbar;
    private ToolbarWithButtonData toolbarWithButtonData = new ToolbarWithButtonData();
    private TransferPagerAdapter transferAdapter;
    private ArrayList<TransfersModelUrFiz> transfersToBudget;
    private ArrayList<TransfersModelUrFiz> transfersToFiz;
    private ArrayList<TransfersModelUrFiz> transfersToUr;
    private ViewPager viewPager;

    /* renamed from: ru.rocketbank.r2d2.fragments.transfers.TransferTabFragment$2 */
    class C16792 implements OnPageChangeListener {
        public void onPageScrollStateChanged(int i) {
        }

        public void onPageScrolled(int i, float f, int i2) {
        }

        public void onPageSelected(int i) {
        }

        C16792() {
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.transfers.TransferTabFragment$1 */
    class C17971 extends Subscriber<TransferTemplates> {
        public void onCompleted() {
        }

        C17971() {
        }

        public void onError(Throwable th) {
            TransferTabFragment.this.hideSpinner();
            Log.e(TransferTabFragment.TAG, "Failed to load lists", th);
        }

        public void onNext(TransferTemplates transferTemplates) {
            TransferTabFragment.this.transfersToUr = transferTemplates.getLegalEntities();
            TransferTabFragment.this.transfersToFiz = transferTemplates.getIndividuals();
            TransferTabFragment.this.transfersToBudget = transferTemplates.getBudget();
            TransferTabFragment.this.hideSpinner();
            TransferTabFragment.this.updateUi();
        }
    }

    private class TransferPagerAdapter extends RocketPageAdapter {
        private Fragment _currentPrimaryItem;
        private Fragment _lastCurentPrimaryItem;
        private Fragment[] fragments;
        private String[] titles;

        TransferPagerAdapter(FragmentManager fragmentManager, Fragment... fragmentArr) {
            super(fragmentManager);
            this.fragments = fragmentArr;
            this.titles = new String[]{r2.getResources().getString(C0859R.string.transfer_on_card_page), r2.getResources().getString(2131821705)};
        }

        public Fragment getItem(int i) {
            return this.fragments[i];
        }

        public void setPrimaryItem(ViewGroup viewGroup, int i, Object obj) {
            super.setPrimaryItem(viewGroup, i, obj);
            this._currentPrimaryItem = (Fragment) obj;
            if (this._currentPrimaryItem.isAdded() != null) {
                if (this._lastCurentPrimaryItem == null || this._lastCurentPrimaryItem != this._currentPrimaryItem) {
                    if ((this._currentPrimaryItem instanceof TabFragmentListener) != null) {
                        TransferTabFragment.this.currentFragment = this._currentPrimaryItem;
                        ((TabFragmentListener) this._currentPrimaryItem).onSelected();
                    }
                    if (i != 0) {
                        Utils.closeKeyboardIfExists(TransferTabFragment.this.getActivity());
                    }
                    this._lastCurentPrimaryItem = this._currentPrimaryItem;
                }
            }
        }

        public int getCount() {
            return this.titles.length;
        }

        public CharSequence getPageTitle(int i) {
            return i < this.titles.length ? this.titles[i] : 0;
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = TransferTabsFragmentBinding.inflate(layoutInflater, viewGroup, null);
        this.viewPager = this.binding.pager;
        this.tabLayout = this.binding.includeTab.tabLayout;
        this.btnNext = this.binding.includeToolbar.next;
        this.binding.includeToolbar.setToolbarBinding(this.toolbarWithButtonData);
        this.toolbarWithButtonData.getTitle().set(getString(C0859R.string.menu_transfer_caption));
        this.toolbar = this.binding.includeToolbar.toolbar;
        setToolbarSize(this.toolbar, getStatusBarHeight());
        setToolbarActionBar(this.toolbar);
        this.toolbar.setBackgroundColor(ContextCompat.getColor(getContext(), C0859R.color.white));
        return this.binding.getRoot();
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (this.transferAdapter != null) {
            this.viewPager.setAdapter(this.transferAdapter);
            this.viewPager.setOffscreenPageLimit(10);
            this.tabLayout.setupWithViewPager(this.viewPager);
        } else if (bundle == null) {
            load();
        } else {
            this.transfersToUr = bundle.getParcelableArrayList(KEY_UR);
            this.transfersToFiz = bundle.getParcelableArrayList(KEY_FIZ);
            this.transfersToBudget = bundle.getParcelableArrayList(KEY_BUDGET);
            updateUi();
        }
    }

    public void onPause() {
        hideSpinner();
        unsubscribe(this.templatesGetSubscription);
        this.viewPager.onSaveInstanceState();
        this.binding.includeToolbar.setHandler(null);
        super.onPause();
    }

    public void onResume() {
        super.onResume();
        this.binding.includeToolbar.setHandler(this);
    }

    public void onEventMainThread(NextButtonEvent nextButtonEvent) {
        if (nextButtonEvent.getFragment() == this.currentFragment) {
            this.btnNext.setEnabled(nextButtonEvent.isEnable());
            if (nextButtonEvent.getVisibility() != null) {
                this.btnNext.setVisibility(nextButtonEvent.getVisibility().intValue());
            }
            if (nextButtonEvent.getTitle() != null) {
                this.btnNext.setText(nextButtonEvent.getTitle());
            }
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelableArrayList(KEY_UR, this.transfersToUr);
        bundle.putParcelableArrayList(KEY_FIZ, this.transfersToFiz);
        bundle.putParcelableArrayList(KEY_BUDGET, this.transfersToBudget);
    }

    public void nextPressed(View view) {
        if (this.currentFragment != null) {
            ((TabFragmentListener) this.currentFragment).onNextButtonClick();
        }
    }

    private void load() {
        showSpinner();
        this.templatesGetSubscription = this.templateManager.getTemplates().subscribe(new C17971());
        this.templateManager.refreshTemplates();
    }

    public boolean onBackPressed() {
        if (this.currentFragment == null || !(this.currentFragment instanceof RocketFragment)) {
            return super.onBackPressed();
        }
        return ((RocketFragment) this.currentFragment).onBackPressed();
    }

    private void updateUi() {
        TransfersFromCardFragment newInstance = TransfersFromCardFragment.newInstance();
        TransfersToBankAccountContainer newInstance2 = TransfersToBankAccountContainer.newInstance(this.transfersToFiz, this.transfersToUr, this.transfersToBudget);
        this.transferAdapter = new TransferPagerAdapter(getChildFragmentManager(), newInstance, newInstance2);
        this.viewPager.addOnPageChangeListener(new C16792());
        this.viewPager.setAdapter(this.transferAdapter);
        this.viewPager.setOffscreenPageLimit(10);
        this.tabLayout.setupWithViewPager(this.viewPager);
    }

    public Fragment getCurrentFragment() {
        return this.currentFragment;
    }
}
