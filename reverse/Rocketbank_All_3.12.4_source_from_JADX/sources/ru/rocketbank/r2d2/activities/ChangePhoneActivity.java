package ru.rocketbank.r2d2.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import com.mikepenz.materialdrawer.util.KeyboardUtil;
import de.greenrobot.event.EventBus;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.events.CheckCardEvent;
import ru.rocketbank.core.events.PhoneNumberEvent;
import ru.rocketbank.core.model.ChangeMobilePhone;
import ru.rocketbank.core.model.PlasticModel;
import ru.rocketbank.core.model.ValidationModel;
import ru.rocketbank.core.model.dto.ResponseData;
import ru.rocketbank.core.network.api.UserApi;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.fragments.CheckCardFragment;
import ru.rocketbank.r2d2.fragments.InputPhoneNumberFragment;
import ru.rocketbank.r2d2.helpers.UIHelper;
import rx.android.schedulers.AndroidSchedulers;

/* compiled from: ChangePhoneActivity.kt */
public final class ChangePhoneActivity extends SecuredActivity {
    public static final Companion Companion = new Companion();
    private static final String KEY_CHANGE_MOBILE_PHONE = "KEY_CHANGE_MOBILE_PHONE";
    private static final String KEY_PHONE_NUMBER = "KEY_PHONE_NUMBER";
    private static final String KEY_PLASTIC_CHECK_ID = "KEY_PLASTIC_CHECK_ID";
    private static final String KEY_SMS_VERIFICATION_ID = "KEY_SMS_VERIFICATION_ID";
    private static final int SMS_REQUEST_CODE = 1;
    private HashMap _$_findViewCache;
    private ChangeMobilePhone changeMobilePhone;
    private final EventBus eventBus = EventBus.getDefault();
    public ViewGroup frameLayout;
    private String phoneNumber;
    private String plasticCheckId;
    private String smsVerificationId;
    private final UserApi userApi = getInjector().getUserApi();

