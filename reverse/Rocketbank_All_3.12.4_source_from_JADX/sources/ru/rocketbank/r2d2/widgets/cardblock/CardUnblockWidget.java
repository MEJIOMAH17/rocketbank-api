package ru.rocketbank.r2d2.widgets.cardblock;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import ru.rocketbank.r2d2.C0859R;

public class CardUnblockWidget extends FrameLayout {
    private TextView helpText;
    private ImageView imageViewBlockButton;
    private OnUnblockRequestListener listener;
    private TextView unblockText;

    /* renamed from: ru.rocketbank.r2d2.widgets.cardblock.CardUnblockWidget$1 */
    class C16291 implements OnTouchListener {
        C16291() {
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            double x = ((double) motionEvent.getX()) - ((double) (view.getWidth() / 2));
            double y = ((double) motionEvent.getY()) - ((double) (view.getHeight() / 2));
            return Math.sqrt((x * x) + (y * y)) > ((double) (view.getWidth() / 2)) ? true : null;
        }
    }

    /* renamed from: ru.rocketbank.r2d2.widgets.cardblock.CardUnblockWidget$2 */
    class C16302 implements OnClickListener {
        C16302() {
        }

        public void onClick(View view) {
            CardUnblockWidget.this.onBlockButtonClick();
        }
    }

    /* renamed from: ru.rocketbank.r2d2.widgets.cardblock.CardUnblockWidget$3 */
    class C16313 implements AnimatorListener {
        public void onAnimationCancel(Animator animator) {
        }

        public void onAnimationRepeat(Animator animator) {
        }

        public void onAnimationStart(Animator animator) {
        }

        C16313() {
        }

        public void onAnimationEnd(Animator animator) {
            CardUnblockWidget.this.onCardUnlock();
        }
    }

    public interface OnUnblockRequestListener {
        void onUnblockRequest();
    }

    public CardUnblockWidget(Context context) {
        this(context, null);
    }

    public CardUnblockWidget(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CardUnblockWidget(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setBackgroundColor(getResources().getColor(C0859R.color.widget_card_unblock_background));
        this.imageViewBlockButton = (ImageView) LayoutInflater.from(context).inflate(C0859R.layout.widget_card_unblock, this, 1).findViewById(C0859R.id.widget_card_block_lock_button);
        this.imageViewBlockButton.setOnTouchListener(new C16291());
        this.imageViewBlockButton.setOnClickListener(new C16302());
        this.helpText = (TextView) findViewById(C0859R.id.help_text);
        this.unblockText = (TextView) findViewById(C0859R.id.widget_card_unblock_textview_bottom);
    }

    private void onBlockButtonClick() {
        Animator ofFloat = ObjectAnimator.ofFloat(this.imageViewBlockButton, View.SCALE_X, new float[]{1.0f, 0.9f});
        ofFloat.setInterpolator(new AccelerateInterpolator());
        ofFloat.setDuration(200);
        Animator ofFloat2 = ObjectAnimator.ofFloat(this.imageViewBlockButton, View.SCALE_Y, new float[]{1.0f, 0.9f});
        ofFloat2.setInterpolator(new AccelerateInterpolator());
        ofFloat2.setDuration(200);
        Animator ofFloat3 = ObjectAnimator.ofFloat(this.imageViewBlockButton, View.SCALE_X, new float[]{0.9f, 1.0f});
        ofFloat3.setInterpolator(new OvershootInterpolator(6.0f));
        ofFloat3.setDuration(400);
        Animator ofFloat4 = ObjectAnimator.ofFloat(this.imageViewBlockButton, View.SCALE_Y, new float[]{0.9f, 1.0f});
        ofFloat4.setInterpolator(new OvershootInterpolator(6.0f));
        ofFloat4.setDuration(400);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.addListener(new C16313());
        animatorSet.play(ofFloat).with(ofFloat2);
        animatorSet.play(ofFloat3).with(ofFloat4).after(ofFloat);
        animatorSet.start();
    }

    private void onCardUnlock() {
        if (this.listener != null) {
            this.listener.onUnblockRequest();
        }
    }

    public void setIsPassportNeed(boolean z) {
        if (!z) {
            this.imageViewBlockButton.setVisibility(4);
            this.helpText.setVisibility(4);
            this.unblockText.setText(getContext().getString(C0859R.string.unlock_help));
        }
    }

    public void setOnUnblockRequestListener(OnUnblockRequestListener onUnblockRequestListener) {
        this.listener = onUnblockRequestListener;
    }
}
