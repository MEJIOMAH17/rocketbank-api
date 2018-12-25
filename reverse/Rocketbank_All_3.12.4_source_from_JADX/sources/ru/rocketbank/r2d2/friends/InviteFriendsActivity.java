package ru.rocketbank.r2d2.friends;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.codetail.animation.SupportAnimator;
import io.codetail.animation.SupportAnimator.AnimatorListener;
import io.codetail.animation.ViewAnimationUtils;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.SecuredActivity;
import ru.rocketbank.r2d2.fragments.RocketFragment;

public class InviteFriendsActivity extends SecuredActivity {
    public static final String KEY_REVEAL = "reveal";
    public static final String KEY_X = "x";
    public static final String KEY_Y = "y";
    private SupportAnimator animator;
    private View fragment;
    private boolean reveal;

    /* renamed from: ru.rocketbank.r2d2.friends.InviteFriendsActivity$1 */
    class C15781 implements Runnable {
        C15781() {
        }

        public void run() {
            InviteFriendsActivity.this.animator = InviteFriendsActivity.this.createAnimator(InviteFriendsActivity.this.fragment);
            InviteFriendsActivity.this.animator.start();
        }
    }

    /* renamed from: ru.rocketbank.r2d2.friends.InviteFriendsActivity$2 */
    class C16822 implements AnimatorListener {
        public void onAnimationRepeat() {
        }

        public void onAnimationStart() {
        }

        C16822() {
        }

        public void onAnimationEnd() {
            InviteFriendsActivity.this.fragment.setVisibility(4);
            InviteFriendsActivity.this.finish();
            InviteFriendsActivity.this.overridePendingTransition(0, 0);
        }

        public void onAnimationCancel() {
            InviteFriendsActivity.this.finish();
        }
    }

    public static void startActivity(Context context, boolean z, int i, int i2) {
        Intent intent = new Intent(context, InviteFriendsActivity.class);
        intent.putExtra("reveal", z);
        intent.putExtra("x", i);
        intent.putExtra("y", i2);
        context.startActivity(intent);
    }

    protected void onCreate(Bundle bundle) {
        getWindow().getDecorView().setSystemUiVisibility(1280);
        super.onCreate(bundle);
        setContentView(C0859R.layout.activity_invite_friends);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setDisplayShowHomeEnabled$1385ff();
        }
        this.reveal = getIntent().getBooleanExtra("reveal", false);
        this.fragment = findViewById(C0859R.id.fragment);
        if (bundle == null && this.reveal != null) {
            this.fragment.post(new C15781());
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        reverseAnimation();
        return null;
    }

    public void onBackPressed() {
        Fragment findFragmentById = getSupportFragmentManager().findFragmentById(C0859R.id.fragment);
        if (!(findFragmentById instanceof RocketFragment) || !((RocketFragment) findFragmentById).onBackPressed()) {
            reverseAnimation();
        }
    }

    private void reverseAnimation() {
        if (this.reveal) {
            if (this.animator == null) {
                this.animator = createAnimator(this.fragment);
            }
            if (this.animator.isRunning()) {
                this.animator.cancel();
                finish();
                return;
            }
            this.animator = this.animator.reverse();
            this.animator.addListener(new C16822());
            this.animator.setInterpolator(new AccelerateDecelerateInterpolator());
            this.animator.setDuration(500);
            this.animator.start();
            return;
        }
        finish();
    }

    private SupportAnimator createAnimator(View view) {
        int intExtra = getIntent().getIntExtra("x", view.getRight());
        int intExtra2 = getIntent().getIntExtra("y", view.getBottom());
        view = ViewAnimationUtils.createCircularReveal(view, intExtra, intExtra2, BitmapDescriptorFactory.HUE_RED, (float) Math.hypot((double) Math.max(intExtra, view.getWidth() - intExtra), (double) Math.max(intExtra2, view.getHeight() - intExtra2)));
        view.setInterpolator(new AccelerateDecelerateInterpolator());
        view.setDuration(500);
        return view;
    }
}
