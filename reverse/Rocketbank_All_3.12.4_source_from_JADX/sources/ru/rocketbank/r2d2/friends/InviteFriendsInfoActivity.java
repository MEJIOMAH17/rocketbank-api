package ru.rocketbank.r2d2.friends;

import android.content.Context;
import android.content.Intent;
import android.databinding.DataBindingUtil;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.codetail.animation.SupportAnimator;
import io.codetail.animation.SupportAnimator.AnimatorListener;
import io.codetail.animation.ViewAnimationUtils;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.enums.Cobrand;
import ru.rocketbank.core.realm.UserData;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.activities.AbstractActivity;
import ru.rocketbank.r2d2.data.binding.InviteFriendsInfoHandler;
import ru.rocketbank.r2d2.databinding.ActivityInviteFriendInfoBinding;

public class InviteFriendsInfoActivity extends AbstractActivity implements InviteFriendsInfoHandler {
    public static final String KEY_REVEAL = "reveal";
    public static final String KEY_URL = "KEY_URL";
    public static final String KEY_X = "x";
    public static final String KEY_Y = "y";
    private ActivityInviteFriendInfoBinding activityInviteFriendInfoBinding;
    private SupportAnimator animator;
    private Authorization authorization;
    private View mContentView;
    private boolean reveal;
    private String url;
    private UserModel userModel;

    /* renamed from: ru.rocketbank.r2d2.friends.InviteFriendsInfoActivity$1 */
    class C15881 implements Runnable {
        C15881() {
        }

        public void run() {
            InviteFriendsInfoActivity.this.animator = InviteFriendsInfoActivity.this.createAnimator(InviteFriendsInfoActivity.this.mContentView);
            InviteFriendsInfoActivity.this.animator.start();
        }
    }

    /* renamed from: ru.rocketbank.r2d2.friends.InviteFriendsInfoActivity$2 */
    class C16842 implements AnimatorListener {
        public void onAnimationRepeat() {
        }

        public void onAnimationStart() {
        }

        C16842() {
        }

        public void onAnimationEnd() {
            InviteFriendsInfoActivity.this.mContentView.setVisibility(4);
            InviteFriendsInfoActivity.this.finish();
            InviteFriendsInfoActivity.this.overridePendingTransition(0, 0);
        }

        public void onAnimationCancel() {
            InviteFriendsInfoActivity.this.finish();
        }
    }

    public static void startActivity(Context context, String str, boolean z, int i, int i2) {
        Intent intent = new Intent(context, InviteFriendsInfoActivity.class);
        intent.putExtra("reveal", z);
        intent.putExtra("x", i);
        intent.putExtra("y", i2);
        intent.putExtra(KEY_URL, str);
        context.startActivity(intent);
    }

    public void onClose(View view) {
        reverseAnimation();
    }

    public void onFacebook(View view) {
        share("com.facebook.katana");
    }

    public void onVk(View view) {
        share("com.vkontakte.android");
    }

    public void onTwitter(View view) {
        share("com.twitter.android");
    }

    public void onUrl(View view) {
        share();
    }

    private void share(String str) {
        Intent launchIntentForPackage = getPackageManager().getLaunchIntentForPackage(str);
        if (launchIntentForPackage == null || launchIntentForPackage.resolveActivity(getPackageManager()) == null) {
            share();
        } else {
            launchIntentForPackage = new Intent();
            launchIntentForPackage.setAction("android.intent.action.SEND");
            launchIntentForPackage.setPackage(str);
            launchIntentForPackage.putExtra("android.intent.extra.TEXT", this.url);
            launchIntentForPackage.setType("text/plain");
            if (launchIntentForPackage.resolveActivity(getPackageManager()) != null) {
                startActivity(launchIntentForPackage);
            }
        }
        RocketApplication.Companion.getInjector().getAnalyticsManager().invitesPage();
    }

    public void share() {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.TEXT", this.url);
        intent.setType("text/plain");
        startActivity(Intent.createChooser(intent, getResources().getText(C0859R.string.share)));
    }

    public void onUserModel(UserModel userModel) {
        super.onUserModel(userModel);
        this.userModel = userModel;
        UserData userData = this.authorization.getUserData();
        Intrinsics.checkParameterIsNotNull(userData, "userData");
        String quantityString = getResources().getQuantityString(Cobrand.Companion.fromCobrandName(userData.realmGet$cobrandName()).getMoney(), userModel.getInvitationRevenue());
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(Integer.toString(userModel.getInvitationRevenue()));
        stringBuilder.append(" ");
        stringBuilder.append(quantityString);
        userModel = stringBuilder.toString();
        ((TextView) findViewById(C0859R.id.textPayment)).setText(getString(C0859R.string.u_rcv_money_4_friend, new Object[]{userModel}));
    }

    protected void onCreate(Bundle bundle) {
        getWindow().getDecorView().setSystemUiVisibility(1280);
        super.onCreate(bundle);
        this.authorization = RocketApplication.Companion.getInjector().getAuthorization();
        this.activityInviteFriendInfoBinding = (ActivityInviteFriendInfoBinding) DataBindingUtil.setContentView(this, C0859R.layout.activity_invite_friend_info);
        this.activityInviteFriendInfoBinding.setHandler(this);
        this.mContentView = findViewById(C0859R.id.fullscreen_content);
        this.url = getIntent().getStringExtra(KEY_URL);
        this.activityInviteFriendInfoBinding.url.setText(this.url);
        this.reveal = getIntent().getBooleanExtra("reveal", false);
        if (bundle == null && this.reveal != null) {
            this.mContentView.post(new C15881());
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
        reverseAnimation();
    }

    private void reverseAnimation() {
        if (this.reveal) {
            if (this.animator == null) {
                this.animator = createAnimator(this.mContentView);
            }
            if (this.animator.isRunning()) {
                this.animator.cancel();
                finish();
                return;
            }
            this.animator = this.animator.reverse();
            this.animator.addListener(new C16842());
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
