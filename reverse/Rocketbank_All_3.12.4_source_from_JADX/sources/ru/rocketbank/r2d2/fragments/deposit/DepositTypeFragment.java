package ru.rocketbank.r2d2.fragments.deposit;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import ru.rocketbank.core.network.model.Deposit;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: DepositTypeFragment.kt */
public final class DepositTypeFragment extends Fragment {
    private static final String ARG_DEPOSIT = "ARG_DEPOSIT";
    public static final Companion Companion = new Companion();
    private HashMap _$_findViewCache;

    /* compiled from: DepositTypeFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public final DepositTypeFragment newInstance(Deposit deposit) {
            Intrinsics.checkParameterIsNotNull(deposit, "deposit");
            Bundle bundle = new Bundle();
            bundle.putParcelable(DepositTypeFragment.ARG_DEPOSIT, deposit);
            deposit = new DepositTypeFragment();
            deposit.setArguments(bundle);
            return deposit;
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
        bundle = getArguments();
        if (bundle == null) {
            Intrinsics.throwNpe();
        }
        Deposit deposit = (Deposit) bundle.getParcelable(ARG_DEPOSIT);
        layoutInflater = layoutInflater.inflate(C0859R.layout.deposit_type_fragment, viewGroup, false);
        if (layoutInflater != null) {
            viewGroup = layoutInflater.findViewById(C0859R.id.textViewDuration);
            if (viewGroup == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
            }
            TextView textView = (TextView) viewGroup;
            View findViewById = layoutInflater.findViewById(C0859R.id.textViewDurationType);
            if (findViewById == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
            }
            TextView textView2 = (TextView) findViewById;
            View findViewById2 = layoutInflater.findViewById(C0859R.id.textViewMinMoney);
            if (findViewById2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
            }
            TextView textView3 = (TextView) findViewById2;
            View findViewById3 = layoutInflater.findViewById(C0859R.id.imageView);
            if (findViewById3 == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.ImageView");
            }
            StringBuilder stringBuilder;
            ImageView imageView = (ImageView) findViewById3;
            String periodText = deposit.getPeriodText();
            if (periodText != null) {
                periodText = StringsKt.replace$default(periodText, String.valueOf(deposit.getPeriod()), "", false, 4, null);
                if (periodText != null) {
                    if (periodText == null) {
                        throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
                    }
                    periodText = StringsKt.trim(periodText).toString();
                    textView2.setText(periodText);
                    stringBuilder = new StringBuilder();
                    stringBuilder.append(deposit.getPeriod());
                    textView.setText(stringBuilder.toString());
                    textView3.setText(deposit.getMinAmountText());
                    viewGroup = deposit.getPeriod();
                    viewGroup = viewGroup != 3 ? C0859R.drawable.vklad_money_3 : viewGroup != 6 ? C0859R.drawable.vklad_money_6 : C0859R.drawable.vklad_money_12;
                    imageView.setImageResource(viewGroup);
                }
            }
            periodText = null;
            textView2.setText(periodText);
            stringBuilder = new StringBuilder();
            stringBuilder.append(deposit.getPeriod());
            textView.setText(stringBuilder.toString());
            textView3.setText(deposit.getMinAmountText());
            viewGroup = deposit.getPeriod();
            if (viewGroup != 3) {
                if (viewGroup != 6) {
                }
            }
            imageView.setImageResource(viewGroup);
        }
        return layoutInflater;
    }
}
