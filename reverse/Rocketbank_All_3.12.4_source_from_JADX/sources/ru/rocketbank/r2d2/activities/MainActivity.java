package ru.rocketbank.r2d2.activities;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager.OnBackStackChangedListener;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.ActionBarDrawerToggle;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AlertDialog.Builder;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnSystemUiVisibilityChangeListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.TextView;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mikepenz.materialdrawer.Drawer;
import com.mikepenz.materialdrawer.Drawer.OnDrawerItemClickListener;
import com.mikepenz.materialdrawer.DrawerBuilder;
import com.mikepenz.materialdrawer.holder.BadgeStyle;
import com.mikepenz.materialdrawer.model.DividerDrawerItem;
import com.mikepenz.materialdrawer.model.PrimaryDrawerItem;
import com.mikepenz.materialdrawer.model.SecondaryDrawerItem;
import com.mikepenz.materialdrawer.model.interfaces.IDrawerItem;
import de.greenrobot.event.EventBus;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.exceptions.RocketException;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.manager.AtmsManager;
import ru.rocketbank.core.manager.ContactManager;
import ru.rocketbank.core.manager.CurrencyManager;
import ru.rocketbank.core.manager.DataManager;
import ru.rocketbank.core.manager.PushManager;
import ru.rocketbank.core.manager.RocketShortcutManager;
import ru.rocketbank.core.model.AccountModel;
import ru.rocketbank.core.model.DepositModel;
import ru.rocketbank.core.model.IssueModel;
import ru.rocketbank.core.model.JointAccount;
import ru.rocketbank.core.model.PhoneModel;
import ru.rocketbank.core.model.SafeAccount;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.dto.GenericRequestResponseData;
import ru.rocketbank.core.model.enums.Cobrand;
import ru.rocketbank.core.model.enums.Currency;
import ru.rocketbank.core.model.enums.Status;
import ru.rocketbank.core.model.provider.Provider;
import ru.rocketbank.core.network.model.ProvidersResponse;
import ru.rocketbank.core.realm.UserData;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.core.utils.RocketAction;
import ru.rocketbank.r2d2.ActionBarTitleInstaller;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.IHostFragment;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.fragments.InfoFragment;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import ru.rocketbank.r2d2.fragments.card.NewCardFragment;
import ru.rocketbank.r2d2.fragments.deposit.DepositFragment;
import ru.rocketbank.r2d2.fragments.deposit.NewDepositsFragment;
import ru.rocketbank.r2d2.fragments.discounts.DiscountsFragment;
import ru.rocketbank.r2d2.fragments.profile.ProfileFragment;
import ru.rocketbank.r2d2.fragments.refill.UserFeedRefillFragment;
import ru.rocketbank.r2d2.fragments.rocketrouble.RocketRoubleFragment;
import ru.rocketbank.r2d2.fragments.safe.NewSafeFragment;
import ru.rocketbank.r2d2.fragments.safe.SafeAccountFragment;
import ru.rocketbank.r2d2.fragments.transfers.TransferTabFragment;
import ru.rocketbank.r2d2.friends.FriendActivity;
import ru.rocketbank.r2d2.friends.FriendsFragment;
import ru.rocketbank.r2d2.helpers.UIHelper;
import ru.rocketbank.r2d2.payment.PaymentDetailsActivity;
import ru.rocketbank.r2d2.payment.PaymentFragment;
import ru.rocketbank.r2d2.root.analytics.AnalyticsFragment;
import ru.rocketbank.r2d2.root.card.CardDetailFragment;
import ru.rocketbank.r2d2.root.chat.ChatFragment;
import ru.rocketbank.r2d2.root.feed.FeedFragment;
import ru.rocketbank.r2d2.shop.feed.ShopFeedFragment;
import ru.rocketbank.r2d2.utils.AndroidBug5497Workaround;
import ru.rocketbank.r2d2.utils.GaToken;
import ru.rocketbank.r2d2.widgets.RocketDrawer;
import ru.rocketbank.r2d2.widgets.RocketDrawerDescriptionItem;
import ru.rocketbank.r2d2.widgets.RocketDrawerItem;
import ru.rocketbank.r2d2.widgets.RocketSectionDrawerItem;
import rx.Observable;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.schedulers.Schedulers;

public class MainActivity extends SecuredActivity implements DrawerContainer {
    private static final String KEY_ACTION_IS_COMPLETED = "KEY_ACTION_IS_COMPLETED";
    private static final String KEY_DRAWER_SCROLL_POSITION = "KEY_DRAWER_SCROLL_POSITION";
    private static final String TAG = "MainActivity";
    private static final String TAG_FRAGMENT = "TAG_FRAGMENT";
    private static final int TOUCH_REQUEST = 16;
    private static boolean isShowNotification = false;
    private static final ArrayList<String> problemModels;
    private Fragment activeFragment;
    private AlertDialog alertDialog;
    AnalyticsManager analyticsManager;
    AtmsManager atmsManager;
    Authorization authorization;
    private ArrayList<IDrawerItem> bottomItems;
    private Runnable checkGooglePlayServicesRunnagle = new C08633();
    ContactManager contactManager;
    CurrencyManager currencyManager;
    DataManager dataManager;
    private Drawer drawer;
    private Parcelable drawerSavedState = null;
    private ActionBarDrawerToggle drawerToggle;
    private RocketDrawerItem feedItem;
    private View fixView;
    private Handler handler = new Handler();
    private View headerView;
    private HeaderViewHolder headerViewHolder;
    private boolean isActionCompleted = false;
    private Subscription mUserModelSubscription;
    private MoneyFormatter moneyFormatter;
    private Runnable requirePermissionsRunnable = new C08622();
    RocketShortcutManager rocketShortcutManager;
    private boolean saveInstanceState;
    private Runnable sendGaTokenRunnable = new C08656();
    private boolean sendToken = false;
    private RocketDrawerItem shopItem;
    private Runnable showJointRequestRunnable = new C08611();
    private List<IDrawerItem> staticContent;
    private RocketDrawerItem supportItem;
    private UserModel userModel;

