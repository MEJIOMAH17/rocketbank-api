package ru.rocketbank.r2d2.friends;

import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.design.widget.TabLayout;
import android.support.design.widget.TabLayout.Tab;
import android.support.design.widget.TabLayout.TabLayoutOnPageChangeListener;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import ru.rocketbank.core.events.NextButtonEvent;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.model.contact.Contact;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.SecuredActivity;

public class FriendActivity extends SecuredActivity {
    private static final String KEY_CONTACT = "KEY_CONTACT";
    private static final String KEY_CURRENT_POSITION = "KEY_CURRENT_POSITION";
    Button btnNext;
    private Contact contact;
    private int currentPosition = -1;
    private PagerAdapter pagerAdapter;
    private FriendAmountBaseFragment refillRequestAmountFragment;
    TabLayout tabLayout;
    Toolbar toolbar;
    private FriendAmountBaseFragment transfersFriendAmountFragment;
    ViewPager viewPager;

    /* renamed from: ru.rocketbank.r2d2.friends.FriendActivity$2 */
    class C15712 implements OnClickListener {
        C15712() {
        }

        public void onClick(View view) {
            FriendActivity.this.btnNext.setEnabled(false);
            FriendActivity.this.pagerAdapter.getItem(FriendActivity.this.viewPager.getCurrentItem()).onNextButtonClick();
        }
    }

    /* renamed from: ru.rocketbank.r2d2.friends.FriendActivity$1 */
    class C16801 implements OnPageChangeListener {
        public void onPageScrollStateChanged(int i) {
        }

        public void onPageScrolled(int i, float f, int i2) {
        }

        C16801() {
        }

        public void onPageSelected(int i) {
            if (FriendActivity.this.currentPosition != -1) {
                FriendActivity.this.pagerAdapter.getItem(FriendActivity.this.currentPosition).clearTransitionNames();
            }
            FriendAmountBaseFragment item = FriendActivity.this.pagerAdapter.getItem(i);
            item.setTransitionNames(FriendActivity.this.getIntent().getStringExtra("a"), FriendActivity.this.getIntent().getStringExtra("n"), FriendActivity.this.getIntent().getStringExtra("r"));
            item.onTextChanged();
            FriendActivity.this.currentPosition = i;
        }
    }

    private class OnTabSelectedListener implements android.support.design.widget.TabLayout.OnTabSelectedListener {
        public void onTabReselected(Tab tab) {
        }

        public void onTabUnselected(Tab tab) {
        }

        private OnTabSelectedListener() {
        }

        public void onTabSelected(Tab tab) {
            FriendActivity.this.viewPager.setCurrentItem(tab.getPosition());
            tab = FriendActivity.this.pagerAdapter.getItem(FriendActivity.this.viewPager.getCurrentItem());
            FriendActivity.this.btnNext.setText(tab.getNextButtonText());
            FriendActivity.this.btnNext.setEnabled(tab.isNextButtonEnabled());
        }
    }

    private static class PagerAdapter extends FragmentPagerAdapter {
        private FriendAmountBaseFragment[] fragments;

        PagerAdapter(FragmentManager fragmentManager, FriendAmountBaseFragment... friendAmountBaseFragmentArr) {
            super(fragmentManager);
            this.fragments = friendAmountBaseFragmentArr;
        }

        public FriendAmountBaseFragment getItem(int i) {
            return this.fragments[i];
        }

        public int getCount() {
            return this.fragments.length;
        }
    }

    public static void startActivity(Context context, Contact contact) {
        startActivity(context, contact, null, null);
    }

