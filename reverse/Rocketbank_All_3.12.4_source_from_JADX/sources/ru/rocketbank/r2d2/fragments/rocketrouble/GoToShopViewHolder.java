package ru.rocketbank.r2d2.fragments.rocketrouble;

import android.content.res.Resources;
import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.enums.Cobrand;
import ru.rocketbank.core.realm.UserData;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: GoToShopViewHolder.kt */
public final class GoToShopViewHolder extends RocketViewHolder {
    public GoToShopViewHolder(View view) {
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        super(view);
    }

    public final void bind(UserData userData, Function0<Unit> function0) {
        Intrinsics.checkParameterIsNotNull(userData, "userData");
        Intrinsics.checkParameterIsNotNull(function0, "onClick");
        View view = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
        Resources resources = view.getResources();
        Intrinsics.checkParameterIsNotNull(userData, "userData");
        userData = resources.getString(Cobrand.Companion.fromCobrandName(userData.realmGet$cobrandName()).getMany());
        View view2 = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view2, "itemView");
        RocketTextView rocketTextView = (RocketTextView) view2.findViewById(C0859R.id.title);
        Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "itemView.title");
        rocketTextView.setText(resources.getString(C0859R.string.rocketshop_description, new Object[]{userData}));
        userData = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(userData, "itemView");
        ((RocketTextView) userData.findViewById(C0859R.id.buttonGoToShop)).setOnClickListener(new GoToShopViewHolder$bind$1(function0));
    }
}
