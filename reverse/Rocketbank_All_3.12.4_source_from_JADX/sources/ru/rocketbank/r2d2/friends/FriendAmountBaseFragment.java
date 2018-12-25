package ru.rocketbank.r2d2.friends;

import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.Html;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.appevents.AppEventsConstants;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import java.util.HashMap;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import ru.rocketbank.core.events.NextButtonEvent;
import ru.rocketbank.core.manager.CurrencyManager;
import ru.rocketbank.core.model.contact.Contact;
import ru.rocketbank.core.model.transfers.friend.FriendTransfersRequestData;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.utils.MathEval;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.core.widgets.CalculatorKeyboard;
import ru.rocketbank.core.widgets.ContactAvatarView;
import ru.rocketbank.core.widgets.RocketTextInputLayout;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import ru.rocketbank.r2d2.widget.AccountWidget;
import rx.functions.Action1;

/* compiled from: FriendAmountBaseFragment.kt */
public abstract class FriendAmountBaseFragment extends RocketFragment {
    public static final Companion Companion = new Companion();
    private static final int REQUEST_CODE = 999;
    private HashMap _$_findViewCache;
    protected AccountWidget accountsView;
    private double amount;
    protected TextWatcher amountTextWatcher;
    private Contact contact;
    protected LinearLayout content;
    protected String currencyCode = this.currencyManager.getCurrencySymbolRub();
    private final CurrencyManager currencyManager = RocketApplication.Companion.getInjector().getCurrencyManager();
    protected EditText editTextAmount;
    private EditText edittextComment;
    public MoneyFormatter floorMoneyFormatter;
    protected ContactAvatarView imageviewRecipient;
    private boolean isNextButtonEnabled;
    private MathEval mathEval = new MathEval();
    protected TextView textviewRecipient;

