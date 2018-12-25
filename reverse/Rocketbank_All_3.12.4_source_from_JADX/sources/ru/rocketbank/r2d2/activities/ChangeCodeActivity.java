package ru.rocketbank.r2d2.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import android.widget.Toast;
import com.mikepenz.materialdrawer.util.KeyboardUtil;
import ru.rocketbank.core.events.CheckCardEvent;
import ru.rocketbank.core.model.ResetShortCodeRespone;
import ru.rocketbank.core.model.dto.ChangePin;
import ru.rocketbank.core.model.dto.CheckCardData;
import ru.rocketbank.core.network.api.UserApi;
import ru.rocketbank.core.network.exception.RocketResponseException;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.fragments.ChangeCodeFragment;
import ru.rocketbank.r2d2.fragments.CheckCardFragment;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;

public final class ChangeCodeActivity extends AbstractActivity {
    public static final String KEY_CHANGE = "KEY_CHANGE";
    public static final String KEY_CHECK_CARD_DATA = "KEY_CHECK_CARD_DATA";
    public static final String KEY_IS_ACTIVATION = "key_is_activation";
    public static final String KEY_IS_CODE = "key_is_code";
    public static final String KEY_NEED_CHECK = "KEY_NEED_CHECK";
    public static final String KEY_PIN_TEXT = "KEY_PIN_TEXT";
    public static final String KEY_PLASTIC_CHECK_ID = "KEY_PLASTIC_CHECK_ID";
    public static final String KEY_RESET_TOKEN = "KEY_RESET_TOKEN";
    public static final String KEY_TOKEN_PLASTIC = "key_token_plastic";
    private Subscription resetSubscription;
    UserApi userApi;

    /* renamed from: ru.rocketbank.r2d2.activities.ChangeCodeActivity$1 */
    class C14441 extends Subscriber<ResetShortCodeRespone> {
        public void onCompleted() {
        }

        C14441() {
        }

        public void onError(Throwable th) {
            ChangeCodeActivity.this.hideProgressDialog();
            Toast.makeText(ChangeCodeActivity.this, C0859R.string.reset_short_code_error, 0).show();
            ChangeCodeActivity.this.startActivity(new Intent(ChangeCodeActivity.this, StartupActivity.class));
        }

        public void onNext(ResetShortCodeRespone resetShortCodeRespone) {
            ChangeCodeActivity.this.hideProgressDialog();
            if (resetShortCodeRespone != null) {
                if (resetShortCodeRespone.getResetShortCode() != null) {
                    resetShortCodeRespone = resetShortCodeRespone.getResetShortCode();
                    ChangeCodeActivity.this.changeFragment(resetShortCodeRespone.getCheckCard(), resetShortCodeRespone.getToken());
                    return;
                }
            }
            if (resetShortCodeRespone == null || resetShortCodeRespone.getResponseData() == null) {
                Toast.makeText(ChangeCodeActivity.this, C0859R.string.reset_short_code_error, 0).show();
            } else {
                Toast.makeText(ChangeCodeActivity.this, resetShortCodeRespone.getResponseData().getDescription(), 0).show();
            }
        }
    }

    public static void startCode(Context context, String str, boolean z, boolean z2) {
        startCode(context, str, z, z2, null);
    }

    public static void startCode(Context context, String str, boolean z, boolean z2, CheckCardData checkCardData) {
        startCode(context, str, z, z2, checkCardData, null);
    }

    public static void startCode(Context context, String str, boolean z, boolean z2, CheckCardData checkCardData, String str2) {
        context.startActivity(new Intent(context, ChangeCodeActivity.class).putExtra(KEY_IS_ACTIVATION, false).putExtra(KEY_IS_CODE, true).putExtra("key_token_plastic", str).putExtra(KEY_NEED_CHECK, z).putExtra(KEY_CHANGE, z2).putExtra(KEY_CHECK_CARD_DATA, checkCardData).putExtra(KEY_RESET_TOKEN, str2));
    }

    public static void startPin(Context context, boolean z, ChangePin changePin, boolean z2) {
        if (changePin != null) {
            StringBuilder stringBuilder = new StringBuilder();
            if (changePin.getPinText() != null) {
                stringBuilder.append(changePin.getPinText());
                stringBuilder.append("\n\n");
            }
            if (changePin.getPinText2() != null) {
                stringBuilder.append(changePin.getPinText2());
            }
            context.startActivity(new Intent(context, ChangeCodeActivity.class).putExtra(KEY_IS_ACTIVATION, z).putExtra(KEY_IS_CODE, false).putExtra(KEY_CHECK_CARD_DATA, changePin.getCheckCard()).putExtra(KEY_PIN_TEXT, stringBuilder.toString()).putExtra(KEY_CHANGE, z2).putExtra(KEY_NEED_CHECK, true).putExtra("key_token_plastic", changePin.getCheckCard().getToken()));
        }
    }

