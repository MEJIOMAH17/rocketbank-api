package ru.rocketbank.r2d2.registration.fragment;

import android.os.Bundle;
import android.util.Patterns;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.jakewharton.rxbinding.widget.RxTextView;
import java.util.concurrent.TimeUnit;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.model.RegistrationForm;
import ru.rocketbank.core.model.RegistrationForm.DocumentPhotos;
import ru.rocketbank.core.model.RegistrationForm.Form;
import ru.rocketbank.core.model.dto.GenericRequestResponseData;
import ru.rocketbank.core.network.api.RegistrationApi;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.fragments.RegistrationFromFragment;
import ru.rocketbank.r2d2.registration.RegistrationStep;
import ru.rocketbank.r2d2.registration.RegistrationStep.Step;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;
import rx.functions.Func1;

public class FillFormRegistrationFragment extends RegistrationFromFragment {
    public static final int TIMEOUT = 2;
    private Subscription checkEmailSubscription;
    private Subscription checkNameSubscription;
    private Subscription checkSecretWordSubscription;
    EditText editTextEmail;
    EditText editTextName;
    EditText editTextSecretWord;

    /* renamed from: ru.rocketbank.r2d2.registration.fragment.FillFormRegistrationFragment$1 */
    class C16101 implements OnClickListener {
        C16101() {
        }

        public void onClick(View view) {
            FillFormRegistrationFragment.this.onNextButtonClick();
        }
    }

    /* renamed from: ru.rocketbank.r2d2.registration.fragment.FillFormRegistrationFragment$2 */
    class C20262 implements Action1<CharSequence> {
        C20262() {
        }

