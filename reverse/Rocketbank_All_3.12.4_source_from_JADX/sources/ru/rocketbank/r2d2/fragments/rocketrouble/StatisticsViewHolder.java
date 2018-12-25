package ru.rocketbank.r2d2.fragments.rocketrouble;

import android.content.Context;
import android.content.res.Resources;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import java.util.Calendar;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.enums.Cobrand;
import ru.rocketbank.core.realm.UserData;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.utils.CalendarUtils;

/* compiled from: StatisticsViewHolder.kt */
public final class StatisticsViewHolder extends RocketViewHolder implements OnClickListener {
    private final RocketRoubleAdapter adapter;
    private final Authorization authorization = RocketApplication.Companion.getInjector().getAuthorization();
    private final LayoutInflater layoutInflater;
    private final MoneyFormatter moneyFormatter = RocketApplication.Companion.getInjector().getMoneyFormatter();
    private final RecyclerView recyclerView;
    private final RocketRoubleModel rocketRoubleModel;
    private final LinearLayout statisticsContainer;

    public final LayoutInflater getLayoutInflater() {
        return this.layoutInflater;
    }

    public final RocketRoubleAdapter getAdapter() {
        return this.adapter;
    }

    public final RecyclerView getRecyclerView() {
        return this.recyclerView;
    }

    public StatisticsViewHolder(RocketRoubleModel rocketRoubleModel, LayoutInflater layoutInflater, RocketRoubleAdapter rocketRoubleAdapter, RecyclerView recyclerView, View view) {
        Intrinsics.checkParameterIsNotNull(rocketRoubleModel, "rocketRoubleModel");
        Intrinsics.checkParameterIsNotNull(layoutInflater, "layoutInflater");
        Intrinsics.checkParameterIsNotNull(rocketRoubleAdapter, "adapter");
        Intrinsics.checkParameterIsNotNull(recyclerView, "recyclerView");
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        super(view);
        this.rocketRoubleModel = rocketRoubleModel;
        this.layoutInflater = layoutInflater;
        this.adapter = rocketRoubleAdapter;
        this.recyclerView = recyclerView;
        rocketRoubleModel = view.findViewById(C0859R.id.statisticsContainer);
        Intrinsics.checkExpressionValueIsNotNull(rocketRoubleModel, "itemView.findViewById(R.id.statisticsContainer)");
        this.statisticsContainer = (LinearLayout) rocketRoubleModel;
    }

    public final void resetAll() {
        this.statisticsContainer.removeAllViews();
    }

    public final void addForAllTime(UserModel userModel, Float f) {
        Intrinsics.checkParameterIsNotNull(userModel, "userModel");
        userModel = this.layoutInflater.inflate(C0859R.layout.layout_statistics_total_item, this.statisticsContainer, false);
        View findViewById = userModel.findViewById(C0859R.id.amount);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        RocketTextView rocketTextView = (RocketTextView) findViewById;
        MoneyFormatter moneyFormatter = this.moneyFormatter;
        if (f == null) {
            Intrinsics.throwNpe();
        }
        rocketTextView.setText(moneyFormatter.format((double) f.floatValue(), "", false));
        findViewById = userModel.findViewById(C0859R.id.rocketrouble);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        rocketTextView = (RocketTextView) findViewById;
        View view = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
        Resources resources = view.getResources();
        UserData userData = this.authorization.getUserData();
        Intrinsics.checkParameterIsNotNull(userData, "userData");
        rocketTextView.setText(resources.getQuantityString(Cobrand.Companion.fromCobrandName(userData.realmGet$cobrandName()).getMoney(), (int) f.floatValue()));
        this.statisticsContainer.addView(userModel);
    }

    public final void addMonth(UserModel userModel, Float f, Calendar calendar) {
        Intrinsics.checkParameterIsNotNull(userModel, "userModel");
        Intrinsics.checkParameterIsNotNull(calendar, "dateTime");
        userModel = Calendar.getInstance();
        View inflate = this.layoutInflater.inflate(C0859R.layout.layout_statistics_item, this.statisticsContainer, false);
        View findViewById = inflate.findViewById(C0859R.id.amount);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        RocketTextView rocketTextView = (RocketTextView) findViewById;
        View view = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
        Context context = view.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "itemView.context");
        String forMonthString = CalendarUtils.forMonthString(calendar, context);
        if (calendar.get(1) != userModel.get(1)) {
            userModel = new StringBuilder();
            userModel.append(forMonthString);
            userModel.append(" ");
            userModel.append(calendar.get(1));
            forMonthString = userModel.toString();
        }
        userModel = inflate.findViewById(C0859R.id.forMonth);
        if (userModel == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        ((RocketTextView) userModel).setText(forMonthString);
        userModel = this.moneyFormatter;
        if (f == null) {
            Intrinsics.throwNpe();
        }
        rocketTextView.setText(userModel.format((double) f.floatValue(), "", false));
        this.statisticsContainer.addView(inflate);
        userModel = inflate.findViewById(C0859R.id.rocketrouble);
        if (userModel == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        RocketTextView rocketTextView2 = (RocketTextView) userModel;
        calendar = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(calendar, "itemView");
        calendar = calendar.getResources();
        UserData userData = this.authorization.getUserData();
        Intrinsics.checkParameterIsNotNull(userData, "userData");
        rocketTextView2.setText(calendar.getQuantityString(Cobrand.Companion.fromCobrandName(userData.realmGet$cobrandName()).getMoney(), (int) f.floatValue()));
    }

    public final void addMode() {
        View inflate = this.layoutInflater.inflate(C0859R.layout.layout_statistics_action_item, this.statisticsContainer, false);
        View findViewById = inflate.findViewById(C0859R.id.action);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        RocketTextView rocketTextView = (RocketTextView) findViewById;
        rocketTextView.setOnClickListener(this);
        if (this.rocketRoubleModel.isFullMoneyModeList()) {
            rocketTextView.setText(C0859R.string.collapse);
        } else {
            rocketTextView.setText(C0859R.string.watch_all);
        }
        this.statisticsContainer.addView(inflate);
    }

    public final void onClick(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        this.rocketRoubleModel.setFullMoneyModeList(this.rocketRoubleModel.isFullMoneyModeList() ^ 1);
        this.adapter.notifyItemChanged(getLayoutPosition());
        this.recyclerView.scrollToPosition(2);
    }
}
