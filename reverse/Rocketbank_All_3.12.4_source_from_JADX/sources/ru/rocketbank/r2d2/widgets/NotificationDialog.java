package ru.rocketbank.r2d2.widgets;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.databinding.ObservableField;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AlertDialog.Builder;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.RadioButton;
import android.widget.TextView;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import ru.rocketbank.core.model.AccountModel;
import ru.rocketbank.core.model.OptionModel;
import ru.rocketbank.core.model.TariffModel;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.enums.Currency;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.AbstractActivity;
import ru.rocketbank.r2d2.data.binding.dialogs.NotificationDialogData;
import ru.rocketbank.r2d2.data.binding.dialogs.NotificationSelectListener;
import ru.rocketbank.r2d2.databinding.DialogNotificationViewBinding;
import ru.rocketbank.r2d2.manager.MoneyManager;
import ru.rocketbank.r2d2.utils.DateUtils;
import rx.Subscriber;
import rx.Subscription;

/* compiled from: NotificationDialog.kt */
public final class NotificationDialog extends DialogFragment implements NotificationSelectListener {
    public static final Companion Companion = new Companion();
    private static final String TOKEN = "TOKEN";
    private HashMap _$_findViewCache;
    private AccountModel account;
    private String activatedText;
    public Authorization authorization;
    private Subscription authorizationSubscription;
    private DialogNotificationViewBinding binding;
    private boolean checkedIsActive;
    private final NotificationDialogData data = new NotificationDialogData();
    private boolean isActive;
    private NotificationDialogListener listener;
    private final OnClickListener negativeOnClickListener = NotificationDialog$negativeOnClickListener$1.INSTANCE;
    private final OnClickListener positiveOnClickListener = new NotificationDialog$positiveOnClickListener$1(this);
    private RadioButton pushRadioButton;
    private RadioButton smsRadioButton;
    private String smsWithCostText;
    private String token;
    private TextView tvInfo;
    private UserModel userModel;

    /* compiled from: NotificationDialog.kt */
    public static final class Companion {
        private Companion() {
        }

        public final NotificationDialog createNotificationDialog(String str) {
            Intrinsics.checkParameterIsNotNull(str, "token");
            NotificationDialog notificationDialog = new NotificationDialog();
            Bundle bundle = new Bundle();
            bundle.putString("TOKEN", str);
            notificationDialog.setArguments(bundle);
            return notificationDialog;
        }
    }

    /* compiled from: NotificationDialog.kt */
    public interface NotificationDialogListener {
        void onChange(boolean z);

