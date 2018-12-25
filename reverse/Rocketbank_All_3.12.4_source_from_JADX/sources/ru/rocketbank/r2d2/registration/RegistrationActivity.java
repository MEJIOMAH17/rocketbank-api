package ru.rocketbank.r2d2.registration;

import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.Toast;
import ru.rocketbank.core.events.NextButtonEvent;
import ru.rocketbank.core.manager.DataManager;
import ru.rocketbank.core.manager.FireCMManager;
import ru.rocketbank.core.manager.HeaderManager;
import ru.rocketbank.core.manager.RocketShortcutManager;
import ru.rocketbank.core.model.StatusResponseData;
import ru.rocketbank.core.network.exception.RocketResponseException;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.utils.RocketAction;
import ru.rocketbank.core.widgets.RocketButton;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.activities.AbstractActivity;
import ru.rocketbank.r2d2.activities.StartupActivity;
import ru.rocketbank.r2d2.fragments.NextButtonListener;
import ru.rocketbank.r2d2.registration.fragment.CheckingRegistrationFragment;
import ru.rocketbank.r2d2.registration.fragment.DeliveringRegistrationFragment;
import ru.rocketbank.r2d2.registration.fragment.DeliveryScheduledRegistrationFragment;
import ru.rocketbank.r2d2.registration.fragment.FillFormRegistrationFragment;
import ru.rocketbank.r2d2.registration.fragment.FormCheckRegistrationFragment;
import ru.rocketbank.r2d2.registration.fragment.IssuingRegistrationFragment;
import ru.rocketbank.r2d2.registration.fragment.PassportRegRegistrationFragment;
import ru.rocketbank.r2d2.registration.fragment.PassportRegistrationFragment;
import ru.rocketbank.r2d2.registration.fragment.PasswordRegistrationFragment;
import ru.rocketbank.r2d2.registration.fragment.PinRegistrationFragment;
import ru.rocketbank.r2d2.registration.fragment.ProgressRegistrationView;
import ru.rocketbank.r2d2.registration.fragment.RegistrationCallNeedFragment;
import ru.rocketbank.r2d2.registration.fragment.RejectedRegistrationFragment;
import ru.rocketbank.r2d2.registration.fragment.RottedRegistrationFragment;
import ru.rocketbank.r2d2.utils.GaToken;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;

public class RegistrationActivity extends AbstractActivity {
    public static boolean DEMO = false;
    private static final String KEY_STEP = "KEY_STEP";
    public static final int REQUEST_CODE = 2345;
    private Authorization authorization = RocketApplication.Companion.getInjector().getAuthorization();
    private Button btnNext;
    DataManager dataManager;
    FireCMManager fireCMManager;
    HeaderManager headerManager;
    private ProgressRegistrationView progressRegistrationView;
    private RocketButton repeatButton;
    RocketShortcutManager rocketShortcutManager;
    private Subscription statusSubscription;
    private Toolbar toolbar;
    private View toolbarShadow;

    /* renamed from: ru.rocketbank.r2d2.registration.RegistrationActivity$1 */
    class C16061 implements OnClickListener {
        C16061() {
        }

