package me.grantland.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
import me.grantland.widget.AutofitHelper.OnTextSizeChangeListener;

public class AutofitTextView extends TextView implements OnTextSizeChangeListener {
    private AutofitHelper mHelper;

    public AutofitTextView(Context context) {
        super(context);
        this.mHelper = AutofitHelper.create(this, null, 0).addOnTextSizeChangeListener(this);
    }

    public AutofitTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mHelper = AutofitHelper.create(this, attributeSet, null).addOnTextSizeChangeListener(this);
    }

    public AutofitTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mHelper = AutofitHelper.create(this, attributeSet, i).addOnTextSizeChangeListener(this);
    }

    public void setTextSize(int i, float f) {
        super.setTextSize(i, f);
        if (this.mHelper != null) {
            this.mHelper.setTextSize(i, f);
        }
    }

    public void setLines(int i) {
        super.setLines(i);
        if (this.mHelper != null) {
            this.mHelper.setMaxLines(i);
        }
    }

    public void setMaxLines(int i) {
        super.setMaxLines(i);
        if (this.mHelper != null) {
            this.mHelper.setMaxLines(i);
        }
    }
}
