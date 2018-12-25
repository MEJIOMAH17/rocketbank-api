package ru.rocketbank.r2d2.widgets.recycler.parallax.vh;

import android.view.View;
import com.facebook.share.internal.ShareConstants;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder;

/* compiled from: GenericDelimiterViewHolder.kt */
public final class GenericDelimiterViewHolder extends GenericViewHolder {
    private final RocketTextView titleView;

    public GenericDelimiterViewHolder(View view) {
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        super(view);
        view = view.findViewById(C0859R.id.title);
        if (view == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.titleView = (RocketTextView) view;
    }

    public final void setText(String str) {
        Intrinsics.checkParameterIsNotNull(str, ShareConstants.WEB_DIALOG_PARAM_TITLE);
        this.titleView.setText(str);
    }
}
