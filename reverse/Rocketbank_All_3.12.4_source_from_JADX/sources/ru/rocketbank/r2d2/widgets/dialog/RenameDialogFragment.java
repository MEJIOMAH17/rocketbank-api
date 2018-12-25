package ru.rocketbank.r2d2.widgets.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v7.app.AppCompatActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import ru.rocketbank.core.model.dto.GenericRequestResponseData;
import ru.rocketbank.core.model.facade.Account;
import ru.rocketbank.core.model.transfers.Template;
import ru.rocketbank.core.network.api.AccountApi;
import ru.rocketbank.core.network.api.TemplateApi;
import ru.rocketbank.core.network.model.EditCardResponse;
import ru.rocketbank.core.network.model.TemplateEditBody;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.fragments.dialogs.ProgressDialogFragment;
import ru.rocketbank.r2d2.helpers.KeyboardHelper;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;

public class RenameDialogFragment extends DialogFragment {
    private static String IS_MY = "IS_MY";
    private static String NAME = "NAME";
    private static String TOKEN = "TOKEN";
    AccountApi accountApi;
    Authorization authorization;
    RocketTextView cancelView;
    private ProgressDialogFragment dialogSpinner;
    protected Boolean isMy;
    RocketEditText nameView;
    RocketTextView okView;
    private Action1<String> onRename;
    protected Subscription renameSubscription;
    protected String token;

    /* renamed from: ru.rocketbank.r2d2.widgets.dialog.RenameDialogFragment$1 */
    class C16321 implements OnClickListener {
        C16321() {
        }

