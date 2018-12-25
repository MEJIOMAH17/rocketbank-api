package ru.rocketbank.r2d2.fragments.card;

import android.content.Context;
import android.os.Bundle;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.TabLayout;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import android.support.v4.content.ContextCompat;
import android.support.v4.util.ArrayMap;
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
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.AvailableCardModel;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.databinding.FragmentNewCardBinding;
import ru.rocketbank.r2d2.fragments.RocketFragment;

/* compiled from: NewCardFragment.kt */
public final class NewCardFragment extends RocketFragment {
    private HashMap _$_findViewCache;
    private NewCardAdapter cardsAdapter;
    private FragmentNewCardBinding fragmentNewCardBinding;
    private TabLayout tabs;
    private ViewPager viewPager;

    /* compiled from: NewCardFragment.kt */
    public final class NewCardAdapter extends FragmentStatePagerAdapter {
        private List<AvailableCardModel> availableCards;
        final /* synthetic */ NewCardFragment this$0;
        private final ArrayMap<String, Integer> titles = new ArrayMap(3);

        public NewCardAdapter(NewCardFragment newCardFragment, FragmentManager fragmentManager) {
            Intrinsics.checkParameterIsNotNull(fragmentManager, "fragmentManager");
            this.this$0 = newCardFragment;
            super(fragmentManager);
            this.titles.put("rub", Integer.valueOf(C0859R.string.card_rub_title));
            this.titles.put("usd", Integer.valueOf(C0859R.string.card_usd_title));
            this.titles.put("eur", Integer.valueOf(C0859R.string.card_euro_title));
        }

        public final CharSequence getPageTitle(int i) {
            List list = this.availableCards;
            if (list != null) {
                AvailableCardModel availableCardModel = (AvailableCardModel) list.get(i);
                ArrayMap arrayMap = this.titles;
                i = availableCardModel.getCurrency().toString();
                Intrinsics.checkExpressionValueIsNotNull(i, "availableCardModel.currency.toString()");
                if (i == 0) {
                    throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                }
                i = i.toLowerCase();
                Intrinsics.checkExpressionValueIsNotNull(i, "(this as java.lang.String).toLowerCase()");
                i = (Integer) arrayMap.get(i);
                if (i == null) {
                    i = Integer.valueOf(C0859R.string.card_title);
                }
                i = this.this$0.getString(i.intValue());
                if (i != 0) {
                    return (CharSequence) i;
                }
            }
            return "";
        }

        public final NewCardInnerFragment getItem(int i) {
            List list = this.availableCards;
            return list != null ? NewCardInnerFragment.newInstance((AvailableCardModel) list.get(i)) : 0;
        }

        public final int getCount() {
            List list = this.availableCards;
            return list != null ? list.size() : 0;
        }

        public final void swap(List<AvailableCardModel> list) {
            Intrinsics.checkParameterIsNotNull(list, "cards");
            this.availableCards = list;
            notifyDataSetChanged();
        }
    }

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
        layoutInflater = FragmentNewCardBinding.inflate(layoutInflater, viewGroup, null);
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "FragmentNewCardBinding.i…flater, container, false)");
        this.fragmentNewCardBinding = layoutInflater;
        layoutInflater = this.fragmentNewCardBinding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentNewCardBinding");
        }
        layoutInflater = layoutInflater.slidingTabs;
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "fragmentNewCardBinding.slidingTabs");
        this.tabs = layoutInflater;
        layoutInflater = this.fragmentNewCardBinding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentNewCardBinding");
        }
        layoutInflater = layoutInflater.viewpager;
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "fragmentNewCardBinding.viewpager");
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
        this.cardsAdapter = new NewCardAdapter(this, viewGroup);
        layoutInflater = this.fragmentNewCardBinding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentNewCardBinding");
        }
        layoutInflater = layoutInflater.viewpager;
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "fragmentNewCardBinding.viewpager");
        viewGroup = this.cardsAdapter;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cardsAdapter");
        }
        layoutInflater.setAdapter((PagerAdapter) viewGroup);
        layoutInflater = this.fragmentNewCardBinding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentNewCardBinding");
        }
        return layoutInflater.getRoot();
    }

    public final void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        setupToolbar();
    }

    private final void setupToolbar() {
        int statusBarHeight = getStatusBarHeight();
        FragmentNewCardBinding fragmentNewCardBinding = this.fragmentNewCardBinding;
        if (fragmentNewCardBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentNewCardBinding");
        }
        int minimumHeight = ViewCompat.getMinimumHeight(fragmentNewCardBinding.appBar);
        FragmentNewCardBinding fragmentNewCardBinding2 = this.fragmentNewCardBinding;
        if (fragmentNewCardBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentNewCardBinding");
        }
        AppBarLayout appBarLayout = fragmentNewCardBinding2.appBar;
        Intrinsics.checkExpressionValueIsNotNull(appBarLayout, "fragmentNewCardBinding.appBar");
        appBarLayout.setMinimumHeight(minimumHeight + (statusBarHeight << 1));
        fragmentNewCardBinding = this.fragmentNewCardBinding;
        if (fragmentNewCardBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentNewCardBinding");
        }
        Toolbar toolbar = fragmentNewCardBinding.toolbar;
        toolbar.setNavigationIcon(C0859R.drawable.ic_drawer_black);
        toolbar.setTitle(C0859R.string.create_card);
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        toolbar.setTitleTextColor(ContextCompat.getColor(context, C0859R.color.rocketBlack));
        setToolbarSize(toolbar, statusBarHeight);
        toolbar.setNavigationOnClickListener(getNavigationClick());
    }

    public final void onResume() {
        super.onResume();
        FragmentNewCardBinding fragmentNewCardBinding = this.fragmentNewCardBinding;
        if (fragmentNewCardBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentNewCardBinding");
        }
        fragmentNewCardBinding.toolbar.setTitle(C0859R.string.open_safe_account);
    }

    public final void onUserModel(UserModel userModel) {
        Intrinsics.checkParameterIsNotNull(userModel, "userModel");
        super.onUserModel(userModel);
        userModel = userModel.getAvailableCards();
        if (userModel.isEmpty()) {
            userModel = getActivity();
            if (userModel != null) {
                userModel.onBackPressed();
                return;
            }
            return;
        }
        List list = (List) userModel;
        Collections.sort(list, new NewCardFragment$onUserModel$1());
        TabLayout tabLayout = this.tabs;
        if (tabLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tabs");
        }
        int selectedTabPosition = tabLayout.getSelectedTabPosition();
        NewCardAdapter newCardAdapter = this.cardsAdapter;
        if (newCardAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cardsAdapter");
        }
        Intrinsics.checkExpressionValueIsNotNull(userModel, "cards");
        newCardAdapter.swap(list);
        userModel = this.viewPager;
        if (userModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewPager");
        }
        userModel.setCurrentItem(selectedTabPosition);
    }
}