    /* renamed from: ru.rocketbank.r2d2.activities.MainActivity$19 */
    static /* synthetic */ class AnonymousClass19 {
        static final /* synthetic */ int[] $SwitchMap$ru$rocketbank$core$model$enums$Cobrand = new int[Cobrand.values().length];

        static {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r0 = ru.rocketbank.core.model.enums.StatusIssue.values();
            r0 = r0.length;
            r0 = new int[r0];
            $SwitchMap$ru$rocketbank$core$model$enums$StatusIssue = r0;
            r0 = 1;
            r1 = $SwitchMap$ru$rocketbank$core$model$enums$StatusIssue;	 Catch:{ NoSuchFieldError -> 0x0014 }
            r2 = ru.rocketbank.core.model.enums.StatusIssue.DELIVERY;	 Catch:{ NoSuchFieldError -> 0x0014 }
            r2 = r2.ordinal();	 Catch:{ NoSuchFieldError -> 0x0014 }
            r1[r2] = r0;	 Catch:{ NoSuchFieldError -> 0x0014 }
        L_0x0014:
            r1 = 2;
            r2 = $SwitchMap$ru$rocketbank$core$model$enums$StatusIssue;	 Catch:{ NoSuchFieldError -> 0x001f }
            r3 = ru.rocketbank.core.model.enums.StatusIssue.DELIVERY_SCHEDULED;	 Catch:{ NoSuchFieldError -> 0x001f }
            r3 = r3.ordinal();	 Catch:{ NoSuchFieldError -> 0x001f }
            r2[r3] = r1;	 Catch:{ NoSuchFieldError -> 0x001f }
        L_0x001f:
            r2 = $SwitchMap$ru$rocketbank$core$model$enums$StatusIssue;	 Catch:{ NoSuchFieldError -> 0x002a }
            r3 = ru.rocketbank.core.model.enums.StatusIssue.ISSUING;	 Catch:{ NoSuchFieldError -> 0x002a }
            r3 = r3.ordinal();	 Catch:{ NoSuchFieldError -> 0x002a }
            r4 = 3;	 Catch:{ NoSuchFieldError -> 0x002a }
            r2[r3] = r4;	 Catch:{ NoSuchFieldError -> 0x002a }
        L_0x002a:
            r2 = $SwitchMap$ru$rocketbank$core$model$enums$StatusIssue;	 Catch:{ NoSuchFieldError -> 0x0035 }
            r3 = ru.rocketbank.core.model.enums.StatusIssue.PIN;	 Catch:{ NoSuchFieldError -> 0x0035 }
            r3 = r3.ordinal();	 Catch:{ NoSuchFieldError -> 0x0035 }
            r4 = 4;	 Catch:{ NoSuchFieldError -> 0x0035 }
            r2[r3] = r4;	 Catch:{ NoSuchFieldError -> 0x0035 }
        L_0x0035:
            r2 = ru.rocketbank.core.model.enums.Cobrand.values();
            r2 = r2.length;
            r2 = new int[r2];
            $SwitchMap$ru$rocketbank$core$model$enums$Cobrand = r2;
            r2 = $SwitchMap$ru$rocketbank$core$model$enums$Cobrand;	 Catch:{ NoSuchFieldError -> 0x0048 }
            r3 = ru.rocketbank.core.model.enums.Cobrand.ONETWOTRIP;	 Catch:{ NoSuchFieldError -> 0x0048 }
            r3 = r3.ordinal();	 Catch:{ NoSuchFieldError -> 0x0048 }
            r2[r3] = r0;	 Catch:{ NoSuchFieldError -> 0x0048 }
        L_0x0048:
            r2 = ru.rocketbank.core.model.enums.Currency.values();
            r2 = r2.length;
            r2 = new int[r2];
            $SwitchMap$ru$rocketbank$core$model$enums$Currency = r2;
            r2 = $SwitchMap$ru$rocketbank$core$model$enums$Currency;	 Catch:{ NoSuchFieldError -> 0x005b }
            r3 = ru.rocketbank.core.model.enums.Currency.DOLLAR;	 Catch:{ NoSuchFieldError -> 0x005b }
            r3 = r3.ordinal();	 Catch:{ NoSuchFieldError -> 0x005b }
            r2[r3] = r0;	 Catch:{ NoSuchFieldError -> 0x005b }
        L_0x005b:
            r0 = $SwitchMap$ru$rocketbank$core$model$enums$Currency;	 Catch:{ NoSuchFieldError -> 0x0065 }
            r2 = ru.rocketbank.core.model.enums.Currency.EURO;	 Catch:{ NoSuchFieldError -> 0x0065 }
            r2 = r2.ordinal();	 Catch:{ NoSuchFieldError -> 0x0065 }
            r0[r2] = r1;	 Catch:{ NoSuchFieldError -> 0x0065 }
        L_0x0065:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.activities.MainActivity.19.<clinit>():void");
        }
    }

    /* renamed from: ru.rocketbank.r2d2.activities.MainActivity$1 */
    class C08611 implements Runnable {
        C08611() {
        }

        public void run() {
            MainActivity.this.showJointRequest();
        }
    }

    /* renamed from: ru.rocketbank.r2d2.activities.MainActivity$2 */
    class C08622 implements Runnable {
        C08622() {
        }

        public void run() {
            MainActivity.this.requirePermissions();
        }
    }

    /* renamed from: ru.rocketbank.r2d2.activities.MainActivity$3 */
    class C08633 implements Runnable {
        C08633() {
        }

        public void run() {
            MainActivity.this.checkGooglePlayServices();
        }
    }

    /* renamed from: ru.rocketbank.r2d2.activities.MainActivity$4 */
    class C08644 implements OnSystemUiVisibilityChangeListener {
        C08644() {
        }

        public void onSystemUiVisibilityChange(int i) {
            if ((i & 2) == 0) {
                MainActivity.this.fixView.setVisibility(8);
            } else {
                MainActivity.this.setupPaddingIfNeed();
            }
        }
    }

    /* renamed from: ru.rocketbank.r2d2.activities.MainActivity$6 */
    class C08656 implements Runnable {
        C08656() {
        }

        public void run() {
            GaToken.INSTANCE.sendGaToken(MainActivity.this.getApplicationContext(), MainActivity.this.rocketApi);
        }
    }

    public static class HeaderViewHolder {
        View currencyBlock;
        TextView eur;
        TextView url;
        TextView usd;

        public HeaderViewHolder(View view) {
            this.currencyBlock = view.findViewById(C0859R.id.currencyBlock);
            this.usd = (TextView) view.findViewById(C0859R.id.usd);
            this.eur = (TextView) view.findViewById(C0859R.id.eur);
            this.url = (TextView) view.findViewById(C0859R.id.url);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.activities.MainActivity$5 */
    class C13475 implements OnBackStackChangedListener {
        C13475() {
        }

        public void onBackStackChanged() {
            MainActivity.this.selectCurrentFragment();
            if (MainActivity.this.drawerToggle != null) {
                MainActivity.this.setActionButtonIcon();
            }
        }
    }

    /* renamed from: ru.rocketbank.r2d2.activities.MainActivity$7 */
    class C14457 extends Subscriber<UserModel> {
        public void onCompleted() {
        }

        C14457() {
        }

        public void onError(Throwable th) {
            AnalyticsManager.logException(new RocketException("Что-то пошло не так?", th));
        }

        public void onNext(UserModel userModel) {
            MainActivity.this.onUserModelRefresh(userModel);
        }
    }

    private static int getDepositIcon() {
        return C0859R.drawable.ic_ruble_deposit;
    }

    private void updateWidgetState() {
    }

    public void onCreate(Bundle bundle) {
        getWindow().getDecorView().setSystemUiVisibility(1280);
        super.onCreate(bundle);
        Log.v(TAG, "onCreate");
        setContentView((int) C0859R.layout.activity_main);
        this.fixView = findView(C0859R.id.fix_view);
        getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new C08644());
        AndroidBug5497Workaround.assistActivity(this);
        this.saveInstanceState = false;
        this.atmsManager = getInjector().getAtmsManager();
        this.authorization = getInjector().getAuthorization();
        this.currencyManager = getInjector().getCurrencyManager();
        this.analyticsManager = getInjector().getAnalyticsManager();
        this.rocketShortcutManager = getInjector().getRocketShortcutManager();
        this.dataManager = getInjector().getDataManager();
        this.contactManager = getInjector().getContactManager();
        this.rocketShortcutManager.createSupportShortcut();
        this.rocketShortcutManager.createRefillShortcut();
        this.rocketShortcutManager.createPhoneShortcut();
        if (bundle != null) {
            this.activeFragment = getSupportFragmentManager().findFragmentById(C0859R.id.content);
            this.drawerSavedState = bundle.getParcelable(KEY_DRAWER_SCROLL_POSITION);
            this.isActionCompleted = bundle.getBoolean(KEY_ACTION_IS_COMPLETED);
        }
        clearSupportBadge();
        getSupportFragmentManager().addOnBackStackChangedListener(new C13475());
        if (VERSION.SDK_INT >= 23) {
            this.handler.post(this.requirePermissionsRunnable);
        }
        getInjector().getAnalyticsManager().logEndFirstRefillFacebook();
    }