        public void onClick(View view) {
            RenameDialogFragment.this.onOkClick(view);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.widgets.dialog.RenameDialogFragment$2 */
    class C16332 implements OnClickListener {
        C16332() {
        }

        public void onClick(View view) {
            RenameDialogFragment.this.dismiss();
        }
    }

    /* renamed from: ru.rocketbank.r2d2.widgets.dialog.RenameDialogFragment$4 */
    class C16344 implements Runnable {
        C16344() {
        }

        public void run() {
            KeyboardHelper.show(RenameDialogFragment.this.nameView);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.widgets.dialog.RenameDialogFragment$3 */
    class C18393 extends Subscriber<Account> {
        public void onCompleted() {
        }

        C18393() {
        }

        public void onError(Throwable th) {
            Toast.makeText(RenameDialogFragment.this.getContext(), C0859R.string.error_occur, 0).show();
            RenameDialogFragment.this.dismissAllowingStateLoss();
        }

        public void onNext(Account account) {
            RenameDialogFragment.this.nameView.setText(account.getTitle());
            RenameDialogFragment.this.showKeyboard();
        }
    }

    public static class RecentPaymentRenameDialogFragment extends RenameDialogFragment {
        private static final String NAME = "NAME";
        private static final String TEMPLATE = "TEMPLATE";
        private Action1<Template> onRename;
        private Template template;
        TemplateApi templateApi;

        public static RecentPaymentRenameDialogFragment getInstance(Template template) {
            RecentPaymentRenameDialogFragment recentPaymentRenameDialogFragment = new RecentPaymentRenameDialogFragment();
            Bundle bundle = new Bundle();
            bundle.putSerializable(TEMPLATE, template);
            bundle.putString(NAME, template.title);
            recentPaymentRenameDialogFragment.setArguments(bundle);
            return recentPaymentRenameDialogFragment;
        }

        public void onCreate(Bundle bundle) {
            this.templateApi = RocketApplication.Companion.getInjector().getTemplateApi();
            super.onCreate(bundle);
            this.template = (Template) getArguments().getSerializable(TEMPLATE);
        }

        public void onViewCreated(View view, Bundle bundle) {
            super.onViewCreated(view, bundle);
            ((TextView) view.findViewById(C0859R.id.head)).setText(C0859R.string.rename_payment_title);
            ((TextView) view.findViewById(C0859R.id.hint)).setText(C0859R.string.payment_name);
        }

        public void onRenameTemplate(Action1<Template> action1) {
            this.onRename = action1;
        }

        protected void setName() {
            this.nameView.setText(getArguments().getString(NAME));
        }

        protected void onOkClick(final View view) {
            showSpinner();
            final String trim = this.nameView.getText().toString().trim();
            TemplateEditBody templateEditBody = new TemplateEditBody();
            templateEditBody.getPaymentTemplate().setTitle(trim);
            this.renameSubscription = this.templateApi.editTemplate((long) this.template.id, templateEditBody).observeOn(AndroidSchedulers.mainThread()).subscribe(new Subscriber<GenericRequestResponseData>() {
                public void onCompleted() {
                }

                public void onError(Throwable th) {
                    RecentPaymentRenameDialogFragment.this.hideSpinner();
                    Toast.makeText(view.getContext(), C0859R.string.error_occur, 1).show();
                }

                public void onNext(GenericRequestResponseData genericRequestResponseData) {
                    RecentPaymentRenameDialogFragment.this.template.title = trim;
                    if (RecentPaymentRenameDialogFragment.this.onRename != null) {
                        RecentPaymentRenameDialogFragment.this.onRename.call(RecentPaymentRenameDialogFragment.this.template);
                    }
                    RecentPaymentRenameDialogFragment.this.hideSpinner();
                    RecentPaymentRenameDialogFragment.this.dismiss();
                }
            });
        }
    }

    public static class RecentTransferRenameDialogFragment extends RenameDialogFragment {
        private static final String NAME = "NAME";
        private Action1<String> onRename;

        public static RecentTransferRenameDialogFragment getInstance(String str, String str2) {
            RecentTransferRenameDialogFragment recentTransferRenameDialogFragment = new RecentTransferRenameDialogFragment();
            str = RenameDialogFragment.createArguments(str);
            str.putString(NAME, str2);
            recentTransferRenameDialogFragment.setArguments(str);
            return recentTransferRenameDialogFragment;
        }

        public void onRename(Action1<String> action1) {
            this.onRename = action1;
        }

        protected void setName() {
            this.nameView.setText(getArguments().getString(NAME));
        }

        protected void onOkClick(final View view) {
            showSpinner();
            final String trim = this.nameView.getText().toString().trim();
            this.renameSubscription = this.accountApi.renameLinkedAccount(this.token, trim).observeOn(AndroidSchedulers.mainThread()).subscribe(new Subscriber<GenericRequestResponseData>() {
                public void onCompleted() {
                }

                public void onError(Throwable th) {
                    RecentTransferRenameDialogFragment.this.hideSpinner();
                    Toast.makeText(view.getContext(), C0859R.string.error_occur, 1).show();
                }

                public void onNext(GenericRequestResponseData genericRequestResponseData) {
                    if (RecentTransferRenameDialogFragment.this.onRename != null) {
                        RecentTransferRenameDialogFragment.this.onRename.call(trim);
                    }
                    RecentTransferRenameDialogFragment.this.hideSpinner();
                    RecentTransferRenameDialogFragment.this.dismiss();
                }
            });
        }
    }

    public static RenameDialogFragment getInstance(String str, Boolean bool, String str2) {
        RenameDialogFragment renameDialogFragment = new RenameDialogFragment();
        str = createArguments(str);
        str.putBoolean(IS_MY, bool.booleanValue());
        str.putString(NAME, str2);
        renameDialogFragment.setArguments(str);
        return renameDialogFragment;
    }

    private static Bundle createArguments(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(TOKEN, str);
        return bundle;
    }

    public void onDismiss(DialogInterface dialogInterface) {
        hideSpinner();
        KeyboardHelper.hide(this.nameView);
        if (!(this.renameSubscription == null || this.renameSubscription.isUnsubscribed())) {
            this.renameSubscription.unsubscribe();
        }
        super.onDismiss(dialogInterface);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater = layoutInflater.inflate(C0859R.layout.layout_rename, viewGroup, false);
        this.okView = (RocketTextView) layoutInflater.findViewById(C0859R.id.ok);
        this.cancelView = (RocketTextView) layoutInflater.findViewById(C0859R.id.cancel);
        this.nameView = (RocketEditText) layoutInflater.findViewById(C0859R.id.name);
        return layoutInflater;
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        view = getArguments();
        this.token = view.getString(TOKEN);
        this.isMy = Boolean.valueOf(view.getBoolean(IS_MY));
        this.authorization = RocketApplication.Companion.getInjector().getAuthorization();
        this.accountApi = RocketApplication.Companion.getInjector().getAccountApi();
        setName();
        showKeyboard();
        this.okView.setOnClickListener(new C16321());
        this.cancelView.setOnClickListener(new C16332());
    }

    public void dismiss() {
        KeyboardHelper.hide(this.nameView);
        super.dismiss();
    }

    protected void setName() {
        if (this.isMy.booleanValue()) {
            this.authorization.getAccount(this.token).observeOn(AndroidSchedulers.mainThread()).subscribe(new C18393());
        } else {
            this.nameView.setText(getArguments().getString(NAME));
        }
    }

    protected void showKeyboard() {
        this.nameView.setSelection(this.nameView.getText().length());
        this.nameView.post(new C16344());
    }

    public void onRename(Action1<String> action1) {
        this.onRename = action1;
    }

    protected void onOkClick(final View view) {
        showSpinner();
        final String trim = this.nameView.getText().toString().trim();
        if (this.isMy.booleanValue()) {
            this.renameSubscription = this.accountApi.editCard(this.token, trim).observeOn(AndroidSchedulers.mainThread()).subscribe(new Subscriber<EditCardResponse>() {
                public void onCompleted() {
                }

                public void onError(Throwable th) {
                    RenameDialogFragment.this.hideSpinner();
                    Toast.makeText(view.getContext(), C0859R.string.error_occur, 1).show();
                }

                public void onNext(EditCardResponse editCardResponse) {
                    if (RenameDialogFragment.this.onRename != null) {
                        RenameDialogFragment.this.onRename.call(trim);
                    }
                    RenameDialogFragment.this.hideSpinner();
                    RenameDialogFragment.this.authorization.refreshBackgroundProfile();
                    RenameDialogFragment.this.dismiss();
                }
            });
        } else {
            this.renameSubscription = this.accountApi.renameCard(this.token, trim).observeOn(AndroidSchedulers.mainThread()).subscribe(new Subscriber<Object>() {
                public void onCompleted() {
                }

                public void onError(Throwable th) {
                    RenameDialogFragment.this.hideSpinner();
                    Toast.makeText(view.getContext(), C0859R.string.error_occur, 1).show();
                }

                public void onNext(Object obj) {
                    if (RenameDialogFragment.this.onRename != null) {
                        RenameDialogFragment.this.onRename.call(trim);
                    }
                    RenameDialogFragment.this.hideSpinner();
                    RenameDialogFragment.this.dismiss();
                    RenameDialogFragment.this.authorization.refreshBackgroundProfile();
                }
            });
        }
    }

    public Dialog onCreateDialog(Bundle bundle) {
        bundle = super.onCreateDialog(bundle);
        bundle.requestWindowFeature(1);
        return bundle;
    }

    protected void showSpinner() {
        KeyboardHelper.hide(this.nameView);
        if (this.dialogSpinner == null) {
            AppCompatActivity appCompatActivity = (AppCompatActivity) getActivity();
            this.dialogSpinner = new ProgressDialogFragment();
            this.dialogSpinner.show(appCompatActivity.getSupportFragmentManager(), null);
        }
    }

    protected void hideSpinner() {
        if (this.dialogSpinner != null) {
            this.dialogSpinner.dismiss();
            this.dialogSpinner = null;
        }
    }
}