        void onDestroy();
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
        if (view == null) {
            view = getView();
            if (view == null) {
                return null;
            }
            view = view.findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view);
        }
        return view;
    }

    public final void setNotificationDialogListener(NotificationDialogListener notificationDialogListener) {
        Intrinsics.checkParameterIsNotNull(notificationDialogListener, "notificationDialogListener");
        this.listener = notificationDialogListener;
    }

    public final Authorization getAuthorization() {
        Authorization authorization = this.authorization;
        if (authorization == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authorization");
        }
        return authorization;
    }

    public final void setAuthorization(Authorization authorization) {
        Intrinsics.checkParameterIsNotNull(authorization, "<set-?>");
        this.authorization = authorization;
    }

    public final Dialog onCreateDialog(Bundle bundle) {
        bundle = getActivity();
        if (bundle == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.activities.AbstractActivity");
        }
        this.authorization = ((AbstractActivity) bundle).getInjector().getAuthorization();
        bundle = getArguments();
        if (bundle == null) {
            Intrinsics.throwNpe();
        }
        bundle = bundle.getString("TOKEN");
        Intrinsics.checkExpressionValueIsNotNull(bundle, "arguments!!.getString(TOKEN)");
        this.token = bundle;
        bundle = DialogNotificationViewBinding.inflate(LayoutInflater.from(getActivity()));
        Intrinsics.checkExpressionValueIsNotNull(bundle, "DialogNotificationViewBinding.inflate(inflater)");
        this.binding = bundle;
        FragmentActivity activity = getActivity();
        if (activity == null) {
            Intrinsics.throwNpe();
        }
        bundle = new Builder(activity);
        DialogNotificationViewBinding dialogNotificationViewBinding = this.binding;
        if (dialogNotificationViewBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        bundle.setView(dialogNotificationViewBinding.getRoot()).setPositiveButton(17039370, this.positiveOnClickListener).setNegativeButton(17039360, this.negativeOnClickListener).setCancelable$184cab27();
        dialogNotificationViewBinding = this.binding;
        if (dialogNotificationViewBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        RadioButton radioButton = dialogNotificationViewBinding.pushRadioButton;
        Intrinsics.checkExpressionValueIsNotNull(radioButton, "binding.pushRadioButton");
        this.pushRadioButton = radioButton;
        dialogNotificationViewBinding = this.binding;
        if (dialogNotificationViewBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        radioButton = dialogNotificationViewBinding.smsRadioButton;
        Intrinsics.checkExpressionValueIsNotNull(radioButton, "binding.smsRadioButton");
        this.smsRadioButton = radioButton;
        dialogNotificationViewBinding = this.binding;
        if (dialogNotificationViewBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        RocketTextView rocketTextView = dialogNotificationViewBinding.tvInfo;
        Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "binding.tvInfo");
        this.tvInfo = rocketTextView;
        dialogNotificationViewBinding = this.binding;
        if (dialogNotificationViewBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        dialogNotificationViewBinding.setData(this.data);
        bundle = bundle.create();
        Intrinsics.checkExpressionValueIsNotNull(bundle, "builder.create()");
        return (Dialog) bundle;
    }

    public final void onStart() {
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.v7.app.AlertDialog");
        }
        AlertDialog alertDialog = (AlertDialog) dialog;
        Button button = alertDialog.getButton(-1);
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        button.setTextColor(ContextCompat.getColor(context, C0859R.color.orange_variant_2));
        Button button2 = alertDialog.getButton(-2);
        Context context2 = getContext();
        if (context2 == null) {
            Intrinsics.throwNpe();
        }
        button2.setTextColor(ContextCompat.getColor(context2, C0859R.color.gray));
    }

    public final void onResume() {
        super.onResume();
        DialogNotificationViewBinding dialogNotificationViewBinding = this.binding;
        if (dialogNotificationViewBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        dialogNotificationViewBinding.setListener(this);
        Authorization authorization = this.authorization;
        if (authorization == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authorization");
        }
        this.authorizationSubscription = authorization.getUser().subscribe((Subscriber) new NotificationDialog$onResume$1(this));
    }

    public final void setupNotifications() {
        int i;
        setupStrings();
        if (this.isActive) {
            ObservableField textInfo = this.data.getTextInfo();
            String str = this.activatedText;
            if (str == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activatedText");
            }
            textInfo.set(str);
            i = C0859R.id.sms_radio_button;
        } else {
            i = C0859R.id.push_radio_button;
        }
        this.data.getCheckedItem().set(i);
    }

    private final void setupStrings() {
        String format;
        StringCompanionObject stringCompanionObject;
        AccountModel accountModel = this.account;
        if (accountModel == null) {
            Intrinsics.throwNpe();
        }
        TariffModel currentTariff = accountModel.getCurrentTariff();
        if (currentTariff == null) {
            Intrinsics.throwNpe();
        }
        OptionModel option = currentTariff.getOption();
        Date date = null;
        Float valueOf = option != null ? Float.valueOf(option.getCost()) : null;
        AccountModel accountModel2 = this.account;
        if (accountModel2 == null) {
            Intrinsics.throwNpe();
        }
        TariffModel currentTariff2 = accountModel2.getCurrentTariff();
        if (currentTariff2 == null) {
            Intrinsics.throwNpe();
        }
        OptionModel option2 = currentTariff2.getOption();
        if (option2 != null) {
            date = option2.getPaidTo();
        }
        if (date != null) {
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
            String string = getString(C0859R.string.fragment_option_sms_active);
            Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.fragment_option_sms_active)");
            format = String.format(string, Arrays.copyOf(new Object[]{DateUtils.formatDateTillDayMonthYear(getContext(), date), valueOf}, 2));
            Intrinsics.checkExpressionValueIsNotNull(format, "java.lang.String.format(format, *args)");
        } else {
            stringCompanionObject = StringCompanionObject.INSTANCE;
            format = getString(C0859R.string.fragment_option_sms_inactive);
            Intrinsics.checkExpressionValueIsNotNull(format, "getString(R.string.fragment_option_sms_inactive)");
            format = String.format(format, Arrays.copyOf(new Object[]{valueOf}, 1));
            Intrinsics.checkExpressionValueIsNotNull(format, "java.lang.String.format(format, *args)");
        }
        this.activatedText = format;
        stringCompanionObject = StringCompanionObject.INSTANCE;
        format = getString(C0859R.string.turn_on_sms_with_cost);
        Intrinsics.checkExpressionValueIsNotNull(format, "getString(R.string.turn_on_sms_with_cost)");
        Object[] objArr = new Object[1];
        String format2 = MoneyManager.getInstance().format(valueOf != null ? (double) valueOf.floatValue() : 0.0d, Currency.ROUBLE, false);
        Intrinsics.checkExpressionValueIsNotNull(format2, "MoneyManager.getInstance…, Currency.ROUBLE, false)");
        objArr[0] = StringsKt.replace$default(format2, "ђ", "₽", false, 4, null);
        String format3 = String.format(format, Arrays.copyOf(objArr, 1));
        Intrinsics.checkExpressionValueIsNotNull(format3, "java.lang.String.format(format, *args)");
        this.smsWithCostText = format3;
    }

    public final void radioButtonPressed(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        view = view.getId();
        if (view != C0859R.id.push_radio_button) {
            if (view == C0859R.id.sms_radio_button) {
                this.checkedIsActive = true;
                String str;
                if (this.isActive != null) {
                    view = this.data.getTextInfo();
                    str = this.activatedText;
                    if (str == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("activatedText");
                    }
                    view.set(str);
                    return;
                }
                view = this.data.getTextInfo();
                str = this.smsWithCostText;
                if (str == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("smsWithCostText");
                }
                view.set(str);
            }
            return;
        }
        this.data.getTextInfo().set("");
        this.checkedIsActive = null;
    }

    public final void onPause() {
        super.onPause();
        Subscription subscription = this.authorizationSubscription;
        if (subscription != null) {
            subscription.unsubscribe();
        }
        DialogNotificationViewBinding dialogNotificationViewBinding = this.binding;
        if (dialogNotificationViewBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        dialogNotificationViewBinding.setListener(null);
    }

    private final void setUserModel(UserModel userModel) {
        this.userModel = userModel;
        String str = this.token;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("token");
        }
        this.account = userModel.getAccount(str);
        setupNotifications();
    }

    public final void onDestroyView() {
        Subscription subscription = this.authorizationSubscription;
        if (subscription != null) {
            subscription.unsubscribe();
        }
        NotificationDialogListener notificationDialogListener = this.listener;
        if (notificationDialogListener != null) {
            notificationDialogListener.onDestroy();
        }
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    private final void sendRequest(boolean z) {
        NotificationDialogListener notificationDialogListener = this.listener;
        if (notificationDialogListener != null) {
            notificationDialogListener.onChange(z);
        }
    }
}
