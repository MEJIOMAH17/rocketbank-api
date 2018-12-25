package com.mattprecious.swirl;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.widget.ImageView;
import ru.rocketbank.r2d2.C0859R;

@TargetApi(23)
public final class SwirlView extends ImageView {
    private State state;

    public enum State {
        OFF,
        ON,
        ERROR
    }

    public SwirlView(Context context) {
        this(context, null);
    }

    public SwirlView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.state = State.OFF;
        if (VERSION.SDK_INT < 23) {
            throw new AssertionError("API 23 required.");
        }
        context = context.obtainStyledAttributes(attributeSet, C1265R.styleable.swirl_Swirl);
        attributeSet = context.getInteger(C1265R.styleable.swirl_Swirl_swirl_state, -1);
        if (attributeSet != -1) {
            setState(State.values()[attributeSet], false);
        }
        context.recycle();
    }

    public final void setState(State state, boolean z) {
        if (state != this.state) {
            z = getDrawable(this.state, state, z);
            if (z) {
                z = getContext().getDrawable(z);
                setImageDrawable(z);
                if (z instanceof AnimatedVectorDrawable) {
                    ((AnimatedVectorDrawable) z).start();
                }
            } else {
                setImageResource(z);
            }
            this.state = state;
        }
    }

    private static int getDrawable(State state, State state2, boolean z) {
        switch (state2) {
            case OFF:
                if (z) {
                    if (state == State.ON) {
                        return C0859R.drawable.swirl_draw_off_animation;
                    }
                    if (state == State.ERROR) {
                        return C0859R.drawable.swirl_error_off_animation;
                    }
                }
                return null;
            case ON:
                if (z) {
                    if (state == State.OFF) {
                        return C0859R.drawable.swirl_draw_on_animation;
                    }
                    if (state == State.ERROR) {
                        return C0859R.drawable.swirl_error_state_to_fp_animation;
                    }
                }
                return C0859R.drawable.swirl_fingerprint;
            case ERROR:
                if (z) {
                    if (state == State.ON) {
                        return C0859R.drawable.swirl_fp_to_error_state_animation;
                    }
                    if (state == State.OFF) {
                        return C0859R.drawable.swirl_error_on_animation;
                    }
                }
                return C0859R.drawable.swirl_error;
            default:
                throw new IllegalArgumentException("Unknown state: ".concat(String.valueOf(state2)));
        }
    }
}