    static {
        ArrayList arrayList = new ArrayList();
        problemModels = arrayList;
        arrayList.add("SM-G950");
        problemModels.add("SM-G955");
        problemModels.add("SM-G960");
        problemModels.add("SM-G965");
    }

    private void setupPaddingIfNeed() {
        String str = Build.MODEL;
        Iterator it = problemModels.iterator();
        while (it.hasNext()) {
            if (str.contains((String) it.next())) {
                int navBarHeight = UIHelper.getNavBarHeight(this);
                if (navBarHeight == 0) {
                    navBarHeight = 40 * ((int) Resources.getSystem().getDisplayMetrics().density);
                }
                LayoutParams layoutParams = this.fixView.getLayoutParams();
                layoutParams.height = navBarHeight;
                this.fixView.setLayoutParams(layoutParams);
                this.fixView.setVisibility(0);
                return;
            }
        }
    }

    private void requirePermissions() {
        int i = 0;
        int i2 = ContextCompat.checkSelfPermission(this, "android.permission.ACCESS_FINE_LOCATION") != 0 ? 1 : 0;
        int i3 = ContextCompat.checkSelfPermission(this, "android.permission.ACCESS_COARSE_LOCATION") != 0 ? 1 : 0;
        if (i2 == 0 || i3 == 0) {
            ArrayList arrayList = new ArrayList();
            if (i2 != 0 && ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.ACCESS_FINE_LOCATION")) {
                arrayList.add("android.permission.ACCESS_FINE_LOCATION");
            }
            if (i3 != 0 && ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.ACCESS_COARSE_LOCATION")) {
                arrayList.add("android.permission.ACCESS_COARSE_LOCATION");
            }
            i2 = arrayList.size();
            if (i2 > 0) {
                String[] strArr = new String[i2];
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    strArr[i] = (String) it.next();
                    i++;
                }
                if (VERSION.SDK_INT >= 23) {
                    requestPermissions(strArr, 14330538);
                }
            }
        }
    }

    private void checkGooglePlayServices() {
        int isGooglePlayServicesAvailable = GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(this);
        if (isGooglePlayServicesAvailable != 9) {
            if (isGooglePlayServicesAvailable != 18) {
                switch (isGooglePlayServicesAvailable) {
                    case 0:
                        return;
                    case 1:
                        showInstallGooglePlay();
                        return;
                    case 2:
                        showUpdateGooglePlay();
                        return;
                    case 3:
                        break;
                    default:
                        break;
                }
            }
            return;
        }
        showUpdateGoogleDisableOrInvalid();
    }

    private void showUpdateGoogleDisableOrInvalid() {
        if (!isShowNotification) {
            isShowNotification = true;
        }
        PushManager.instance.showUpdate$6bd33ff8(new Random(SystemClock.currentThreadTimeMillis()).nextInt(), getString(C0859R.string.google_require_disable), getString(C0859R.string.google_require_disable_title));
    }

    private void showInstallGooglePlay() {
        if (!isShowNotification) {
            isShowNotification = true;
        }
        PushManager.instance.showUpdate$6bd33ff8(new Random(SystemClock.currentThreadTimeMillis()).nextInt(), getString(C0859R.string.google_require_install), getString(C0859R.string.google_require_install_title));
    }

    private void showUpdateGooglePlay() {
        if (!isShowNotification) {
            isShowNotification = true;
        }
        PushManager.instance.showUpdate$6bd33ff8(new Random(SystemClock.currentThreadTimeMillis()).nextInt(), getString(C0859R.string.google_require_update), getString(C0859R.string.google_require_update_title));
    }

    protected void onResume() {
        super.onResume();
        Log.v(TAG, "onResume");
        this.saveInstanceState = false;
        if (!EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().registerSticky(this);
        }
        this.mUserModelSubscription = this.authorization.getUser().subscribe(new C14457());
        this.handler.post(this.checkGooglePlayServicesRunnagle);
    }

    private void onUserModelRefresh(UserModel userModel) {
        if (this.moneyFormatter == null) {
            CurrencyManager currencyManager = this.currencyManager;
            Authorization authorization = this.authorization;
            Intrinsics.checkParameterIsNotNull(this, "context");
            Intrinsics.checkParameterIsNotNull(authorization, "authorization");
            MoneyFormatter moneyFormatter = new MoneyFormatter(this, authorization, currencyManager);
            moneyFormatter.setFloorAmount(true);
            this.moneyFormatter = moneyFormatter;
        }
        if (!this.sendToken) {
            this.handler.post(this.sendGaTokenRunnable);
            this.sendToken = true;
        }
        Log.v(TAG, "User model acquired");
        this.userModel = userModel;
        clearSupportBadge();
        configureMainMenu(userModel);
        configureDrawerLayout();
        showStartupFragment(getIntent());
        this.atmsManager.requireUpdate(userModel.getAtmsHash());
        this.contactManager.loadContacts(false);
        this.handler.removeCallbacks(this.showJointRequestRunnable);
        this.handler.post(this.showJointRequestRunnable);
    }

    private void clearSupportBadge() {
        if (this.userModel != null && this.activeFragment != null && ChatFragment.class.getName().equals(this.activeFragment.getTag())) {
            this.userModel.setUnreadMessages(0);
            updateSupportBadge();
        }
    }

    private void showJointRequest() {
        if (!(this.userModel == null || this.userModel.getForeignJointAccounts() == null)) {
            if (this.userModel.getForeignJointAccounts().length != 0) {
                final JointAccount jointAccount = this.userModel.getForeignJointAccounts()[0];
                if (!jointAccount.isConfirmed()) {
                    if (this.alertDialog != null) {
                        this.alertDialog.dismiss();
                    }
                    this.alertDialog = new Builder(this).setTitle((int) C0859R.string.foreign_joint_request_title).setMessage(getString(C0859R.string.foreign_joint_request_message, new Object[]{jointAccount.getUser_name()})).setNegativeButton(C0859R.string.decline, new OnClickListener() {
                        public void onClick(DialogInterface dialogInterface, int i) {
                            MainActivity.this.doJointRequest(MainActivity.this.getRocketApi().jointDecline(jointAccount.getId().intValue(), ""));
                        }
                    }).setPositiveButton((int) C0859R.string.accept, new OnClickListener() {
                        public void onClick(DialogInterface dialogInterface, int i) {
                            MainActivity.this.doJointRequest(MainActivity.this.getRocketApi().m364jointonfirm(jointAccount.getId().intValue(), ""));
                        }
                    }).show();
                }
            }
        }
    }

