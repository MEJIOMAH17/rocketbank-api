package ru.rocketbank.r2d2.root.feed.viewholder;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import android.widget.TextView;
import java.util.Calendar;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.provider.ProviderField;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.root.feed.FeedDateFormat;

/* compiled from: FeedViewHolder.kt */
public class FeedViewHolder extends ViewHolder {
    private final TextView dayTitleView;

    public void clean() {
    }

    public FeedViewHolder(View view) {
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        super(view);
        this.dayTitleView = (TextView) view.findViewById(C0859R.id.dayTitle);
    }

    @SuppressLint({"SetTextI18n"})
    public final void showDayStart(Calendar calendar) {
        Intrinsics.checkParameterIsNotNull(calendar, ProviderField.TIME);
        if (this.dayTitleView != null) {
            this.dayTitleView.setVisibility(0);
            this.dayTitleView.setText(FeedDateFormat.INSTANCE.getDayDateFormat().format(calendar.getTime()));
        }
    }

    public final void showYesterday(Calendar calendar) {
        Intrinsics.checkParameterIsNotNull(calendar, ProviderField.TIME);
        if (this.dayTitleView != null) {
            this.dayTitleView.setVisibility(0);
            TextView textView = this.dayTitleView;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(getString(C0859R.string.yesterday));
            stringBuilder.append(" ");
            stringBuilder.append(FeedDateFormat.INSTANCE.getYesterdayDateFormat().format(calendar.getTime()));
            textView.setText(stringBuilder.toString());
        }
    }

    public final String getString(int i) {
        View view = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
        Context context = view.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "itemView.context");
        i = context.getResources().getString(i);
        Intrinsics.checkExpressionValueIsNotNull(i, "itemView.context.resources.getString(resId)");
        return i;
    }

    public final void showToday() {
        if (this.dayTitleView != null) {
            this.dayTitleView.setVisibility(0);
            View view = this.itemView;
            Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
            this.dayTitleView.setText(view.getResources().getString(C0859R.string.today));
        }
    }

    public final void hideDayStart() {
        if (this.dayTitleView != null) {
            this.dayTitleView.setVisibility(8);
        }
    }

    public final void showWaiting() {
        if (this.dayTitleView != null) {
            this.dayTitleView.setVisibility(0);
            this.dayTitleView.setText(C0859R.string.waiting_operation);
        }
    }
}
