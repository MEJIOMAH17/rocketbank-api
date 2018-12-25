package ru.rocketbank.r2d2.fragments.transfers;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.network.model.TransfersModelUrFiz;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.fragments.NextButtonListener;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import ru.rocketbank.r2d2.fragments.TabFragmentListener;

/* compiled from: TransfersToBankAccountContainer.kt */
public final class TransfersToBankAccountContainer extends RocketFragment implements TabFragmentListener {
    public static final Companion Companion = new Companion();
    private static Function2<? super ArrayList<TransfersModelUrFiz>, ? super ArrayList<TransfersModelUrFiz>, Unit> add = TransfersToBankAccountContainer$Companion$add$1.INSTANCE;
    private HashMap _$_findViewCache;
    private Fragment currentFragment;
    private boolean isEmpty;

    /* compiled from: TransfersToBankAccountContainer.kt */
    public static final class Companion {
        private Companion() {
        }

        public final Function2<ArrayList<TransfersModelUrFiz>, ArrayList<TransfersModelUrFiz>, Unit> getAdd() {
            return TransfersToBankAccountContainer.add;
        }

        public final void setAdd(Function2<? super ArrayList<TransfersModelUrFiz>, ? super ArrayList<TransfersModelUrFiz>, Unit> function2) {
            Intrinsics.checkParameterIsNotNull(function2, "<set-?>");
            TransfersToBankAccountContainer.add = function2;
        }

        public final TransfersToBankAccountContainer newInstance(ArrayList<TransfersModelUrFiz> arrayList, ArrayList<TransfersModelUrFiz> arrayList2, ArrayList<TransfersModelUrFiz> arrayList3) {
            Bundle bundle = new Bundle();
            ArrayList arrayList4 = new ArrayList();
            Companion companion = this;
            getAdd().invoke(arrayList, arrayList4);
            getAdd().invoke(arrayList2, arrayList4);
            getAdd().invoke(arrayList3, arrayList4);
            arrayList = arrayList4.isEmpty();
            bundle.putBoolean("is_empty", arrayList4.isEmpty());
            if (arrayList == null) {
                bundle.putParcelableArrayList("array", arrayList4);
            }
            arrayList = new TransfersToBankAccountContainer();
            arrayList.setArguments(bundle);
            return arrayList;
        }
    }

    public static final TransfersToBankAccountContainer newInstance(ArrayList<TransfersModelUrFiz> arrayList, ArrayList<TransfersModelUrFiz> arrayList2, ArrayList<TransfersModelUrFiz> arrayList3) {
        return Companion.newInstance(arrayList, arrayList2, arrayList3);
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

    public final void updateNextButton(Fragment fragment) {
        Intrinsics.checkParameterIsNotNull(fragment, "fragment");
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        layoutInflater = layoutInflater.inflate(C0859R.layout.fragment_transfers_bank_account_container, viewGroup, false);
        viewGroup = getArguments();
        if (viewGroup == null) {
            Intrinsics.throwNpe();
        }
        this.isEmpty = viewGroup.getBoolean("is_empty");
        if (bundle != null || this.currentFragment != null) {
            this.currentFragment = getChildFragmentManager().findFragmentById(C0859R.id.transfer_fiz_ur_container);
        } else if (this.isEmpty != null) {
            goToBankTransferFragment(false);
        } else {
            goToRecentTransfers(false);
        }
        return layoutInflater;
    }

    private final void replaceFragment(Fragment fragment, boolean z) {
        this.currentFragment = fragment;
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        if (z) {
            beginTransaction.setCustomAnimations(true, C0859R.anim.slide_out_left, C0859R.anim.slide_in_left, C0859R.anim.slide_out_right);
        }
        beginTransaction.replace(true, fragment).addToBackStack(false).commit();
    }

    private final void goToRecentTransfers(boolean z) {
        Bundle arguments = getArguments();
        if (arguments == null) {
            Intrinsics.throwNpe();
        }
        Fragment newInstance = RecentTransferFragment.newInstance(arguments.getParcelableArrayList("array"));
        Intrinsics.checkExpressionValueIsNotNull(newInstance, "RecentTransferFragment.newInstance(array)");
        replaceFragment(newInstance, z);
    }

    public final boolean onBackPressed() {
        if (!isAdded() || this.isEmpty || (getChildFragmentManager().findFragmentById(C0859R.id.transfer_fiz_ur_container) instanceof RecentTransferFragment)) {
            return super.onBackPressed();
        }
        try {
            getChildFragmentManager().popBackStack();
            return true;
        } catch (Throwable th) {
            AnalyticsManager.logException(th);
            return super.onBackPressed();
        }
    }

    public final void goToBankTransferFragment() {
        replaceFragment(new TransferBankFragment(), true);
    }

    public final void goToBankTransferFragment(boolean z) {
        replaceFragment(new TransferBankFragment(), z);
    }

    public final void onResume() {
        super.onResume();
        Fragment parentFragment = getParentFragment();
        if (parentFragment == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.fragments.transfers.TransferTabFragment");
        } else if (((TransferTabFragment) parentFragment).getCurrentFragment() == this) {
            setBtnNextTransferFragment();
        }
    }

    public final void onSelected() {
        setBtnNextTransferFragment();
    }

    public final void onNextButtonClick() {
        if (this.currentFragment != null) {
            Fragment fragment = this.currentFragment;
            if (fragment == null) {
                throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.fragments.NextButtonListener");
            }
            ((NextButtonListener) fragment).onNextButtonClick();
        }
    }

    private final void setBtnNextTransferFragment() {
        if (this.currentFragment != null) {
            Fragment fragment = this.currentFragment;
            if (fragment == null) {
                throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.fragments.NextButtonListener");
            }
            ((NextButtonListener) fragment).updateNextButton(this);
        }
    }
}
