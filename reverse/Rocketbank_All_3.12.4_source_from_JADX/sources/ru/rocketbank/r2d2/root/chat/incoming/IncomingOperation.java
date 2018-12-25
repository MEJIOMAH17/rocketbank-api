package ru.rocketbank.r2d2.root.chat.incoming;

import android.content.Context;
import android.view.View;
import com.jakewharton.rxbinding.view.RxView;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.MoneyData;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.core.model.message.OperationAttachment;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.core.widgets.RocketAutofitTextView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.root.operation.AbstractDetailOperationActivity;
import ru.rocketbank.r2d2.widgets.operations.OperationIconView;
import rx.functions.Action1;

/* compiled from: IncomingOperation.kt */
public final class IncomingOperation extends IncomingViewHolder {
    private final MoneyFormatter moneyFormatter;
    private Operation operation;
    private final OperationIconView operationIconView;
    private final RocketTextView operationNameView;
    private final RocketAutofitTextView operationTotalView;

    public IncomingOperation(final Context context, MoneyFormatter moneyFormatter, View view) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(moneyFormatter, "moneyFormatter");
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        super(context, view);
        this.moneyFormatter = moneyFormatter;
        moneyFormatter = view.findViewById(C0859R.id.operationTotal);
        if (moneyFormatter == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketAutofitTextView");
        }
        this.operationTotalView = (RocketAutofitTextView) moneyFormatter;
        moneyFormatter = view.findViewById(C0859R.id.operationName);
        if (moneyFormatter == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.operationNameView = (RocketTextView) moneyFormatter;
        moneyFormatter = view.findViewById(C0859R.id.operationLogo);
        if (moneyFormatter == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.widgets.operations.OperationIconView");
        }
        this.operationIconView = (OperationIconView) moneyFormatter;
        RxView.clicks(view).subscribe((Action1) new Action1<Void>() {
            public final void call(Void voidR) {
                voidR = this.operation;
                if (voidR != null) {
                    AbstractDetailOperationActivity.Companion.start(context, voidR);
                }
            }
        });
    }

    public final void setOperation(OperationAttachment operationAttachment) {
        if (operationAttachment != null) {
            this.operation = operationAttachment.getOperation();
            operationAttachment = this.operation;
            if (operationAttachment != null) {
                this.operationIconView.setOperation(operationAttachment);
                this.operationNameView.setText(operationAttachment.getDetails());
                MoneyData displayMoney = operationAttachment.getDisplayMoney();
                if (displayMoney == null) {
                    Intrinsics.throwNpe();
                }
                double amount = displayMoney.getAmount();
                MoneyFormatter moneyFormatter = this.moneyFormatter;
                operationAttachment = operationAttachment.getDisplayMoney();
                if (operationAttachment == null) {
                    Intrinsics.throwNpe();
                }
                operationAttachment = operationAttachment.getCurrencyCode();
                Intrinsics.checkExpressionValueIsNotNull(operationAttachment, "it.displayMoney!!.currencyCode");
                this.operationTotalView.setText(moneyFormatter.format(amount, operationAttachment, false));
            }
        }
    }
}
