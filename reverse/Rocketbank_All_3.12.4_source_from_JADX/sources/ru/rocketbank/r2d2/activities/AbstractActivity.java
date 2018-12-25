package ru.rocketbank.r2d2.activities;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.FragmentManager.OnBackStackChangedListener;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import de.greenrobot.event.EventBus;
import io.card.payment.CardIOActivity;
import io.card.payment.CreditCard;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import java.util.ArrayList;
import ru.rocketbank.core.dagger.component.RocketComponent;
import ru.rocketbank.core.events.ResultPermissionEvent;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.manager.FeedManager;
import ru.rocketbank.core.model.RequestPermissionEvent;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.network.api.RocketAPI;
import ru.rocketbank.core.nfc.CardDataRaw;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.RocketHandler;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.fragments.dialogs.ProgressDialogFragment;
import ru.rocketbank.r2d2.helpers.UIHelper;
import ru.rocketbank.r2d2.utils.NfcInputCard;
import rx.Subscriber;
import rx.Subscription;

public abstract class AbstractActivity extends AppCompatActivity implements OnBackStackChangedListener {
    public static final int CARD_SCAN_REQUEST_CODE = 10;
    public static final int PERMISSIONS_NFC = 10;
    private static final int REQUEST_PERMISSSIONS = 0;
    private static final String TAG = "AbstractActivity";
    private static final String USER_MODEL = "USER_MODEL";
    protected AnalyticsManager analyticsManager;
    protected Authorization authorization;
    protected FeedManager feedManager;
    private Handler handler = new Handler();
    private EventBus localBus = EventBus.getDefault();
    private ProgressDialogFragment progressDialog;
    private Runnable registerEventBusRunnable = new C08602();
    protected RocketAPI rocketApi;
    private Subscription userSubsctiption;

    /* renamed from: ru.rocketbank.r2d2.activities.AbstractActivity$2 */
    class C08602 implements Runnable {
        C08602() {
        }

        public void run() {
            AbstractActivity.this.registerEventBus();
        }
    }

    /* renamed from: ru.rocketbank.r2d2.activities.AbstractActivity$1 */
    class C14431 extends Subscriber<UserModel> {
        public void onCompleted() {
        }

        public void onError(Throwable th) {
        }

        C14431() {
        }

        public void onNext(UserModel userModel) {
            AbstractActivity.this.onUserModel(userModel);
        }
    }

    public void onUserModel(UserModel userModel) {
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable(USER_MODEL, this.authorization.getUserImmediate());
    }

    public RocketComponent getInjector() {
        return RocketApplication.Companion.getInjector();
    }

    public RocketAPI getRocketApi() {
        return this.rocketApi;
    }

    public FeedManager getFeedManager() {
        return this.feedManager;
    }

    public Authorization getAuthorization() {
        return this.authorization;
    }

    protected void onStart() {
        super.onStart();
        getSupportFragmentManager().addOnBackStackChangedListener(this);
    }

    protected void onStop() {
        super.onStop();
        getSupportFragmentManager().removeOnBackStackChangedListener(this);
    }

    public final void unsubscribe(Subscription subscription) {
        if (subscription != null && !subscription.isUnsubscribed()) {
            subscription.unsubscribe();
        }
    }

    private void subscribeToUser() {
        this.userSubsctiption = this.authorization.getUser().subscribe(new C14431());
    }

    public void onEventMainThread(RequestPermissionEvent requestPermissionEvent) {
        String[] permissions = requestPermissionEvent.getPermissions();
        ArrayList arrayList = new ArrayList(permissions.length);
        for (String str : permissions) {
            if (!ActivityCompat.shouldShowRequestPermissionRationale(this, str)) {
                arrayList.add(str);
            }
        }
        if (arrayList.isEmpty()) {
            ActivityCompat.requestPermissions(this, requestPermissionEvent.getPermissions(), 0);
            return;
        }
        requestPermissionEvent = new String[arrayList.size()];
        arrayList.toArray(requestPermissionEvent);
        ActivityCompat.requestPermissions(this, requestPermissionEvent, 0);
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        EventBus.getDefault().post(new ResultPermissionEvent(i, strArr, iArr));
    }

    protected void onFragmentChanged(int i) {
        Log.v(TAG, "Fragment is changed ".concat(String.valueOf(i)));
    }