    /* compiled from: ChangePhoneActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final void start(Context context, ChangeMobilePhone changeMobilePhone) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(changeMobilePhone, "changeMobilePhone");
            context.startActivity(new Intent(context, ChangePhoneActivity.class).putExtra(ChangePhoneActivity.KEY_CHANGE_MOBILE_PHONE, changeMobilePhone));
        }
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

    public final ViewGroup getFrameLayout() {
        ViewGroup viewGroup = this.frameLayout;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("frameLayout");
        }
        return viewGroup;
    }

    public final void setFrameLayout(ViewGroup viewGroup) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "<set-?>");
        this.frameLayout = viewGroup;
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) C0859R.layout.activity_change_phone);
        View findViewById = findViewById(C0859R.id.content);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.ViewGroup");
        }
        this.frameLayout = (ViewGroup) findViewById;
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
        }
        if (bundle == null) {
            this.changeMobilePhone = (ChangeMobilePhone) getIntent().getParcelableExtra(KEY_CHANGE_MOBILE_PHONE);
            bundle = this.changeMobilePhone;
            if (bundle == null) {
                Intrinsics.throwNpe();
            }
            bundle = bundle.getCheckCard();
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable(ChangeCodeActivity.KEY_CHECK_CARD_DATA, bundle);
            bundle = new CheckCardFragment();
            bundle.setArguments(bundle2);
            getSupportFragmentManager().beginTransaction().replace(C0859R.id.content, (Fragment) bundle).commit();
            return;
        }
        this.plasticCheckId = bundle.getString("KEY_PLASTIC_CHECK_ID", null);
        this.phoneNumber = bundle.getString(KEY_PHONE_NUMBER, null);
        this.smsVerificationId = bundle.getString(KEY_SMS_VERIFICATION_ID, null);
    }

    public final void onEventMainThread(CheckCardEvent checkCardEvent) {
        Intrinsics.checkParameterIsNotNull(checkCardEvent, "checkCardEvent");
        if (checkCardEvent.getException() != null) {
            UIHelper.showSnackWithError(checkCardEvent.getView(), checkCardEvent.getException(), C0859R.string.retry, ChangePhoneActivity$onEventMainThread$1.INSTANCE);
            return;
        }
        checkCardEvent = checkCardEvent.getPlasticsCheckResponse();
        String str = null;
        if (checkCardEvent != null) {
            ResponseData responseData = checkCardEvent.response;
            if (responseData != null) {
                if (responseData.getStatus() == Callback.DEFAULT_DRAG_ANIMATION_DURATION) {
                    String id;
                    ChangeMobilePhone changeMobilePhone;
                    PlasticModel plasticModel = checkCardEvent.plastic;
                    if (plasticModel != null) {
                        ValidationModel validation = plasticModel.getValidation();
                        if (validation != null) {
                            id = validation.getId();
                            if (id != null) {
                                checkCardEvent = this.frameLayout;
                                if (checkCardEvent == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("frameLayout");
                                }
                                UIHelper.showSnack((View) checkCardEvent, C0859R.string.data_not_received);
                                return;
                            }
                            checkCardEvent = checkCardEvent.plastic;
                            if (checkCardEvent != null) {
                                checkCardEvent = checkCardEvent.getValidation();
                                if (checkCardEvent != null) {
                                    str = checkCardEvent.getId();
                                }
                            }
                            this.plasticCheckId = str;
                            checkCardEvent = InputPhoneNumberFragment.Companion;
                            changeMobilePhone = this.changeMobilePhone;
                            if (changeMobilePhone == null) {
                                Intrinsics.throwNpe();
                            }
                            getSupportFragmentManager().beginTransaction().setCustomAnimations(C0859R.anim.slide_in_right, C0859R.anim.slide_out_left).replace(C0859R.id.content, checkCardEvent.newInstance(changeMobilePhone)).commit();
                            return;
                        }
                    }
                    id = null;
                    if (id != null) {
                        checkCardEvent = checkCardEvent.plastic;
                        if (checkCardEvent != null) {
                            checkCardEvent = checkCardEvent.getValidation();
                            if (checkCardEvent != null) {
                                str = checkCardEvent.getId();
                            }
                        }
                        this.plasticCheckId = str;
                        checkCardEvent = InputPhoneNumberFragment.Companion;
                        changeMobilePhone = this.changeMobilePhone;
                        if (changeMobilePhone == null) {
                            Intrinsics.throwNpe();
                        }
                        getSupportFragmentManager().beginTransaction().setCustomAnimations(C0859R.anim.slide_in_right, C0859R.anim.slide_out_left).replace(C0859R.id.content, checkCardEvent.newInstance(changeMobilePhone)).commit();
                        return;
                    }
                    checkCardEvent = this.frameLayout;
                    if (checkCardEvent == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("frameLayout");
                    }
                    UIHelper.showSnack((View) checkCardEvent, C0859R.string.data_not_received);
                    return;
                }
            }
        }
        ViewGroup viewGroup = this.frameLayout;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("frameLayout");
        }
        View view = viewGroup;
        if (checkCardEvent != null) {
            checkCardEvent = checkCardEvent.response;
            if (checkCardEvent != null) {
                str = checkCardEvent.getDescription();
            }
        }
        UIHelper.showSnack(view, str);
    }

    public final void onSaveInstanceState(Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "outState");
        super.onSaveInstanceState(bundle);
        bundle.putString("KEY_PLASTIC_CHECK_ID", this.plasticCheckId);
        bundle.putString(KEY_SMS_VERIFICATION_ID, this.smsVerificationId);
        bundle.putString(KEY_PHONE_NUMBER, this.phoneNumber);
    }

    private final void showRetryErrorSnackbarMessage() {
        ViewGroup viewGroup = this.frameLayout;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("frameLayout");
        }
        UIHelper.makeSnack(viewGroup, C0859R.string.error_occur).setDuration$63dcf297().setAction(C0859R.string.retry, new ChangePhoneActivity$showRetryErrorSnackbarMessage$1(this)).show();
    }

    public final void onEventMainThread(PhoneNumberEvent phoneNumberEvent) {
        Intrinsics.checkParameterIsNotNull(phoneNumberEvent, "phoneNumberEvent");
        if (phoneNumberEvent.getPhoneNumber() != null) {
            this.phoneNumber = phoneNumberEvent.getPhoneNumber();
            showProgressDialog();
            this.userApi.phone(phoneNumberEvent.getPhoneNumber(), this.plasticCheckId).observeOn(AndroidSchedulers.mainThread()).subscribe(new ChangePhoneActivity$onEventMainThread$2(this));
        }
    }

    protected final void onActivityResult(int i, int i2, Intent intent) {
        if (i != 1) {
            super.onActivityResult(i, i2, intent);
        } else if (i2 == 1) {
            Toast.makeText(this, C0859R.string.phone_number_was_changed, null).show();
            finish();
        }
    }

    protected final void onPause() {
        KeyboardUtil.hideKeyboard(this);
        super.onPause();
    }
}
