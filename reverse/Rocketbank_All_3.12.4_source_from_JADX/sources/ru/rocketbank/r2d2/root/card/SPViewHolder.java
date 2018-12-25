package ru.rocketbank.r2d2.root.card;

import android.view.View;
import android.view.View.OnClickListener;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.ParallaxItem;

/* compiled from: SPViewHolder.kt */
public final class SPViewHolder extends GenericViewHolder implements OnClickListener {
    private Function1<? super ParallaxItem, Unit> onClickAction;
    private final RocketTextView titleView;

    public SPViewHolder(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        super(view);
        view = this.itemView.findViewById(C0859R.id.title);
        Intrinsics.checkExpressionValueIsNotNull(view, "itemView.findViewById(R.id.title)");
        this.titleView = (RocketTextView) view;
    }

    public final void onClick(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        view.setEnabled(false);
        Function1 function1 = this.onClickAction;
        if (function1 != null) {
            function1.invoke(getItem());
        }
        view.setEnabled(true);
    }

    public final void onBind(String str, Function1<? super ParallaxItem, Unit> function1) {
        if (function1 != null) {
            this.onClickAction = function1;
            this.itemView.setOnClickListener(this);
        } else {
            this.itemView.setOnClickListener(null);
            function1 = this.itemView;
            Intrinsics.checkExpressionValueIsNotNull(function1, "itemView");
            function1.setClickable(false);
        }
        this.titleView.setText(str);
    }
}
