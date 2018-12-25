package ru.rocketbank.r2d2.fragments.safe;

import android.content.Context;
import android.os.Bundle;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.TabLayout;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPager;
import android.support.v7.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.databinding.FragmentNewSafeBinding;
import ru.rocketbank.r2d2.fragments.RocketFragment;

/* compiled from: NewSafeFragment.kt */
public final class NewSafeFragment extends RocketFragment {
    private HashMap _$_findViewCache;
    private FragmentNewSafeBinding fragmentNewSafeBinding;
    private SafeAccountsAdapter safeAccountsAdapter;
    private TabLayout tabs;
    private ViewPager viewPager;

    public final void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public final View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view == null) {
            view = getView();
            if (view == null) {
                return null;
            }
            view = view.findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view);
        }
        return view;
    }

    public final /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        layoutInflater = FragmentNewSafeBinding.inflate(layoutInflater, viewGroup, null);
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "FragmentNewSafeBinding.i…flater, container, false)");
        this.fragmentNewSafeBinding = layoutInflater;
        layoutInflater = this.fragmentNewSafeBinding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentNewSafeBinding");
        }
        layoutInflater = layoutInflater.slidingTabs;
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "fragmentNewSafeBinding.slidingTabs");
        this.tabs = layoutInflater;
        layoutInflater = this.fragmentNewSafeBinding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentNewSafeBinding");
        }
        layoutInflater = layoutInflater.viewpager;
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "fragmentNewSafeBinding.viewpager");
        this.viewPager = layoutInflater;
        layoutInflater = this.tabs;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tabs");
        }
        viewGroup = this.viewPager;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewPager");
        }
        layoutInflater.setupWithViewPager(viewGroup);
        viewGroup = getChildFragmentManager();
        Intrinsics.checkExpressionValueIsNotNull(viewGroup, "childFragmentManager");
        this.safeAccountsAdapter = new SafeAccountsAdapter(viewGroup);
        layoutInflater = this.fragmentNewSafeBinding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentNewSafeBinding");
        }
        layoutInflater = layoutInflater.viewpager;
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "fragmentNewSafeBinding.viewpager");
        viewGroup = this.safeAccountsAdapter;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("safeAccountsAdapter");
        }
        layoutInflater.setAdapter((PagerAdapter) viewGroup);
        layoutInflater = this.fragmentNewSafeBinding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentNewSafeBinding");
        }
        return layoutInflater.getRoot();
    }

    public final void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        setupToolbar();
    }

    public final void onUserModel(UserModel userModel) {
        Intrinsics.checkParameterIsNotNull(userModel, "userModel");
        super.onUserModel(userModel);
        userModel = userModel.getAvailableAccounts();
        List list = (List) userModel;
        Collections.sort(list, new NewSafeFragment$onUserModel$1());
        TabLayout tabLayout = this.tabs;
        if (tabLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tabs");
        }
        int selectedTabPosition = tabLayout.getSelectedTabPosition();
        SafeAccountsAdapter safeAccountsAdapter = this.safeAccountsAdapter;
        if (safeAccountsAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("safeAccountsAdapter");
        }
        Intrinsics.checkExpressionValueIsNotNull(userModel, "accounts");
        safeAccountsAdapter.swap(list);
        userModel = this.viewPager;
        if (userModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewPager");
        }
        userModel.setCurrentItem(selectedTabPosition);
    }

    private final void setupToolbar() {
        int statusBarHeight = getStatusBarHeight();
        FragmentNewSafeBinding fragmentNewSafeBinding = this.fragmentNewSafeBinding;
        if (fragmentNewSafeBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentNewSafeBinding");
        }
        int minimumHeight = ViewCompat.getMinimumHeight(fragmentNewSafeBinding.appBar);
        FragmentNewSafeBinding fragmentNewSafeBinding2 = this.fragmentNewSafeBinding;
        if (fragmentNewSafeBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentNewSafeBinding");
        }
        AppBarLayout appBarLayout = fragmentNewSafeBinding2.appBar;
        Intrinsics.checkExpressionValueIsNotNull(appBarLayout, "fragmentNewSafeBinding.appBar");
        appBarLayout.setMinimumHeight(minimumHeight + (statusBarHeight << 1));
        fragmentNewSafeBinding = this.fragmentNewSafeBinding;
        if (fragmentNewSafeBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentNewSafeBinding");
        }
        Toolbar toolbar = fragmentNewSafeBinding.toolbar;
        toolbar.setNavigationIcon(C0859R.drawable.ic_drawer_black);
        toolbar.setTitle(C0859R.string.open_safe_account);
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        toolbar.setTitleTextColor(ContextCompat.getColor(context, C0859R.color.rocketBlack));
        setToolbarSize(toolbar, statusBarHeight);
        toolbar.setNavigationOnClickListener(new NewSafeFragment$setupToolbar$1(this));
    }

    public final void onResume() {
        super.onResume();
        FragmentNewSafeBinding fragmentNewSafeBinding = this.fragmentNewSafeBinding;
        if (fragmentNewSafeBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentNewSafeBinding");
        }
        fragmentNewSafeBinding.toolbar.setTitle(C0859R.string.open_safe_account);
    }
}