    /* compiled from: FriendAmountBaseFragment.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
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

    public abstract boolean accountsVisible();

    public abstract int getNextButtonText();

    protected abstract boolean isTransfer();

    public final boolean isZero(double d) {
        return d <= 0.001d;
    }

    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public abstract void onTextChanged();

    private final void setContact(Contact contact) {
        this.contact = contact;
    }

    protected final Contact getContact() {
        return this.contact;
    }

    protected final double getAmount() {
        return this.amount;
    }

    protected final void setAmount(double d) {
        this.amount = d;
    }

    protected final ContactAvatarView getImageviewRecipient() {
        ContactAvatarView contactAvatarView = this.imageviewRecipient;
        if (contactAvatarView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("imageviewRecipient");
        }
        return contactAvatarView;
    }

    protected final void setImageviewRecipient(ContactAvatarView contactAvatarView) {
        Intrinsics.checkParameterIsNotNull(contactAvatarView, "<set-?>");
        this.imageviewRecipient = contactAvatarView;
    }

    protected final TextView getTextviewRecipient() {
        TextView textView = this.textviewRecipient;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("textviewRecipient");
        }
        return textView;
    }

    protected final void setTextviewRecipient(TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
        this.textviewRecipient = textView;
    }

    protected final LinearLayout getContent() {
        LinearLayout linearLayout = this.content;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException(Param.CONTENT);
        }
        return linearLayout;
    }

    protected final void setContent(LinearLayout linearLayout) {
        Intrinsics.checkParameterIsNotNull(linearLayout, "<set-?>");
        this.content = linearLayout;
    }

    private final void setNextButtonEnabled(boolean z) {
        this.isNextButtonEnabled = z;
    }

    public final boolean isNextButtonEnabled() {
        return this.isNextButtonEnabled;
    }

    protected final EditText getEditTextAmount() {
        EditText editText = this.editTextAmount;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editTextAmount");
        }
        return editText;
    }

    protected final void setEditTextAmount(EditText editText) {
        Intrinsics.checkParameterIsNotNull(editText, "<set-?>");
        this.editTextAmount = editText;
    }

    public final MoneyFormatter getFloorMoneyFormatter() {
        MoneyFormatter moneyFormatter = this.floorMoneyFormatter;
        if (moneyFormatter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("floorMoneyFormatter");
        }
        return moneyFormatter;
    }

    public final void setFloorMoneyFormatter(MoneyFormatter moneyFormatter) {
        Intrinsics.checkParameterIsNotNull(moneyFormatter, "<set-?>");
        this.floorMoneyFormatter = moneyFormatter;
    }

    public final CurrencyManager getCurrencyManager() {
        return this.currencyManager;
    }

    protected final AccountWidget getAccountsView() {
        AccountWidget accountWidget = this.accountsView;
        if (accountWidget == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountsView");
        }
        return accountWidget;
    }

    protected final void setAccountsView(AccountWidget accountWidget) {
        Intrinsics.checkParameterIsNotNull(accountWidget, "<set-?>");
        this.accountsView = accountWidget;
    }

    protected final TextWatcher getAmountTextWatcher() {
        TextWatcher textWatcher = this.amountTextWatcher;
        if (textWatcher == null) {
            Intrinsics.throwUninitializedPropertyAccessException("amountTextWatcher");
        }
        return textWatcher;
    }

    protected final void setAmountTextWatcher(TextWatcher textWatcher) {
        Intrinsics.checkParameterIsNotNull(textWatcher, "<set-?>");
        this.amountTextWatcher = textWatcher;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        bundle = this.currencyManager;
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
        Authorization authorization = RocketApplication.Companion.getInjector().getAuthorization();
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(authorization, "authorization");
        MoneyFormatter moneyFormatter = new MoneyFormatter(context, authorization, bundle);
        moneyFormatter.setFloorAmount(true);
        this.floorMoneyFormatter = moneyFormatter;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        layoutInflater = layoutInflater.inflate(C0859R.layout.fragment_friend_amount_base, viewGroup, false);
        if (accountsVisible() != null) {
            viewGroup = layoutInflater.findViewById(C0859R.id.sourceViewPager);
            if (viewGroup == null) {
                throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.widget.AccountWidget");
            }
            this.accountsView = (AccountWidget) viewGroup;
            viewGroup = this.accountsView;
            if (viewGroup == null) {
                Intrinsics.throwUninitializedPropertyAccessException("accountsView");
            }
            View view = viewGroup;
            Intrinsics.checkParameterIsNotNull(view, "$receiver");
            view.setVisibility(0);
        }
        viewGroup = layoutInflater.findViewById(C0859R.id.edittext_amount);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.EditText");
        }
        this.editTextAmount = (EditText) viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.edittext_comment);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.EditText");
        }
        this.edittextComment = (EditText) viewGroup;
        viewGroup = getArguments();
        if (viewGroup == null) {
            Intrinsics.throwNpe();
        }
        viewGroup = viewGroup.getSerializable("contact");
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.model.contact.Contact");
        }
        this.contact = (Contact) viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.content);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.LinearLayout");
        }
        this.content = (LinearLayout) viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.avatar);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.ContactAvatarView");
        }
        this.imageviewRecipient = (ContactAvatarView) viewGroup;
        viewGroup = this.imageviewRecipient;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("imageviewRecipient");
        }
        viewGroup.setContact(this.contact);
        viewGroup = layoutInflater.findViewById(C0859R.id.name);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
        }
        this.textviewRecipient = (TextView) viewGroup;
        viewGroup = this.textviewRecipient;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("textviewRecipient");
        }
        Contact contact = this.contact;
        if (contact == null) {
            Intrinsics.throwNpe();
        }
        viewGroup.setText(contact.getName());
        viewGroup = layoutInflater.findViewById(C0859R.id.description);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
        }
        Fragment fragment;
        ContactAvatarView contactAvatarView;
        View view2;
        TextView textView;
        TextWatcher textWatcher;
        TextView textView2 = (TextView) viewGroup;
        contact = this.contact;
        if (contact == null) {
            Intrinsics.throwNpe();
        }
        if (contact.isRocket()) {
            contact = this.contact;
            if (contact == null) {
                Intrinsics.throwNpe();
            }
            if (Utils.isNotBlank(contact.getName())) {
                contact = this.contact;
                if (contact == null) {
                    Intrinsics.throwNpe();
                }
                if (Utils.isNotBlank(contact.getServerName())) {
                    contact = this.contact;
                    if (contact == null) {
                        Intrinsics.throwNpe();
                    }
                    String name = contact.getName();
                    if (name == null) {
                        Intrinsics.throwNpe();
                    }
                    CharSequence charSequence = name;
                    boolean z = false;
                    int length = charSequence.length() - 1;
                    int i = z;
                    while (i <= length) {
                        int i2 = charSequence.charAt(!z ? i : length) <= ' ' ? 1 : false;
                        if (z) {
                            if (i2 == 0) {
                                break;
                            }
                            length--;
                        } else if (i2 == 0) {
                            z = true;
                        } else {
                            i++;
                        }
                    }
                    name = charSequence.subSequence(i, length + 1).toString();
                    Contact contact2 = this.contact;
                    if (contact2 == null) {
                        Intrinsics.throwNpe();
                    }
                    CharSequence serverName = contact2.getServerName();
                    boolean z2 = false;
                    int length2 = serverName.length() - 1;
                    length = z2;
                    while (length <= length2) {
                        int i3 = serverName.charAt(!z2 ? length : length2) <= ' ' ? 1 : false;
                        if (z2) {
                            if (i3 == 0) {
                                break;
                            }
                            length2--;
                        } else if (i3 == 0) {
                            z2 = true;
                        } else {
                            length++;
                        }
                    }
                    if ((Intrinsics.areEqual(name, serverName.subSequence(length, length2 + 1).toString()) ^ 1) != 0) {
                        textView2.setVisibility(0);
                        Contact contact3 = this.contact;
                        if (contact3 == null) {
                            Intrinsics.throwNpe();
                        }
                        textView2.setText(contact3.getServerName());
                        viewGroup = this.editTextAmount;
                        if (viewGroup == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("editTextAmount");
                        }
                        viewGroup.requestFocusFromTouch();
                        clearTransitionNames();
                        viewGroup = getLocalEventBus();
                        fragment = this;
                        contactAvatarView = this.imageviewRecipient;
                        if (contactAvatarView == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("imageviewRecipient");
                        }
                        view2 = contactAvatarView;
                        textView = this.textviewRecipient;
                        if (textView == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("textviewRecipient");
                        }
                        viewGroup.post(new SharedElementsReadyEvent(fragment, view2, textView));
                        this.amountTextWatcher = (TextWatcher) new FriendAmountBaseFragment$onCreateView$3(this, layoutInflater);
                        viewGroup = this.editTextAmount;
                        if (viewGroup == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("editTextAmount");
                        }
                        textWatcher = this.amountTextWatcher;
                        if (textWatcher == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("amountTextWatcher");
                        }
                        viewGroup.addTextChangedListener(textWatcher);
                        viewGroup = this.editTextAmount;
                        if (viewGroup == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("editTextAmount");
                        }
                        viewGroup.setOnFocusChangeListener(new FriendAmountBaseFragment$onCreateView$4(layoutInflater));
                        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "rootView");
                        ((CalculatorKeyboard) layoutInflater.findViewById(C0859R.id.calculatorKeyboard)).getOperatorObservable().subscribe((Action1) new FriendAmountBaseFragment$onCreateView$5(this));
                        if (bundle == null) {
                            viewGroup = this.editTextAmount;
                            if (viewGroup == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("editTextAmount");
                            }
                            viewGroup.setText((CharSequence) AppEventsConstants.EVENT_PARAM_VALUE_NO);
                        }
                        viewGroup = "Напишите <font color='#2196f3'>#тег</font> или комментарий";
                        bundle = layoutInflater.findViewById(C0859R.id.inputLayoutComment);
                        if (bundle != null) {
                            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextInputLayout");
                        }
                        ((RocketTextInputLayout) bundle).setHint(Html.fromHtml(viewGroup));
                        return layoutInflater;
                    }
                }
            }
        }
        textView2.setVisibility(8);
        viewGroup = this.editTextAmount;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editTextAmount");
        }
        viewGroup.requestFocusFromTouch();
        clearTransitionNames();
        viewGroup = getLocalEventBus();
        fragment = this;
        contactAvatarView = this.imageviewRecipient;
        if (contactAvatarView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("imageviewRecipient");
        }
        view2 = contactAvatarView;
        textView = this.textviewRecipient;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("textviewRecipient");
        }
        viewGroup.post(new SharedElementsReadyEvent(fragment, view2, textView));
        this.amountTextWatcher = (TextWatcher) new FriendAmountBaseFragment$onCreateView$3(this, layoutInflater);
        viewGroup = this.editTextAmount;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editTextAmount");
        }
        textWatcher = this.amountTextWatcher;
        if (textWatcher == null) {
            Intrinsics.throwUninitializedPropertyAccessException("amountTextWatcher");
        }
        viewGroup.addTextChangedListener(textWatcher);
        viewGroup = this.editTextAmount;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editTextAmount");
        }
        viewGroup.setOnFocusChangeListener(new FriendAmountBaseFragment$onCreateView$4(layoutInflater));
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "rootView");
        ((CalculatorKeyboard) layoutInflater.findViewById(C0859R.id.calculatorKeyboard)).getOperatorObservable().subscribe((Action1) new FriendAmountBaseFragment$onCreateView$5(this));
        if (bundle == null) {
            viewGroup = this.editTextAmount;
            if (viewGroup == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editTextAmount");
            }
            viewGroup.setText((CharSequence) AppEventsConstants.EVENT_PARAM_VALUE_NO);
        }
        viewGroup = "Напишите <font color='#2196f3'>#тег</font> или комментарий";
        bundle = layoutInflater.findViewById(C0859R.id.inputLayoutComment);
        if (bundle != null) {
            ((RocketTextInputLayout) bundle).setHint(Html.fromHtml(viewGroup));
            return layoutInflater;
        }
        throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextInputLayout");
    }

    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        bundle = this.editTextAmount;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editTextAmount");
        }
        bundle.addTextChangedListener(new FriendAmountBaseFragment$onViewCreated$1(this));
        view.postDelayed((Runnable) new FriendAmountBaseFragment$onViewCreated$2(this), 500);
    }

    private final void updateText(android.view.View r19, android.text.TextWatcher r20) {
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
        r18 = this;
        r0 = r18;
        r1 = r19;
        r2 = r20;
        r3 = ru.rocketbank.r2d2.C0859R.id.evaluationResult;
        r3 = r1.findViewById(r3);
        r3 = (ru.rocketbank.core.widgets.RocketTextView) r3;
        r4 = r0.editTextAmount;
        if (r4 != 0) goto L_0x0017;
    L_0x0012:
        r5 = "editTextAmount";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r5);
    L_0x0017:
        r4.removeTextChangedListener(r2);
        r4 = r18.getAmountString();
        r5 = r0.editTextAmount;
        if (r5 != 0) goto L_0x0027;
    L_0x0022:
        r6 = "editTextAmount";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r6);
    L_0x0027:
        r5 = r5.getSelectionStart();
        r6 = r4;
        r6 = (java.lang.CharSequence) r6;
        r7 = 0;
        r8 = r7;
    L_0x0030:
        r9 = r6.length();
        r10 = 1;
        if (r8 >= r9) goto L_0x004c;
    L_0x0037:
        r9 = r6.charAt(r8);
        r11 = ru.rocketbank.core.utils.MathEval.MATH_OPERATORS;
        r9 = java.lang.Character.valueOf(r9);
        r9 = r11.contains(r9);
        if (r9 == 0) goto L_0x0049;
    L_0x0047:
        r8 = r10;
        goto L_0x004d;
    L_0x0049:
        r8 = r8 + 1;
        goto L_0x0030;
    L_0x004c:
        r8 = r7;
    L_0x004d:
        if (r8 == 0) goto L_0x00e1;
    L_0x004f:
        r6 = "evaluationResult";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r3, r6);
        r3.setVisibility(r7);
        r6 = 2131820946; // 0x7f110192 float:1.9274621E38 double:1.0532594925E-314;
        r8 = r0.mathEval;	 Catch:{ Exception -> 0x00b5 }
        r8 = r8.evaluate(r4);	 Catch:{ Exception -> 0x00b5 }
        r0.amount = r8;	 Catch:{ Exception -> 0x00b5 }
        r8 = r0.amount;	 Catch:{ Exception -> 0x00b5 }
        r13 = kotlin.jvm.internal.DoubleCompanionObject.INSTANCE;	 Catch:{ Exception -> 0x00b5 }
        r13 = kotlin.jvm.internal.DoubleCompanionObject.getNEGATIVE_INFINITY();	 Catch:{ Exception -> 0x00b5 }
        r15 = (r8 > r13 ? 1 : (r8 == r13 ? 0 : -1));	 Catch:{ Exception -> 0x00b5 }
        if (r15 != 0) goto L_0x0073;	 Catch:{ Exception -> 0x00b5 }
    L_0x006e:
        r8 = "-∞";	 Catch:{ Exception -> 0x00b5 }
    L_0x0070:
        r11 = 0;	 Catch:{ Exception -> 0x00b5 }
        goto L_0x00a5;	 Catch:{ Exception -> 0x00b5 }
    L_0x0073:
        r8 = r0.amount;	 Catch:{ Exception -> 0x00b5 }
        r13 = kotlin.jvm.internal.DoubleCompanionObject.INSTANCE;	 Catch:{ Exception -> 0x00b5 }
        r13 = kotlin.jvm.internal.DoubleCompanionObject.getPOSITIVE_INFINITY();	 Catch:{ Exception -> 0x00b5 }
        r15 = (r8 > r13 ? 1 : (r8 == r13 ? 0 : -1));	 Catch:{ Exception -> 0x00b5 }
        if (r15 != 0) goto L_0x0082;	 Catch:{ Exception -> 0x00b5 }
    L_0x007f:
        r8 = "+∞";	 Catch:{ Exception -> 0x00b5 }
        goto L_0x0070;	 Catch:{ Exception -> 0x00b5 }
    L_0x0082:
        r8 = r0.amount;	 Catch:{ Exception -> 0x00b5 }
        r8 = java.lang.Double.isNaN(r8);	 Catch:{ Exception -> 0x00b5 }
        if (r8 == 0) goto L_0x008d;	 Catch:{ Exception -> 0x00b5 }
    L_0x008a:
        r8 = "¯\\_(ツ)_/¯";	 Catch:{ Exception -> 0x00b5 }
        goto L_0x0070;	 Catch:{ Exception -> 0x00b5 }
    L_0x008d:
        r8 = r0.amount;	 Catch:{ Exception -> 0x00b5 }
        r13 = r0.floorMoneyFormatter;	 Catch:{ Exception -> 0x00b5 }
        if (r13 != 0) goto L_0x0098;	 Catch:{ Exception -> 0x00b5 }
    L_0x0093:
        r14 = "floorMoneyFormatter";	 Catch:{ Exception -> 0x00b5 }
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r14);	 Catch:{ Exception -> 0x00b5 }
    L_0x0098:
        r14 = r0.amount;	 Catch:{ Exception -> 0x00b5 }
        r11 = r0.currencyCode;	 Catch:{ Exception -> 0x00b5 }
        r11 = r13.format(r14, r11, r7);	 Catch:{ Exception -> 0x00b5 }
        r16 = r8;	 Catch:{ Exception -> 0x00b5 }
        r8 = r11;	 Catch:{ Exception -> 0x00b5 }
        r11 = r16;	 Catch:{ Exception -> 0x00b5 }
    L_0x00a5:
        r0.amount = r11;	 Catch:{ Exception -> 0x00b5 }
        r9 = new java.lang.Object[r10];	 Catch:{ Exception -> 0x00b5 }
        r9[r7] = r8;	 Catch:{ Exception -> 0x00b5 }
        r8 = r0.getString(r6, r9);	 Catch:{ Exception -> 0x00b5 }
        r8 = (java.lang.CharSequence) r8;	 Catch:{ Exception -> 0x00b5 }
        r3.setText(r8);	 Catch:{ Exception -> 0x00b5 }
        goto L_0x00c8;
    L_0x00b5:
        r8 = 0;
        r0.amount = r8;
        r8 = new java.lang.Object[r10];
        r9 = "0 ₽";
        r8[r7] = r9;
        r6 = r0.getString(r6, r8);
        r6 = (java.lang.CharSequence) r6;
        r3.setText(r6);
    L_0x00c8:
        r3 = ru.rocketbank.r2d2.C0859R.id.scrollView;
        r1 = r1.findViewById(r3);
        r1 = (android.widget.ScrollView) r1;
        r3 = r0.editTextAmount;
        if (r3 != 0) goto L_0x00d9;
    L_0x00d4:
        r6 = "editTextAmount";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r6);
    L_0x00d9:
        r3 = r3.getTop();
        r1.smoothScrollTo(r7, r3);
        goto L_0x0127;
    L_0x00e1:
        r1 = "evaluationResult";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r3, r1);
        r1 = 8;
        r3.setVisibility(r1);
        r11 = java.lang.Double.parseDouble(r4);	 Catch:{ NumberFormatException -> 0x00f0 }
        goto L_0x00f2;
    L_0x00f0:
        r11 = 0;
    L_0x00f2:
        r0.amount = r11;
        r1 = r6.length();
        if (r1 != 0) goto L_0x00fb;
    L_0x00fa:
        r7 = r10;
    L_0x00fb:
        if (r7 != 0) goto L_0x0105;
    L_0x00fd:
        r6 = r0.amount;
        r8 = 0;
        r1 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1));
        if (r1 != 0) goto L_0x0108;
    L_0x0105:
        r4 = "0";
        r5 = r10;
    L_0x0108:
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r1.append(r4);
        r3 = 32;
        r1.append(r3);
        r3 = r0.currencyCode;
        r1.append(r3);
        r4 = r1.toString();
        r1 = r4.length();
        r1 = r1 + -2;
        if (r5 <= r1) goto L_0x0127;
    L_0x0126:
        r5 = r1;
    L_0x0127:
        r1 = r0.editTextAmount;
        if (r1 != 0) goto L_0x0130;
    L_0x012b:
        r3 = "editTextAmount";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r3);
    L_0x0130:
        r3 = r4;
        r3 = (java.lang.CharSequence) r3;
        r1.setText(r3);
        r1 = r0.editTextAmount;
        if (r1 != 0) goto L_0x013f;
    L_0x013a:
        r3 = "editTextAmount";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r3);
    L_0x013f:
        r3 = r4.length();
        if (r5 <= r3) goto L_0x0149;
    L_0x0145:
        r5 = r4.length();
    L_0x0149:
        r1.setSelection(r5);
        r1 = r0.editTextAmount;
        if (r1 != 0) goto L_0x0155;
    L_0x0150:
        r3 = "editTextAmount";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r3);
    L_0x0155:
        r1.addTextChangedListener(r2);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.friends.FriendAmountBaseFragment.updateText(android.view.View, android.text.TextWatcher):void");
    }

    protected final String getAmountString() {
        StringBuilder stringBuilder = new StringBuilder("[0-9]||");
        List list = MathEval.MATH_OPERATORS;
        Intrinsics.checkExpressionValueIsNotNull(list, "MathEval.MATH_OPERATORS");
        stringBuilder.append(CollectionsKt.joinToString$default$1494b5c(list, ")|(\\", "(\\", ")", 0, null, null, 56));
        Regex regex = new Regex(stringBuilder.toString());
        EditText editText = this.editTextAmount;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editTextAmount");
        }
        CharSequence obj = editText.getText().toString();
        Appendable stringBuilder2 = new StringBuilder();
        int length = obj.length();
        for (int i = 0; i < length; i++) {
            char charAt = obj.charAt(i);
            if (regex.matches(String.valueOf(charAt))) {
                stringBuilder2.append(charAt);
            }
        }
        String stringBuilder3 = ((StringBuilder) stringBuilder2).toString();
        Intrinsics.checkExpressionValueIsNotNull(stringBuilder3, "filterTo(StringBuilder(), predicate).toString()");
        if (stringBuilder3 == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
        }
        stringBuilder3 = new Regex(" ").replace(StringsKt.trim(stringBuilder3).toString(), "");
        if (!StringsKt.startsWith$default(stringBuilder3, AppEventsConstants.EVENT_PARAM_VALUE_NO, false, 2, null)) {
            return stringBuilder3;
        }
        return new Regex(AppEventsConstants.EVENT_PARAM_VALUE_NO).replaceFirst(stringBuilder3, "");
    }

    private final void sendMoney(String str, Contact contact) {
        if (isZero(this.amount)) {
            str = new StringBuilder("Пожалуйста, исправьте следующие ошибки:\n");
            str.append("Сумма должна быть больше 0.\n");
            str = str.toString();
            Intrinsics.checkExpressionValueIsNotNull(str, "errorMessage.toString()");
            showAlert(str);
            return;
        }
        onRequestDataFilled$default(this, contact, this.amount, str, null, 8, null);
    }

    public static /* bridge */ /* synthetic */ void onRequestDataFilled$default(FriendAmountBaseFragment friendAmountBaseFragment, Contact contact, double d, String str, String str2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onRequestDataFilled");
        }
        if ((i & 8) != 0) {
            str2 = null;
        }
        friendAmountBaseFragment.onRequestDataFilled(contact, d, str, str2);
    }

    protected void onRequestDataFilled(Contact contact, double d, String str, String str2) {
        Intrinsics.checkParameterIsNotNull(contact, "contact");
        Intrinsics.checkParameterIsNotNull(str, "comment");
        FriendTransfersRequestData friendTransfersRequestData = new FriendTransfersRequestData(contact, d, str, str2);
        Utils.closeKeyboardIfExists(getActivity());
        startActivityForResult(FriendsStatusActivity.createIntent(getActivity(), friendTransfersRequestData, isTransfer()), REQUEST_CODE);
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == REQUEST_CODE && i2 == -1) {
            i = getActivity();
            if (i == 0) {
                Intrinsics.throwNpe();
            }
            i.finish();
        }
    }

    public final void clearTransitionNames() {
        if (VERSION.SDK_INT >= 21) {
            ContactAvatarView contactAvatarView = this.imageviewRecipient;
            if (contactAvatarView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("imageviewRecipient");
            }
            contactAvatarView.setTransitionName(null);
            TextView textView = this.textviewRecipient;
            if (textView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("textviewRecipient");
            }
            textView.setTransitionName(null);
            LinearLayout linearLayout = this.content;
            if (linearLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException(Param.CONTENT);
            }
            linearLayout.setTransitionName(null);
        }
    }

    public final void setTransitionNames(String str, String str2, String str3) {
        if (VERSION.SDK_INT >= 21) {
            ContactAvatarView contactAvatarView = this.imageviewRecipient;
            if (contactAvatarView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("imageviewRecipient");
            }
            contactAvatarView.setTransitionName(str);
            str = this.textviewRecipient;
            if (str == null) {
                Intrinsics.throwUninitializedPropertyAccessException("textviewRecipient");
            }
            str.setTransitionName(str2);
            str = this.content;
            if (str == null) {
                Intrinsics.throwUninitializedPropertyAccessException(Param.CONTENT);
            }
            str.setTransitionName(str3);
        }
    }

    public final void onNextButtonClick() {
        if (this.edittextComment != null) {
            EditText editText = this.edittextComment;
            if (editText == null) {
                Intrinsics.throwNpe();
            }
            String obj = editText.getText().toString();
            Contact contact = this.contact;
            if (contact == null) {
                Intrinsics.throwNpe();
            }
            sendMoney(obj, contact);
        }
    }

    protected final void enableNextButton() {
        this.isNextButtonEnabled = true;
        getLocalEventBus().post(new NextButtonEvent(this, this.isNextButtonEnabled));
    }

    protected final void disableNextButton() {
        this.isNextButtonEnabled = false;
        getLocalEventBus().post(new NextButtonEvent(this, this.isNextButtonEnabled));
    }
}
