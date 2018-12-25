package ru.rocketbank.core.widgets;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.support.v4.content.ContextCompat;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.ImageView;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.data.binding.ButtonAddressListener;
import ru.rocketbank.core.data.binding.RocketAddressViewData;
import ru.rocketbank.core.databinding.WidgetAddressViewBinding;
import ru.rocketbank.core.model.provider.ProviderField;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: RocketAddressView.kt */
public final class RocketAddressView extends FrameLayout {
    private final String addressString;
    private final ImageView backButton;
    private final WidgetAddressViewBinding binding;
    private final String commentString;
    private final RocketAddressViewData data = new RocketAddressViewData();
    private final RocketEditText editText;
    private boolean isError;
    private final ImageView nextButton;
    private final int orangeColor;
    private final int redColor;

    public final boolean isError() {
        return this.isError;
    }

    public RocketAddressView(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        super(context);
        context = getContext().getSystemService("layout_inflater");
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.LayoutInflater");
        }
        context = WidgetAddressViewBinding.inflate$3514d18((LayoutInflater) context, this);
        Intrinsics.checkExpressionValueIsNotNull(context, "WidgetAddressViewBinding…ate(inflater, this, true)");
        this.binding = context;
        this.binding.setVariable(24, this.data);
        this.redColor = ContextCompat.getColor(getContext(), C0859R.color.red);
        this.orangeColor = ContextCompat.getColor(getContext(), C0859R.color.orange_variant_2);
        context = this.binding.next;
        Intrinsics.checkExpressionValueIsNotNull(context, "binding.next");
        this.nextButton = context;
        context = this.binding.back;
        Intrinsics.checkExpressionValueIsNotNull(context, "binding.back");
        this.backButton = context;
        context = this.binding.addresText;
        Intrinsics.checkExpressionValueIsNotNull(context, "binding.addresText");
        this.editText = context;
        context = getResources().getString(C0859R.string.address);
        Intrinsics.checkExpressionValueIsNotNull(context, "resources.getString(R.string.address)");
        this.addressString = context;
        context = getResources().getString(C0859R.string.comment);
        Intrinsics.checkExpressionValueIsNotNull(context, "resources.getString(R.string.comment)");
        this.commentString = context;
        setAddressMode();
    }

    public RocketAddressView(Context context, AttributeSet attributeSet) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet);
        context = getContext().getSystemService("layout_inflater");
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.LayoutInflater");
        }
        context = WidgetAddressViewBinding.inflate$3514d18((LayoutInflater) context, this);
        Intrinsics.checkExpressionValueIsNotNull(context, "WidgetAddressViewBinding…ate(inflater, this, true)");
        this.binding = context;
        this.binding.setVariable(24, this.data);
        this.redColor = ContextCompat.getColor(getContext(), C0859R.color.red);
        this.orangeColor = ContextCompat.getColor(getContext(), C0859R.color.orange_variant_2);
        context = this.binding.next;
        Intrinsics.checkExpressionValueIsNotNull(context, "binding.next");
        this.nextButton = context;
        context = this.binding.back;
        Intrinsics.checkExpressionValueIsNotNull(context, "binding.back");
        this.backButton = context;
        context = this.binding.addresText;
        Intrinsics.checkExpressionValueIsNotNull(context, "binding.addresText");
        this.editText = context;
        context = getResources().getString(C0859R.string.address);
        Intrinsics.checkExpressionValueIsNotNull(context, "resources.getString(R.string.address)");
        this.addressString = context;
        context = getResources().getString(C0859R.string.comment);
        Intrinsics.checkExpressionValueIsNotNull(context, "resources.getString(R.string.comment)");
        this.commentString = context;
        setAddressMode();
    }

    public RocketAddressView(Context context, AttributeSet attributeSet, int i) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet, i);
        context = getContext().getSystemService("layout_inflater");
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.LayoutInflater");
        }
        context = WidgetAddressViewBinding.inflate$3514d18((LayoutInflater) context, this);
        Intrinsics.checkExpressionValueIsNotNull(context, "WidgetAddressViewBinding…ate(inflater, this, true)");
        this.binding = context;
        this.binding.setVariable(24, this.data);
        this.redColor = ContextCompat.getColor(getContext(), C0859R.color.red);
        this.orangeColor = ContextCompat.getColor(getContext(), C0859R.color.orange_variant_2);
        context = this.binding.next;
        Intrinsics.checkExpressionValueIsNotNull(context, "binding.next");
        this.nextButton = context;
        context = this.binding.back;
        Intrinsics.checkExpressionValueIsNotNull(context, "binding.back");
        this.backButton = context;
        context = this.binding.addresText;
        Intrinsics.checkExpressionValueIsNotNull(context, "binding.addresText");
        this.editText = context;
        context = getResources().getString(C0859R.string.address);
        Intrinsics.checkExpressionValueIsNotNull(context, "resources.getString(R.string.address)");
        this.addressString = context;
        context = getResources().getString(C0859R.string.comment);
        Intrinsics.checkExpressionValueIsNotNull(context, "resources.getString(R.string.comment)");
        this.commentString = context;
        setAddressMode();
    }

    @TargetApi(21)
    public RocketAddressView(Context context, AttributeSet attributeSet, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet, i, i2);
        context = getContext().getSystemService("layout_inflater");
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.LayoutInflater");
        }
        context = WidgetAddressViewBinding.inflate$3514d18((LayoutInflater) context, this);
        Intrinsics.checkExpressionValueIsNotNull(context, "WidgetAddressViewBinding…ate(inflater, this, true)");
        this.binding = context;
        this.binding.setVariable(24, this.data);
        this.redColor = ContextCompat.getColor(getContext(), C0859R.color.red);
        this.orangeColor = ContextCompat.getColor(getContext(), C0859R.color.orange_variant_2);
        context = this.binding.next;
        Intrinsics.checkExpressionValueIsNotNull(context, "binding.next");
        this.nextButton = context;
        context = this.binding.back;
        Intrinsics.checkExpressionValueIsNotNull(context, "binding.back");
        this.backButton = context;
        context = this.binding.addresText;
        Intrinsics.checkExpressionValueIsNotNull(context, "binding.addresText");
        this.editText = context;
        context = getResources().getString(C0859R.string.address);
        Intrinsics.checkExpressionValueIsNotNull(context, "resources.getString(R.string.address)");
        this.addressString = context;
        context = getResources().getString(C0859R.string.comment);
        Intrinsics.checkExpressionValueIsNotNull(context, "resources.getString(R.string.comment)");
        this.commentString = context;
        setAddressMode();
    }

    public final void setListener(ButtonAddressListener buttonAddressListener) {
        this.binding.setVariable(55, buttonAddressListener);
    }

    public final void setAddressMode() {
        this.data.setAddress(true);
        this.data.getAddressTextHint().set(this.addressString);
        this.data.getBackButtonVisible().set(false);
        this.data.getBackButtonColor().set(new ColorDrawable(this.orangeColor));
        this.data.getNextButtonEnabled().set(true);
        this.data.getNextButtonVisible().set(true);
        this.data.getNextButtonColor().set(new ColorDrawable(this.orangeColor));
    }

    public final void addTextWatcher(TextWatcher textWatcher) {
        Intrinsics.checkParameterIsNotNull(textWatcher, "textWatcher");
        this.editText.addTextChangedListener(textWatcher);
    }

    public final void removeTextWatcher(TextWatcher textWatcher) {
        Intrinsics.checkParameterIsNotNull(textWatcher, "textWatcher");
        this.editText.removeTextChangedListener(textWatcher);
    }

    public final RocketEditText getEditText() {
        return this.editText;
    }

    public final void setText(String str) {
        Intrinsics.checkParameterIsNotNull(str, ProviderField.TEXT);
        RocketEditText rocketEditText = this.binding.addresText;
        rocketEditText.setText(str);
        rocketEditText.setSelection(str.length());
    }

    public final String getText() {
        RocketEditText rocketEditText = this.binding.addresText;
        Intrinsics.checkExpressionValueIsNotNull(rocketEditText, "binding.addresText");
        return rocketEditText.getText().toString();
    }

    public final void reset() {
        setAddressMode();
        this.isError = false;
        this.data.getErrorVisible().set(false);
        this.nextButton.setImageResource(C0859R.drawable.ic_next);
    }

    public final void setAddressError() {
        this.isError = true;
        this.data.getNextButtonColor().set(new ColorDrawable(this.redColor));
        this.nextButton.setImageResource(C0859R.drawable.ic_attention);
        this.data.getNextButtonEnabled().set(false);
        this.data.getErrorVisible().set(true);
    }

    public final void setCommentMode() {
        this.data.setAddress(false);
        this.data.getBackButtonEnabled().set(true);
        this.data.getBackButtonVisible().set(true);
        this.data.getAddressTextHint().set(this.commentString);
        this.editText.setText("");
    }
}
