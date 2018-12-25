package ru.rocketbank.r2d2.root.operation.vh;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.Utils.OperationListener;
import ru.rocketbank.r2d2.activities.operation.OperationTagActivity;
import ru.rocketbank.r2d2.root.feed.viewholder.OnActionListener;
import ru.rocketbank.r2d2.root.operation.AbstractDetailOperationActivity;
import ru.rocketbank.r2d2.widgets.operations.OperationCommentTextView.LocalLinkMovementMethod;
import ru.rocketbank.r2d2.widgets.operations.OperationIconView;
import ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder;

/* compiled from: OperationParentViewHolder.kt */
public final class OperationParentViewHolder extends GenericViewHolder implements OnClickListener, OperationListener {
    public static final Companion Companion = new Companion();
    public static final int STATUS_IN = 437;
    public static final int STATUS_NONE = 0;
    public static final int STATUS_OUT = 368;
    private final RocketTextView additionalActionView;
    private final RocketTextView amountView;
    private final LinearLayout buttonsView;
    private final RocketTextView commentView;
    private final RocketTextView mainActionView;
    private final RocketTextView nameView;
    private OnActionListener onAdditionalAction;
    private OnActionListener onMainAction;
    private Operation operation;
    private final OperationIconView operationIcon;
    private final View operationView;

    /* compiled from: OperationParentViewHolder.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final void onRequestAccepted(Operation operation) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
    }

    public final void onRequestDeclined(Operation operation) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
    }

    public OperationParentViewHolder(View view) {
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        super(view);
        View findViewById = view.findViewById(C0859R.id.name);
        Intrinsics.checkExpressionValueIsNotNull(findViewById, "itemView.findViewById(R.id.name)");
        this.nameView = (RocketTextView) findViewById;
        findViewById = view.findViewById(C0859R.id.amount);
        Intrinsics.checkExpressionValueIsNotNull(findViewById, "itemView.findViewById(R.id.amount)");
        this.amountView = (RocketTextView) findViewById;
        findViewById = view.findViewById(C0859R.id.operation);
        Intrinsics.checkExpressionValueIsNotNull(findViewById, "itemView.findViewById(R.id.operation)");
        this.operationView = findViewById;
        findViewById = view.findViewById(C0859R.id.comment);
        Intrinsics.checkExpressionValueIsNotNull(findViewById, "itemView.findViewById(R.id.comment)");
        this.commentView = (RocketTextView) findViewById;
        findViewById = view.findViewById(C0859R.id.buttons);
        Intrinsics.checkExpressionValueIsNotNull(findViewById, "itemView.findViewById(R.id.buttons)");
        this.buttonsView = (LinearLayout) findViewById;
        findViewById = view.findViewById(C0859R.id.mainAction);
        Intrinsics.checkExpressionValueIsNotNull(findViewById, "itemView.findViewById(R.id.mainAction)");
        this.mainActionView = (RocketTextView) findViewById;
        findViewById = view.findViewById(C0859R.id.additionalAction);
        Intrinsics.checkExpressionValueIsNotNull(findViewById, "itemView.findViewById(R.id.additionalAction)");
        this.additionalActionView = (RocketTextView) findViewById;
        findViewById = view.findViewById(C0859R.id.operationIcon);
        Intrinsics.checkExpressionValueIsNotNull(findViewById, "itemView.findViewById(R.id.operationIcon)");
        this.operationIcon = (OperationIconView) findViewById;
        view = view.findViewById(C0859R.id.dayTitle);
        Intrinsics.checkExpressionValueIsNotNull(view, "itemView.findViewById<View>(R.id.dayTitle)");
        view.setVisibility(8);
        this.operationView.setOnClickListener(this);
    }

    private final void setWithContent(boolean z) {
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

    public final void setOperation(Operation operation) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        this.operationIcon.setOperation(operation);
        this.operation = operation;
    }

    private final void showOperation() {
        Operation operation = this.operation;
        if (operation != null) {
            ru.rocketbank.r2d2.root.operation.AbstractDetailOperationActivity.Companion companion = AbstractDetailOperationActivity.Companion;
            View view = this.itemView;
            Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
            Context context = view.getContext();
            Intrinsics.checkExpressionValueIsNotNull(context, "itemView.context");
            companion.start(context, operation);
        }
    }

    public final void setContent(String str) {
        setWithContent(TextUtils.isEmpty(str) ^ 1);
        this.commentView.setMovementMethod(LocalLinkMovementMethod.getInstance());
        this.commentView.setText(Utils.replaceHashWithUrls(str, this));
    }

    public final void onClick(View view) {
        showOperation();
    }

    public final void onTagClicked(String str) {
        Intrinsics.checkParameterIsNotNull(str, "tag");
        View view = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
        OperationTagActivity.start(view.getContext(), str);
    }
}
