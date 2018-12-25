package ru.rocketbank.r2d2.fragments.transfers;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.Utils;

/* compiled from: TransferBankFragment.kt */
public final class MultilineArrayAdapter extends ArrayAdapter<Object> {
    public MultilineArrayAdapter(Context context, Object[] objArr) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(objArr, "objects");
        super(context, C0859R.layout.budget_tax_basis_item, objArr);
    }

    public final View getDropDownView(int i, View view, ViewGroup viewGroup) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "parent");
        i = super.getDropDownView(i, view, viewGroup);
        if (i == 0) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
        }
        TextView textView = (TextView) i;
        view = Utils.dpToPx(getContext(), 16);
        viewGroup = view / 2;
        textView.setPadding(view, viewGroup, view, viewGroup);
        textView.post((Runnable) new MultilineArrayAdapter$getDropDownView$1(textView));
        return textView;
    }
}
