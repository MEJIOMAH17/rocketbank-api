package ru.rocketbank.r2d2.root.card;

import android.view.View;
import android.view.View.OnClickListener;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.ParallaxItem;

/* compiled from: APViewHolder.kt */
public final class APViewHolder extends GenericViewHolder implements OnClickListener {
    private Function1<? super ParallaxItem, Unit> onClickAction;
    private final RocketTextView titleView;

    public APViewHolder(View view) {
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        super(view);
        View findViewById = view.findViewById(C0859R.id.title);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.titleView = (RocketTextView) findViewById;
        view.setOnClickListener(this);
    }

    public final void onClick(View view) {
        view = this.onClickAction;
        if (view != null) {
            view.invoke(getItem());
        }
    }

    public final void onBind(String str, Function1<? super ParallaxItem, Unit> function1) {
        this.titleView.setText(str);
        this.onClickAction = function1;
    }
}
