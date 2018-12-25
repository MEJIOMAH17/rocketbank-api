package ru.rocketbank.r2d2.root.chat.outgoing;

import android.content.Context;
import android.view.View;
import com.jakewharton.rxbinding.view.RxView;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.MoneyData;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.core.model.message.MessageIn;
import ru.rocketbank.core.model.message.OperationAttachment;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.core.widgets.RocketAutofitTextView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.databinding.LayoutMessageOutOperationBinding;
import ru.rocketbank.r2d2.root.operation.AbstractDetailOperationActivity;
import ru.rocketbank.r2d2.widgets.operations.OperationIconView;
import rx.functions.Action1;

/* compiled from: OutgoingOperation.kt */
public final class OutgoingOperation extends OutgoingViewHolder {
    private final LayoutMessageOutOperationBinding binding;
    private MessageIn chatMessage;
    private final MoneyFormatter moneyFormatter;
    private Operation operation;
    private final OperationIconView operationIconView;
    private final RocketTextView operationNameView;
    private final RocketAutofitTextView operationTotalView;
    private final RocketTextView retryView;

    public OutgoingOperation(final Context context, MoneyFormatter moneyFormatter, View view, final RetryMessageListener retryMessageListener) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(moneyFormatter, "moneyFormatter");
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        Intrinsics.checkParameterIsNotNull(retryMessageListener, "retryMessageListener");
        super(context, view, retryMessageListener);
        this.moneyFormatter = moneyFormatter;
        moneyFormatter = LayoutMessageOutOperationBinding.bind(view);
        Intrinsics.checkExpressionValueIsNotNull(moneyFormatter, "LayoutMessageOutOperationBinding.bind(itemView)");
        this.binding = moneyFormatter;
        this.binding.setData(getData());
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
        context = view.findViewById(C0859R.id.retry);
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.retryView = (RocketTextView) context;
        RxView.clicks((View) this.retryView).subscribe((Action1) new Action1<Void>() {
            public final void call(Void voidR) {
                this.getRetryView().setVisibility(8);
                voidR = retryMessageListener;
                MessageIn chatMessage = this.getChatMessage();
                if (chatMessage == null) {
                    Intrinsics.throwNpe();
                }
                voidR.retry(chatMessage);
            }
        });
    }

    public final RocketTextView getRetryView() {
        return this.retryView;
    }

    public final MessageIn getChatMessage() {
        return this.chatMessage;
    }

    public final void setChatMessage(MessageIn messageIn) {
        this.chatMessage = messageIn;
    }

    public final LayoutMessageOutOperationBinding getBinding() {
        return this.binding;
    }

    public final void setOperation(MessageIn messageIn) {
        Intrinsics.checkParameterIsNotNull(messageIn, "chatMessage");
        OperationAttachment operationAttachment = (OperationAttachment) messageIn.getAttachment();
        if (operationAttachment != null) {
            this.chatMessage = messageIn;
            this.operation = operationAttachment.getOperation();
            if (messageIn.isFailed() != null) {
                this.retryView.setVisibility(0);
            } else {
                this.retryView.setVisibility(8);
            }
            messageIn = this.operation;
            if (messageIn != null) {
                this.operationIconView.setOperation(messageIn);
                this.operationNameView.setText(messageIn.getDetails());
                MoneyData displayMoney = messageIn.getDisplayMoney();
                if (displayMoney == null) {
                    Intrinsics.throwNpe();
                }
                double amount = displayMoney.getAmount();
                MoneyFormatter moneyFormatter = this.moneyFormatter;
                messageIn = messageIn.getDisplayMoney();
                if (messageIn == null) {
                    Intrinsics.throwNpe();
                }
                messageIn = messageIn.getCurrencyCode();
                Intrinsics.checkExpressionValueIsNotNull(messageIn, "operationVal.displayMoney!!.currencyCode");
                this.operationTotalView.setText(moneyFormatter.format(amount, messageIn, false));
            }
        }
    }
}
