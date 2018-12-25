package android.support.v7.widget;

import android.content.Context;
import android.support.v7.content.res.AppCompatResources;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;

public class AppCompatCheckedTextView extends CheckedTextView {
    private static final int[] TINT_ATTRS = new int[]{16843016};
    private final AppCompatTextHelper mTextHelper;

    public AppCompatCheckedTextView(Context context) {
        this(context, null);
    }

    public AppCompatCheckedTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16843720);
    }

    public AppCompatCheckedTextView(Context context, AttributeSet attributeSet, int i) {
        super(TintContextWrapper.wrap(context), attributeSet, i);
        this.mTextHelper = AppCompatTextHelper.create(this);
        this.mTextHelper.loadFromAttributes(attributeSet, i);
        this.mTextHelper.applyCompoundDrawablesTints();
        context = TintTypedArray.obtainStyledAttributes(getContext(), attributeSet, TINT_ATTRS, i, 0);
        setCheckMarkDrawable(context.getDrawable(0));
        context.recycle();
    }

    public void setCheckMarkDrawable(int i) {
        setCheckMarkDrawable(AppCompatResources.getDrawable(getContext(), i));
    }

    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        if (this.mTextHelper != null) {
            this.mTextHelper.onSetTextAppearance(context, i);
        }
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.mTextHelper != null) {
            this.mTextHelper.applyCompoundDrawablesTints();
        }
    }

    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return AppCompatHintHelper.onCreateInputConnection(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }
}
