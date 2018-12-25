package ru.rocketbank.r2d2.root.operation.vh;

import android.graphics.Typeface;
import android.text.SpannableString;
import android.view.View;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import ru.rocketbank.core.manager.CurrencyManager;
import ru.rocketbank.core.manager.TypefaceManager;
import ru.rocketbank.core.model.MoneyData;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.core.widgets.RocketAutofitTextView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.core.widgets.TypefaceSpan;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.ParallaxItem;

/* compiled from: MilesCompensated.kt */
public final class MilesCompensated extends GenericViewHolder {
    private final Authorization authorization;
    private final CurrencyManager currencyManager;
    private final RocketTextView descriptionView;
    private final MoneyFormatter moneyFormatter;
    private final RocketAutofitTextView rocketAutofitTextView;

    public MilesCompensated(View view) {
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        super(view);
        View findViewById = view.findViewById(C0859R.id.rocket);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketAutofitTextView");
        }
        this.rocketAutofitTextView = (RocketAutofitTextView) findViewById;
        view = view.findViewById(C0859R.id.description);
        if (view == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.descriptionView = (RocketTextView) view;
        this.moneyFormatter = RocketApplication.Companion.getInjector().getMoneyFormatter();
        this.authorization = RocketApplication.Companion.getInjector().getAuthorization();
        this.currencyManager = RocketApplication.Companion.getInjector().getCurrencyManager();
    }

    public final RocketAutofitTextView getRocketAutofitTextView() {
        return this.rocketAutofitTextView;
    }

    public final RocketTextView getDescriptionView() {
        return this.descriptionView;
    }

    public final MoneyFormatter getMoneyFormatter() {
        return this.moneyFormatter;
    }

    public final Authorization getAuthorization() {
        return this.authorization;
    }

    public final CurrencyManager getCurrencyManager() {
        return this.currencyManager;
    }

    public final void bind() {
        ParallaxItem item = getItem();
        Operation operation = (Operation) (item != null ? item.getPayload() : null);
        if (operation != null) {
            MoneyData money = operation.getMoney();
            if (money == null) {
                Intrinsics.throwNpe();
            }
            float amount = (float) money.getAmount();
            MoneyFormatter moneyFormatter = this.moneyFormatter;
            double abs = (double) ((int) Math.abs(amount));
            MoneyData money2 = operation.getMoney();
            if (money2 == null) {
                Intrinsics.throwNpe();
            }
            String currencyCode = money2.getCurrencyCode();
            Intrinsics.checkExpressionValueIsNotNull(currencyCode, "operation.money!!.currencyCode");
            this.rocketAutofitTextView.setText(moneyFormatter.format(abs, currencyCode, true));
            UserModel userImmediate = RocketApplication.Companion.getInjector().getAuthorization().getUserImmediate();
            if (userImmediate != null) {
                setupHelpText(userImmediate);
            }
        }
    }

    private final void setupHelpText(UserModel userModel) {
        int textSize = (int) this.descriptionView.getTextSize();
        TypefaceManager instance = TypefaceManager.getInstance();
        View view = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
        Typeface typeface = instance.getTypeface(7, view.getContext());
        userModel = userModel.getMiles();
        MoneyFormatter moneyFormatter = this.moneyFormatter;
        double d = (double) userModel;
        userModel = MoneyFormatter.Companion;
        String format = moneyFormatter.format(d, MoneyFormatter.access$getCURRENCY_ROCKET$cp(), true);
        userModel = this.moneyFormatter.format(d, "", true);
        view = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
        String string = view.getContext().getString(C0859R.string.compensate_done_text, new Object[]{format});
        TypefaceSpan typefaceSpan = new TypefaceSpan(typeface, textSize);
        Intrinsics.checkExpressionValueIsNotNull(string, "formatString");
        CharSequence charSequence = string;
        int indexOf$default = StringsKt.indexOf$default(charSequence, format, 0, false, 6, null);
        userModel = userModel.length() + indexOf$default;
        SpannableString spannableString = new SpannableString(charSequence);
        spannableString.setSpan(typefaceSpan, indexOf$default, userModel, 18);
        this.descriptionView.setText(spannableString);
    }
}
