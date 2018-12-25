package ru.rocketbank.r2d2.root.analytics;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.fragments.RocketFragment;

/* compiled from: AnalyticsContainerFragment.kt */
public final class AnalyticsContainerFragment extends RocketFragment implements ChangeAnalyticsListener {
    public static final Companion Companion = new Companion();
    private static final String FRAGMENT_MONTHS_TAG = "AnalyticsSummaryFragment";
    private HashMap _$_findViewCache;

    /* compiled from: AnalyticsContainerFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public final String getFRAGMENT_MONTHS_TAG() {
            return AnalyticsContainerFragment.FRAGMENT_MONTHS_TAG;
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

    public final int[] getJointIds() {
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null) {
            return ((ChangeAnalyticsListener) parentFragment).getJointIds();
        }
        throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.root.analytics.ChangeAnalyticsListener");
    }

    public final void onChangeAnalytics(boolean z, int[] iArr) {
        ChangeAnalyticsListener changeAnalyticsListener = (ChangeAnalyticsListener) getChildFragmentManager().findFragmentById(C0859R.id.fragment_analytics_container);
        if (changeAnalyticsListener != null) {
            changeAnalyticsListener.onChangeAnalytics(z, iArr);
        }
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        layoutInflater = layoutInflater.inflate(C0859R.layout.fragment_analytics_container, viewGroup, false);
        if (bundle == null) {
            getChildFragmentManager().beginTransaction().replace(C0859R.id.fragment_analytics_container, (Fragment) new AnalyticsSummaryFragment(), FRAGMENT_MONTHS_TAG).commit();
        }
        return layoutInflater;
    }

    public final boolean canBack() {
        if (isAdded() && getChildFragmentManager() != null) {
            FragmentManager childFragmentManager = getChildFragmentManager();
            Intrinsics.checkExpressionValueIsNotNull(childFragmentManager, "childFragmentManager");
            if (childFragmentManager.getBackStackEntryCount() > 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean onBackPressed() {
        boolean z;
        if (canBack()) {
            getChildFragmentManager().popBackStackImmediate();
            z = true;
        } else {
            z = false;
        }
        if (canBack()) {
            Utils.setActionBarUpIndicatorBack(getActivity());
        } else {
            Utils.setActionBarUpIndicatorNavigationDrawer(getActivity());
        }
        return z;
    }
}
