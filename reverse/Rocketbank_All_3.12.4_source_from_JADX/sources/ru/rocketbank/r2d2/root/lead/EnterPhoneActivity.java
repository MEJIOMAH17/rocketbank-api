package ru.rocketbank.r2d2.root.lead;

import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Toast;
import java.util.HashMap;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.slf4j.Marker;
import ru.rocketbank.core.network.api.RocketAPI;
import ru.rocketbank.core.widgets.RocketEditTextPhone;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.activities.AbstractActivity;
import ru.rocketbank.r2d2.helpers.KeyboardHelper;
import rx.Observable;
import rx.Subscriber;
import rx.android.schedulers.AndroidSchedulers;
import rx.schedulers.Schedulers;

/* compiled from: EnterPhoneActivity.kt */
public final class EnterPhoneActivity extends AbstractActivity {
    public static final Companion Companion = new Companion();
    private static final int REQUEST_CODE = 8776;
    private HashMap _$_findViewCache;
    private Button buttonNext;
    private EditText countryCode;
    private RocketEditTextPhone phone;
    private RocketAPI rocketAPI = getInjector().getRocketApi();

    /* compiled from: EnterPhoneActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final void start(Context context) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            context.startActivity(new Intent(context, EnterPhoneActivity.class));
        }
    }

    /* compiled from: EnterPhoneActivity.kt */
    public final class OnNextButtonClickListener implements OnClickListener {
        public final void onClick(View view) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            if (EnterPhoneActivity.this.validate() != null) {
                EnterPhoneActivity.this.next();
            }
        }
    }

    public static final void start(Context context) {
        Companion.start(context);
    }

    public final void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public final View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        view = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), view);
        return view;
    }

    public static final /* synthetic */ Button access$getButtonNext$p(EnterPhoneActivity enterPhoneActivity) {
        enterPhoneActivity = enterPhoneActivity.buttonNext;
        if (enterPhoneActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("buttonNext");
        }
        return enterPhoneActivity;
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C0859R.layout.activity_enter_phone);
        ImageView imageView = (ImageView) findView(C0859R.id.background);
        LeadConfig leadConfig = LeadConfig.INSTANCE;
        Intrinsics.checkExpressionValueIsNotNull(imageView, "background");
        leadConfig.showBackground(imageView);
        bundle = findView(C0859R.id.country_code);
        Intrinsics.checkExpressionValueIsNotNull(bundle, "findView(R.id.country_code)");
        this.countryCode = (EditText) bundle;
        bundle = findView(C0859R.id.phone);
        Intrinsics.checkExpressionValueIsNotNull(bundle, "findView(R.id.phone)");
        this.phone = (RocketEditTextPhone) bundle;
        bundle = this.phone;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("phone");
        }
        bundle.requestFocus();
        bundle = this.phone;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("phone");
        }
        bundle.setOnEditorActionListener(new EnterPhoneActivity$onCreate$1(this));
        bundle = findView(C0859R.id.button_next);
        Intrinsics.checkExpressionValueIsNotNull(bundle, "findView(R.id.button_next)");
        this.buttonNext = (Button) bundle;
        bundle = this.buttonNext;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("buttonNext");
        }
        bundle.setOnClickListener(new OnNextButtonClickListener());
        bundle = this.phone;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("phone");
        }
        KeyboardHelper.show((EditText) bundle);
        if (VERSION.SDK_INT >= 23 && ContextCompat.checkSelfPermission(this, "android.permission.RECEIVE_SMS") != null) {
            ActivityCompat.requestPermissions(this, new String[]{"android.permission.RECEIVE_SMS"}, 100);
        }
    }

    protected final void onResume() {
        super.onResume();
        Button button = this.buttonNext;
        if (button == null) {
            Intrinsics.throwUninitializedPropertyAccessException("buttonNext");
        }
        button.setEnabled(true);
    }

    protected final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if ((REQUEST_CODE == i && i2 == 1) || i2 == 3) {
            finish();
        }
    }

    private final boolean validate() {
        EditText editText = this.countryCode;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("countryCode");
        }
        if (StringsKt.startsWith$default(editText.getText().toString(), Marker.ANY_NON_NULL_MARKER, false, 2, null)) {
            editText = this.countryCode;
            if (editText == null) {
                Intrinsics.throwUninitializedPropertyAccessException("countryCode");
            }
            if (editText.length() > 0) {
                RocketEditTextPhone rocketEditTextPhone = this.phone;
                if (rocketEditTextPhone == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("phone");
                }
                if (rocketEditTextPhone.getPhone().length() >= 4) {
                    return true;
                }
                Toast.makeText(this, C0859R.string.epa_number_validation_failed, 0).show();
                return false;
            }
        }
        Toast.makeText(this, C0859R.string.epa_code_validation_failed, 0).show();
        return false;
    }

    private final void next() {
        Button button = this.buttonNext;
        if (button == null) {
            Intrinsics.throwUninitializedPropertyAccessException("buttonNext");
        }
        button.setEnabled(false);
        RocketApplication.Companion.getInjector().getAnalyticsManager().phoneEnter();
        RocketEditTextPhone rocketEditTextPhone = this.phone;
        if (rocketEditTextPhone == null) {
            Intrinsics.throwUninitializedPropertyAccessException("phone");
        }
        KeyboardHelper.hide(rocketEditTextPhone);
        requestSMS();
    }

    private final void requestSMS() {
        StringBuilder stringBuilder = new StringBuilder();
        EditText editText = this.countryCode;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("countryCode");
        }
        stringBuilder.append(editText.getText().toString());
        RocketEditTextPhone rocketEditTextPhone = this.phone;
        if (rocketEditTextPhone == null) {
            Intrinsics.throwUninitializedPropertyAccessException("phone");
        }
        stringBuilder.append(rocketEditTextPhone.getPhone());
        String stringBuilder2 = stringBuilder.toString();
        Observable.just(Unit.INSTANCE).map(new EnterPhoneActivity$requestSMS$1(this)).onErrorReturn(EnterPhoneActivity$requestSMS$2.INSTANCE).flatMap(new EnterPhoneActivity$requestSMS$3(this, stringBuilder2)).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new EnterPhoneActivity$requestSMS$4(this, stringBuilder2));
    }
}