    protected int getStatusBarHeight() {
        int identifier = getResources().getIdentifier("status_bar_height", "dimen", AbstractSpiCall.ANDROID_CLIENT_TYPE);
        return identifier > 0 ? getResources().getDimensionPixelSize(identifier) : 0;
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        Utils.closeKeyboardIfExists(this);
        try {
            onBackPressed();
            return true;
        } catch (MenuItem menuItem2) {
            AnalyticsManager.logException(menuItem2);
            return null;
        }
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.authorization = getInjector().getAuthorization();
        this.feedManager = getInjector().getFeedManager();
        this.rocketApi = getInjector().getRocketApi();
        this.analyticsManager = getInjector().getAnalyticsManager();
        if (bundle != null) {
            this.authorization.setUserModel((UserModel) bundle.getParcelable(USER_MODEL));
        }
        AnalyticsManager.startActivity(this);
        UIHelper.setActivity(this);
        this.handler.post(this.registerEventBusRunnable);
        if (this.progressDialog != null) {
            this.progressDialog.dismissAllowingStateLoss();
        }
    }

    protected void onResume() {
        super.onResume();
        UIHelper.setActivity(this);
        registerEventBus();
        RocketHandler.getInstance().onResume();
        subscribeToUser();
    }

    protected void onPause() {
        super.onPause();
        unregisterEventBus();
        RocketHandler.getInstance().onPause();
        unsubscribe(this.userSubsctiption);
    }

    protected void onDestroy() {
        super.onDestroy();
        AnalyticsManager.stopActivity(this);
        this.handler.removeCallbacks(this.registerEventBusRunnable);
        unregisterEventBus();
    }

    public RocketApplication getApp() {
        return (RocketApplication) getApplication();
    }

    protected void registerEventBus() {
        if (!this.localBus.isRegistered(this)) {
            this.localBus.register(this);
        }
    }

    protected void unregisterEventBus() {
        if (this.localBus.isRegistered(this)) {
            this.localBus.unregister(this);
        }
    }

    protected final <E extends View> E findView(int i) {
        return findViewById(i);
    }

    protected EventBus getLocalBus() {
        return this.localBus;
    }

    public void showProgressDialog() {
        try {
            if (!isFinishing() && this.progressDialog == null) {
                this.progressDialog = new ProgressDialogFragment();
                this.progressDialog.show(getSupportFragmentManager(), null);
            }
        } catch (Throwable th) {
            AnalyticsManager.logException(th);
        }
    }

    public void showProgressDialog(String str) {
        try {
            if (!isFinishing() && this.progressDialog == null) {
                this.progressDialog = ProgressDialogFragment.newInstance(str);
                this.progressDialog.show(getSupportFragmentManager(), null);
            }
        } catch (String str2) {
            AnalyticsManager.logException(str2);
        }
    }

    public void hideProgressDialog() {
        try {
            if (!(isFinishing() || this.progressDialog == null)) {
                this.progressDialog.dismissAllowingStateLoss();
                this.progressDialog = null;
            }
        } catch (Throwable e) {
            AnalyticsManager.logException(e);
        }
    }

    public void onBackStackChanged() {
        onFragmentChanged(getSupportFragmentManager().getBackStackEntryCount());
    }

    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (intent != null) {
            NfcInputCard.Companion.handleIntent(intent);
        }
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 10 && intent != null && intent.hasExtra(CardIOActivity.EXTRA_SCAN_RESULT) != 0) {
            CreditCard creditCard = (CreditCard) intent.getParcelableExtra(CardIOActivity.EXTRA_SCAN_RESULT);
            i2 = new CardDataRaw();
            i2.setPan(creditCard.cardNumber);
            i2.setMonth(creditCard.expiryMonth);
            i2.setYear(creditCard.expiryYear);
            EventBus.getDefault().post(i2);
        }
    }

    public void takeAShot() {
        Intent intent = new Intent(this, CardIOActivity.class);
        intent.putExtra(CardIOActivity.EXTRA_REQUIRE_EXPIRY, false);
        intent.putExtra(CardIOActivity.EXTRA_REQUIRE_CVV, false);
        intent.putExtra(CardIOActivity.EXTRA_REQUIRE_POSTAL_CODE, false);
        intent.putExtra(CardIOActivity.EXTRA_USE_CARDIO_LOGO, false);
        intent.putExtra(CardIOActivity.EXTRA_SUPPRESS_MANUAL_ENTRY, true);
        intent.putExtra(CardIOActivity.EXTRA_HIDE_CARDIO_LOGO, true);
        intent.putExtra(CardIOActivity.EXTRA_SUPPRESS_CONFIRMATION, true);
        startActivityForResult(intent, 10);
    }
}
