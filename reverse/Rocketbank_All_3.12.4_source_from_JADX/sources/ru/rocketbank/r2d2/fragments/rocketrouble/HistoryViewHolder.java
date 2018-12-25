package ru.rocketbank.r2d2.fragments.rocketrouble;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.core.utils.MoneyFormatter.Companion;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.root.operation.AbstractDetailOperationActivity;
import ru.rocketbank.r2d2.widgets.operations.OperationIconView;

/* compiled from: HistoryViewHolder.kt */
public final class HistoryViewHolder extends RocketViewHolder implements OnClickListener {
    private final RocketTextView amountView;
    private final RocketTextView comment;
    private final MoneyFormatter moneyFormatter = RocketApplication.Companion.getInjector().getMoneyFormatter();
    private final RocketTextView nameView;
    private Operation operation;
    private final OperationIconView operationIcon;
    private final RocketTextView rocketroubles;

    public HistoryViewHolder(View view) {
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        super(view);
        RocketApplication.Companion.getInjector().getAuthorization();
        RocketApplication.Companion.getInjector().getCurrencyManager();
        this.moneyFormatter.setFloorAmount(true);
        view.setOnClickListener(this);
        View findViewById = view.findViewById(C0859R.id.operationIcon);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.widgets.operations.OperationIconView");
        }
        this.operationIcon = (OperationIconView) findViewById;
        findViewById = view.findViewById(C0859R.id.amount);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.amountView = (RocketTextView) findViewById;
        findViewById = view.findViewById(C0859R.id.name);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.nameView = (RocketTextView) findViewById;
        findViewById = view.findViewById(C0859R.id.comment);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.comment = (RocketTextView) findViewById;
        view = view.findViewById(C0859R.id.rocketroubles);
        if (view == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.rocketroubles = (RocketTextView) view;
    }

    public final void setName(String str) {
        this.nameView.setText(str);
    }

    public final void setOperation(Operation operation) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        this.operation = operation;
        this.operationIcon.setOperation(operation);
    }

    public final void setRocketRoubles(double d) {
        MoneyFormatter moneyFormatter = this.moneyFormatter;
        Companion companion = MoneyFormatter.Companion;
        d = moneyFormatter.formatAmount(d, MoneyFormatter.access$getCURRENCY_ROCKET$cp(), false);
        this.amountView.setText(d.getAmountString());
        this.rocketroubles.setText(d.getSuffix());
    }

    public final void setComment(String str) {
        CharSequence charSequence = str;
        this.comment.setText(charSequence);
        RocketTextView rocketTextView = this.comment;
        int i = 0;
        if (charSequence != null) {
            if (charSequence.length() != null) {
                str = null;
                if (str != null) {
                    i = 8;
                }
                rocketTextView.setVisibility(i);
            }
        }
        str = true;
        if (str != null) {
            i = 8;
        }
        rocketTextView.setVisibility(i);
    }

    public final void setConfirmationStatus(boolean z) {
        this.comment.setVisibility(0);
        RocketTextView rocketTextView = this.comment;
        if (z) {
            z = this.itemView;
            Intrinsics.checkExpressionValueIsNotNull(z, "itemView");
            z = z.getResources().getString(C0859R.string.rocketroubles_confirmed);
        } else {
            z = this.itemView;
            Intrinsics.checkExpressionValueIsNotNull(z, "itemView");
            z = z.getResources().getString(C0859R.string.rocketroubles_progess);
        }
        rocketTextView.setText(z);
    }

    public final void onClick(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        Operation operation = this.operation;
        if (operation != null) {
            AbstractDetailOperationActivity.Companion companion = AbstractDetailOperationActivity.Companion;
            view = view.getContext();
            if (view == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.app.Activity");
            }
            companion.start((Activity) view, operation);
        }
    }
}
