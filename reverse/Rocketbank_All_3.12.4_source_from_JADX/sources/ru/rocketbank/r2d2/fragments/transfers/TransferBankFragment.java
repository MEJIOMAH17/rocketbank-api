package ru.rocketbank.r2d2.fragments.transfers;

import android.app.AlertDialog.Builder;
import android.app.DatePickerDialog;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.CardView;
import android.support.v7.widget.SwitchCompat;
import android.text.Html;
import android.text.Spanned;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.Spinner;
import android.widget.TextView;
import com.facebook.appevents.AppEventsConstants;
import com.jakewharton.rxbinding.widget.RxTextView;
import de.greenrobot.event.EventBus;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import jp.wasabeef.glide.transformations.CropCircleTransformation;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt;
import ru.rocketbank.core.events.NextButtonEvent;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.transfers.bank.RecipientType;
import ru.rocketbank.core.model.transfers.bank.RemittanceKindResponseData;
import ru.rocketbank.core.model.transfers.bank.RemittanceKindResponseData.Kind;
import ru.rocketbank.core.network.api.RocketAPI;
import ru.rocketbank.core.network.exception.RocketResponseException;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.utils.CollectionUtilsKt;
import ru.rocketbank.core.utils.ImageHelper;
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.databinding.FragmentBankTransferBinding;
import ru.rocketbank.r2d2.fragments.NextButtonListener;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import ru.rocketbank.r2d2.fragments.transfers.BudgetDate.Custom;
import ru.rocketbank.r2d2.fragments.transfers.BudgetDate.Date;
import ru.rocketbank.r2d2.fragments.transfers.BudgetDate.Period;
import ru.rocketbank.r2d2.helpers.UIHelper;
import ru.rocketbank.r2d2.utils.PatternFormatter;
import ru.rocketbank.r2d2.utils.ViewModelObservable;
import ru.rocketbank.r2d2.utils.ViewModelObservable.ViewField;
import rx.Observable;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;

