package ru.rocketbank.r2d2.fragments.refill;

import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.design.widget.TabLayout;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.support.v7.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import de.greenrobot.event.EventBus;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.IHostFragment;
import ru.rocketbank.r2d2.adapters.refill.UserFeedRefillPagerAdapter;
import ru.rocketbank.r2d2.fragments.RocketFragment;

public class UserFeedRefillFragment extends RocketFragment implements IHostFragment {
    private static final String KEY_REVEAL = "reveal";
    private static final String KEY_TOKEN = "KEY_TOKEN";
    private static final String KEY_X = "x";
    private static final String KEY_Y = "y";
    private UserFeedRefillPagerAdapter adapter;
    TabLayout tabLayout;
    private String token;
    RocketTextView toolbarTitleView;
    ViewPager viewPager;

    static class PageChangeEvent {
        public final int position;

        private PageChangeEvent(int i) {
            this.position = i;
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.refill.UserFeedRefillFragment$1 */
    class C16701 implements OnPageChangeListener {
        public void onPageScrollStateChanged(int i) {
        }

        public void onPageScrolled(int i, float f, int i2) {
        }

        C16701() {
        }

        public void onPageSelected(int i) {
            EventBus.getDefault().post(new PageChangeEvent(i));
            UserFeedRefillFragment.this.updateToolar(i);
        }
    }

    public boolean canShowMenu() {
        return false;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater = layoutInflater.inflate(C0859R.layout.fragment_userfeed_refill, viewGroup, false);
        this.toolbarTitleView = (RocketTextView) layoutInflater.findViewById(C0859R.id.toolbar_title);
        this.viewPager = (ViewPager) layoutInflater.findViewById(C0859R.id.pager);
        this.tabLayout = (TabLayout) layoutInflater.findViewById(C0859R.id.tabLayout);
        return layoutInflater;
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        Toolbar toolbar = (Toolbar) view.findViewById(C0859R.id.toolbar);
        setToolbarSize(toolbar, getStatusBarHeight());
        setToolbarActionBar(toolbar);
        this.toolbarTitleView.setText(null);
        toolbar.setTitle(null);
        this.adapter = new UserFeedRefillPagerAdapter(getActivity(), getChildFragmentManager());
        this.viewPager.setAdapter(this.adapter);
        this.tabLayout.setupWithViewPager(this.viewPager);
        this.viewPager.addOnPageChangeListener(new C16701());
    }

    public void onResume() {
        super.onResume();
        getActivity().setTitle("");
        this.toolbarTitleView.setText(C0859R.string.cra_title);
        this.toolbarTitleView.requestLayout();
    }

    private void updateToolar(int i) {
        switch (i) {
            case 0:
                getActivity().findViewById(C0859R.id.btnNext).setVisibility(0);
                setEnabledButtonNext(false);
                return;
            case 1:
            case 2:
                if (getActivity() != 0) {
                    i = getActivity().findViewById(C0859R.id.btnNext);
                    if (i != 0) {
                        i.setVisibility(8);
                        break;
                    }
                }
                return;
                break;
            default:
                break;
        }
    }

    private void setClickNextListener(OnClickListener onClickListener) {
        ((Button) getActivity().findViewById(C0859R.id.btnNext)).setOnClickListener(onClickListener);
    }

    private void setEnabledButtonNext(boolean z) {
        getActivity().findViewById(C0859R.id.btnNext).setEnabled(z);
        z = VERSION.SDK_INT;
    }

    public boolean canBack() {
        return this.adapter != null && this.adapter.canBack();
    }

    public void moveBack() {
        this.adapter.moveBack();
    }

    public static UserFeedRefillFragment newInstance(String str, boolean z, float f, float f2) {
        UserFeedRefillFragment userFeedRefillFragment = new UserFeedRefillFragment();
        Bundle bundle = new Bundle();
        bundle.putString(KEY_TOKEN, str);
        bundle.putBoolean("reveal", z);
        bundle.putInt("x", (int) f);
        bundle.putInt("y", (int) f2);
        userFeedRefillFragment.setArguments(bundle);
        return userFeedRefillFragment;
    }
}
