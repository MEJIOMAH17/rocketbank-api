package ru.rocketbank.r2d2.adapters.refill;

import android.app.Activity;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.view.ViewGroup;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.utils.RocketPageAdapter;
import ru.rocketbank.r2d2.IHostFragment;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.fragments.TabFragmentListener;
import ru.rocketbank.r2d2.fragments.refill.RefillCashFragment;
import ru.rocketbank.r2d2.fragments.refill.bank.AccountDetailsFragment;
import ru.rocketbank.r2d2.fragments.refill.card.RefillFromCardFragment;

/* compiled from: UserFeedRefillPagerAdapter.kt */
public final class UserFeedRefillPagerAdapter extends RocketPageAdapter {
    private Fragment _currentPrimaryItem;
    private Fragment _lastCurentPrimaryItem;
    private final String[] _tabCaptions = new String[]{"Картой", "Наличными", "Переводом"};
    private final Activity activity;

    public UserFeedRefillPagerAdapter(Activity activity, FragmentManager fragmentManager) {
        Intrinsics.checkParameterIsNotNull(activity, "activity");
        Intrinsics.checkParameterIsNotNull(fragmentManager, "fm");
        super(fragmentManager);
        this.activity = activity;
    }

    public final Fragment getItem(int i) {
        switch (i) {
            case 0:
                return RefillFromCardFragment.Companion.newInstance();
            case 1:
                return (Fragment) new RefillCashFragment();
            case 2:
                return (Fragment) new AccountDetailsFragment();
            default:
                return 0;
        }
    }

    public final int getCount() {
        return this._tabCaptions.length;
    }

    public final void setPrimaryItem(ViewGroup viewGroup, int i, Object obj) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "container");
        Intrinsics.checkParameterIsNotNull(obj, "object");
        super.setPrimaryItem(viewGroup, i, obj);
        this._currentPrimaryItem = (Fragment) obj;
        viewGroup = this._currentPrimaryItem;
        if (viewGroup == null) {
            Intrinsics.throwNpe();
        }
        if (viewGroup.isAdded() != null) {
            if (this._lastCurentPrimaryItem == null || Intrinsics.areEqual(this._lastCurentPrimaryItem, this._currentPrimaryItem) == null) {
                if ((this._currentPrimaryItem instanceof TabFragmentListener) != null) {
                    viewGroup = this._currentPrimaryItem;
                    if (viewGroup == null) {
                        throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.fragments.TabFragmentListener");
                    }
                    ((TabFragmentListener) viewGroup).onSelected();
                }
                if (i != 0) {
                    Utils.closeKeyboardIfExists(this.activity);
                }
                this._lastCurentPrimaryItem = this._currentPrimaryItem;
            }
        }
    }

    public final CharSequence getPageTitle(int i) {
        return i < this._tabCaptions.length ? (CharSequence) this._tabCaptions[i] : 0;
    }

    public final boolean canBack() {
        if (this._currentPrimaryItem == null || !(this._currentPrimaryItem instanceof IHostFragment)) {
            return false;
        }
        Fragment fragment = this._currentPrimaryItem;
        if (fragment != null) {
            return ((IHostFragment) fragment).canBack();
        }
        throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.IHostFragment");
    }

    public final void moveBack() {
        if (this._currentPrimaryItem != null && (this._currentPrimaryItem instanceof IHostFragment)) {
            Fragment fragment = this._currentPrimaryItem;
            if (fragment == null) {
                throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.IHostFragment");
            }
            ((IHostFragment) fragment).moveBack();
        }
    }
}
