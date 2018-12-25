package ru.rocketbank.r2d2.widgets.recycler.parallax.vh;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.Calendar;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.core.model.provider.ProviderField;
import ru.rocketbank.core.network.model.FeedItem;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.Utils.OperationListener;
import ru.rocketbank.r2d2.activities.operation.OperationTagActivity;
import ru.rocketbank.r2d2.root.feed.FeedDateFormat;
import ru.rocketbank.r2d2.root.feed.viewholder.OnActionListener;
import ru.rocketbank.r2d2.root.operation.AbstractDetailOperationActivity;
import ru.rocketbank.r2d2.widgets.operations.OperationCommentTextView.LocalLinkMovementMethod;
import ru.rocketbank.r2d2.widgets.operations.OperationIconView;
import ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder;

/* compiled from: GenericOperationViewHolder.kt */
public final class GenericOperationViewHolder extends GenericViewHolder implements OnClickListener, OperationListener {
    public static final Companion Companion = new Companion();
    private static final int STATUS_IN = 437;
    private static final int STATUS_NONE = 0;
    private static final int STATUS_OUT = 368;
    private final RocketTextView additionalActionView;
    private final RocketTextView amountView;
    private final LinearLayout buttonsView;
    private final RocketTextView commentView;
    private final Context context;
    private final TextView dayTitleView;
    private FeedItem feedItem;
    private final RocketTextView mainActionView;
    private final RocketTextView nameView;
    private OnActionListener onAdditionalAction;
    private OnActionListener onMainAction;
    private Operation operation;
    private final OperationIconView operationIcon;
    private final RocketTextView operationIconText;
    private final View operationView;

    /* compiled from: GenericOperationViewHolder.kt */
    public static final class Companion {
        private Companion() {
        }

        public final int getSTATUS_NONE() {
            return GenericOperationViewHolder.STATUS_NONE;
        }

        public final int getSTATUS_OUT() {
            return GenericOperationViewHolder.STATUS_OUT;
        }

        public final int getSTATUS_IN() {
            return GenericOperationViewHolder.STATUS_IN;
        }
    }

    public final void onRequestAccepted(Operation operation) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
    }

    public final void onRequestDeclined(Operation operation) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
    }

    public final Context getContext() {
        return this.context;
    }

    public GenericOperationViewHolder(Context context, View view) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        super(view);
        this.context = context;
        this.dayTitleView = (TextView) view.findViewById(C0859R.id.dayTitle);
        context = view.findViewById(C0859R.id.operationIcon);
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.widgets.operations.OperationIconView");
        }
        this.operationIcon = (OperationIconView) context;
        context = view.findViewById(C0859R.id.name);
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.nameView = (RocketTextView) context;
        context = view.findViewById(C0859R.id.amount);
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.amountView = (RocketTextView) context;
        context = view.findViewById(C0859R.id.operation);
        Intrinsics.checkExpressionValueIsNotNull(context, "itemView.findViewById(R.id.operation)");
        this.operationView = context;
        context = view.findViewById(C0859R.id.comment);
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.commentView = (RocketTextView) context;
        context = view.findViewById(C0859R.id.buttons);
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.LinearLayout");
        }
        this.buttonsView = (LinearLayout) context;
        context = view.findViewById(C0859R.id.mainAction);
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.mainActionView = (RocketTextView) context;
        context = view.findViewById(C0859R.id.additionalAction);
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.additionalActionView = (RocketTextView) context;
        context = view.findViewById(C0859R.id.operationIconText);
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.operationIconText = (RocketTextView) context;
        this.operationView.setOnClickListener(this);
    }

    public final void clean() {
        this.feedItem = null;
        this.operation = null;
    }

    public final void setWithContent(boolean z) {
        if (z) {
            this.commentView.setVisibility(0);
        } else {
            this.commentView.setVisibility(8);
        }
    }

    public final void setNoAction() {
        this.onMainAction = null;
        this.onAdditionalAction = null;
        this.buttonsView.setVisibility(8);
        this.mainActionView.setVisibility(8);
        this.additionalActionView.setVisibility(8);
    }

    public final void setMainActionView(String str) {
        Intrinsics.checkParameterIsNotNull(str, "actionText");
        this.buttonsView.setVisibility(0);
        this.mainActionView.setVisibility(0);
        this.mainActionView.setText(str);
        this.mainActionView.setOnClickListener(this);
    }

    public final void setAdditionalAction(String str) {
        Intrinsics.checkParameterIsNotNull(str, "actionText");
        this.additionalActionView.setVisibility(0);
        this.additionalActionView.setText(str);
        this.additionalActionView.setOnClickListener(this);
    }

    public final void setOnMainAction(OnActionListener onActionListener) {
        Intrinsics.checkParameterIsNotNull(onActionListener, "onMainAction");
        this.onMainAction = onActionListener;
    }

    public final void setOnAdditionalAction(OnActionListener onActionListener) {
        Intrinsics.checkParameterIsNotNull(onActionListener, "onAdditionalAction");
        this.onAdditionalAction = onActionListener;
    }

    public final void setAmount(String str) {
        Intrinsics.checkParameterIsNotNull(str, "amount");
        this.amountView.setText(str);
    }

    public final void setName(String str) {
        this.nameView.setText(str);
    }

    public final void setOperation(Operation operation, FeedItem feedItem) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        this.operationIcon.setOperation(operation);
        this.operation = operation;
        this.feedItem = feedItem;
    }

    private final void showOperation() {
        Operation operation = this.operation;
        if (operation != null) {
            AbstractDetailOperationActivity.Companion.start(this.context, operation);
        }
    }

    public final void onClick(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        view = view.getId();
        FeedItem feedItem;
        if (view != C0859R.id.additionalAction) {
            if (view != C0859R.id.mainAction) {
                if (view == C0859R.id.operation) {
                    showOperation();
                }
            } else if (this.onMainAction != null) {
                view = this.onMainAction;
                if (view == null) {
                    Intrinsics.throwNpe();
                }
                feedItem = this.feedItem;
                if (feedItem == null) {
                    Intrinsics.throwNpe();
                }
                view.onAction(feedItem);
            }
        } else if (this.onAdditionalAction != null) {
            view = this.onAdditionalAction;
            if (view == null) {
                Intrinsics.throwNpe();
            }
            feedItem = this.feedItem;
            if (feedItem == null) {
                Intrinsics.throwNpe();
            }
            view.onAction(feedItem);
        }
    }

    public final void setContent(String str) {
        setWithContent(TextUtils.isEmpty(str) ^ 1);
        this.commentView.setMovementMethod(LocalLinkMovementMethod.getInstance());
        this.commentView.setText(Utils.replaceHashWithUrls(str, this));
    }

    public final void onTagClicked(String str) {
        Intrinsics.checkParameterIsNotNull(str, "tag");
        OperationTagActivity.start(this.context, str);
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
