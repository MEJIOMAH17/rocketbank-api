package ru.rocketbank.r2d2.widgets.recycler.parallax.vh;

import android.view.View;
import android.view.View.OnClickListener;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder;

/* compiled from: GenericRightArrowViewHolder.kt */
public final class GenericRightArrowViewHolder extends GenericViewHolder implements OnClickListener {
    private final View arrow;
    private Function1<? super ParallaxItem, Unit> onClickAction;
    private final RocketTextView selectView;
    private final RocketTextView subtitleView;
    private final RocketTextView titleView;

    public GenericRightArrowViewHolder(View view) {
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        super(view);
        View findViewById = view.findViewById(C0859R.id.title);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.titleView = (RocketTextView) findViewById;
        findViewById = view.findViewById(C0859R.id.selected);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.selectView = (RocketTextView) findViewById;
        findViewById = view.findViewById(C0859R.id.subtitle);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.subtitleView = (RocketTextView) findViewById;
        findViewById = view.findViewById(C0859R.id.arrow);
        Intrinsics.checkExpressionValueIsNotNull(findViewById, "itemView.findViewById(R.id.arrow)");
        this.arrow = findViewById;
        view.setOnClickListener(this);
    }

    public final void onClick(View view) {
        view = this.onClickAction;
        if (view != null) {
            view.invoke(getItem());
        }
    }

    public static /* bridge */ /* synthetic */ void onBind$default(GenericRightArrowViewHolder genericRightArrowViewHolder, String str, String str2, String str3, Function1 function1, boolean z, int i, Object obj) {
        if ((i & 16) != 0) {
            z = false;
        }
        genericRightArrowViewHolder.onBind(str, str2, str3, function1, z);
    }

    public final void onBind(String str, String str2, String str3, Function1<? super ParallaxItem, Unit> function1, boolean z) {
        int i = 8;
        if (str3 != null) {
            this.subtitleView.setVisibility(0);
            this.subtitleView.setText(str3);
        } else {
            this.subtitleView.setVisibility(8);
        }
        this.selectView.setText(str2);
        this.titleView.setText(str);
        this.onClickAction = function1;
        str = this.arrow;
        if (!z) {
            i = 0;
        }
        str.setVisibility(i);
    }
}
