package ru.rocketbank.r2d2.charges;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.charges.ChargesAdapter.ViewHolder;

/* compiled from: ChargesListActivity.kt */
final class ChargesAdapter$onBindViewHolder$1 implements OnClickListener {
    final /* synthetic */ ViewHolder $holder;
    final /* synthetic */ Intent $intent;

    ChargesAdapter$onBindViewHolder$1(ViewHolder viewHolder, Intent intent) {
        this.$holder = viewHolder;
        this.$intent = intent;
    }

    public final void onClick(View view) {
        view = this.$holder.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "holder.itemView");
        view = view.getContext();
        if (view == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.app.Activity");
        }
        ((Activity) view).startActivityForResult(this.$intent, ChargesAdapter.Companion.getREQUEST_CODE());
    }
}