    private void doJointRequest(Observable<GenericRequestResponseData> observable) {
        observable.observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.io()).subscribe(new Subscriber<GenericRequestResponseData>() {
            public void onCompleted() {
            }

            public void onError(Throwable th) {
                if (!(MainActivity.this.activeFragment == null || MainActivity.this.activeFragment.getView() == null)) {
                    UIHelper.showSnackWithError(MainActivity.this.activeFragment.getView(), th, -1);
                }
            }

            public void onNext(GenericRequestResponseData genericRequestResponseData) {
                MainActivity.this.authorization.refreshBackgroundProfile();
            }
        });
    }

    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.isActionCompleted = false;
        setIntent(intent);
    }

    public void setActionButtonIcon() {
        Log.v(TAG, "setActionButtonIcon");
        if (getSupportFragmentManager().findFragmentByTag(TAG_FRAGMENT) != null) {
            showBack();
        } else {
            showHamburger();
        }
        if (this.drawerToggle != null) {
            this.drawerToggle.syncState();
        }
        Log.v(TAG, "setActionButtonIcon done");
    }

    private void showHamburger() {
        Log.v(TAG, "Drawer: Hamburger");
        if (this.drawerToggle != null) {
            this.drawerToggle.setDrawerIndicatorEnabled(true);
        }
    }

    private void showBack() {
        Log.v(TAG, "Drawer: Back");
        if (this.drawerToggle != null) {
            this.drawerToggle.setDrawerIndicatorEnabled(false);
        }
    }

    private void popBack() {
        if ((this.activeFragment instanceof RocketFragment) && !((RocketFragment) this.activeFragment).isCanPopBack()) {
            return;
        }
        if (getSupportFragmentManager().getBackStackEntryCount() == 1) {
            moveTaskToBack(true);
        } else {
            super.onBackPressed();
        }
    }

    private boolean isCanMoveBack() {
        if (getSupportFragmentManager().findFragmentByTag(TAG_FRAGMENT) != null) {
            return true;
        }
        return (this.activeFragment == null || !(this.activeFragment instanceof RocketFragment)) ? false : ((RocketFragment) this.activeFragment).canBack();
    }

    protected void onStop() {
        PushManager.instance.allowMessages(true);
        PushManager.instance.allowOperations(true);
        super.onStop();
    }

    public Drawer getDrawer() {
        return this.drawer;
    }

    public void onBackPressed() {
        if (this.drawer != null && this.drawer.isDrawerOpen()) {
            this.drawer.closeDrawer();
        } else if (!(this.activeFragment instanceof RocketFragment) || !((RocketFragment) this.activeFragment).onBackPressed()) {
            if (this.activeFragment instanceof IHostFragment) {
                IHostFragment iHostFragment = (IHostFragment) this.activeFragment;
                if (iHostFragment.canBack()) {
                    iHostFragment.moveBack();
                    return;
                }
            }
            popBack();
        }
    }

    private void replaceFragment(Fragment fragment, String str) {
        if (!this.saveInstanceState) {
            Fragment findFragmentByTag = getSupportFragmentManager().findFragmentByTag(str);
            if (findFragmentByTag != null) {
                this.activeFragment = findFragmentByTag;
                try {
                    getSupportFragmentManager().popBackStackImmediate(str, 0);
                    return;
                } catch (Fragment fragment2) {
                    AnalyticsManager.logException(fragment2);
                    return;
                }
            }
            this.activeFragment = fragment2;
            getSupportFragmentManager().beginTransaction().replace(C0859R.id.content, this.activeFragment, str).addToBackStack(str).commit();
            Utils.closeKeyboardIfExists(this);
            getWindow().setSoftInputMode(18);
            setActionButtonIcon();
        }
    }

    private static String getText(Currency currency) {
        switch (currency) {
            case DOLLAR:
                return "долларах";
            case EURO:
                return "евро";
            default:
                return "рублях";
        }
    }

    private static int getCardIcon(AccountModel accountModel) {
        return AnonymousClass19.$SwitchMap$ru$rocketbank$core$model$enums$Cobrand[Cobrand.Companion.fromCobrandName(accountModel.getCurrentTariff().getCobrandName()).ordinal()] != 1 ? C0859R.drawable.ic_rocket_card : C0859R.drawable.ic_onetwotrip_card;
    }

    private static int getCardBlockIcon(AccountModel accountModel) {
        return AnonymousClass19.$SwitchMap$ru$rocketbank$core$model$enums$Cobrand[Cobrand.Companion.fromCobrandName(accountModel.getCurrentTariff().getCobrandName()).ordinal()] != 1 ? C0859R.drawable.ic_rocket_card_block : C0859R.drawable.ic_onetwotrip_card_block;
    }

    private static int getCardIssueIcon(ru.rocketbank.core.model.AccountModel r1) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r0 = ru.rocketbank.core.model.enums.Cobrand.Companion;	 Catch:{ Throwable -> 0x000f }
        r1 = r1.getCurrentTariff();	 Catch:{ Throwable -> 0x000f }
        r1 = r1.getCobrandName();	 Catch:{ Throwable -> 0x000f }
        r1 = r0.fromCobrandName(r1);	 Catch:{ Throwable -> 0x000f }
        goto L_0x0011;
    L_0x000f:
        r1 = ru.rocketbank.core.model.enums.Cobrand.ROCKETBANK;
    L_0x0011:
        r0 = ru.rocketbank.r2d2.activities.MainActivity.AnonymousClass19.$SwitchMap$ru$rocketbank$core$model$enums$Cobrand;
        r1 = r1.ordinal();
        r1 = r0[r1];
        r0 = 1;
        if (r1 == r0) goto L_0x0020;
    L_0x001c:
        r1 = 2131231102; // 0x7f08017e float:1.8078276E38 double:1.052968071E-314;
        return r1;
    L_0x0020:
        r1 = 2131231089; // 0x7f080171 float:1.807825E38 double:1.0529680644E-314;
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.activities.MainActivity.getCardIssueIcon(ru.rocketbank.core.model.AccountModel):int");
    }

    private static int getSafeIcon(Currency currency) {
        switch (currency) {
            case DOLLAR:
                return C0859R.drawable.ic_dollar_safe;
            case EURO:
                return C0859R.drawable.ic_euro_safe;
            default:
                return C0859R.drawable.ic_ruble_safe;
        }
    }

    protected void onPause() {
        this.handler.removeCallbacks(this.showJointRequestRunnable);
        this.handler.removeCallbacks(this.checkGooglePlayServicesRunnagle);
        if (VERSION.SDK_INT >= 23) {
            this.handler.removeCallbacks(this.requirePermissionsRunnable);
        }
        if (!(this.mUserModelSubscription == null || this.mUserModelSubscription.isUnsubscribed())) {
            this.mUserModelSubscription.unsubscribe();
            this.mUserModelSubscription = null;
        }
        if (EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().unregister(this);
        }
        super.onPause();
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        Utils.closeKeyboardIfExists(this);
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        if (this.activeFragment == null || (this.activeFragment instanceof IHostFragment) == null) {
            if (isCanMoveBack() != null) {
                onBackPressed();
            } else {
                toggleDrawer();
            }
        } else if (((IHostFragment) this.activeFragment).canBack() != null) {
            onBackPressed();
        } else if (isCanMoveBack() != null) {
            onBackPressed();
        } else {
            toggleDrawer();
        }
        return true;
    }

    public void toggleDrawer() {
        if (this.drawer != null) {
            if (this.drawer.isDrawerOpen()) {
                this.drawer.closeDrawer();
            } else {
                this.drawer.openDrawer();
            }
        }
    }

    private void showStartupFragment(Intent intent) {
        if (intent != null) {
            if (!this.isActionCompleted) {
                String stringExtra = intent.getStringExtra("KEY_ACTION");
                if (stringExtra == null) {
                    showFeedIfEmpty();
                    return;
                } else if (stringExtra.equals(RocketAction.ACTION_PHONE)) {
                    showFeedIfEmpty();
                    if (this.dataManager.getProviders() == null) {
                        this.dataManager.loadProviders();
                        return;
                    } else {
                        onStartPhone();
                        return;
                    }
                } else {
                    if (stringExtra.equals(RocketAction.ACTION_SUPPORT)) {
                        showSupport();
                    } else if (stringExtra.equals(RocketAction.ACTION_REFILL)) {
                        if (!(this.userModel == null || this.userModel.getCurrentAccount() == null)) {
                            replaceFragment(UserFeedRefillFragment.newInstance(this.userModel.getCurrentAccount().getToken(), false, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED), UserFeedRefillFragment.class.getName());
                        }
                    } else if (stringExtra.equals(RocketAction.ACTION_FRIEND) && intent.getExtras().containsKey(RocketShortcutManager.KEY_EXTRAS)) {
                        FriendActivity.startActivity(this, RocketShortcutManager.readContact(intent.getBundleExtra(RocketShortcutManager.KEY_EXTRAS)));
                    } else if (stringExtra.equals(RocketAction.ACTION_FEED) != null || this.activeFragment == null) {
                        showFeed();
                    }
                    setActionIsCompleted();
                    return;
                }
            }
        }
        showFeedIfEmpty();
    }

    private void showFeedIfEmpty() {
        if (this.activeFragment == null) {
            showFeed();
        }
    }

    private void setActionIsCompleted() {
        this.isActionCompleted = true;
        if (getIntent() != null) {
            getIntent().removeExtra("KEY_ACTION");
        }
    }

    private void onStartPhone() {
        setActionIsCompleted();
        PhoneModel phone = this.userModel.getPhone();
        Provider provider = this.dataManager.getProvider(0);
        if (provider != null) {
            Bundle bundle = new Bundle();
            bundle.putString("number", phone.getNumber());
            PaymentDetailsActivity.Companion.start(this, provider, bundle, null, null);
        }
    }

    public void onEvent(ProvidersResponse providersResponse) {
        if (getIntent() != null) {
            providersResponse = getIntent().getStringExtra("KEY_ACTION");
            if (providersResponse == null) {
                providersResponse = "";
            }
            if (providersResponse.equals(RocketAction.ACTION_PHONE) != null && this.isActionCompleted == null) {
                onStartPhone();
            }
        }
    }

    private void configureDrawerLayout() {
        if (this.drawerToggle == null) {
            this.drawerToggle = new ActionBarDrawerToggle(this, this.drawer.getDrawerLayout(), 0, 0) {
                public void onDrawerOpened(View view) {
                    Utils.closeKeyboardIfExists(MainActivity.this);
                    MainActivity.this.invalidateOptionsMenu();
                }

                public void onDrawerClosed(View view) {
                    MainActivity.this.invalidateOptionsMenu();
                }
            };
            this.drawer.getDrawerLayout().setDrawerListener(this.drawerToggle);
            this.drawerToggle.syncState();
        }
    }

    public ActionBarDrawerToggle getActionBarDrawerToggle() {
        return this.drawerToggle;
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.drawerToggle != null) {
            this.drawerToggle.onConfigurationChanged(configuration);
        }
    }

    protected void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        if (this.drawerToggle != null) {
            this.drawerToggle.syncState();
        }
    }

    private List<IDrawerItem> getStaticMenuHead() {
        if (this.staticContent != null) {
            updateSupportBadge();
            return this.staticContent;
        }
        Drawable drawable;
        this.staticContent = new ArrayList(32);
        if (VERSION.SDK_INT >= 21) {
            drawable = getResources().getDrawable(C0859R.drawable.ic_badge_background, getTheme());
        } else {
            drawable = getResources().getDrawable(C0859R.drawable.ic_badge_background);
        }
        this.supportItem = (RocketDrawerItem) ((PrimaryDrawerItem) ((PrimaryDrawerItem) createDrawerItemTinted().withFragment(ChatFragment.class).withName(C0859R.string.menu_support_caption)).withIcon((int) C0859R.drawable.ic_support)).withBadgeStyle(new BadgeStyle().withBadgeBackground(drawable).withTextColor$6a1c8365());
        updateSupportBadge();
        this.feedItem = (RocketDrawerItem) ((PrimaryDrawerItem) createDrawerItemTinted().withFragment(FeedFragment.class).withName(C0859R.string.menu_feed_caption)).withIcon((int) C0859R.drawable.ic_lenta);
        this.staticContent.addAll(Arrays.asList(new PrimaryDrawerItem[]{this.feedItem, this.supportItem, (PrimaryDrawerItem) ((PrimaryDrawerItem) createDrawerItemTinted().withFragment(TransferTabFragment.class).withName(C0859R.string.menu_transfer_caption)).withIcon((int) C0859R.drawable.ic_transfer), (PrimaryDrawerItem) ((PrimaryDrawerItem) createDrawerItemTinted().withFragment(UserFeedRefillFragment.class).withName(C0859R.string.menu_addmoney_caption)).withIcon((int) C0859R.drawable.ic_refill), (PrimaryDrawerItem) ((PrimaryDrawerItem) createDrawerItemTinted().withFragment(FriendsFragment.class).withName(C0859R.string.menu_friends_caption)).withIcon((int) C0859R.drawable.ic_friends), (PrimaryDrawerItem) ((PrimaryDrawerItem) createDrawerItemTinted().withFragment(PaymentFragment.class).withName(C0859R.string.menu_pay_caption)).withIcon((int) C0859R.drawable.ic_payment_for_services)}));
        return this.staticContent;
    }

    private void updateSupportBadge() {
        if (this.supportItem != null) {
            if (this.userModel == null || this.userModel.getUnreadMessages() == 0) {
                this.supportItem.withoutBadge().withOnDrawerItemClickListener(null);
            } else {
                this.supportItem.withBadge(Integer.toString(this.userModel.getUnreadMessages())).withOnDrawerItemClickListener(new OnDrawerItemClickListener() {
                    public boolean onItemClick(View view, int i, IDrawerItem iDrawerItem) {
                        MainActivity.this.userModel.setUnreadMessages(0);
                        MainActivity.this.supportItem.withoutBadge();
                        MainActivity.this.drawer.updateItem(MainActivity.this.supportItem);
                        MainActivity.this.showSupport();
                        return true;
                    }
                });
            }
            if (this.drawer != null) {
                this.drawer.updateItem(this.supportItem);
            }
        }
    }

    public ArrayList<IDrawerItem> getStaticMenuBottom() {
        if (this.bottomItems != null) {
            return this.bottomItems;
        }
        this.bottomItems = new ArrayList();
        this.bottomItems.add(new DividerDrawerItem());
        ArrayList arrayList = this.bottomItems;
        PrimaryDrawerItem[] primaryDrawerItemArr = new PrimaryDrawerItem[3];
        RocketDrawerItem withFragment = createDrawerItemTinted().withFragment(RocketRoubleFragment.class);
        UserData userData = this.authorization.getUserData();
        Intrinsics.checkParameterIsNotNull(userData, "userData");
        primaryDrawerItemArr[0] = (PrimaryDrawerItem) ((PrimaryDrawerItem) withFragment.withName(Cobrand.Companion.fromCobrandName(userData.realmGet$cobrandName()).getMenu())).withIcon((int) C0859R.drawable.ic_rocketbank);
        primaryDrawerItemArr[1] = (PrimaryDrawerItem) ((PrimaryDrawerItem) createDrawerItemTinted().withFragment(DiscountsFragment.class).withName(C0859R.string.menu_discounts_caption)).withIcon((int) C0859R.drawable.ic_discounts);
        primaryDrawerItemArr[2] = (PrimaryDrawerItem) ((PrimaryDrawerItem) createDrawerItemTinted().withFragment(AnalyticsFragment.class).withName(C0859R.string.menu_analytics_caption)).withIcon((int) C0859R.drawable.ic_analytics);
        arrayList.addAll(Arrays.asList(primaryDrawerItemArr));
        if (this.userModel.isShopWorks()) {
            this.shopItem = (RocketDrawerItem) ((PrimaryDrawerItem) createDrawerItemTinted().withFragment(ShopFeedFragment.class).withName(C0859R.string.menu_shop_caption)).withIcon((int) C0859R.drawable.shop);
            this.bottomItems.add(this.shopItem);
        }
        this.bottomItems.addAll(Arrays.asList(new PrimaryDrawerItem[]{(PrimaryDrawerItem) ((PrimaryDrawerItem) createDrawerItemTinted().withFragment(ProfileFragment.class).withName(C0859R.string.menu_profile_caption)).withIcon((int) C0859R.drawable.ic_profile_settings), (PrimaryDrawerItem) ((PrimaryDrawerItem) createDrawerItemTinted().withFragment(InfoFragment.class).withName(C0859R.string.menu_info_caption)).withIcon((int) C0859R.drawable.ic_information)}));
        return this.bottomItems;
    }

    private RocketDrawerItem createDrawerItemTinted() {
        return (RocketDrawerItem) ((PrimaryDrawerItem) ((PrimaryDrawerItem) createDrawerItem().withIconTintingEnabled(true)).withIconColorRes(C0859R.color.rocketBlack)).withSelectedIconColorRes(C0859R.color.orange);
    }

    private RocketDrawerItem createDrawerItem() {
        return (RocketDrawerItem) ((PrimaryDrawerItem) ((PrimaryDrawerItem) ((PrimaryDrawerItem) new RocketDrawerItem().withIconTintingEnabled(false)).withSelectedColorRes(C0859R.color.transparent)).withSelectedTextColorRes(C0859R.color.orange)).withDescriptionTextColorRes(C0859R.color.drawer_item_primary_description_color);
    }

    private RocketDrawerDescriptionItem createDrawerItemWithDescription() {
        return (RocketDrawerDescriptionItem) ((SecondaryDrawerItem) ((SecondaryDrawerItem) ((SecondaryDrawerItem) ((SecondaryDrawerItem) new RocketDrawerDescriptionItem().withIconTintingEnabled(false)).withTextColorRes(C0859R.color.rocketBlack)).withSelectedColorRes(C0859R.color.transparent)).withSelectedTextColorRes(C0859R.color.orange)).withDescriptionTextColorRes(C0859R.color.drawer_item_primary_description_color);
    }

    private void configureMainMenu(final UserModel userModel) {
        List arrayList = new ArrayList(32);
        if (this.headerView == null) {
            this.headerView = getLayoutInflater().inflate(C0859R.layout.main_menu_nav_header_navigation_drawer, null, false);
            this.headerViewHolder = new HeaderViewHolder(this.headerView);
        }
        if (userModel.getRates() != null) {
            this.headerViewHolder.currencyBlock.setVisibility(0);
            double cardUsd = userModel.getRates().getCardUsd();
            double cardEur = userModel.getRates().getCardEur();
            this.headerViewHolder.usd.setText(this.moneyFormatter.format(cardUsd, "", true));
            this.headerViewHolder.eur.setText(this.moneyFormatter.format(cardEur, "", true));
            this.headerViewHolder.url.setOnClickListener(new View.OnClickListener() {
                public void onClick(View view) {
                    Utils.openUrl(MainActivity.this, userModel.getRates().getUrl());
                }
            });
        } else {
            this.headerViewHolder.currencyBlock.setVisibility(8);
        }
        arrayList.addAll(getStaticMenuHead());
        arrayList.addAll(createMoneyMenu(userModel));
        arrayList.addAll(getStaticMenuBottom());
        if (this.drawer != null) {
            this.drawer.setItems(new ArrayList(arrayList));
        } else {
            this.drawer = new DrawerBuilder().withActivity(this).withHeaderDivider$4dbba9b3().withActionBarDrawerToggle$4dbba9b3().withHeader(this.headerView).withHeaderClickable$4dbba9b3().addDrawerItems((IDrawerItem[]) arrayList.toArray(new IDrawerItem[arrayList.size()])).withOnDrawerItemClickListener(new OnDrawerItemClickListener() {
                public boolean onItemClick(View view, int i, IDrawerItem iDrawerItem) {
                    if (((RocketDrawer) iDrawerItem).getOnDrawerItemClickListener() != null) {
                        return false;
                    }
                    try {
                        MainActivity.this.showActiveFragment((RocketDrawer) iDrawerItem);
                        return true;
                    } catch (View view2) {
                        AnalyticsManager.logException(view2);
                        MainActivity.this.showFeed();
                        return false;
                    }
                }
            }).withSliderBackgroundColorRes$90ebf22().withTranslucentStatusBar$4dbba9b3().withStatusBarColor(getResources().getColor(C0859R.color.rocketBlack30)).build();
            if (VERSION.SDK_INT >= 19) {
                this.drawer.keyboardSupportEnabled$3ef676ad(this);
            }
        }
        if (this.drawerSavedState != null) {
            userModel = this.drawer.getRecyclerView().getLayoutManager();
            if (userModel != null) {
                userModel.onRestoreInstanceState(this.drawerSavedState);
            }
            selectCurrentFragment();
        }
    }

    private void selectCurrentFragment() {
        Fragment findFragmentById = getSupportFragmentManager().findFragmentById(C0859R.id.content);
        if (findFragmentById != null) {
            IDrawerItem findByFragmentTag = findByFragmentTag(findFragmentById.getTag());
            if (findByFragmentTag != null) {
                this.drawer.setSelection$7a7ce801(findByFragmentTag);
            }
            if (findFragmentById instanceof ActionBarTitleInstaller) {
                setTitle(((ActionBarTitleInstaller) findFragmentById).getActionBarTitle());
            }
            try {
                findFragmentById = getSupportFragmentManager().findFragmentById(C0859R.id.content);
                if (findFragmentById != null) {
                    AnalyticsManager.logLastFragment(findFragmentById.toString());
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    private RocketDrawerItem findByFragmentTag(String str) {
        if (this.drawer != null) {
            if (!this.drawer.getDrawerItems().isEmpty()) {
                Iterator it = this.drawer.getDrawerItems().iterator();
                while (it.hasNext()) {
                    IDrawerItem iDrawerItem = (IDrawerItem) it.next();
                    if (iDrawerItem instanceof RocketDrawerItem) {
                        RocketDrawerItem rocketDrawerItem = (RocketDrawerItem) iDrawerItem;
                        String fragmentTag = rocketDrawerItem.getFragmentTag();
                        if (fragmentTag != null && fragmentTag.equals(str)) {
                            return rocketDrawerItem;
                        }
                    }
                }
                return null;
            }
        }
        return null;
    }

    private List<IDrawerItem> createMoneyMenu(UserModel userModel) {
        List<IDrawerItem> arrayList = new ArrayList();
        if (userModel == null) {
            return arrayList;
        }
        Iterator it;
        boolean z = false;
        boolean z2 = (userModel.getAvailableCards() == null || userModel.getAvailableCards().size() == 0) ? false : true;
        boolean z3 = (userModel.getAccounts() == null || userModel.getAccounts().isEmpty()) ? false : true;
        boolean z4 = (userModel.getIssues() == null || userModel.getIssues().isEmpty()) ? false : true;
        if (z3 || z2 || z4) {
            StringBuilder stringBuilder;
            final String stringBuilder2;
            arrayList.add(new RocketSectionDrawerItem().withDivider(true).withName((int) C0859R.string.cards_caption));
            if (z3) {
                it = userModel.getAccounts().iterator();
                while (it.hasNext()) {
                    final AccountModel accountModel = (AccountModel) it.next();
                    if (accountModel != null) {
                        stringBuilder = new StringBuilder();
                        stringBuilder.append(CardDetailFragment.class.getName());
                        stringBuilder.append(accountModel.getToken());
                        stringBuilder2 = stringBuilder.toString();
                        RocketDrawerDescriptionItem rocketDrawerDescriptionItem = (RocketDrawerDescriptionItem) ((SecondaryDrawerItem) ((SecondaryDrawerItem) ((SecondaryDrawerItem) createDrawerItemWithDescription().withFragment(CardDetailFragment.class, stringBuilder2).withName(accountModel.getTitle())).withIcon(getCardIcon(accountModel))).withDescription(this.moneyFormatter.format(accountModel.getBalance(), accountModel.getCurrency().toString(), true))).withOnDrawerItemClickListener(new OnDrawerItemClickListener() {
                            public boolean onItemClick(View view, int i, IDrawerItem iDrawerItem) {
                                MainActivity.this.replaceFragment(CardDetailFragment.newInstance(accountModel.getToken(), accountModel.getPlasticToken(), accountModel.getExtracts()), stringBuilder2);
                                MainActivity.this.drawer.closeDrawer();
                                return true;
                            }
                        });
                        if (accountModel.getStatusValue() == Status.BLOCKED || accountModel.getStatusValue() == Status.FRAUD_BLOCKED || accountModel.getStatusValue() == Status.HARD_BLOCKED) {
                            rocketDrawerDescriptionItem.withTextColorRes(C0859R.color.menu_blocked_card);
                            rocketDrawerDescriptionItem.withDescriptionTextColorRes(C0859R.color.menu_blocked_card_description);
                            rocketDrawerDescriptionItem.withIcon(getCardBlockIcon(accountModel));
                            rocketDrawerDescriptionItem.withDescription(C0859R.string.card_blocked);
                        }
                        arrayList.add(rocketDrawerDescriptionItem);
                    }
                }
            }
            if (z4) {
                for (final IssueModel issueModel : userModel.getIssues()) {
                    if (issueModel != null) {
                        RocketDrawerDescriptionItem rocketDrawerDescriptionItem2 = (RocketDrawerDescriptionItem) ((SecondaryDrawerItem) ((SecondaryDrawerItem) createDrawerItemWithDescription().withName(issueModel.getTitle())).withIcon(getCardIssueIcon(userModel.getCurrentAccount()))).withEnabled(false);
                        stringBuilder2 = "";
                        switch (issueModel.getStatus()) {
                            case DELIVERY:
                                stringBuilder2 = "Карта готова, осталось согласовать время и место доставки";
                                break;
                            case DELIVERY_SCHEDULED:
                                stringBuilder2 = "Доставка карты согласована";
                                break;
                            case ISSUING:
                                stringBuilder = new StringBuilder("Подана заявка на открытие новой карты в ");
                                stringBuilder.append(issueModel.getCurrency() != null ? getText(issueModel.getCurrency()) : "Рокетрублях =)");
                                stringBuilder2 = stringBuilder.toString();
                                break;
                            case PIN:
                                stringBuilder2 = "Необходимо придумать пинкод";
                                rocketDrawerDescriptionItem2.withEnabled(true);
                                rocketDrawerDescriptionItem2.withOnDrawerItemClickListener(new OnDrawerItemClickListener() {
                                    public boolean onItemClick(View view, int i, IDrawerItem iDrawerItem) {
                                        ChangeCodeActivity.startPin(MainActivity.this, false, issueModel.getPin(), true);
                                        return true;
                                    }
                                });
                                break;
                            default:
                                break;
                        }
                        arrayList.add(rocketDrawerDescriptionItem2.withDescription(stringBuilder2));
                    }
                }
            }
            if (z2) {
                arrayList.add(((PrimaryDrawerItem) createDrawerItemTinted().withFragment(NewCardFragment.class).withName(C0859R.string.menu_new_card_caption)).withIcon((int) C0859R.drawable.ic_add));
            }
        }
        List availableAccounts = userModel.getAvailableAccounts();
        z2 = (availableAccounts == null || availableAccounts.isEmpty()) ? false : true;
        z3 = (userModel.getSafeAccounts() == null || userModel.getSafeAccounts().isEmpty()) ? false : true;
        if (z2 || z3) {
            arrayList.add(new RocketSectionDrawerItem().withDivider(true).withName((int) C0859R.string.safes));
            if (z3) {
                it = userModel.getSafeAccounts().iterator();
                while (it.hasNext()) {
                    final SafeAccount safeAccount = (SafeAccount) it.next();
                    if (safeAccount != null) {
                        StringBuilder stringBuilder3 = new StringBuilder();
                        stringBuilder3.append(SafeAccountFragment.class.getName());
                        stringBuilder3.append(safeAccount.getToken());
                        arrayList.add(((SecondaryDrawerItem) ((SecondaryDrawerItem) ((SecondaryDrawerItem) createDrawerItemWithDescription().withFragment(SafeAccountFragment.class, stringBuilder3.toString()).withName(safeAccount.getTitle())).withIcon(getSafeIcon(safeAccount.getCurrency()))).withDescription(this.moneyFormatter.format(safeAccount.getBalance(), safeAccount.getCurrency().toString(), true))).withOnDrawerItemClickListener(new OnDrawerItemClickListener() {
                            public boolean onItemClick(View view, int i, IDrawerItem iDrawerItem) {
                                MainActivity.this.showSafe(safeAccount.getToken());
                                MainActivity.this.drawer.closeDrawer();
                                return true;
                            }
                        }));
                    }
                }
            }
            if (z2) {
                arrayList.add(((PrimaryDrawerItem) createDrawerItemTinted().withFragment(NewSafeFragment.class).withName(C0859R.string.menu_new_safe_caption)).withIcon((int) C0859R.drawable.ic_add));
            }
        }
        z2 = userModel.isCanOpenDeposit();
        if (!(userModel.getDeposits() == null || userModel.getDeposits().isEmpty())) {
            z = true;
        }
        if (z || z2) {
            arrayList.add(new RocketSectionDrawerItem().withDivider(true).withName((int) C0859R.string.deposits_caption));
            if (z) {
                for (final DepositModel depositModel : userModel.getDeposits()) {
                    if (depositModel != null) {
                        StringBuilder stringBuilder4 = new StringBuilder();
                        stringBuilder4.append(DepositFragment.class.getName());
                        stringBuilder4.append(depositModel.getId());
                        arrayList.add(((SecondaryDrawerItem) ((SecondaryDrawerItem) ((SecondaryDrawerItem) ((SecondaryDrawerItem) createDrawerItemWithDescription().withFragment(DepositFragment.class, stringBuilder4.toString()).withName(depositModel.getTitle())).withIcon(getDepositIcon())).withDescription(Float.toString(depositModel.getBalance()))).withDescription(this.moneyFormatter.format((double) depositModel.getBalance(), depositModel.getRocketDeposit().getCurrency() != null ? depositModel.getRocketDeposit().getCurrency() : "", true))).withOnDrawerItemClickListener(new OnDrawerItemClickListener() {
                            public boolean onItemClick(View view, int i, IDrawerItem iDrawerItem) {
                                MainActivity.this.showDeposit(depositModel);
                                MainActivity.this.drawer.closeDrawer();
                                return true;
                            }
                        }));
                    }
                }
            }
            if (z2) {
                arrayList.add(((PrimaryDrawerItem) createDrawerItemTinted().withFragment(NewDepositsFragment.class).withName(C0859R.string.menu_new_deposit_caption)).withIcon((int) C0859R.drawable.ic_add));
            }
        }
        return arrayList;
    }

    private void showActiveFragment(RocketDrawer rocketDrawer) {
        Exception e;
        if (!this.saveInstanceState || rocketDrawer == null || rocketDrawer.getFragmentClass() == null) {
            Fragment fragment;
            try {
                fragment = (Fragment) rocketDrawer.getFragmentClass().newInstance();
                try {
                    fragment.setArguments(new Bundle());
                } catch (Exception e2) {
                    e = e2;
                    e.printStackTrace();
                    if (fragment == null) {
                        Utils.closeKeyboardIfExists(this);
                        getWindow().setSoftInputMode(18);
                        if (fragment.getClass() != ChatFragment.class) {
                            PushManager.instance.allowMessages(false);
                            PushManager.instance.cancelMessages();
                        } else if (fragment.getClass() == FeedFragment.class) {
                            PushManager.instance.allowOperations(false);
                            PushManager.instance.cancelOperations();
                        } else {
                            PushManager.instance.allowMessages(true);
                            PushManager.instance.allowOperations(true);
                        }
                        this.activeFragment = fragment;
                        if (this.drawer != null) {
                            this.drawer.closeDrawer();
                        }
                        replaceFragment(this.activeFragment, rocketDrawer.getFragmentTag());
                        supportInvalidateOptionsMenu();
                    }
                }
            } catch (Exception e3) {
                Exception exception = e3;
                fragment = null;
                e = exception;
                e.printStackTrace();
                if (fragment == null) {
                    Utils.closeKeyboardIfExists(this);
                    getWindow().setSoftInputMode(18);
                    if (fragment.getClass() != ChatFragment.class) {
                        PushManager.instance.allowMessages(false);
                        PushManager.instance.cancelMessages();
                    } else if (fragment.getClass() == FeedFragment.class) {
                        PushManager.instance.allowMessages(true);
                        PushManager.instance.allowOperations(true);
                    } else {
                        PushManager.instance.allowOperations(false);
                        PushManager.instance.cancelOperations();
                    }
                    this.activeFragment = fragment;
                    if (this.drawer != null) {
                        this.drawer.closeDrawer();
                    }
                    replaceFragment(this.activeFragment, rocketDrawer.getFragmentTag());
                    supportInvalidateOptionsMenu();
                }
            }
            if (fragment == null) {
                Utils.closeKeyboardIfExists(this);
                getWindow().setSoftInputMode(18);
                if (fragment.getClass() != ChatFragment.class) {
                    PushManager.instance.allowMessages(false);
                    PushManager.instance.cancelMessages();
                } else if (fragment.getClass() == FeedFragment.class) {
                    PushManager.instance.allowOperations(false);
                    PushManager.instance.cancelOperations();
                } else {
                    PushManager.instance.allowMessages(true);
                    PushManager.instance.allowOperations(true);
                }
                this.activeFragment = fragment;
                if (this.drawer != null) {
                    this.drawer.closeDrawer();
                }
                replaceFragment(this.activeFragment, rocketDrawer.getFragmentTag());
                supportInvalidateOptionsMenu();
            }
        }
    }

    public void showProfile() {
        replaceFragment(new ProfileFragment(), ProfileFragment.class.getName());
    }

    @Deprecated
    public void pushFragment(Fragment fragment) {
        if (!this.saveInstanceState) {
            FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
            beginTransaction.setTransition(FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            this.activeFragment = fragment;
            beginTransaction.replace(C0859R.id.content, this.activeFragment, TAG_FRAGMENT).addToBackStack(TAG_FRAGMENT).commit();
            this.drawer.closeDrawer();
        }
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.saveInstanceState = true;
        if (this.drawer != null) {
            LayoutManager layoutManager = this.drawer.getRecyclerView().getLayoutManager();
            if (layoutManager != null && (layoutManager instanceof LinearLayoutManager)) {
                bundle.putParcelable(KEY_DRAWER_SCROLL_POSITION, layoutManager.onSaveInstanceState());
            }
        }
        bundle.putBoolean(KEY_ACTION_IS_COMPLETED, this.isActionCompleted);
    }

    public boolean isDrawerOpen() {
        return this.drawer != null && this.drawer.isDrawerOpen();
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        Fragment fragment = this.activeFragment;
        if (fragment != null) {
            fragment.onActivityResult(i, i2, intent);
        }
    }

    public void showSupport() {
        this.userModel.setUnreadMessages(0);
        updateSupportBadge();
        showActiveFragment(this.supportItem);
    }

    public void showShop() {
        showActiveFragment(this.shopItem);
    }

    public void showFeed() {
        showActiveFragment(this.feedItem);
    }

    public void showTransfers() {
        replaceFragment(new TransferTabFragment(), TransferTabFragment.class.getName());
    }

    public void showDeposit(DepositModel depositModel) {
        Fragment newInstance = DepositFragment.newInstance(depositModel);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(DepositFragment.class.getName());
        stringBuilder.append(depositModel.getId());
        replaceFragment(newInstance, stringBuilder.toString());
    }

    public void showSafe(String str) {
        Fragment newInstance = SafeAccountFragment.newInstance(str);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(SafeAccountFragment.class.getName());
        stringBuilder.append(str);
        replaceFragment(newInstance, stringBuilder.toString());
    }
}
