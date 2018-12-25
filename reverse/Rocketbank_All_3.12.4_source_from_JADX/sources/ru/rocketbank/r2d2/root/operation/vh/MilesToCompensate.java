package ru.rocketbank.r2d2.root.operation.vh;

import android.content.Context;
import android.graphics.Typeface;
import android.text.SpannableString;
import android.view.View;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import ru.rocketbank.core.manager.CurrencyManager;
import ru.rocketbank.core.manager.TypefaceManager;
import ru.rocketbank.core.model.MoneyData;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.dto.operations.Miles;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.core.utils.MoneyFormatter.Companion;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.core.widgets.TypefaceSpan;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.databinding.LayoutMilesCompensationBinding;
import ru.rocketbank.r2d2.root.operation.OperationContract.Presenter;
import ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.ParallaxItem;

/* compiled from: MilesToCompensate.kt */
public final class MilesToCompensate extends GenericViewHolder implements MilesCompensateHandler {
    private final LayoutMilesCompensationBinding binding;
    private final CurrencyManager currencyManager = RocketApplication.Companion.getInjector().getCurrencyManager();
    private final DataMilesCompensate data = new DataMilesCompensate();
    private final MoneyFormatter moneyFormatter = RocketApplication.Companion.getInjector().getMoneyFormatter();
    private final Presenter operationPresenter;

    public MilesToCompensate(View view, Presenter presenter) {
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        Intrinsics.checkParameterIsNotNull(presenter, "operationPresenter");
        super(view);
        this.operationPresenter = presenter;
        view = LayoutMilesCompensationBinding.bind(view);
        Intrinsics.checkExpressionValueIsNotNull(view, "LayoutMilesCompensationBinding.bind(itemView)");
        this.binding = view;
        this.binding.setData(this.data);
        this.binding.setHandler(this);
    }

    public final Presenter getOperationPresenter() {
        return this.operationPresenter;
    }

    public final MoneyFormatter getMoneyFormatter() {
        return this.moneyFormatter;
    }

    public final CurrencyManager getCurrencyManager() {
        return this.currencyManager;
    }

    public final void onCompensation() {
        this.operationPresenter.compensate();
    }

    public final void bind() {
        UserModel userImmediate = RocketApplication.Companion.getInjector().getAuthorization().getUserImmediate();
        if (userImmediate != null) {
            float miles = userImmediate.getMiles();
            this.data.getAmount().set(String.valueOf(miles));
            MoneyFormatter moneyFormatter = this.moneyFormatter;
            int abs = (int) Math.abs(miles);
            View view = this.itemView;
            Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
            Context context = view.getContext();
            Intrinsics.checkExpressionValueIsNotNull(context, "itemView.context");
            this.data.getRocketText().set(moneyFormatter.getString(abs, context));
        }
        ParallaxItem item = getItem();
        Operation operation = (Operation) (item != null ? item.getPayload() : null);
        if (operation != null) {
            setupHelpText(operation);
        }
    }

    private final void setupHelpText(Operation operation) {
        RocketTextView rocketTextView = this.binding.description;
        Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "binding.description");
        int textSize = (int) rocketTextView.getTextSize();
        TypefaceManager instance = TypefaceManager.getInstance();
        View view = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
        Typeface typeface = instance.getTypeface(7, view.getContext());
        Miles miles = operation.getMiles();
        double amount = miles != null ? (double) miles.getAmount() : 0.0d;
        MoneyFormatter moneyFormatter = this.moneyFormatter;
        Companion companion = MoneyFormatter.Companion;
        String format = moneyFormatter.format(amount, MoneyFormatter.access$getCURRENCY_ROCKET$cp(), true);
        MoneyFormatter moneyFormatter2 = this.moneyFormatter;
        MoneyData money = operation.getMoney();
        if (money == null) {
            Intrinsics.throwNpe();
        }
        double abs = Math.abs(money.getAmount());
        operation = operation.getMoney();
        if (operation == null) {
            Intrinsics.throwNpe();
        }
        operation = operation.getCurrencyCode();
        Intrinsics.checkExpressionValueIsNotNull(operation, "operation.money!!.currencyCode");
        operation = moneyFormatter2.format(abs, operation, true);
        View view2 = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view2, "itemView");
        String string = view2.getContext().getString(C0859R.string.compensate_text, new Object[]{format, operation});
        TypefaceSpan typefaceSpan = new TypefaceSpan(typeface, textSize);
        TypefaceSpan typefaceSpan2 = new TypefaceSpan(typeface, textSize);
        Intrinsics.checkExpressionValueIsNotNull(string, "formatString");
        CharSequence charSequence = string;
        int indexOf$default = StringsKt.indexOf$default(charSequence, format, 0, false, 6, null);
        int length = format.length() + indexOf$default;
        int indexOf$default2 = StringsKt.indexOf$default(charSequence, operation, length, false, 4, null);
        operation = operation.length() + indexOf$default2;
        SpannableString spannableString = new SpannableString(charSequence);
        spannableString.setSpan(typefaceSpan, indexOf$default, length, 18);
        spannableString.setSpan(typefaceSpan2, indexOf$default2, operation, 18);
        this.data.getDescription().set(spannableString);
    }
}