        public void call(CharSequence charSequence) {
            FillFormRegistrationFragment.this.checkEmail(charSequence);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.registration.fragment.FillFormRegistrationFragment$3 */
    class C20273 implements Action1<Throwable> {
        C20273() {
        }

        public void call(Throwable th) {
            FillFormRegistrationFragment.this.onCheckError(th);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.registration.fragment.FillFormRegistrationFragment$4 */
    class C20284 implements Action1<CharSequence> {
        C20284() {
        }

        public void call(CharSequence charSequence) {
            FillFormRegistrationFragment.this.checkName(charSequence);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.registration.fragment.FillFormRegistrationFragment$5 */
    class C20295 implements Action1<Throwable> {
        C20295() {
        }

        public void call(Throwable th) {
            FillFormRegistrationFragment.this.onCheckError(th);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.registration.fragment.FillFormRegistrationFragment$6 */
    class C20306 implements Action1<CharSequence> {
        C20306() {
        }

        public void call(CharSequence charSequence) {
            FillFormRegistrationFragment.this.checkSecretWord(charSequence);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.registration.fragment.FillFormRegistrationFragment$7 */
    class C20317 implements Action1<Throwable> {
        C20317() {
        }

        public void call(Throwable th) {
            FillFormRegistrationFragment.this.onCheckError(th);
        }
    }

    private void onCheckError(Throwable th) {
    }

    protected void updateModel(RegistrationStep registrationStep) {
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        RocketApplication.Companion.getInjector().getAnalyticsManager().leadFormFill();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater = layoutInflater.inflate(C0859R.layout.fragment_registration_fill_form, viewGroup, false);
        this.editTextEmail = (EditText) layoutInflater.findViewById(C0859R.id.editTextEmail);
        this.editTextName = (EditText) layoutInflater.findViewById(C0859R.id.editTextName);
        this.editTextSecretWord = (EditText) layoutInflater.findViewById(C0859R.id.editTextSecretWord);
        layoutInflater.findViewById(C0859R.id.button).setOnClickListener(new C16101());
        return layoutInflater;
    }

    public void onResume() {
        super.onResume();
        this.checkEmailSubscription = RxTextView.textChanges(this.editTextEmail).skip(1).debounce(2, TimeUnit.SECONDS).observeOn(AndroidSchedulers.mainThread()).subscribe(new C20262(), new C20273());
        this.checkNameSubscription = RxTextView.textChanges(this.editTextName).skip(1).debounce(2, TimeUnit.SECONDS).observeOn(AndroidSchedulers.mainThread()).subscribe(new C20284(), new C20295());
        this.checkSecretWordSubscription = RxTextView.textChanges(this.editTextSecretWord).skip(1).debounce(2, TimeUnit.SECONDS).observeOn(AndroidSchedulers.mainThread()).subscribe(new C20306(), new C20317());
    }

    private boolean checkName(CharSequence charSequence) {
        if (charSequence != null) {
            if (!charSequence.toString().trim().isEmpty()) {
                if (charSequence.toString().matches("^[a-zA-Z ]+$") == null) {
                    this.editTextName.setError(getString(C0859R.string.invalid_card_holder_name));
                    return false;
                }
                this.editTextName.setError(null);
                return true;
            }
        }
        this.editTextName.setError(getString(C0859R.string.enter_name));
        return false;
    }

    private boolean checkSecretWord(CharSequence charSequence) {
        if (charSequence != null) {
            if (charSequence.toString().trim().isEmpty() == null) {
                this.editTextSecretWord.setError(null);
                return true;
            }
        }
        this.editTextSecretWord.setError(getString(C0859R.string.enter_secret_word));
        return null;
    }

    private boolean checkEmail(CharSequence charSequence) {
        if (charSequence != null) {
            if (!charSequence.toString().trim().isEmpty()) {
                if (Patterns.EMAIL_ADDRESS.matcher(charSequence).matches() == null) {
                    this.editTextEmail.setError(getString(C0859R.string.invalid_email));
                    return false;
                }
                this.editTextEmail.setError(null);
                return true;
            }
        }
        this.editTextEmail.setError(getString(C0859R.string.enter_email));
        return false;
    }

    public void onNextButtonClick() {
        int i = 0;
        if (getContext() != null) {
            ((InputMethodManager) getContext().getSystemService("input_method")).hideSoftInputFromWindow(this.editTextName.getWindowToken(), 0);
        }
        if (checkEmail(this.editTextEmail.getText()) && checkSecretWord(this.editTextSecretWord.getText()) && checkName(this.editTextName.getText())) {
            i = 1;
        }
        if (i != 0) {
            Form form = new Form();
            form.setName_in_latin(this.editTextName.getText().toString().trim());
            form.setCodeword(this.editTextSecretWord.getText().toString().trim());
            form.setEmail(this.editTextEmail.getText().toString().trim());
            form.setDocument_photos(new DocumentPhotos(((RegistrationStep) getModel()).getPassportPageId(), ((RegistrationStep) getModel()).getRegistrationPageId()));
            final RegistrationStep registrationStep = new RegistrationStep();
            registrationStep.setStatusResponseData(((RegistrationStep) getModel()).getStatusResponseData());
            registrationStep.setStep(Step.ISSUING);
            execute(((RegistrationApi) getApi()).registration(((RegistrationStep) getModel()).getStatusResponseData().getToken(), new RegistrationForm(form)).map(new Func1<GenericRequestResponseData, RegistrationStep>() {
                public RegistrationStep call(GenericRequestResponseData genericRequestResponseData) {
                    return registrationStep;
                }
            }));
        }
    }

    public void onPause() {
        if (!(this.checkNameSubscription == null || this.checkNameSubscription.isUnsubscribed())) {
            this.checkNameSubscription.unsubscribe();
        }
        if (!(this.checkEmailSubscription == null || this.checkEmailSubscription.isUnsubscribed())) {
            this.checkEmailSubscription.unsubscribe();
        }
        if (!(this.checkSecretWordSubscription == null || this.checkSecretWordSubscription.isUnsubscribed())) {
            this.checkSecretWordSubscription.unsubscribe();
        }
        super.onPause();
    }

    public String getTitle() {
        return RocketApplication.getContext().getResources().getString(C0859R.string.step, new Object[]{Integer.valueOf(2)});
    }

    protected void onRequestCompleted(RegistrationStep registrationStep) {
        hideSpinner();
        if (registrationStep == null) {
            showSnack((int) C0859R.string.data_not_received);
            return;
        }
        AnalyticsManager analyticsManager = getInjector().getAnalyticsManager();
        analyticsManager.leadFormComplete();
        analyticsManager.leadFormCompleteFacebook();
        finishStep(registrationStep);
        updateModel(registrationStep);
    }
}