/* compiled from: TransferBankFragment.kt */
public final class TransferBankFragment extends RocketFragment implements NextButtonListener {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(TransferBankFragment.class), "helpButtons", "getHelpButtons()[Landroid/widget/ImageButton;"))};
    public static final Companion Companion = new Companion();
    public static final String KEY_ANDANCED_MAP = "KEY_ANDANCED_MAP";
    public static final String KEY_BASIS = "KEY_BASIS";
    public static final String KEY_EXTRA = "KEY_EXTRA";
    public static final String KEY_GKH = "KEY_GKH";
    public static final String KEY_KIND = "KEY_KIND";
    public static final String KEY_MESSAGE = "KEY_MESSAGE";
    public static final String KEY_PERIOD = "KEY_PERIOD";
    public static final String KEY_STATUS = "KEY_STATUS";
    public static final String KEY_TRANSFER_MAP = "KEY_TRANSFER_MAP";
    private HashMap _$_findViewCache;
    private Authorization authorization;
    private final CodeNameOption[] basisList;
    private Subscription bikValidSubscription;
    private final BudgetObservable budgetViewModel;
    private final CorporateObservable corporateViewModel;
    private Subscription corrNumberSubscription;
    private CropCircleTransformation cropCircleTransformation;
    private String extra;
    public View fragmentView;
    private Subscription getBikSubscription;
    private Subscription getInnSubscription;
    private Subscription getKindSubscription;
    private final Lazy helpButtons$delegate;
    private final IndividualObservable individualViewModel;
    private Subscription innValidSubscription;
    private boolean isGkh;
    private final String[] materialAssistanceList;
    private String message;
    private String name;
    private PopupWindow popup;
    private Subscription recipientNameSubscription;
    private Kind remittanceKind = Kind.unknown;
    private RocketAPI rocketAPI;
    private Spinner spinnerStatus;
    private final CodeNameOption[] statusesList;
    private CardView taxSwitchView;
    private final TransferObservable transferViewModel;
    private final Set<Integer> uinLengths;
    private Subscription userSubscription;
    private Subscription validSubscription;

    /* compiled from: TransferBankFragment.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;
        public static final /* synthetic */ int[] $EnumSwitchMapping$3;

        static {
            int[] iArr = new int[Kind.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[Kind.individual.ordinal()] = 1;
            iArr = new int[Kind.values().length];
            $EnumSwitchMapping$1 = iArr;
            iArr[Kind.individual.ordinal()] = 1;
            $EnumSwitchMapping$1[Kind.not_resident_individual.ordinal()] = 2;
            $EnumSwitchMapping$1[Kind.ip.ordinal()] = 3;
            $EnumSwitchMapping$1[Kind.corporate.ordinal()] = 4;
            $EnumSwitchMapping$1[Kind.not_resident_corporate.ordinal()] = 5;
            $EnumSwitchMapping$1[Kind.budget.ordinal()] = 6;
            $EnumSwitchMapping$1[Kind.unknown.ordinal()] = 7;
            iArr = new int[Kind.values().length];
            $EnumSwitchMapping$2 = iArr;
            iArr[Kind.corporate.ordinal()] = 1;
            $EnumSwitchMapping$2[Kind.not_resident_corporate.ordinal()] = 2;
            $EnumSwitchMapping$2[Kind.budget.ordinal()] = 3;
            iArr = new int[Kind.values().length];
            $EnumSwitchMapping$3 = iArr;
            iArr[Kind.individual.ordinal()] = 1;
            $EnumSwitchMapping$3[Kind.not_resident_individual.ordinal()] = 2;
            $EnumSwitchMapping$3[Kind.corporate.ordinal()] = 3;
            $EnumSwitchMapping$3[Kind.not_resident_corporate.ordinal()] = 4;
            $EnumSwitchMapping$3[Kind.ip.ordinal()] = 5;
            $EnumSwitchMapping$3[Kind.budget.ordinal()] = 6;
            $EnumSwitchMapping$3[Kind.unknown.ordinal()] = 7;
        }
    }

    private final ImageButton[] getHelpButtons() {
        return (ImageButton[]) this.helpButtons$delegate.getValue();
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

    public final /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public TransferBankFragment() {
        Object stringArray = RocketApplication.Companion.getContext().getResources().getStringArray(C0859R.array.tax_basis);
        Intrinsics.checkExpressionValueIsNotNull(stringArray, "RocketApplication.getCon…gArray(R.array.tax_basis)");
        Collection arrayList = new ArrayList(stringArray.length);
        for (Object obj : stringArray) {
            Intrinsics.checkExpressionValueIsNotNull(obj, "it");
            arrayList.add(StringsKt.split$default((CharSequence) obj, new String[]{" | "}, false, 0, 6, null));
        }
        Iterable<List> iterable = (List) arrayList;
        Collection arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault$251b5948(iterable));
        for (List list : iterable) {
            arrayList2.add(new CodeNameOption((String) list.get(0), (String) list.get(1)));
        }
        arrayList2 = CollectionsKt.sorted((List) arrayList2);
        if (arrayList2 == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.util.Collection<T>");
        }
        Object[] toArray = arrayList2.toArray(new CodeNameOption[0]);
        if (toArray == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
        }
        this.basisList = (CodeNameOption[]) toArray;
        stringArray = RocketApplication.Companion.getContext().getResources().getStringArray(C0859R.array.budget_status);
        Intrinsics.checkExpressionValueIsNotNull(stringArray, "RocketApplication.getCon…ay(R.array.budget_status)");
        arrayList = new ArrayList(stringArray.length);
        for (Object obj2 : stringArray) {
            Intrinsics.checkExpressionValueIsNotNull(obj2, "it");
            arrayList.add(StringsKt.split$default((CharSequence) obj2, new String[]{" | "}, false, 0, 6, null));
        }
        iterable = (List) arrayList;
        arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault$251b5948(iterable));
        for (List list2 : iterable) {
            arrayList2.add(new CodeNameOption((String) list2.get(0), (String) list2.get(1)));
        }
        arrayList2 = CollectionsKt.sorted((List) arrayList2);
        if (arrayList2 == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.util.Collection<T>");
        }
        toArray = arrayList2.toArray(new CodeNameOption[0]);
        if (toArray == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
        }
        this.statusesList = (CodeNameOption[]) toArray;
        this.materialAssistanceList = RocketApplication.Companion.getContext().getResources().getStringArray(C0859R.array.material_assistance);
        this.helpButtons$delegate = ExceptionsKt__ExceptionsKt.lazy(new TransferBankFragment$helpButtons$2(this));
        CodeNameOption codeNameOption = this.basisList[0];
        for (CodeNameOption codeNameOption2 : this.statusesList) {
            if (Intrinsics.areEqual(codeNameOption2.getCode(), "24")) {
                break;
            }
        }
        CodeNameOption codeNameOption22 = null;
        if (codeNameOption22 == null) {
            codeNameOption22 = this.statusesList[0];
        }
        this.budgetViewModel = new BudgetObservable(codeNameOption, codeNameOption22);
        String str = this.materialAssistanceList[0];
        Intrinsics.checkExpressionValueIsNotNull(str, "materialAssistanceList[0]");
        this.individualViewModel = new IndividualObservable(str);
        this.corporateViewModel = new CorporateObservable();
        this.transferViewModel = new TransferObservable();
        this.uinLengths = kotlin.collections.AbstractList.Companion.setOf(new Integer[]{Integer.valueOf(20), Integer.valueOf(25)});
    }

    public static final /* synthetic */ Spinner access$getSpinnerStatus$p(TransferBankFragment transferBankFragment) {
        transferBankFragment = transferBankFragment.spinnerStatus;
        if (transferBankFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("spinnerStatus");
        }
        return transferBankFragment;
    }

    public final View getFragmentView() {
        View view = this.fragmentView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        return view;
    }

    public final void setFragmentView(View view) {
        Intrinsics.checkParameterIsNotNull(view, "<set-?>");
        this.fragmentView = view;
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        int i = 0;
        layoutInflater = FragmentBankTransferBinding.inflate(layoutInflater, viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "binding");
        viewGroup = layoutInflater.getRoot();
        Intrinsics.checkExpressionValueIsNotNull(viewGroup, "binding.root");
        this.fragmentView = viewGroup;
        this.cropCircleTransformation = new CropCircleTransformation(getContext());
        this.rocketAPI = getInjector().getRocketApi();
        this.authorization = getInjector().getAuthorization();
        viewGroup = this.fragmentView;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        LinearLayout linearLayout = (LinearLayout) viewGroup.findViewById(C0859R.id.budgetView);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout, "fragmentView.budgetView");
        updateStatusList(linearLayout);
        viewGroup = this.fragmentView;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        PatternFormatter.setup((RocketEditText) viewGroup.findViewById(C0859R.id.corr_number), TransferField.corr_number.getPattern());
        viewGroup = this.fragmentView;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        PatternFormatter.setup((RocketEditText) viewGroup.findViewById(C0859R.id.editTextCardNumber), "dddd dddd dddd dddd ddd");
        layoutInflater.setBudget(this.budgetViewModel);
        layoutInflater.setIndividual(this.individualViewModel);
        layoutInflater.setCorporate(this.corporateViewModel);
        layoutInflater.setTransfer(this.transferViewModel);
        layoutInflater = this.fragmentView;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        LinearLayout linearLayout2 = (LinearLayout) layoutInflater.findViewById(C0859R.id.budgetView);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout2, "fragmentView.budgetView");
        CardView cardView = (CardView) linearLayout2.findViewById(C0859R.id.tax_switch);
        Intrinsics.checkExpressionValueIsNotNull(cardView, "fragmentView.budgetView.tax_switch");
        this.taxSwitchView = cardView;
        layoutInflater = this.fragmentView;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        linearLayout2 = (LinearLayout) layoutInflater.findViewById(C0859R.id.budgetView);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout2, "fragmentView.budgetView");
        Spinner spinner = (Spinner) linearLayout2.findViewById(C0859R.id.spinnerStatus);
        Intrinsics.checkExpressionValueIsNotNull(spinner, "fragmentView.budgetView.spinnerStatus");
        this.spinnerStatus = spinner;
        layoutInflater = this.spinnerStatus;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("spinnerStatus");
        }
        layoutInflater.setEnabled(false);
        if (bundle != null) {
            ViewField viewField;
            layoutInflater = bundle.getBundle(KEY_TRANSFER_MAP);
            Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "savedInstanceState.getBundle(KEY_TRANSFER_MAP)");
            for (Entry entry : CollectionUtilsKt.fromBundle(layoutInflater).entrySet()) {
                viewField = (ViewField) this.transferViewModel.getFields().get(entry.getKey());
                if (viewField != null) {
                    viewField.setValue((String) entry.getValue());
                }
            }
            layoutInflater = bundle.getSerializable(KEY_KIND);
            if (layoutInflater == null) {
                throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.model.transfers.bank.RemittanceKindResponseData.Kind");
            }
            CodeNameOption codeNameOption;
            this.remittanceKind = (Kind) layoutInflater;
            this.message = bundle.getString(KEY_MESSAGE);
            this.extra = bundle.getString(KEY_EXTRA);
            this.isGkh = bundle.getBoolean(KEY_GKH);
            showKind(this.remittanceKind, this.message, this.extra, this.isGkh);
            loadBikLogo();
            if (bundle.containsKey(KEY_ANDANCED_MAP) != null) {
                layoutInflater = bundle.getBundle(KEY_ANDANCED_MAP);
                Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "savedInstanceState.getBundle(KEY_ANDANCED_MAP)");
                for (Entry entry2 : CollectionUtilsKt.fromBundle(layoutInflater).entrySet()) {
                    ViewModelObservable additionalViewModel = this.transferViewModel.getAdditionalViewModel();
                    if (additionalViewModel != null) {
                        HashMap fields = additionalViewModel.getFields();
                        if (fields != null) {
                            viewField = (ViewField) fields.get(entry2.getKey());
                            if (viewField != null) {
                                viewField.setValue((String) entry2.getValue());
                            }
                        }
                    }
                }
            }
            if (bundle.containsKey(KEY_PERIOD) != null) {
                layoutInflater = bundle.getString(KEY_PERIOD);
                Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "savedInstanceState.getString(KEY_PERIOD)");
                viewGroup = StringsKt.split$default((CharSequence) layoutInflater, new String[]{"|"}, false, 0, 6, null);
                this.budgetViewModel.setTax_period_date(BudgetDate.Companion.create((String) viewGroup.get(1), (String) viewGroup.get(0)));
            }
            for (CodeNameOption codeNameOption2 : this.basisList) {
                if (Intrinsics.areEqual(codeNameOption2.getCode(), bundle.getString(KEY_BASIS))) {
                    break;
                }
            }
            CodeNameOption codeNameOption22 = null;
            if (codeNameOption22 != null) {
                this.budgetViewModel.setSelectedTaxBasis(codeNameOption22);
            }
            layoutInflater = this.statusesList;
            viewGroup = layoutInflater.length;
            while (i < viewGroup) {
                codeNameOption = layoutInflater[i];
                if (Intrinsics.areEqual(codeNameOption.getCode(), bundle.getString(KEY_STATUS))) {
                    break;
                }
                i++;
            }
            codeNameOption = null;
            if (codeNameOption != null) {
                this.budgetViewModel.setSelectedStatus(codeNameOption);
            }
            this.transferViewModel.check();
            subscribeRecipientName();
        } else {
            this.budgetViewModel.getUin().setValue(AppEventsConstants.EVENT_PARAM_VALUE_NO);
        }
        layoutInflater = this.fragmentView;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        return layoutInflater;
    }

    public final void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        bundle = this.fragmentView;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        LinearLayout linearLayout = (LinearLayout) bundle.findViewById(C0859R.id.budgetView);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout, "fragmentView.budgetView");
        RocketEditText rocketEditText = (RocketEditText) linearLayout.findViewById(C0859R.id.uin);
        rocketEditText.setOnFocusChangeListener(new TransferBankFragment$onViewCreated$1(this, rocketEditText));
        view = view.findViewById(C0859R.id.kbk);
        if (view == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.EditText");
        }
        EditText editText = (EditText) view;
        editText.setOnFocusChangeListener((OnFocusChangeListener) new TransferBankFragment$onViewCreated$2(this, editText));
        view = this.fragmentView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(C0859R.id.budgetView);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout2, "fragmentView.budgetView");
        RocketEditText rocketEditText2 = (RocketEditText) linearLayout2.findViewById(C0859R.id.oktmo);
        rocketEditText2.setOnFocusChangeListener((OnFocusChangeListener) new TransferBankFragment$onViewCreated$3(this, rocketEditText2));
        view = this.fragmentView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        linearLayout2 = (LinearLayout) view.findViewById(C0859R.id.individualView);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout2, "fragmentView.individualView");
        rocketEditText2 = (RocketEditText) linearLayout2.findViewById(C0859R.id.editTextIndividualRecipientName);
        rocketEditText2.addTextChangedListener((TextWatcher) new TransferBankFragment$onViewCreated$4(this, rocketEditText2));
        view = this.fragmentView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        linearLayout2 = (LinearLayout) view.findViewById(C0859R.id.budgetView);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout2, "fragmentView.budgetView");
        rocketEditText2 = (RocketEditText) linearLayout2.findViewById(C0859R.id.edittext_transfers_bank_purpose);
        Intrinsics.checkExpressionValueIsNotNull(rocketEditText2, "fragmentView.budgetView.…xt_transfers_bank_purpose");
        checkPurposeIsNotEmpty(rocketEditText2);
        view = this.fragmentView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        linearLayout2 = (LinearLayout) view.findViewById(C0859R.id.individualView);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout2, "fragmentView.individualView");
        rocketEditText2 = (RocketEditText) linearLayout2.findViewById(C0859R.id.editTextIndividualPurpose);
        Intrinsics.checkExpressionValueIsNotNull(rocketEditText2, "fragmentView.individualV…editTextIndividualPurpose");
        checkPurposeIsNotEmpty(rocketEditText2);
        view = this.fragmentView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        linearLayout2 = (LinearLayout) view.findViewById(C0859R.id.corporateView);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout2, "fragmentView.corporateView");
        rocketEditText2 = (RocketEditText) linearLayout2.findViewById(C0859R.id.editTextCorporatePurpose);
        Intrinsics.checkExpressionValueIsNotNull(rocketEditText2, "fragmentView.corporateVi….editTextCorporatePurpose");
        checkPurposeIsNotEmpty(rocketEditText2);
    }

    private final void changeTaxPeriod(boolean z) {
        View view = this.fragmentView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        LinearLayout linearLayout = (LinearLayout) view.findViewById(C0859R.id.budgetView);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout, "fragmentView.budgetView");
        RocketEditText rocketEditText = (RocketEditText) linearLayout.findViewById(C0859R.id.taxPeriod);
        if (z) {
            Intrinsics.checkExpressionValueIsNotNull(rocketEditText, "editText");
            rocketEditText.setFocusable(false);
            rocketEditText.setFocusableInTouchMode(false);
            rocketEditText.setClickable(false);
            return;
        }
        Intrinsics.checkExpressionValueIsNotNull(rocketEditText, "editText");
        rocketEditText.setFocusable(true);
        rocketEditText.setFocusableInTouchMode(true);
        rocketEditText.setClickable(true);
    }

    private final void checkPurposeIsNotEmpty(EditText editText) {
        editText.setOnFocusChangeListener(new TransferBankFragment$checkPurposeIsNotEmpty$1(this, editText));
    }

    private final boolean checkUinAndShowError(EditText editText) {
        String obj = editText.getText().toString();
        if (Intrinsics.areEqual(obj, AppEventsConstants.EVENT_PARAM_VALUE_NO) || this.uinLengths.contains(Integer.valueOf(obj.length()))) {
            return false;
        }
        editText.setError(getString(C0859R.string.uin_error));
        return true;
    }

    private final void addZerosIfNeed(EditText editText, int i) {
        String replace$default = StringsKt.replace$default(editText.getText().toString(), " ", "", false, 4, null);
        if ((((CharSequence) replace$default).length() > 0 ? 1 : null) != null && replace$default.length() < i) {
            StringBuilder stringBuilder = new StringBuilder();
            for (i -= replace$default.length(); i > 0; i--) {
                stringBuilder.append('0');
            }
            stringBuilder.append(replace$default);
            editText.setText(stringBuilder.toString());
        }
    }

    public final void onResume() {
        super.onResume();
        Fragment parentFragment = getParentFragment();
        if (parentFragment == null) {
            parentFragment = this;
        }
        updateNextButton(parentFragment);
        if (this.budgetViewModel.getFrom().getValue() == null) {
            Authorization authorization = this.authorization;
            if (authorization == null) {
                Intrinsics.throwUninitializedPropertyAccessException("authorization");
            }
            this.userSubscription = authorization.getUser().observeOn(AndroidSchedulers.mainThread()).subscribe((Action1) new TransferBankFragment$onResume$1(this));
        }
        subscribeValid();
        Observable observeOn = this.transferViewModel.getBik().getValidObservable().observeOn(AndroidSchedulers.mainThread());
        Action1 transferBankFragment$onResume$2 = new TransferBankFragment$onResume$2(this);
        Function1 function1 = TransferBankFragment$onResume$3.INSTANCE;
        if (function1 != null) {
            function1 = new TransferBankFragmentKt$sam$rx_functions_Action1$0(function1);
        }
        this.bikValidSubscription = observeOn.subscribe(transferBankFragment$onResume$2, (Action1) function1);
        observeOn = this.transferViewModel.getCorrNumberChange().observeOn(AndroidSchedulers.mainThread());
        transferBankFragment$onResume$2 = new TransferBankFragment$onResume$4(this);
        function1 = TransferBankFragment$onResume$5.INSTANCE;
        if (function1 != null) {
            function1 = new TransferBankFragmentKt$sam$rx_functions_Action1$0(function1);
        }
        this.corrNumberSubscription = observeOn.subscribe(transferBankFragment$onResume$2, (Action1) function1);
        observeOn = Observable.merge((Observable) this.transferViewModel.getCorr_number().getValidObservable(), (Observable) this.transferViewModel.getBik().getValidObservable()).map(new TransferBankFragment$onResume$6(this)).observeOn(AndroidSchedulers.mainThread());
        transferBankFragment$onResume$2 = new TransferBankFragment$onResume$7(this);
        function1 = TransferBankFragment$onResume$8.INSTANCE;
        if (function1 != null) {
            function1 = new TransferBankFragmentKt$sam$rx_functions_Action1$0(function1);
        }
        observeOn.subscribe(transferBankFragment$onResume$2, (Action1) function1);
        subscribeInn();
        this.transferViewModel.check();
        this.individualViewModel.check();
        this.budgetViewModel.check();
    }

    private final void subscribeValid() {
        unsubscribe(this.validSubscription);
        this.validSubscription = this.transferViewModel.getFullValidSubject().observeOn(AndroidSchedulers.mainThread()).subscribe((Action1) new TransferBankFragment$subscribeValid$1(this), (Action1) new TransferBankFragment$subscribeValid$2(this));
    }

    public final void showTitle(Kind kind) {
        Intrinsics.checkParameterIsNotNull(kind, "remittanceKind");
        kind = kind.getTitle();
        if (kind != null) {
            kind = ((Number) kind).intValue();
            View view = this.fragmentView;
            if (view == null) {
                Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
            }
            RocketTextView rocketTextView = (RocketTextView) view.findViewById(C0859R.id.title);
            if (rocketTextView != null) {
                view = rocketTextView;
                Intrinsics.checkParameterIsNotNull(view, "$receiver");
                view.setVisibility(0);
            }
            view = this.fragmentView;
            if (view == null) {
                Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
            }
            rocketTextView = (RocketTextView) view.findViewById(C0859R.id.subTitle);
            if (rocketTextView != null) {
                view = rocketTextView;
                Intrinsics.checkParameterIsNotNull(view, "$receiver");
                view.setVisibility(0);
            }
            view = this.fragmentView;
            if (view == null) {
                Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
            }
            rocketTextView = (RocketTextView) view.findViewById(C0859R.id.title);
            if (rocketTextView != null) {
                rocketTextView.setText(kind);
            }
        }
    }

    private final void hideFields() {
        View view = this.fragmentView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        RocketTextView rocketTextView = (RocketTextView) view.findViewById(C0859R.id.title);
        if (rocketTextView != null) {
            view = rocketTextView;
            Intrinsics.checkParameterIsNotNull(view, "$receiver");
            view.setVisibility(8);
        }
        view = this.fragmentView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        rocketTextView = (RocketTextView) view.findViewById(C0859R.id.subTitle);
        if (rocketTextView != null) {
            view = rocketTextView;
            Intrinsics.checkParameterIsNotNull(view, "$receiver");
            view.setVisibility(8);
        }
        view = this.fragmentView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        LinearLayout linearLayout = (LinearLayout) view.findViewById(C0859R.id.budgetView);
        if (linearLayout != null) {
            view = linearLayout;
            Intrinsics.checkParameterIsNotNull(view, "$receiver");
            view.setVisibility(8);
        }
        view = this.fragmentView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        linearLayout = (LinearLayout) view.findViewById(C0859R.id.individualView);
        if (linearLayout != null) {
            view = linearLayout;
            Intrinsics.checkParameterIsNotNull(view, "$receiver");
            view.setVisibility(8);
        }
        view = this.fragmentView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        linearLayout = (LinearLayout) view.findViewById(C0859R.id.corporateView);
        if (linearLayout != null) {
            view = linearLayout;
            Intrinsics.checkParameterIsNotNull(view, "$receiver");
            view.setVisibility(8);
        }
        view = this.fragmentView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        rocketTextView = (RocketTextView) view.findViewById(C0859R.id.textViewKindError);
        if (rocketTextView != null) {
            view = rocketTextView;
            Intrinsics.checkParameterIsNotNull(view, "$receiver");
            view.setVisibility(8);
        }
        this.transferViewModel.setCard_number_visible(false);
    }

    private final void setPurposeHint(EditText editText, String str) {
        if (str != null) {
            editText.setHint(str);
        } else {
            editText.setHint(C0859R.string.transfers_bank_receiver_target_hint);
        }
    }

    static /* bridge */ /* synthetic */ void showIndividual$default(TransferBankFragment transferBankFragment, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        transferBankFragment.showIndividual(str, z);
    }

    private final void showIndividual(String str, boolean z) {
        this.individualViewModel.setMaterialAssistance(Boolean.valueOf(z));
        this.transferViewModel.setAdditionalViewModel(this.individualViewModel);
        z = this.fragmentView;
        if (!z) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        LinearLayout linearLayout = (LinearLayout) z.findViewById(C0859R.id.individualView);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout, "fragmentView.individualView");
        View view = linearLayout;
        Intrinsics.checkParameterIsNotNull(view, "$receiver");
        view.setVisibility(0);
        z = this.fragmentView;
        if (!z) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        linearLayout = (LinearLayout) z.findViewById(C0859R.id.individualView);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout, "fragmentView.individualView");
        Spinner spinner = (Spinner) linearLayout.findViewById(C0859R.id.materialAssistTypeSpinner);
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
        Object obj = this.materialAssistanceList;
        Intrinsics.checkExpressionValueIsNotNull(obj, "materialAssistanceList");
        MultilineArrayAdapter multilineArrayAdapter = new MultilineArrayAdapter(context, obj);
        Intrinsics.checkExpressionValueIsNotNull(spinner, "materialAssistTypeSpinner");
        spinner.setAdapter(multilineArrayAdapter);
        spinner.setOnItemSelectedListener(new TransferBankFragment$showIndividual$1(this));
        z = this.fragmentView;
        if (!z) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        linearLayout = (LinearLayout) z.findViewById(C0859R.id.individualView);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout, "fragmentView.individualView");
        RocketEditText rocketEditText = (RocketEditText) linearLayout.findViewById(C0859R.id.editTextIndividualPurpose);
        Intrinsics.checkExpressionValueIsNotNull(rocketEditText, "fragmentView.individualV…editTextIndividualPurpose");
        setPurposeHint(rocketEditText, str);
    }

    private final void setDefaultPurpose() {
        if (this.individualViewModel.getPurpose().getValue() == null) {
            if (WhenMappings.$EnumSwitchMapping$0[this.remittanceKind.ordinal()] == 1) {
                setPurpose(this.individualViewModel.getPurpose(), C0859R.string.default_purpose);
            }
        }
    }

    private final void setPurpose(ViewField viewField, int i) {
        viewField.setValue(getString(i));
    }

    public final void onUserModel(UserModel userModel) {
        Intrinsics.checkParameterIsNotNull(userModel, "userModel");
        super.onUserModel(userModel);
        fillUserDetails(userModel);
    }

    private final void fillUserDetails(UserModel userModel) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(userModel.getLastName());
        stringBuilder.append(" ");
        stringBuilder.append(userModel.getFirstName());
        userModel = userModel.getSecondName();
        if (userModel != null) {
            if (!((((CharSequence) userModel).length() > 0 ? 1 : 0) == 0 || (Intrinsics.areEqual(userModel, "-") ^ 1) == 0)) {
                stringBuilder.append(" ");
                stringBuilder.append(userModel);
            }
        }
        this.name = stringBuilder.toString();
    }

    private final void subscribeRecipientName() {
        if (this.remittanceKind == Kind.individual) {
            unsubscribe(this.recipientNameSubscription);
            View view = this.fragmentView;
            if (view == null) {
                Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
            }
            LinearLayout linearLayout = (LinearLayout) view.findViewById(C0859R.id.individualView);
            Intrinsics.checkExpressionValueIsNotNull(linearLayout, "fragmentView.individualView");
            RocketEditText rocketEditText = (RocketEditText) linearLayout.findViewById(C0859R.id.editTextIndividualRecipientName);
            this.recipientNameSubscription = RxTextView.textChangeEvents(rocketEditText).skip(1).observeOn(AndroidSchedulers.mainThread()).subscribe((Action1) new TransferBankFragment$subscribeRecipientName$1(this, rocketEditText));
        }
    }

    static /* bridge */ /* synthetic */ void showCorporate$default(TransferBankFragment transferBankFragment, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        transferBankFragment.showCorporate(str, z);
    }

    private final void showCorporate(String str, boolean z) {
        this.transferViewModel.setAdditionalViewModel(this.corporateViewModel);
        View view = this.fragmentView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        LinearLayout linearLayout = (LinearLayout) view.findViewById(C0859R.id.corporateView);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout, "fragmentView.corporateView");
        view = linearLayout;
        Intrinsics.checkParameterIsNotNull(view, "$receiver");
        view.setVisibility(0);
        view = this.fragmentView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        view = ((LinearLayout) view.findViewById(C0859R.id.corporateView)).findViewById(C0859R.id.kpp);
        if (view == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketEditText");
        }
        PatternFormatter.setup((RocketEditText) view, TransferField.kpp.getPattern());
        view = this.fragmentView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        linearLayout = (LinearLayout) view.findViewById(C0859R.id.corporateView);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout, "fragmentView.corporateView");
        RocketEditText rocketEditText = (RocketEditText) linearLayout.findViewById(C0859R.id.editTextCorporatePurpose);
        Intrinsics.checkExpressionValueIsNotNull(rocketEditText, "fragmentView.corporateVi….editTextCorporatePurpose");
        setPurposeHint(rocketEditText, str);
        this.isGkh = z;
        this.corporateViewModel.getGkhVisible().set(z);
        str = this.fragmentView;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        LinearLayout linearLayout2 = (LinearLayout) str.findViewById(C0859R.id.corporateView);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout2, "fragmentView.corporateView");
        RocketTextView rocketTextView = (RocketTextView) linearLayout2.findViewById(C0859R.id.gkh_info);
        Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "fragmentView.corporateView.gkh_info");
        z = getString(true);
        Intrinsics.checkExpressionValueIsNotNull(z, "getString(R.string.gkh_info)");
        rocketTextView.setText(getSpannedText(z));
        str = this.fragmentView;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        linearLayout2 = (LinearLayout) str.findViewById(C0859R.id.corporateView);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout2, "fragmentView.corporateView");
        ((RocketTextView) linearLayout2.findViewById(C0859R.id.gkhPeriod)).setOnClickListener((OnClickListener) new TransferBankFragment$showCorporate$1(this));
    }

    private final Spanned getSpannedText(String str) {
        if (VERSION.SDK_INT >= 24) {
            str = Html.fromHtml(str, 63);
            Intrinsics.checkExpressionValueIsNotNull(str, "Html.fromHtml(text, Html.FROM_HTML_MODE_COMPACT)");
            return str;
        }
        str = Html.fromHtml(str);
        Intrinsics.checkExpressionValueIsNotNull(str, "Html.fromHtml(text)");
        return str;
    }

    private final void showIp(String str) {
        this.transferViewModel.setAdditionalViewModel(this.corporateViewModel);
        View view = this.fragmentView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        LinearLayout linearLayout = (LinearLayout) view.findViewById(C0859R.id.corporateView);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout, "fragmentView.corporateView");
        view = linearLayout;
        Intrinsics.checkParameterIsNotNull(view, "$receiver");
        view.setVisibility(0);
        view = this.fragmentView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        view = ((LinearLayout) view.findViewById(C0859R.id.corporateView)).findViewById(C0859R.id.kpp);
        if (view == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketEditText");
        }
        PatternFormatter.setup((RocketEditText) view, TransferField.kpp.getPattern());
        view = this.fragmentView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        linearLayout = (LinearLayout) view.findViewById(C0859R.id.corporateView);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout, "fragmentView.corporateView");
        RocketEditText rocketEditText = (RocketEditText) linearLayout.findViewById(C0859R.id.editTextCorporatePurpose);
        Intrinsics.checkExpressionValueIsNotNull(rocketEditText, "fragmentView.corporateVi….editTextCorporatePurpose");
        setPurposeHint(rocketEditText, str);
        str = this.fragmentView;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        str = ((LinearLayout) str.findViewById(C0859R.id.corporateView)).findViewById(C0859R.id.recipient_name);
        if (str == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.EditText");
        }
        EditText editText = (EditText) str;
        editText.setHint(C0859R.string.ip_hint);
        editText.setOnFocusChangeListener(new TransferBankFragment$showIp$1(this, editText));
    }

    private final void showBudget(String str) {
        this.transferViewModel.setAdditionalViewModel(this.budgetViewModel);
        View view = this.fragmentView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        LinearLayout linearLayout = (LinearLayout) view.findViewById(C0859R.id.budgetView);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout, "fragmentView.budgetView");
        view = linearLayout;
        Intrinsics.checkParameterIsNotNull(view, "$receiver");
        view.setVisibility(0);
        view = this.fragmentView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        linearLayout = (LinearLayout) view.findViewById(C0859R.id.budgetView);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout, "fragmentView.budgetView");
        RocketEditText rocketEditText = (RocketEditText) linearLayout.findViewById(C0859R.id.edittext_transfers_bank_purpose);
        Intrinsics.checkExpressionValueIsNotNull(rocketEditText, "fragmentView.budgetView.…xt_transfers_bank_purpose");
        setPurposeHint(rocketEditText, str);
        str = this.fragmentView;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        LinearLayout linearLayout2 = (LinearLayout) str.findViewById(C0859R.id.budgetView);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout2, "fragmentView.budgetView");
        Spinner spinner = (Spinner) linearLayout2.findViewById(C0859R.id.spinnerStatus);
        Intrinsics.checkExpressionValueIsNotNull(spinner, "fragmentView.budgetView.spinnerStatus");
        spinner.setOnItemSelectedListener(new TransferBankFragment$showBudget$1(this));
        str = this.fragmentView;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        linearLayout2 = (LinearLayout) str.findViewById(C0859R.id.budgetView);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout2, "fragmentView.budgetView");
        spinner = (Spinner) linearLayout2.findViewById(C0859R.id.taxBasis);
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
        MultilineArrayAdapter multilineArrayAdapter = new MultilineArrayAdapter(context, this.basisList);
        Intrinsics.checkExpressionValueIsNotNull(spinner, "taxBasisSpinner");
        spinner.setAdapter(multilineArrayAdapter);
        spinner.setOnItemSelectedListener(new TransferBankFragment$showBudget$2(this));
        str = this.fragmentView;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        linearLayout2 = (LinearLayout) str.findViewById(C0859R.id.budgetView);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout2, "fragmentView.budgetView");
        ((RocketEditText) linearLayout2.findViewById(C0859R.id.taxPeriod)).setOnClickListener(new TransferBankFragment$showBudget$3(this));
        str = this.fragmentView;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        linearLayout2 = (LinearLayout) str.findViewById(C0859R.id.budgetView);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout2, "fragmentView.budgetView");
        PatternFormatter.setup((RocketEditText) linearLayout2.findViewById(C0859R.id.oktmo), TransferField.oktmo.getPattern());
        str = this.fragmentView;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        linearLayout2 = (LinearLayout) str.findViewById(C0859R.id.budgetView);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout2, "fragmentView.budgetView");
        PatternFormatter.setup((RocketEditText) linearLayout2.findViewById(C0859R.id.kbk), TransferField.kbk.getPattern());
        str = this.fragmentView;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        str = ((LinearLayout) str.findViewById(C0859R.id.budgetView)).findViewById(C0859R.id.kpp);
        if (str == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketEditText");
        }
        PatternFormatter.setup((RocketEditText) str, TransferField.kpp.getPattern());
        str = this.fragmentView;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        linearLayout2 = (LinearLayout) str.findViewById(C0859R.id.budgetView);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout2, "fragmentView.budgetView");
        ((ImageButton) linearLayout2.findViewById(C0859R.id.buttonInfoUin)).setOnClickListener(new TransferBankFragment$showBudget$4(this));
        str = this.fragmentView;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        linearLayout2 = (LinearLayout) str.findViewById(C0859R.id.budgetView);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout2, "fragmentView.budgetView");
        ((ImageButton) linearLayout2.findViewById(C0859R.id.buttonInfoKbk)).setOnClickListener(new TransferBankFragment$showBudget$5(this));
        str = this.fragmentView;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        ((LinearLayout) str.findViewById(C0859R.id.budgetView)).setOnTouchListener(new TransferBankFragment$showBudget$6(this));
        str = this.fragmentView;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        str = ((LinearLayout) str.findViewById(C0859R.id.budgetView)).findViewById(C0859R.id.switcher);
        if (str == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.v7.widget.SwitchCompat");
        }
        SwitchCompat switchCompat = (SwitchCompat) str;
        switchCompat.setChecked(this.budgetViewModel.getTax());
        switchCompat.setOnCheckedChangeListener(new TransferBankFragment$showBudget$7(this));
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void updateStatusList(android.view.View r11) {
        /*
        r10 = this;
        r0 = r10.statusesList;
        r1 = ru.rocketbank.r2d2.C0859R.id.spinnerStatus;
        r1 = r11.findViewById(r1);
        r1 = (android.widget.Spinner) r1;
        r2 = "view.spinnerStatus";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r2);
        r2 = new ru.rocketbank.r2d2.fragments.transfers.MultilineArrayAdapter;
        r3 = r11.getContext();
        r4 = "view.context";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r3, r4);
        r2.<init>(r3, r0);
        r2 = (android.widget.SpinnerAdapter) r2;
        r1.setAdapter(r2);
        r1 = r10.budgetViewModel;
        r1 = r1.getSelectedStatus();
        r2 = "$receiver";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r0, r2);
        r1 = kotlin.collections.ArraysKt___ArraysKt.indexOf(r0, r1);
        r2 = 0;
        if (r1 < 0) goto L_0x0036;
    L_0x0034:
        r1 = 1;
        goto L_0x0037;
    L_0x0036:
        r1 = r2;
    L_0x0037:
        if (r1 != 0) goto L_0x0078;
    L_0x0039:
        r1 = r10.budgetViewModel;
        r3 = r0.length;
        r4 = r2;
    L_0x003d:
        r5 = 0;
        if (r4 >= r3) goto L_0x0071;
    L_0x0040:
        r6 = r0[r4];
        r7 = r10.transferViewModel;
        r7 = r7.getCorr_number();
        r7 = r7.getCleanValue();
        r8 = "40101";
        r9 = 2;
        r5 = kotlin.text.StringsKt.startsWith$default(r7, r8, r2, r9, r5);
        if (r5 == 0) goto L_0x0060;
    L_0x0055:
        r5 = r6.getCode();
        r7 = "24";
        r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r7);
        goto L_0x006a;
    L_0x0060:
        r5 = r6.getCode();
        r7 = "13";
        r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r7);
    L_0x006a:
        if (r5 == 0) goto L_0x006e;
    L_0x006c:
        r5 = r6;
        goto L_0x0071;
    L_0x006e:
        r4 = r4 + 1;
        goto L_0x003d;
    L_0x0071:
        if (r5 != 0) goto L_0x0075;
    L_0x0073:
        r5 = r0[r2];
    L_0x0075:
        r1.setSelectedStatus(r5);
    L_0x0078:
        r1 = ru.rocketbank.r2d2.C0859R.id.spinnerStatus;
        r11 = r11.findViewById(r1);
        r11 = (android.widget.Spinner) r11;
        r1 = r10.budgetViewModel;
        r1 = r1.getSelectedStatus();
        r0 = kotlin.collections.ArraysKt___ArraysKt.indexOf(r0, r1);
        r11.setSelection(r0);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.fragments.transfers.TransferBankFragment.updateStatusList(android.view.View):void");
    }

    public final void updateNextButton(Fragment fragment) {
        Intrinsics.checkParameterIsNotNull(fragment, "fragment");
        if (getActivity() != null) {
            EventBus.getDefault().post(new NextButtonEvent(fragment, this.transferViewModel.isFullValid(), Integer.valueOf(0), getResources().getString(C0859R.string.next)));
        }
    }

    public final void onNextButtonClick() {
        if (this.transferViewModel.isFullValid()) {
            RecipientType recipientType;
            switch (WhenMappings.$EnumSwitchMapping$1[this.remittanceKind.ordinal()]) {
                case 1:
                case 2:
                    recipientType = RecipientType.PERSON;
                    break;
                case 3:
                case 4:
                case 5:
                    recipientType = RecipientType.BUSINESS;
                    break;
                case 6:
                    recipientType = RecipientType.BUDGET;
                    break;
                case 7:
                    return;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            BankAmountActivity.startActivity(this.transferViewModel.toRemittanceOutgoing(this.remittanceKind, this.isGkh), getContext());
        }
    }

    private final void showPopup(ImageButton imageButton, int i) {
        hidePopup();
        imageButton.setAlpha(1.0f);
        imageButton.setColorFilter(ContextCompat.getColor(imageButton.getContext(), C0859R.color.orange));
        imageButton.setOnClickListener(new TransferBankFragment$showPopup$1(this));
        this.popup = new PopupWindow(-2, -2);
        View inflate = LayoutInflater.from(imageButton.getContext()).inflate(C0859R.layout.budget_popup, null);
        inflate.setOnTouchListener(new TransferBankFragment$showPopup$2(this));
        Intrinsics.checkExpressionValueIsNotNull(inflate, "popupView");
        ((RocketTextView) inflate.findViewById(C0859R.id.textView)).setText(i);
        i = this.popup;
        if (i != 0) {
            i.setContentView(inflate);
        }
        i = this.popup;
        if (i != 0) {
            i.showAsDropDown(imageButton);
        }
    }

    private final void hidePopup() {
        for (ImageButton imageButton : getHelpButtons()) {
            if (imageButton != null) {
                imageButton.setAlpha(0.24f);
            }
            if (imageButton != null) {
                Context context = getContext();
                if (context == null) {
                    Intrinsics.throwNpe();
                }
                imageButton.setColorFilter(ContextCompat.getColor(context, C0859R.color.rocketBlack));
            }
        }
        PopupWindow popupWindow = this.popup;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
        View view = this.fragmentView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        LinearLayout linearLayout = (LinearLayout) view.findViewById(C0859R.id.budgetView);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout, "fragmentView.budgetView");
        ImageButton imageButton2 = (ImageButton) linearLayout.findViewById(C0859R.id.buttonInfoUin);
        if (imageButton2 != null) {
            imageButton2.setOnClickListener(new TransferBankFragment$hidePopup$2(this));
        }
        view = this.fragmentView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        linearLayout = (LinearLayout) view.findViewById(C0859R.id.budgetView);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout, "fragmentView.budgetView");
        imageButton2 = (ImageButton) linearLayout.findViewById(C0859R.id.buttonInfoKbk);
        if (imageButton2 != null) {
            imageButton2.setOnClickListener(new TransferBankFragment$hidePopup$3(this));
        }
    }

    private final void subscribeInn() {
        View view;
        ViewGroup viewGroup;
        InnKpp innKpp;
        unsubscribe(this.innValidSubscription);
        LinearLayout linearLayout;
        switch (WhenMappings.$EnumSwitchMapping$2[this.remittanceKind.ordinal()]) {
            case 1:
            case 2:
                view = this.fragmentView;
                if (view == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
                }
                linearLayout = (LinearLayout) view.findViewById(C0859R.id.corporateView);
                Intrinsics.checkExpressionValueIsNotNull(linearLayout, "fragmentView.corporateView");
                viewGroup = linearLayout;
                innKpp = this.corporateViewModel;
                break;
            case 3:
                view = this.fragmentView;
                if (view == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
                }
                linearLayout = (LinearLayout) view.findViewById(C0859R.id.budgetView);
                Intrinsics.checkExpressionValueIsNotNull(linearLayout, "fragmentView.budgetView");
                viewGroup = linearLayout;
                innKpp = this.budgetViewModel;
                break;
            default:
                return;
        }
        InnKpp innKpp2 = innKpp;
        View findViewById = viewGroup.findViewById(C0859R.id.innProgressBar);
        View findViewById2 = viewGroup.findViewById(C0859R.id.kpp);
        if (findViewById2 == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
        }
        TextView textView = (TextView) findViewById2;
        view = viewGroup.findViewById(C0859R.id.recipient_name);
        if (view == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
        }
        TextView textView2 = (TextView) view;
        Observable observeOn = innKpp2.getInn().getValidObservable().observeOn(AndroidSchedulers.mainThread());
        Action1 transferBankFragment$subscribeInn$1 = new TransferBankFragment$subscribeInn$1(this, findViewById, textView, textView2, innKpp2);
        Function1 function1 = TransferBankFragment$subscribeInn$2.INSTANCE;
        if (function1 != null) {
            function1 = new TransferBankFragmentKt$sam$rx_functions_Action1$0(function1);
        }
        this.innValidSubscription = observeOn.subscribe(transferBankFragment$subscribeInn$1, (Action1) function1);
    }

    private final void requestKind(boolean z) {
        hideFields();
        if (z) {
            z = this.fragmentView;
            if (!z) {
                Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
            }
            ProgressBar progressBar = (ProgressBar) z.findViewById(C0859R.id.cardNumberProgressBar);
            if (progressBar != null) {
                View view = progressBar;
                Intrinsics.checkParameterIsNotNull(view, "$receiver");
                view.setVisibility(0);
            }
            z = this.rocketAPI;
            if (!z) {
                Intrinsics.throwUninitializedPropertyAccessException("rocketAPI");
            }
            this.getKindSubscription = z.remittancesKind(this.transferViewModel.getBik().getCleanValue(), this.transferViewModel.getCorr_number().getCleanValue()).observeOn(AndroidSchedulers.mainThread()).subscribe((Action1) new TransferBankFragment$requestKind$1(this), (Action1) new TransferBankFragment$requestKind$2(this));
        }
    }

    static /* bridge */ /* synthetic */ void showKind$default(TransferBankFragment transferBankFragment, Kind kind, String str, String str2, boolean z, int i, Object obj) {
        if ((i & 8) != 0) {
            z = true;
        }
        transferBankFragment.showKind(kind, str, str2, z);
    }

    private final void showKind(Kind kind, String str, String str2, boolean z) {
        showTitle(kind);
        subscribeInn();
        boolean areEqual = Intrinsics.areEqual(str2, RemittanceKindResponseData.EXTRA_MATERIAL_ASSISTANCE);
        this.transferViewModel.setCard_number_visible(Intrinsics.areEqual(str2, RemittanceKindResponseData.EXTRA_NEED_CARD_NUMBER));
        str2 = this.fragmentView;
        if (str2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        str2 = ((LinearLayout) str2.findViewById(C0859R.id.corporateView)).findViewById(C0859R.id.recipient_name);
        Intrinsics.checkExpressionValueIsNotNull(str2, "fragmentView.corporateVi…iew>(R.id.recipient_name)");
        str2.setOnFocusChangeListener(null);
        RequisitesObservable.kindObservable.set(this.remittanceKind);
        switch (WhenMappings.$EnumSwitchMapping$3[this.remittanceKind.ordinal()]) {
            case 1:
                showIndividual$default(this, str, null, 2, null);
                break;
            case 2:
                showIndividual(str, areEqual);
                break;
            case 3:
            case 4:
                showCorporate(str, z);
                break;
            case 5:
                showIp(str);
                break;
            case 6:
                showBudget(str);
                break;
            case 7:
                unknownKind(kind);
                break;
            default:
                break;
        }
        subscribeValid();
        setDefaultPurpose();
        this.transferViewModel.check();
    }

    private final String getErrorMessage(Context context, Throwable th) {
        if (th instanceof RocketResponseException) {
            RocketResponseException rocketResponseException = (RocketResponseException) th;
            if (!rocketResponseException.isNetworkError()) {
                th = rocketResponseException.getGenericRequestResponseData();
                if (th != null) {
                    th = th.getErrors();
                    if (th == null) {
                        th = context.getString(C0859R.string.error_occur);
                        Intrinsics.checkExpressionValueIsNotNull(th, "context.getString(R.string.error_occur)");
                    }
                    return th;
                }
            }
        }
        context = context.getString(C0859R.string.error_occur);
        Intrinsics.checkExpressionValueIsNotNull(context, "context.getString(R.string.error_occur)");
        return context;
    }

    private final void unknownKind(Kind kind) {
        UIHelper.showSnack(getView(), "Unknown kind ".concat(String.valueOf(kind)));
        hideFields();
    }

    private final void requestInn(Kind kind, boolean z, View view, TextView textView, TextView textView2, ViewField viewField, ViewField viewField2, ViewField viewField3) {
        if (z) {
            Intrinsics.checkParameterIsNotNull(view, "$receiver");
            view.setVisibility(0);
            textView.setEnabled(false);
            textView2.setEnabled(false);
            z = this.rocketAPI;
            if (!z) {
                Intrinsics.throwUninitializedPropertyAccessException("rocketAPI");
            }
            this.getInnSubscription = z.getInn(viewField.getCleanValue(), kind.name(), this.transferViewModel.getBik().getCleanValue(), this.transferViewModel.getCorr_number().getCleanValue()).observeOn(AndroidSchedulers.mainThread()).subscribe((Action1) new TransferBankFragment$requestInn$1(this, view, viewField2, viewField3, textView, textView2), (Action1) new TransferBankFragment$requestInn$2(this, textView, textView2, view));
        }
    }

    private final void requestBik(boolean z) {
        if (z) {
            z = this.rocketAPI;
            if (!z) {
                Intrinsics.throwUninitializedPropertyAccessException("rocketAPI");
            }
            this.getBikSubscription = z.getBiks(this.transferViewModel.getBik().getCleanValue()).observeOn(AndroidSchedulers.mainThread()).subscribe((Action1) new TransferBankFragment$requestBik$1(this), (Action1) new TransferBankFragment$requestBik$2(this));
            return;
        }
        hideFields();
        this.transferViewModel.getBank_name().setValue(null);
        this.transferViewModel.getCorr_bank().setValue(null);
        this.transferViewModel.getLogo().setValue("");
        this.transferViewModel.notifyPropertyChanged(8);
    }

    private final void loadBikLogo() {
        if (this.transferViewModel.getLogo().getValue() != null) {
            View view = this.fragmentView;
            if (view == null) {
                Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
            }
            ImageView imageView = (ImageView) view.findViewById(C0859R.id.img_logo);
            if (imageView == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.ImageView");
            }
            String value = this.transferViewModel.getLogo().getValue();
            CropCircleTransformation cropCircleTransformation = this.cropCircleTransformation;
            if (cropCircleTransformation == null) {
                Intrinsics.throwUninitializedPropertyAccessException("cropCircleTransformation");
            }
            ImageHelper.loadRound(imageView, value, C0859R.drawable.ic_perevody_unknown_card, cropCircleTransformation);
        }
    }

    private final void showDateChooseDialog() {
        new Builder(getActivity()).setTitle(C0859R.string.pick_date).setItems(C0859R.array.choose_date_dialog_array, new TransferBankFragment$showDateChooseDialog$1(this)).create().show();
    }

    private final void showDatePeriodChooseDialog() {
        DatePeriodChooseDialog datePeriodChooseDialog = new DatePeriodChooseDialog();
        if (this.budgetViewModel.getTax_period_date() != null && (this.budgetViewModel.getTax_period_date() instanceof Period)) {
            Bundle bundle = new Bundle();
            bundle.putSerializable(DatePeriodChooseDialog.Companion.getDATE_PERIOD(), this.budgetViewModel.getTax_period_date());
            datePeriodChooseDialog.setArguments(bundle);
        }
        datePeriodChooseDialog.onChooseDate(new TransferBankFragment$showDatePeriodChooseDialog$2(this));
        getChildFragmentManager().beginTransaction().add(datePeriodChooseDialog, null).commit();
    }

    private final void showDatePickerDialog() {
        Calendar instance = Calendar.getInstance();
        BudgetDate tax_period_date = this.budgetViewModel.getTax_period_date();
        if (tax_period_date != null && (tax_period_date instanceof Date)) {
            Date date = (Date) tax_period_date;
            Integer year = date.getYear();
            instance.set(1, year != null ? year.intValue() : instance.get(1));
            year = date.getMonth();
            instance.set(2, year != null ? year.intValue() : instance.get(2));
            Integer day = date.getDay();
            instance.set(5, day != null ? day.intValue() : instance.get(5));
        }
        new DatePickerDialog(getContext(), new TransferBankFragment$showDatePickerDialog$1(this), instance.get(1), instance.get(2), instance.get(5)).show();
    }

    private final void showDateCustomDialog() {
        FragmentActivity activity = getActivity();
        if (activity == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
        View inflate = activity.getLayoutInflater().inflate(C0859R.layout.edit_text_dialog, null);
        Intrinsics.checkExpressionValueIsNotNull(inflate, "view");
        RocketEditText rocketEditText = (RocketEditText) inflate.findViewById(C0859R.id.editText);
        Builder builder = new Builder(getActivity());
        BudgetDate tax_period_date = this.budgetViewModel.getTax_period_date();
        if (tax_period_date != null && (tax_period_date instanceof Custom)) {
            rocketEditText.setText(((Custom) tax_period_date).getValue());
            Intrinsics.checkExpressionValueIsNotNull(rocketEditText, "editText");
            rocketEditText.setSelection(rocketEditText.getText().length());
        }
        builder.setTitle(C0859R.string.enter_tax_date_period);
        builder.setView(inflate);
        if (VERSION.SDK_INT > 16) {
            builder.setOnDismissListener(new TransferBankFragment$showDateCustomDialog$1(this, rocketEditText));
        }
        builder.setPositiveButton(C0859R.string.ok, new TransferBankFragment$showDateCustomDialog$2(this, rocketEditText));
        builder.setNegativeButton(C0859R.string.cancel, new TransferBankFragment$showDateCustomDialog$3(this, rocketEditText));
        builder.create().show();
        inflate = this.fragmentView;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentView");
        }
        inflate.post(new TransferBankFragment$showDateCustomDialog$4(rocketEditText));
    }

    private final void hideKeyboard(EditText editText) {
        if (editText != null) {
            editText.postDelayed(new TransferBankFragment$hideKeyboard$1(editText), 300);
        }
    }

    public final void onPause() {
        unsubscribe(this.validSubscription);
        unsubscribe(this.bikValidSubscription);
        unsubscribe(this.innValidSubscription);
        unsubscribe(this.getInnSubscription);
        unsubscribe(this.getBikSubscription);
        unsubscribe(this.userSubscription);
        hidePopup();
        super.onPause();
    }

    public final void onSaveInstanceState(Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "outState");
        super.onSaveInstanceState(bundle);
        String str = KEY_TRANSFER_MAP;
        Map fields = this.transferViewModel.getFields();
        Collection arrayList = new ArrayList(fields.size());
        for (Entry entry : fields.entrySet()) {
            arrayList.add(new Pair(entry.getKey(), ((ViewField) entry.getValue()).getValue()));
        }
        bundle.putParcelable(str, CollectionUtilsKt.toBundle(kotlin.collections.AbstractList.Companion.toMap((List) arrayList)));
        ViewModelObservable additionalViewModel = this.transferViewModel.getAdditionalViewModel();
        if (additionalViewModel != null) {
            HashMap fields2 = additionalViewModel.getFields();
            if (fields2 != null) {
                Map map = fields2;
                Collection arrayList2 = new ArrayList(map.size());
                for (Entry entry2 : map.entrySet()) {
                    arrayList2.add(new Pair(entry2.getKey(), ((ViewField) entry2.getValue()).getValue()));
                }
                map = kotlin.collections.AbstractList.Companion.toMap((List) arrayList2);
                if (map != null) {
                    bundle.putParcelable(KEY_ANDANCED_MAP, CollectionUtilsKt.toBundle(map));
                }
            }
        }
        bundle.putSerializable(KEY_KIND, this.remittanceKind);
        bundle.putString(KEY_MESSAGE, this.message);
        bundle.putString(KEY_EXTRA, this.extra);
        bundle.putBoolean(KEY_GKH, this.isGkh);
        bundle.putString(KEY_BASIS, this.budgetViewModel.getSelectedTaxBasis().getCode());
        bundle.putString(KEY_STATUS, this.budgetViewModel.getSelectedStatus().getCode());
        BudgetDate tax_period_date = this.budgetViewModel.getTax_period_date();
        if (tax_period_date != null) {
            String str2 = KEY_PERIOD;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(tax_period_date.kind());
            stringBuilder.append('|');
            stringBuilder.append(tax_period_date.value());
            bundle.putString(str2, stringBuilder.toString());
        }
    }

    public final boolean onBackPressed() {
        if (this.popup == null) {
            return super.onBackPressed();
        }
        hidePopup();
        return true;
    }
}
