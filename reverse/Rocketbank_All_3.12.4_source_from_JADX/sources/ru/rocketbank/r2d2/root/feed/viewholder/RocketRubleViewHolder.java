package ru.rocketbank.r2d2.root.feed.viewholder;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.core.network.model.FeedItem;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.Utils.OperationListener;
import ru.rocketbank.r2d2.activities.operation.OperationTagActivity;
import ru.rocketbank.r2d2.root.operation.DetailRocketrubleOperationActivity;
import ru.rocketbank.r2d2.widgets.operations.OperationCommentTextView.LocalLinkMovementMethod;
import ru.rocketbank.r2d2.widgets.operations.OperationIconView;

/* compiled from: RocketRubleViewHolder.kt */
public final class RocketRubleViewHolder extends FeedViewHolder implements OnClickListener, OperationListener {
    public static final Companion Companion = new Companion();
    private static final int STATUS_IN = 437;
    private static final int STATUS_NONE = 0;
    private static final int STATUS_OUT = 368;
    private final RocketTextView additionalActionView;
    private final RocketTextView amountView;
    private final LinearLayout buttonsView;
    private final RocketTextView commentView;
    private FeedItem feedItem;
    private final RocketTextView mainActionView;
    private final RocketTextView nameView;
    private OnActionListener onAdditionalAction;
    private OnActionListener onMainAction;
    private Operation operation;
    private final OperationIconView operationIcon;
    private final RocketTextView operationIconText;
    private final View operationView;
    private final RocketTextView rocketrublesView;

    /* compiled from: RocketRubleViewHolder.kt */
    public static final class Companion {
        private Companion() {
        }

        public final int getSTATUS_NONE() {
            return RocketRubleViewHolder.STATUS_NONE;
        }

        public final int getSTATUS_OUT() {
            return RocketRubleViewHolder.STATUS_OUT;
        }

        public final int getSTATUS_IN() {
            return RocketRubleViewHolder.STATUS_IN;
        }
    }

    public final void onRequestAccepted(Operation operation) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
    }

    public final void onRequestDeclined(Operation operation) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
    }

    public RocketRubleViewHolder(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        super(view);
        view = this.itemView.findViewById(C0859R.id.name);
        if (view == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.nameView = (RocketTextView) view;
        view = this.itemView.findViewById(C0859R.id.amount);
        if (view == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.amountView = (RocketTextView) view;
        view = this.itemView.findViewById(C0859R.id.operation);
        Intrinsics.checkExpressionValueIsNotNull(view, "itemView.findViewById(R.id.operation)");
        this.operationView = view;
        view = this.itemView.findViewById(C0859R.id.comment);
        if (view == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.commentView = (RocketTextView) view;
        view = this.itemView.findViewById(C0859R.id.rocketroubles);
        if (view == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.rocketrublesView = (RocketTextView) view;
        view = this.itemView.findViewById(C0859R.id.buttons);
        if (view == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.LinearLayout");
        }
        this.buttonsView = (LinearLayout) view;
        view = this.itemView.findViewById(C0859R.id.mainAction);
        if (view == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.mainActionView = (RocketTextView) view;
        view = this.itemView.findViewById(C0859R.id.additionalAction);
        if (view == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.additionalActionView = (RocketTextView) view;
        view = this.itemView.findViewById(C0859R.id.operationIconText);
        if (view == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.operationIconText = (RocketTextView) view;
        view = this.itemView.findViewById(C0859R.id.operationIcon);
        if (view == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.widgets.operations.OperationIconView");
        }
        this.operationIcon = (OperationIconView) view;
        this.operationView.setOnClickListener(this);
    }

    public final void clean() {
        super.clean();
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

    public final void setAmount(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "amount");
        Intrinsics.checkParameterIsNotNull(str2, "rocketrubles");
        this.amountView.setText(str);
        this.rocketrublesView.setText(str2);
    }

    public final void setName(String str) {
        this.nameView.setText(str);
    }

    public final void setOperation(Operation operation, FeedItem feedItem) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        Intrinsics.checkParameterIsNotNull(feedItem, "feedItem");
        this.operationIcon.setRocketRubleOperation(operation);
        this.operation = operation;
        this.feedItem = feedItem;
    }

    private final void showOperation() {
        Operation operation = this.operation;
        if (operation != null) {
            ru.rocketbank.r2d2.root.operation.DetailRocketrubleOperationActivity.Companion companion = DetailRocketrubleOperationActivity.Companion;
            View view = this.itemView;
            Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
            Context context = view.getContext();
            Intrinsics.checkExpressionValueIsNotNull(context, "itemView.context");
            companion.start(context, operation);
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
        View view = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
        OperationTagActivity.start(view.getContext(), str);
    }
}
