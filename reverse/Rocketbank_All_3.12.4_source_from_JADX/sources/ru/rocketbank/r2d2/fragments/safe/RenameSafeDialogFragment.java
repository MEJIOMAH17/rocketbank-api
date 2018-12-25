package ru.rocketbank.r2d2.fragments.safe;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.design.widget.Snackbar;
import android.support.v4.app.DialogFragment;
import android.support.v7.app.AppCompatActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Toast;
import com.mikepenz.materialize.util.KeyboardUtil;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.model.dto.GenericRequestResponseData;
import ru.rocketbank.core.model.facade.Account;
import ru.rocketbank.core.network.api.AccountApi;
import ru.rocketbank.core.network.model.EditCardResponse;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.fragments.dialogs.ProgressDialogFragment;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;

public class RenameSafeDialogFragment extends DialogFragment {
    private static String TOKEN = "TOKEN";
    AccountApi accountApi;
    private Authorization authorization;
    RocketTextView cancelView;
    private ProgressDialogFragment dialogSpinner;
    RocketEditText nameView;
    RocketTextView okView;
    protected Subscription renameSubscription;
    protected String token;

    /* renamed from: ru.rocketbank.r2d2.fragments.safe.RenameSafeDialogFragment$1 */
    class C15501 implements OnClickListener {
        C15501() {
        }

        public void onClick(View view) {
            RenameSafeDialogFragment.this.onOkClick(view);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.safe.RenameSafeDialogFragment$2 */
    class C15512 implements OnClickListener {
        C15512() {
        }

        public void onClick(View view) {
            RenameSafeDialogFragment.this.dismiss();
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.safe.RenameSafeDialogFragment$3 */
    class C17553 extends Subscriber<Account> {
        public void onCompleted() {
        }

        C17553() {
        }

        public void onError(Throwable th) {
            try {
                Toast.makeText(RenameSafeDialogFragment.this.getContext(), C0859R.string.error_occur, 0).show();
            } catch (Throwable th2) {
                AnalyticsManager.logException(th2);
            }
            RenameSafeDialogFragment.this.dismissAllowingStateLoss();
        }

        public void onNext(Account account) {
            RenameSafeDialogFragment.this.nameView.setText(account.getTitle());
        }
    }

    public static class RecentTransferRenameDialogFragment extends RenameSafeDialogFragment {
        private static final String NAME = "NAME";
        private Action1<String> onRename;

        public static RecentTransferRenameDialogFragment getInstance(String str, String str2) {
            RecentTransferRenameDialogFragment recentTransferRenameDialogFragment = new RecentTransferRenameDialogFragment();
            str = RenameSafeDialogFragment.createArguments(str);
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
                    Snackbar.make(view, C0859R.string.error_occur, 0).show();
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

    public static RenameSafeDialogFragment getInstance(String str) {
        RenameSafeDialogFragment renameSafeDialogFragment = new RenameSafeDialogFragment();
        renameSafeDialogFragment.setArguments(createArguments(str));
        return renameSafeDialogFragment;
    }

    private static Bundle createArguments(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(TOKEN, str);
        return bundle;
    }

    public void onDismiss(DialogInterface dialogInterface) {
        hideSpinner();
        KeyboardUtil.hideKeyboard(getActivity());
        if (!(this.renameSubscription == null || this.renameSubscription.isUnsubscribed())) {
            this.renameSubscription.unsubscribe();
        }
        super.onDismiss(dialogInterface);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater = layoutInflater.inflate(C0859R.layout.layout_rename_safe, viewGroup, false);
        this.accountApi = RocketApplication.Companion.getInjector().getAccountApi();
        this.authorization = RocketApplication.Companion.getInjector().getAuthorization();
        this.okView = (RocketTextView) layoutInflater.findViewById(C0859R.id.ok);
        this.cancelView = (RocketTextView) layoutInflater.findViewById(C0859R.id.cancel);
        this.nameView = (RocketEditText) layoutInflater.findViewById(C0859R.id.name);
        return layoutInflater;
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.token = getArguments().getString(TOKEN);
        getDialog().setCanceledOnTouchOutside(false);
        setCancelable(false);
        setName();
        this.okView.setOnClickListener(new C15501());
        this.cancelView.setOnClickListener(new C15512());
    }

    protected void setName() {
        this.authorization.getAccount(this.token).observeOn(AndroidSchedulers.mainThread()).subscribe(new C17553());
    }

    protected void onOkClick(final View view) {
        showSpinner();
        this.renameSubscription = this.accountApi.editCard(this.token, this.nameView.getText().toString().trim()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Subscriber<EditCardResponse>() {
            public void onCompleted() {
            }

            public void onError(Throwable th) {
                RenameSafeDialogFragment.this.hideSpinner();
                Snackbar.make(view, C0859R.string.error_occur, 0).show();
            }

            public void onNext(EditCardResponse editCardResponse) {
                RenameSafeDialogFragment.this.hideSpinner();
                RenameSafeDialogFragment.this.authorization.refreshBackgroundProfile();
                Utils.closeKeyboardIfExists(RenameSafeDialogFragment.this.getActivity());
                RenameSafeDialogFragment.this.dismissAllowingStateLoss();
            }
        });
    }

    public Dialog onCreateDialog(Bundle bundle) {
        bundle = super.onCreateDialog(bundle);
        bundle.requestWindowFeature(1);
        return bundle;
    }

    protected void showSpinner() {
        if (this.dialogSpinner == null) {
            AppCompatActivity appCompatActivity = (AppCompatActivity) getActivity();
            this.dialogSpinner = new ProgressDialogFragment();
            this.dialogSpinner.show(appCompatActivity.getSupportFragmentManager(), null);
        }
    }

    protected void hideSpinner() {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
*/
        /*
        r1 = this;
        r0 = r1.dialogSpinner;	 Catch:{ Throwable -> 0x000d }
        if (r0 == 0) goto L_0x000c;	 Catch:{ Throwable -> 0x000d }
    L_0x0004:
        r0 = r1.dialogSpinner;	 Catch:{ Throwable -> 0x000d }
        r0.dismiss();	 Catch:{ Throwable -> 0x000d }
        r0 = 0;	 Catch:{ Throwable -> 0x000d }
        r1.dialogSpinner = r0;	 Catch:{ Throwable -> 0x000d }
    L_0x000c:
        return;
    L_0x000d:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.fragments.safe.RenameSafeDialogFragment.hideSpinner():void");
    }
}