    public final void onSaveInstanceState(Bundle bundle) {
        if (!(this.resetSubscription == null || this.resetSubscription.isUnsubscribed())) {
            this.resetSubscription.unsubscribe();
        }
        super.onSaveInstanceState(bundle);
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.userApi = getInjector().getUserApi();
        bundle = getSupportActionBar();
        if (bundle != null) {
            bundle.setDisplayHomeAsUpEnabled(true);
        }
    }

    public final void onResume() {
        super.onResume();
        Intent intent = getIntent();
        if (intent.hasExtra(KEY_RESET_TOKEN)) {
            this.resetSubscription = this.userApi.resetShortCode().observeOn(AndroidSchedulers.mainThread()).subscribe(new C14441());
            return;
        }
        changeFragment((CheckCardData) intent.getParcelableExtra(KEY_CHECK_CARD_DATA), intent.getStringExtra("key_token_plastic"));
    }

    protected final void onPause() {
        KeyboardUtil.hideKeyboard(this);
        super.onPause();
    }

    private void changeFragment(CheckCardData checkCardData, String str) {
        Intent intent = getIntent();
        boolean booleanExtra = intent.getBooleanExtra(KEY_IS_ACTIVATION, false);
        boolean booleanExtra2 = intent.getBooleanExtra(KEY_IS_CODE, false);
        boolean booleanExtra3 = intent.getBooleanExtra(KEY_NEED_CHECK, false);
        boolean booleanExtra4 = intent.getBooleanExtra(KEY_CHANGE, false);
        String stringExtra = intent.getStringExtra(KEY_PIN_TEXT);
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        if (supportFragmentManager.findFragmentById(16908290) == null) {
            Fragment checkCardFragment;
            if (booleanExtra3) {
                checkCardFragment = new CheckCardFragment();
            } else {
                checkCardFragment = new ChangeCodeFragment();
            }
            Bundle bundle = new Bundle();
            bundle.putString(KEY_PIN_TEXT, stringExtra);
            bundle.putParcelable(KEY_CHECK_CARD_DATA, checkCardData);
            bundle.putBoolean(KEY_IS_ACTIVATION, booleanExtra);
            bundle.putBoolean(KEY_IS_CODE, booleanExtra2);
            bundle.putString("key_token_plastic", str);
            bundle.putBoolean(KEY_NEED_CHECK, booleanExtra3);
            bundle.putBoolean(KEY_CHANGE, booleanExtra4);
            checkCardFragment.setArguments(bundle);
            supportFragmentManager.beginTransaction().addToBackStack(null).replace(16908290, checkCardFragment).commit();
        }
    }

    public final void onEventMainThread(CheckCardEvent checkCardEvent) {
        Throwable exception = checkCardEvent.getException();
        if (exception == null) {
            checkCardEvent = checkCardEvent.getPlasticsCheckResponse();
            if (checkCardEvent.response == null || checkCardEvent.response.getStatus() == Callback.DEFAULT_DRAG_ANIMATION_DURATION) {
                if (!(checkCardEvent.plastic == null || checkCardEvent.plastic.getValidation() == null)) {
                    if (checkCardEvent.plastic.getValidation().getId() != null) {
                        checkCardEvent = checkCardEvent.plastic.getValidation().getId();
                        Fragment changeCodeFragment = new ChangeCodeFragment();
                        Bundle arguments = getSupportFragmentManager().findFragmentById(16908290).getArguments();
                        arguments.putString("KEY_PLASTIC_CHECK_ID", checkCardEvent);
                        changeCodeFragment.setArguments(arguments);
                        getSupportFragmentManager().beginTransaction().replace(16908290, changeCodeFragment).addToBackStack(null).setTransition(FragmentTransaction.TRANSIT_FRAGMENT_OPEN).commit();
                        return;
                    }
                }
                Toast.makeText(this, C0859R.string.data_not_received, 0).show();
                return;
            }
            Toast.makeText(this, checkCardEvent.response.getDescription(), 0).show();
        } else if ((exception instanceof RocketResponseException) != null) {
            RocketResponseException rocketResponseException = (RocketResponseException) exception;
            if (rocketResponseException.isNetworkError() != null) {
                Toast.makeText(this, C0859R.string.error_occur, 0).show();
                return;
            }
            checkCardEvent = rocketResponseException.getGenericRequestResponseData();
            if (checkCardEvent != null && checkCardEvent.getResponse() != null && checkCardEvent.getResponse().getShowIt()) {
                Toast.makeText(this, checkCardEvent.getResponse().getDescription(), 0).show();
            }
        } else {
            Toast.makeText(this, C0859R.string.error_occur, 0).show();
        }
    }

    public final void onBackPressed() {
        Utils.closeKeyboardIfExists(this);
        finish();
    }
}
