package ru.rocketbank.r2d2.fragments.rocketrouble;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.Utils.OperationListener;
import ru.rocketbank.r2d2.activities.operation.OperationTagActivity;
import ru.rocketbank.r2d2.root.feed.viewholder.OnActionListener;
import ru.rocketbank.r2d2.root.operation.AbstractDetailOperationActivity;
import ru.rocketbank.r2d2.root.operation.AbstractDetailOperationActivity.Companion;
import ru.rocketbank.r2d2.widgets.operations.OperationCommentTextView.LocalLinkMovementMethod;
import ru.rocketbank.r2d2.widgets.operations.OperationIconView;

/* compiled from: RocketRoubleOperationViewHolder.kt */
public final class RocketRoubleOperationViewHolder extends RocketViewHolder implements OnClickListener, OperationListener {
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

    public final void onRequestAccepted(Operation operation) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
    }

    public final void onRequestDeclined(Operation operation) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
    }

    public RocketRoubleOperationViewHolder(View view) {
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
        view = view.findViewById(C0859R.id.operationIcon);
        Intrinsics.checkExpressionValueIsNotNull(view, "itemView.findViewById(R.id.operationIcon)");
        this.operationIcon = (OperationIconView) view;
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

    public final void setRocketRubleOperation(Operation operation) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        this.operationIcon.setRocketRubleOperation(operation);
    }

    public final void onClick(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        if (view.getId() == C0859R.id.operation) {
            Operation operation = this.operation;
            if (operation != null) {
                Companion companion = AbstractDetailOperationActivity.Companion;
                view = view.getContext();
                if (view == null) {
                    throw new TypeCastException("null cannot be cast to non-null type android.app.Activity");
                }
                companion.start((Activity) view, operation);
            }
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
        Context context = view.getContext();
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.app.Activity");
        }
        OperationTagActivity.start((Activity) context, str);
    }
}
