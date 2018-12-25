package ru.rocketbank.r2d2.activities.operation.viewholder;

import android.app.Activity;
import android.content.Intent;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.TextView;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.core.network.model.FeedItem;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.Utils.OperationListener;
import ru.rocketbank.r2d2.activities.operation.OperationListActivity;
import ru.rocketbank.r2d2.activities.operation.OperationTagActivity;
import ru.rocketbank.r2d2.widgets.operations.OperationCommentTextView.LocalLinkMovementMethod;
import ru.rocketbank.r2d2.widgets.operations.OperationIconView;

/* compiled from: OperationDetailViewHolder.kt */
public final class OperationDetailViewHolder extends ViewHolder implements OnClickListener, OperationListener {
    private final RocketTextView additionalActionView;
    private final RocketTextView amountView;
    private final LinearLayout buttonsView;
    private final RocketTextView commentView;
    private final TextView dayTitleView;
    private FeedItem feedItem;
    private final RocketTextView mainActionView;
    private final RocketTextView nameView;
    private Operation operation;
    private final OperationIconView operationIcon;
    private final Activity operationListActivity;
    private final View operationView;

    public final void onRequestAccepted(Operation operation) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
    }

    public final void onRequestDeclined(Operation operation) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
    }

    public final Activity getOperationListActivity() {
        return this.operationListActivity;
    }

    public OperationDetailViewHolder(Activity activity, View view) {
        Intrinsics.checkParameterIsNotNull(activity, "operationListActivity");
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        super(view);
        this.operationListActivity = activity;
        activity = view.findViewById(C0859R.id.operationIcon);
        if (activity == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.widgets.operations.OperationIconView");
        }
        this.operationIcon = (OperationIconView) activity;
        activity = view.findViewById(C0859R.id.name);
        if (activity == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.nameView = (RocketTextView) activity;
        activity = view.findViewById(C0859R.id.amount);
        if (activity == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.amountView = (RocketTextView) activity;
        activity = view.findViewById(C0859R.id.operation);
        Intrinsics.checkExpressionValueIsNotNull(activity, "itemView.findViewById(R.id.operation)");
        this.operationView = activity;
        activity = view.findViewById(C0859R.id.comment);
        if (activity == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.commentView = (RocketTextView) activity;
        activity = view.findViewById(C0859R.id.buttons);
        if (activity == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.LinearLayout");
        }
        this.buttonsView = (LinearLayout) activity;
        activity = view.findViewById(C0859R.id.mainAction);
        if (activity == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.mainActionView = (RocketTextView) activity;
        activity = view.findViewById(C0859R.id.additionalAction);
        if (activity == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.additionalActionView = (RocketTextView) activity;
        activity = view.findViewById(C0859R.id.dayTitle);
        if (activity == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
        }
        this.dayTitleView = (TextView) activity;
        this.operationView.setOnClickListener(this);
    }

    public final OperationIconView getOperationIcon() {
        return this.operationIcon;
    }

    public final void hideDayStart() {
        if (this.dayTitleView != null) {
            this.dayTitleView.setVisibility(8);
        }
    }

    public final void showFirst() {
        if (this.dayTitleView != null) {
            this.dayTitleView.setVisibility(0);
            this.dayTitleView.setText(C0859R.string.operations);
        }
    }

    public final void setWithContent(boolean z) {
        if (z) {
            this.commentView.setVisibility(0);
        } else {
            this.commentView.setVisibility(8);
        }
    }

    public final void setNoAction() {
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

    public final void setOperation(Operation operation, FeedItem feedItem) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        Intrinsics.checkParameterIsNotNull(feedItem, "feedItem");
        this.operation = operation;
        this.feedItem = feedItem;
        this.operationIcon.setOperation(operation);
    }

    private final void showOperation() {
        Intent intent = new Intent();
        String opeation = OperationListActivity.Companion.getOPEATION();
        Operation operation = this.operation;
        if (operation == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.os.Parcelable");
        }
        intent.putExtra(opeation, operation);
        this.operationListActivity.setResult(-1, intent);
        this.operationListActivity.finish();
    }

    public final void onClick(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        if (view.getId() == C0859R.id.operation) {
            showOperation();
        }
    }

    public final void setContent(String str) {
        setWithContent(TextUtils.isEmpty(str) ^ 1);
        this.commentView.setMovementMethod(LocalLinkMovementMethod.getInstance());
        this.commentView.setText(Utils.replaceHashWithUrls(str, this));
    }

    public final void onTagClicked(String str) {
        Intrinsics.checkParameterIsNotNull(str, "tag");
        OperationTagActivity.start(this.operationListActivity, str);
    }
}