        public void onClick(View view) {
            view.setEnabled(false);
            RegistrationActivity.this.requestUserStatus();
            view.setEnabled(true);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.registration.RegistrationActivity$2 */
    class C16072 implements OnClickListener {
        C16072() {
        }

        public void onClick(View view) {
            RegistrationActivity.this.startSupportChatActivity();
        }
    }

    /* renamed from: ru.rocketbank.r2d2.registration.RegistrationActivity$3 */
    class C16083 implements OnClickListener {
        C16083() {
        }

        public void onClick(View view) {
            view = RegistrationActivity.this.getSupportFragmentManager().findFragmentById(C0859R.id.content);
            if (view instanceof NextButtonListener) {
                ((NextButtonListener) view).onNextButtonClick();
            }
        }
    }

    /* renamed from: ru.rocketbank.r2d2.registration.RegistrationActivity$4 */
    class C18124 extends Subscriber<StatusResponseData> {
        public void onCompleted() {
        }

        C18124() {
        }

        public void onError(Throwable th) {
            RegistrationActivity.this.hideProgressDialog();
            if (th instanceof RocketResponseException) {
                RegistrationActivity.this.showErrorToast(((RocketResponseException) th).getDescription());
            }
            if (RegistrationActivity.this.statusSubscription != null && RegistrationActivity.this.statusSubscription.isUnsubscribed() == null) {
                RegistrationActivity.this.statusSubscription.unsubscribe();
                RegistrationActivity.this.statusSubscription = null;
            }
            RegistrationActivity.this.repeatButton.setVisibility(0);
        }

        public void onNext(StatusResponseData statusResponseData) {
            RegistrationActivity.this.repeatButton.setVisibility(8);
            RegistrationActivity.this.hideProgressDialog();
            if (statusResponseData != null) {
                String pusherToken = statusResponseData.getPusherToken();
                if (pusherToken != null) {
                    RegistrationActivity.this.getAuthorization().setPusherToken(pusherToken);
                }
                pusherToken = statusResponseData.getToken();
                if (pusherToken != null) {
                    RocketApplication.Companion.getInjector().getAuthorization().setToken(pusherToken);
                }
                if (statusResponseData.getStatus() != null) {
                    RegistrationActivity.this.handleStatus(statusResponseData);
                    if (RegistrationActivity.this.statusSubscription != null && RegistrationActivity.this.statusSubscription.isUnsubscribed() == null) {
                        RegistrationActivity.this.statusSubscription.unsubscribe();
                        RegistrationActivity.this.statusSubscription = null;
                    }
                }
            }
        }
    }

    public static void startActivity(Context context) {
        context.startActivity(new Intent(context, RegistrationActivity.class));
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C0859R.layout.activity_registration);
        this.fireCMManager = getInjector().getFireCMManager();
        this.dataManager = getInjector().getDataManager();
        this.headerManager = getInjector().getHeaderManager();
        this.rocketShortcutManager = getInjector().getRocketShortcutManager();
        this.rocketShortcutManager.createSupportShortcut();
        this.toolbar = (Toolbar) findViewById(C0859R.id.toolbar);
        this.toolbarShadow = findViewById(C0859R.id.toolbarShadow);
        this.progressRegistrationView = (ProgressRegistrationView) findViewById(C0859R.id.registrationProgressView);
        this.repeatButton = (RocketButton) findView(C0859R.id.repeat_button);
        this.repeatButton.setBackgroundColor(ContextCompat.getColor(this, C0859R.color.orange_variant_2));
        setSupportActionBar(this.toolbar);
        this.toolbarShadow.setVisibility(VERSION.SDK_INT >= 21 ? 8 : 0);
        GaToken.INSTANCE.sendGaToken(getApplicationContext(), getRocketApi());
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }
        if (bundle == null) {
            requestUserStatus();
        } else {
            Fragment findFragmentById = getSupportFragmentManager().findFragmentById(C0859R.id.content);
            if (findFragmentById != null) {
                CharSequence title = ((FormFragment) findFragmentById).getTitle();
                if (title != null) {
                    setTitle(title);
                } else {
                    setTitle(C0859R.string.title_activity_migration);
                }
            }
            this.progressRegistrationView.setStep(bundle.getInt(KEY_STEP));
        }
        this.btnNext = (Button) findViewById(C0859R.id.btnNext);
        setSupportButton();
        bundle = getIntent().getExtras();
        if (bundle != null && bundle.containsKey("KEY_ACTION") && bundle.getString("KEY_ACTION", "").equals(RocketAction.ACTION_SUPPORT)) {
            bundle.remove("KEY_ACTION");
            startSupportChatActivity();
        }
        this.repeatButton.setOnClickListener(new C16061());
    }

    private void setSupportButton() {
        this.btnNext.setOnClickListener(new C16072());
        this.btnNext.setText(C0859R.string.support_button_caption);
    }

    private void startSupportChatActivity() {
        SupportChatLeadActivity.start(this);
    }

    private void setNextButton() {
        this.btnNext.setOnClickListener(new C16083());
        this.btnNext.setText(C0859R.string.next);
    }

