package ru.rocketbank.core.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: RocketNumpad.kt */
public final class RocketNumpad extends LinearLayout implements OnClickListener {
    private OnNumberListener _listener;
    private final View clear;
    private final View reset;

    /* compiled from: RocketNumpad.kt */
    public interface OnNumberListener {
        void onClear();

        void onNumber(int i);

        void onReset();
    }

    public RocketNumpad(Context context, AttributeSet attributeSet) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet);
        setOrientation(1);
        LayoutInflater.from(context).inflate(C0859R.layout.rocket_numpad, this, true);
        context = findViewById(C0859R.id.reset_button);
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        RocketTextView rocketTextView = (RocketTextView) context;
        OnClickListener onClickListener = this;
        rocketTextView.setOnClickListener(onClickListener);
        this.reset = rocketTextView;
        context = findViewById(C0859R.id.clear_button);
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        ((RocketTextView) context).setOnClickListener(onClickListener);
        context = findViewById(C0859R.id.clear_frame);
        Intrinsics.checkExpressionValueIsNotNull(context, "findViewById(R.id.clear_frame)");
        this.clear = context;
        this.clear.setVisibility(4);
        this.clear.requestLayout();
        this.clear.invalidate();
        context = getChildCount() - 1;
        if (context >= null) {
            int i = 0;
            while (true) {
                View childAt = getChildAt(i);
                if (childAt == null) {
                    throw new TypeCastException("null cannot be cast to non-null type android.widget.LinearLayout");
                }
                LinearLayout linearLayout = (LinearLayout) childAt;
                int childCount = linearLayout.getChildCount() - 1;
                if (childCount >= 0) {
                    int i2 = 0;
                    while (true) {
                        View childAt2 = linearLayout.getChildAt(i2);
                        if (childAt2 instanceof ViewGroup) {
                            childAt2 = ((ViewGroup) childAt2).getChildAt(0);
                            if (childAt2 instanceof RocketNumpadButton) {
                                ((RocketNumpadButton) childAt2).setOnPressed(new OnClickListener() {
                                    public final void onClick(View view) {
                                        if (this._listener != null) {
                                            view = this._listener;
                                            if (view == null) {
                                                Intrinsics.throwNpe();
                                            }
                                            view.onNumber(((RocketNumpadButton) childAt2).getNumber());
                                        }
                                    }
                                });
                            }
                        }
                        if (i2 == childCount) {
                            break;
                        }
                        i2++;
                    }
                }
                if (i != context) {
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    public final void setOnNumberListener(OnNumberListener onNumberListener) {
        Intrinsics.checkParameterIsNotNull(onNumberListener, "listener");
        this._listener = onNumberListener;
    }

    public final void setResetEnabled(boolean z) {
        this.reset.setVisibility(z ? false : true);
    }

    public final void setEraseEnabled(boolean z) {
        this.clear.setVisibility(z ? false : true);
        this.clear.requestLayout();
        this.clear.invalidate();
    }

    public final void onClick(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        view = view.getId();
        if (view == C0859R.id.reset_button) {
            if (this._listener != null) {
                view = this._listener;
                if (view == null) {
                    Intrinsics.throwNpe();
                }
                view.onReset();
            }
        } else if (view == C0859R.id.clear_button && this._listener != null) {
            view = this._listener;
            if (view == null) {
                Intrinsics.throwNpe();
            }
            view.onClear();
        }
    }
}
