package ru.rocketbank.core.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.mattprecious.swirl.SwirlView;
import com.mattprecious.swirl.SwirlView.State;
import ru.rocketbank.core.C1328R;
import ru.rocketbank.core.widgets.RocketNumpad.OnNumberListener;
import ru.rocketbank.core.widgets.RocketSMSInput.OnCodeInputListener;
import ru.rocketbank.r2d2.C0859R;

public class RocketSMSGroup extends RelativeLayout {
    private OnCodeInputListener _listenerOnCodeInput;
    private OnCodeResetListener _listenerOnCodeReset;
    private RocketTextView error;
    private ImageView fingerPrintImage;
    private RocketNumpad numpad;
    private RocketSMSInput smsInput = ((RocketSMSInput) findViewById(C0859R.id.sms_input));
    private SwirlView swirlView;

    public interface OnCodeResetListener {
        void onCodeReset();
    }

    /* renamed from: ru.rocketbank.core.widgets.RocketSMSGroup$1 */
    class C13391 implements OnCodeInputListener {
        C13391() {
        }

        public final void onCode(String str) {
            RocketSMSGroup.this.smsInput.disableSmsInput();
            if (RocketSMSGroup.this._listenerOnCodeInput != null) {
                RocketSMSGroup.this._listenerOnCodeInput.onCode(str);
            }
        }
    }

    /* renamed from: ru.rocketbank.core.widgets.RocketSMSGroup$2 */
    class C13402 implements OnNumberListener {
        C13402() {
        }

        public final void onNumber(int i) {
            RocketSMSGroup.this.smsInput.appendNumber(i);
            RocketSMSGroup.this.numpad.setEraseEnabled(true);
        }

        public final void onReset() {
            OnCodeResetListener access$300 = RocketSMSGroup.this._listenerOnCodeReset;
            if (access$300 != null) {
                access$300.onCodeReset();
            }
        }

        public final void onClear() {
            RocketSMSGroup.this.regroup();
            RocketSMSGroup.this.numpad.setEraseEnabled(false);
        }
    }

    public RocketSMSGroup(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        attributeSet = context.obtainStyledAttributes(attributeSet, C1328R.styleable.RocketSMSGroup, 0, 0);
        attributeSet.getString(C1328R.styleable.RocketSMSGroup_group_title);
        boolean z = attributeSet.getBoolean(C1328R.styleable.RocketSMSGroup_allow_code_reset, true);
        attributeSet.recycle();
        LayoutInflater.from(context).inflate(C0859R.layout.rocket_sms_group, this, true);
        this.smsInput.setOnCodeInputListener(new C13391());
        this.numpad = (RocketNumpad) findViewById(C0859R.id.numpad);
        this.numpad.setOnNumberListener(new C13402());
        this.fingerPrintImage = (ImageView) findViewById(C0859R.id.fingerPrintImage);
        this.error = (RocketTextView) findViewById(C0859R.id.error);
        this.swirlView = (SwirlView) findViewById(C0859R.id.finger);
        if (this.swirlView != null) {
            this.swirlView.setState(State.OFF, false);
        }
        this.numpad.setResetEnabled(z);
    }

    public final void setOff() {
        if (this.swirlView != null) {
            this.swirlView.setState(State.OFF, true);
        } else {
            this.fingerPrintImage.setVisibility(4);
        }
        this.error.setVisibility(4);
    }

    public final void setOffImidiate() {
        if (this.swirlView != null) {
            this.swirlView.setState(State.OFF, false);
        } else {
            this.fingerPrintImage.setVisibility(4);
        }
        this.error.setVisibility(4);
    }

    public final void setTouchWaiting() {
        if (this.swirlView != null) {
            this.swirlView.setState(State.ON, true);
        } else {
            this.fingerPrintImage.setVisibility(0);
        }
        this.error.setVisibility(4);
    }

    public final void setTouchError(String str) {
        if (this.swirlView != null) {
            this.swirlView.setState(State.ERROR, true);
        } else {
            this.fingerPrintImage.setVisibility(0);
        }
        this.error.setVisibility(0);
        this.error.setText(str);
    }

    public final void setOnCodeInputListener(OnCodeInputListener onCodeInputListener) {
        this._listenerOnCodeInput = onCodeInputListener;
    }

    public final void setOnCodeResetListener(OnCodeResetListener onCodeResetListener) {
        this._listenerOnCodeReset = onCodeResetListener;
    }

    public final void regroup() {
        this.smsInput.regroup();
        this.numpad.setEraseEnabled(false);
    }
}