    private void requestUserStatus() {
        showProgressDialog();
        String pusherToken = getAuthorization().getPusherToken();
        if (pusherToken != null) {
            pusherToken.isEmpty();
        }
        if (this.authorization.getToken() == null) {
            this.authorization.setStatus(null);
            startActivity(new Intent(this, StartupActivity.class));
        }
        this.fireCMManager.sendTokenIfNeededExecute();
        this.statusSubscription = getInjector().getLeadsApi().getStatus(this.headerManager.getToken()).observeOn(AndroidSchedulers.mainThread()).retry(10).subscribe(new C18124());
    }

    private void showErrorToast(String str) {
        Toast.makeText(this, str, 1).show();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void handleStatus(ru.rocketbank.core.model.StatusResponseData r5) {
        /*
        r4 = this;
        r0 = new ru.rocketbank.r2d2.registration.RegistrationStep;
        r0.<init>();
        r0.setStatusResponseData(r5);
        r1 = r5.getStatus();
        r2 = r1.hashCode();
        r3 = 1;
        switch(r2) {
            case -1116288512: goto L_0x0096;
            case -925162788: goto L_0x008b;
            case 3304: goto L_0x0080;
            case 110997: goto L_0x0076;
            case 3322092: goto L_0x006b;
            case 251441613: goto L_0x0060;
            case 823466996: goto L_0x0056;
            case 1075943527: goto L_0x004b;
            case 1096185378: goto L_0x0041;
            case 1216985755: goto L_0x0037;
            case 1851622178: goto L_0x002c;
            case 1891932388: goto L_0x0021;
            case 2100753238: goto L_0x0016;
            default: goto L_0x0014;
        };
    L_0x0014:
        goto L_0x00a0;
    L_0x0016:
        r2 = "issuing";
        r1 = r1.equals(r2);
        if (r1 == 0) goto L_0x00a0;
    L_0x001e:
        r1 = r3;
        goto L_0x00a1;
    L_0x0021:
        r2 = "document_check";
        r1 = r1.equals(r2);
        if (r1 == 0) goto L_0x00a0;
    L_0x0029:
        r1 = 4;
        goto L_0x00a1;
    L_0x002c:
        r2 = "document_rejected";
        r1 = r1.equals(r2);
        if (r1 == 0) goto L_0x00a0;
    L_0x0034:
        r1 = 7;
        goto L_0x00a1;
    L_0x0037:
        r2 = "password";
        r1 = r1.equals(r2);
        if (r1 == 0) goto L_0x00a0;
    L_0x003f:
        r1 = 6;
        goto L_0x00a1;
    L_0x0041:
        r2 = "delivery_scheduled";
        r1 = r1.equals(r2);
        if (r1 == 0) goto L_0x00a0;
    L_0x0049:
        r1 = 3;
        goto L_0x00a1;
    L_0x004b:
        r2 = "need_call";
        r1 = r1.equals(r2);
        if (r1 == 0) goto L_0x00a0;
    L_0x0053:
        r1 = 9;
        goto L_0x00a1;
    L_0x0056:
        r2 = "delivery";
        r1 = r1.equals(r2);
        if (r1 == 0) goto L_0x00a0;
    L_0x005e:
        r1 = 2;
        goto L_0x00a1;
    L_0x0060:
        r2 = "form_check";
        r1 = r1.equals(r2);
        if (r1 == 0) goto L_0x00a0;
    L_0x0068:
        r1 = 10;
        goto L_0x00a1;
    L_0x006b:
        r2 = "live";
        r1 = r1.equals(r2);
        if (r1 == 0) goto L_0x00a0;
    L_0x0073:
        r1 = 12;
        goto L_0x00a1;
    L_0x0076:
        r2 = "pin";
        r1 = r1.equals(r2);
        if (r1 == 0) goto L_0x00a0;
    L_0x007e:
        r1 = 5;
        goto L_0x00a1;
    L_0x0080:
        r2 = "go";
        r1 = r1.equals(r2);
        if (r1 == 0) goto L_0x00a0;
    L_0x0088:
        r1 = 11;
        goto L_0x00a1;
    L_0x008b:
        r2 = "rotted";
        r1 = r1.equals(r2);
        if (r1 == 0) goto L_0x00a0;
    L_0x0093:
        r1 = 8;
        goto L_0x00a1;
    L_0x0096:
        r2 = "fill_form";
        r1 = r1.equals(r2);
        if (r1 == 0) goto L_0x00a0;
    L_0x009e:
        r1 = 0;
        goto L_0x00a1;
    L_0x00a0:
        r1 = -1;
    L_0x00a1:
        switch(r1) {
            case 0: goto L_0x014e;
            case 1: goto L_0x0148;
            case 2: goto L_0x0142;
            case 3: goto L_0x0125;
            case 4: goto L_0x011f;
            case 5: goto L_0x0119;
            case 6: goto L_0x0113;
            case 7: goto L_0x010d;
            case 8: goto L_0x0107;
            case 9: goto L_0x0101;
            case 10: goto L_0x00fb;
            case 11: goto L_0x00d1;
            case 12: goto L_0x00a6;
            default: goto L_0x00a4;
        };
    L_0x00a4:
        goto L_0x0158;
    L_0x00a6:
        r0 = r4.authorization;
        r1 = r5.getGo();
        r1 = r1.getToken();
        r0.setLogin(r1);
        r0 = r4.authorization;
        r1 = "user_feed";
        r0.setStatus(r1);
        r0 = r4.authorization;
        r5 = r5.getToken();
        r0.setToken(r5);
        r5 = new android.content.Intent;
        r0 = ru.rocketbank.r2d2.activities.MainActivity.class;
        r5.<init>(r4, r0);
        r4.startActivity(r5);
        r4.finish();
        return;
    L_0x00d1:
        r0 = r4.authorization;
        r1 = r5.getGo();
        r1 = r1.getToken();
        r0.setLogin(r1);
        r0 = r4.authorization;
        r1 = "user_feed";
        r0.setStatus(r1);
        r0 = r4.authorization;
        r5 = r5.getGo();
        r5 = r5.getToken();
        r0.setToken(r5);
        r5 = ru.rocketbank.r2d2.activities.FirstRefillActivity.Companion;
        r5.start(r4);
        r4.finish();
        return;
    L_0x00fb:
        r5 = ru.rocketbank.r2d2.registration.RegistrationStep.Step.FORM_CHECK;
        r0.setStep(r5);
        goto L_0x0158;
    L_0x0101:
        r5 = ru.rocketbank.r2d2.registration.RegistrationStep.Step.NEED_CALL;
        r0.setStep(r5);
        goto L_0x0158;
    L_0x0107:
        r5 = ru.rocketbank.r2d2.registration.RegistrationStep.Step.ROTTED;
        r0.setStep(r5);
        goto L_0x0158;
    L_0x010d:
        r5 = ru.rocketbank.r2d2.registration.RegistrationStep.Step.DOCUMENT_REJECTED;
        r0.setStep(r5);
        goto L_0x0158;
    L_0x0113:
        r5 = ru.rocketbank.r2d2.registration.RegistrationStep.Step.PASSWORD;
        r0.setStep(r5);
        goto L_0x0158;
    L_0x0119:
        r5 = ru.rocketbank.r2d2.registration.RegistrationStep.Step.PIN;
        r0.setStep(r5);
        goto L_0x0158;
    L_0x011f:
        r5 = ru.rocketbank.r2d2.registration.RegistrationStep.Step.DOCUMENT_CHECK;
        r0.setStep(r5);
        goto L_0x0158;
    L_0x0125:
        r1 = r5.getDelivery();
        if (r1 == 0) goto L_0x013c;
    L_0x012b:
        r5 = r5.getDelivery();
        r5 = r5.getToken();
        if (r5 == 0) goto L_0x013c;
    L_0x0135:
        ru.rocketbank.r2d2.root.delivery.DeliveryActivity.startCompleted(r4, r5, r3);
        r4.finish();
        return;
    L_0x013c:
        r5 = ru.rocketbank.r2d2.registration.RegistrationStep.Step.DELIVERY_SHEDULED;
        r0.setStep(r5);
        goto L_0x0158;
    L_0x0142:
        r5 = ru.rocketbank.r2d2.registration.RegistrationStep.Step.DELIVERING;
        r0.setStep(r5);
        goto L_0x0158;
    L_0x0148:
        r5 = ru.rocketbank.r2d2.registration.RegistrationStep.Step.ISSUING;
        r0.setStep(r5);
        goto L_0x0158;
    L_0x014e:
        r5 = ru.rocketbank.r2d2.registration.RegistrationStep.Step.NEEDS_PASSPORT;
        r0.setStep(r5);
        r5 = r4.analyticsManager;
        r5.newUserPhoneConfirm();
    L_0x0158:
        r5 = r4.chooseFragment(r0);
        r4.replaceFragment(r5);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.registration.RegistrationActivity.handleStatus(ru.rocketbank.core.model.StatusResponseData):void");
    }

    private void replaceFragment(FormFragment formFragment) {
        getSupportFragmentManager().beginTransaction().setCustomAnimations(C0859R.anim.slide_in_right, C0859R.anim.slide_out_left).replace(C0859R.id.content, formFragment).commit();
        formFragment = formFragment.getTitle();
        if (formFragment != null) {
            setTitle(formFragment);
        } else {
            setTitle(C0859R.string.title_activity_migration);
        }
    }

    public void onEventMainThread(RegistrationStep registrationStep) {
        replaceFragment(chooseFragment(registrationStep));
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
    }

    private FormFragment chooseFragment(RegistrationStep registrationStep) {
        FormFragment passportRegRegistrationFragment;
        Bundle bundle = new Bundle();
        setSupportButton();
        switch (registrationStep.getStep()) {
            case NEEDS_REGISTRATION:
                this.progressRegistrationView.setStep(0);
                passportRegRegistrationFragment = new PassportRegRegistrationFragment();
                break;
            case FILL_FORM:
                this.progressRegistrationView.setStep(1);
                passportRegRegistrationFragment = new FillFormRegistrationFragment();
                break;
            case ISSUING:
                this.progressRegistrationView.setStep(1);
                passportRegRegistrationFragment = new IssuingRegistrationFragment();
                break;
            case DELIVERING:
                this.progressRegistrationView.setStep(2);
                String str = null;
                if (!(registrationStep.getStatusResponseData() == null || registrationStep.getStatusResponseData().getDelivery() == null)) {
                    str = registrationStep.getStatusResponseData().getDelivery().getToken();
                }
                FormFragment deliveringRegistrationFragment = new DeliveringRegistrationFragment();
                bundle.putString(DeliveringRegistrationFragment.getKEY_TOKEN(), str);
                passportRegRegistrationFragment = deliveringRegistrationFragment;
                break;
            case DELIVERY_SHEDULED:
                this.progressRegistrationView.setStep(2);
                passportRegRegistrationFragment = new DeliveryScheduledRegistrationFragment();
                break;
            case DOCUMENT_CHECK:
                this.progressRegistrationView.setStep(2);
                passportRegRegistrationFragment = new CheckingRegistrationFragment();
                break;
            case DOCUMENT_REJECTED:
                this.progressRegistrationView.setStep(2);
                passportRegRegistrationFragment = new RejectedRegistrationFragment();
                break;
            case PIN:
                this.progressRegistrationView.setStep(3);
                passportRegRegistrationFragment = new PinRegistrationFragment();
                break;
            case PASSWORD:
                this.progressRegistrationView.setStep(3);
                passportRegRegistrationFragment = new PasswordRegistrationFragment();
                break;
            case ROTTED:
                this.progressRegistrationView.setStep(1);
                passportRegRegistrationFragment = new RottedRegistrationFragment();
                break;
            case NEED_CALL:
                this.progressRegistrationView.setStep(1);
                passportRegRegistrationFragment = new RegistrationCallNeedFragment();
                break;
            case FORM_CHECK:
                this.progressRegistrationView.setStep(1);
                passportRegRegistrationFragment = new FormCheckRegistrationFragment();
                break;
            default:
                this.progressRegistrationView.setStep(0);
                passportRegRegistrationFragment = new PassportRegistrationFragment();
                break;
        }
        bundle.putParcelable(FormFragment.KEY_MODEL, registrationStep);
        passportRegRegistrationFragment.setArguments(bundle);
        return passportRegRegistrationFragment;
    }

    public void onEventMainThread(NextButtonEvent nextButtonEvent) {
        if (nextButtonEvent.getFragment() == getSupportFragmentManager().findFragmentById(C0859R.id.content)) {
            this.btnNext.setEnabled(nextButtonEvent.isEnable());
            this.btnNext.setText(nextButtonEvent.getTitle());
            setNextButton();
        }
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(KEY_STEP, this.progressRegistrationView.getStep());
    }
}