    public static void startActivity(Context context, Contact contact, Bundle bundle, Bundle bundle2) {
        Intent intent = new Intent(context, FriendActivity.class);
        intent.putExtra(KEY_CONTACT, contact);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        if (bundle2 != null) {
            if (VERSION.SDK_INT >= 21) {
                if (VERSION.SDK_INT >= 16) {
                    context.startActivity(intent, bundle2);
                    return;
                }
                AnalyticsManager.logException(new IllegalStateException("Опа, чудеса случаются!"));
                context.startActivity(intent);
                return;
            }
        }
        context.startActivity(intent);
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C0859R.layout.activity_friend_transfer);
        this.toolbar = (Toolbar) findViewById(C0859R.id.toolbar);
        this.tabLayout = (TabLayout) findViewById(C0859R.id.tabLayout);
        this.viewPager = (ViewPager) findViewById(C0859R.id.container);
        this.btnNext = (Button) findViewById(C0859R.id.btnNext);
        setSupportActionBar(this.toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }
        if (VERSION.SDK_INT >= 21) {
            postponeEnterTransition();
        }
        this.contact = (Contact) getIntent().getSerializableExtra(KEY_CONTACT);
        this.tabLayout.addTab(this.tabLayout.newTab().setText(C0859R.string.friend_transfer_button_title));
        this.tabLayout.addTab(this.tabLayout.newTab().setText(C0859R.string.friend_refill_button_title));
        this.tabLayout.setTabGravity(0);
        if (bundle == null) {
            this.refillRequestAmountFragment = RefillRequestAmountFragment.newInstance(this.contact);
            this.transfersFriendAmountFragment = TransferFriendAmountFragment.Companion.newInstance(this.contact);
            this.currentPosition = 0;
        } else {
            this.refillRequestAmountFragment = (FriendAmountBaseFragment) getSupportFragmentManager().getFragment(bundle, RefillRequestAmountFragment.class.getName());
            this.transfersFriendAmountFragment = (FriendAmountBaseFragment) getSupportFragmentManager().getFragment(bundle, TransferFriendAmountFragment.class.getName());
            this.currentPosition = bundle.getInt(KEY_CURRENT_POSITION, 0);
        }
        this.pagerAdapter = new PagerAdapter(getSupportFragmentManager(), this.transfersFriendAmountFragment, this.refillRequestAmountFragment);
        this.viewPager.addOnPageChangeListener(new C16801());
        this.viewPager.setCurrentItem(this.currentPosition);
        this.viewPager.addOnPageChangeListener(new TabLayoutOnPageChangeListener(this.tabLayout));
        this.tabLayout.setOnTabSelectedListener(new OnTabSelectedListener());
        this.viewPager.setAdapter(this.pagerAdapter);
        this.btnNext.setText(this.pagerAdapter.getItem(this.viewPager.getCurrentItem()).getNextButtonText());
        bundle = VERSION.SDK_INT;
        this.btnNext.setOnClickListener(new C15712());
    }

    protected void onResume() {
        super.onResume();
        FriendAmountBaseFragment item = this.pagerAdapter.getItem(this.viewPager.getCurrentItem());
        if (item != null) {
            this.btnNext.setEnabled(item.isNextButtonEnabled());
        }
    }

    public void onEventMainThread(SharedElementsReadyEvent sharedElementsReadyEvent) {
        if (VERSION.SDK_INT >= 21) {
            Fragment item = this.pagerAdapter.getItem(this.currentPosition);
            if (sharedElementsReadyEvent.getFragment() == item) {
                item.setTransitionNames(getIntent().getStringExtra("a"), getIntent().getStringExtra("n"), getIntent().getStringExtra("r"));
                item.onTextChanged();
            }
            scheduleStartPostponedTransition(sharedElementsReadyEvent.getAvatar());
        }
    }

    public void onEventMainThread(NextButtonEvent nextButtonEvent) {
        if (nextButtonEvent.getFragment() == this.pagerAdapter.getItem(this.currentPosition)) {
            setEnabledButtonNext(nextButtonEvent.isEnable());
        }
    }

    private void setEnabledButtonNext(boolean z) {
        this.btnNext.setEnabled(z);
    }

    private void scheduleStartPostponedTransition(final View view) {
        view.getViewTreeObserver().addOnPreDrawListener(new OnPreDrawListener() {
            public boolean onPreDraw() {
                view.getViewTreeObserver().removeOnPreDrawListener(this);
                if (VERSION.SDK_INT >= 21) {
                    FriendActivity.this.startPostponedEnterTransition();
                }
                return true;
            }
        });
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.refillRequestAmountFragment != null && this.refillRequestAmountFragment.isAdded()) {
            getSupportFragmentManager().putFragment(bundle, this.refillRequestAmountFragment.getClass().getName(), this.refillRequestAmountFragment);
        }
        if (this.transfersFriendAmountFragment != null && this.transfersFriendAmountFragment.isAdded()) {
            getSupportFragmentManager().putFragment(bundle, this.transfersFriendAmountFragment.getClass().getName(), this.transfersFriendAmountFragment);
        }
        bundle.putInt(KEY_CURRENT_POSITION, this.currentPosition);
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(this.viewPager.getWindowToken(), 0);
        supportFinishAfterTransition();
        return true;
    }
}
