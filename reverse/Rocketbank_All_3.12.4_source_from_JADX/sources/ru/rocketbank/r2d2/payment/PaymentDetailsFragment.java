package ru.rocketbank.r2d2.payment;

import android.database.Cursor;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.facebook.internal.NativeProtocol;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import jp.wasabeef.glide.transformations.CropCircleTransformation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.provider.Provider;
import ru.rocketbank.core.model.provider.ProviderField;
import ru.rocketbank.core.model.transfers.Template;
import ru.rocketbank.core.model.transfers.Template.ProviderPayment.FieldPayment;
import ru.rocketbank.core.network.api.ProvidersApi;
import ru.rocketbank.core.utils.ImageHelper;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.payment.IPaymentFieldWidget.OnPaymentFieldChangedListener;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;
import rx.schedulers.Schedulers;

/* compiled from: PaymentDetailsFragment.kt */
public final class PaymentDetailsFragment extends PaymentProviderBaseFragment implements OnPaymentFieldChangedListener, SharedTransitionListener {
    public static final Companion Companion = new Companion();
    private static final int PERMISSIONS_READ_CONTACT = 17;
    private static final int PICK_CONTACT_REQUEST = 18;
    private HashMap _$_findViewCache;
    private final LinkedHashMap<String, IPaymentFieldWidget> _paymentFields = new LinkedHashMap();
    private View buttonNextView;
    private CropCircleTransformation cropCircleTransformation;
    private ImageView imageViewIcon;
    private Subscription operatorSubscription;
    private ProviderField pendingField;
    private ProviderField pickContactField;
    private Provider provider;
    public ProvidersApi providersApi;
    private View root;
    private Template template;
    private RocketTextView textViewDescription;
    private RocketTextView textViewProviderName;
    public Toolbar toolbar;
    public View toolbarShadow;

    /* compiled from: PaymentDetailsFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public final PaymentDetailsFragment newInstance(Provider provider, Template template, Bundle bundle) {
            Intrinsics.checkParameterIsNotNull(provider, "provider");
            PaymentDetailsFragment paymentDetailsFragment = new PaymentDetailsFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putAll(bundle);
            bundle2.putParcelable(PaymentProviderBaseFragment.KEY_PAYMENT_PROVIDER, provider);
            if (template != null) {
                bundle2.putSerializable(PaymentProviderBaseFragment.KEY_PAYMENT, template);
            }
            paymentDetailsFragment.setArguments(bundle2);
            return paymentDetailsFragment;
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

    public final ProvidersApi getProvidersApi() {
        ProvidersApi providersApi = this.providersApi;
        if (providersApi == null) {
            Intrinsics.throwUninitializedPropertyAccessException("providersApi");
        }
        return providersApi;
    }

    public final void setProvidersApi(ProvidersApi providersApi) {
        Intrinsics.checkParameterIsNotNull(providersApi, "<set-?>");
        this.providersApi = providersApi;
    }

    public final Toolbar getToolbar() {
        Toolbar toolbar = this.toolbar;
        if (toolbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolbar");
        }
        return toolbar;
    }

    public final void setToolbar(Toolbar toolbar) {
        Intrinsics.checkParameterIsNotNull(toolbar, "<set-?>");
        this.toolbar = toolbar;
    }

    public final View getToolbarShadow() {
        View view = this.toolbarShadow;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolbarShadow");
        }
        return view;
    }

    public final void setToolbarShadow(View view) {
        Intrinsics.checkParameterIsNotNull(view, "<set-?>");
        this.toolbarShadow = view;
    }

    public final void onCreate(Bundle bundle) {
        this.providersApi = getInjector().getProvidersApi();
        super.onCreate(bundle);
        this.cropCircleTransformation = new CropCircleTransformation(getContext());
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final android.view.View onCreateView(android.view.LayoutInflater r5, android.view.ViewGroup r6, android.os.Bundle r7) {
        /*
        r4 = this;
        r0 = "inflater";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r5, r0);
        r0 = r4.getActivity();
        r0 = (android.app.Activity) r0;
        ru.rocketbank.r2d2.Utils.setActionBarUpIndicatorBack(r0);
        r0 = 0;
        r1 = 2131493104; // 0x7f0c00f0 float:1.8609679E38 double:1.053097517E-314;
        r5 = r5.inflate(r1, r6, r0);
        r6 = 2131297240; // 0x7f0903d8 float:1.821242E38 double:1.0530007474E-314;
        r6 = r5.findViewById(r6);
        if (r6 != 0) goto L_0x0027;
    L_0x001f:
        r5 = new kotlin.TypeCastException;
        r6 = "null cannot be cast to non-null type android.support.v7.widget.Toolbar";
        r5.<init>(r6);
        throw r5;
    L_0x0027:
        r6 = (android.support.v7.widget.Toolbar) r6;
        r4.toolbar = r6;
        r6 = 2131297244; // 0x7f0903dc float:1.8212427E38 double:1.0530007493E-314;
        r6 = r5.findViewById(r6);
        r1 = "rootView.findViewById(R.id.toolbarShadow)";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r6, r1);
        r4.toolbarShadow = r6;
        r6 = r4.toolbarShadow;
        if (r6 != 0) goto L_0x0042;
    L_0x003d:
        r1 = "toolbarShadow";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r1);
    L_0x0042:
        r1 = android.os.Build.VERSION.SDK_INT;
        r2 = 21;
        if (r1 < r2) goto L_0x004b;
    L_0x0048:
        r1 = 8;
        goto L_0x004c;
    L_0x004b:
        r1 = r0;
    L_0x004c:
        r6.setVisibility(r1);
        r6 = r4.toolbar;
        if (r6 != 0) goto L_0x0058;
    L_0x0053:
        r1 = "toolbar";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r1);
    L_0x0058:
        r4.setToolbarActionBar(r6);
        if (r7 == 0) goto L_0x0071;
    L_0x005d:
        r6 = "payment_provider";
        r6 = r7.getParcelable(r6);
        r6 = (ru.rocketbank.core.model.provider.Provider) r6;
        r4.provider = r6;
        r6 = "key_pick_contact_field";
        r6 = r7.getParcelable(r6);
        r6 = (ru.rocketbank.core.model.provider.ProviderField) r6;
        r4.pickContactField = r6;
    L_0x0071:
        r6 = r4.provider;
        if (r6 != 0) goto L_0x007b;
    L_0x0075:
        r6 = r4.getPaymentProvider();
        r4.provider = r6;
    L_0x007b:
        r6 = r4.getArguments();
        if (r6 == 0) goto L_0x00af;
    L_0x0081:
        r6 = r4.getArguments();
        if (r6 != 0) goto L_0x008a;
    L_0x0087:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x008a:
        r7 = "payment";
        r6 = r6.containsKey(r7);
        if (r6 == 0) goto L_0x00af;
    L_0x0092:
        r6 = r4.getArguments();
        if (r6 != 0) goto L_0x009b;
    L_0x0098:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x009b:
        r7 = "payment";
        r6 = r6.getSerializable(r7);
        if (r6 != 0) goto L_0x00ab;
    L_0x00a3:
        r5 = new kotlin.TypeCastException;
        r6 = "null cannot be cast to non-null type ru.rocketbank.core.model.transfers.Template";
        r5.<init>(r6);
        throw r5;
    L_0x00ab:
        r6 = (ru.rocketbank.core.model.transfers.Template) r6;
        r4.template = r6;
    L_0x00af:
        r6 = r4.provider;
        if (r6 != 0) goto L_0x00b4;
    L_0x00b3:
        return r5;
    L_0x00b4:
        r6 = 2131296723; // 0x7f0901d3 float:1.821137E38 double:1.053000492E-314;
        r6 = r5.findViewById(r6);
        if (r6 != 0) goto L_0x00c5;
    L_0x00bd:
        r5 = new kotlin.TypeCastException;
        r6 = "null cannot be cast to non-null type android.widget.ImageView";
        r5.<init>(r6);
        throw r5;
    L_0x00c5:
        r6 = (android.widget.ImageView) r6;
        r4.imageViewIcon = r6;
        r6 = 2131297019; // 0x7f0902fb float:1.8211971E38 double:1.053000638E-314;
        r6 = r5.findViewById(r6);
        r4.root = r6;
        r6 = 2131297193; // 0x7f0903a9 float:1.8212324E38 double:1.053000724E-314;
        r6 = r5.findViewById(r6);
        if (r6 != 0) goto L_0x00e3;
    L_0x00db:
        r5 = new kotlin.TypeCastException;
        r6 = "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView";
        r5.<init>(r6);
        throw r5;
    L_0x00e3:
        r6 = (ru.rocketbank.core.widgets.RocketTextView) r6;
        r4.textViewProviderName = r6;
        r6 = 2131297178; // 0x7f09039a float:1.8212294E38 double:1.0530007167E-314;
        r6 = r5.findViewById(r6);
        if (r6 != 0) goto L_0x00f8;
    L_0x00f0:
        r5 = new kotlin.TypeCastException;
        r6 = "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView";
        r5.<init>(r6);
        throw r5;
    L_0x00f8:
        r6 = (ru.rocketbank.core.widgets.RocketTextView) r6;
        r4.textViewDescription = r6;
        r4.updateProvider();
        r6 = r4.provider;
        if (r6 != 0) goto L_0x0106;
    L_0x0103:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x0106:
        r6 = r6.getFields();
        if (r6 == 0) goto L_0x01b9;
    L_0x010c:
        r6 = 2131296394; // 0x7f09008a float:1.8210703E38 double:1.0530003294E-314;
        r6 = r5.findViewById(r6);
        if (r6 != 0) goto L_0x011d;
    L_0x0115:
        r5 = new kotlin.TypeCastException;
        r6 = "null cannot be cast to non-null type android.widget.Button";
        r5.<init>(r6);
        throw r5;
    L_0x011d:
        r6 = (android.widget.Button) r6;
        r7 = 2131821332; // 0x7f110314 float:1.9275404E38 double:1.053259683E-314;
        r6.setText(r7);
        r6.setEnabled(r0);
        r6 = (android.view.View) r6;
        r4.buttonNextView = r6;
        r6 = r4.buttonNextView;
        if (r6 != 0) goto L_0x0133;
    L_0x0130:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x0133:
        r7 = new ru.rocketbank.r2d2.payment.PaymentDetailsFragment$onCreateView$1;
        r7.<init>(r4);
        r7 = (android.view.View.OnClickListener) r7;
        r6.setOnClickListener(r7);
        r6 = 2131297290; // 0x7f09040a float:1.821252E38 double:1.053000772E-314;
        r6 = r5.findViewById(r6);
        if (r6 != 0) goto L_0x014e;
    L_0x0146:
        r5 = new kotlin.TypeCastException;
        r6 = "null cannot be cast to non-null type android.widget.LinearLayout";
        r5.<init>(r6);
        throw r5;
    L_0x014e:
        r6 = (android.widget.LinearLayout) r6;
        r7 = r4.provider;
        if (r7 != 0) goto L_0x0157;
    L_0x0154:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x0157:
        r7 = r7.getFields();
        r7 = r7.iterator();
    L_0x015f:
        r0 = r7.hasNext();
        if (r0 == 0) goto L_0x01b9;
    L_0x0165:
        r0 = r7.next();
        r0 = (ru.rocketbank.core.model.provider.ProviderField) r0;
        r1 = "field";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1);
        r1 = r0.getField_kind();
        if (r1 != 0) goto L_0x0177;
    L_0x0176:
        goto L_0x01ae;
    L_0x0177:
        r2 = r1.hashCode();
        r3 = -1539920204; // 0xffffffffa436aeb4 float:-3.961294E-17 double:NaN;
        if (r2 == r3) goto L_0x01a1;
    L_0x0180:
        r3 = 106642798; // 0x65b3d6e float:4.1234453E-35 double:5.2688543E-316;
        if (r2 == r3) goto L_0x0194;
    L_0x0185:
        r3 = 111972721; // 0x6ac9171 float:6.4912916E-35 double:5.53218747E-316;
        if (r2 == r3) goto L_0x018b;
    L_0x018a:
        goto L_0x01ae;
    L_0x018b:
        r2 = "value";
        r1 = r1.equals(r2);
        if (r1 == 0) goto L_0x01ae;
    L_0x0193:
        goto L_0x019c;
    L_0x0194:
        r2 = "phone";
        r1 = r1.equals(r2);
        if (r1 == 0) goto L_0x01ae;
    L_0x019c:
        r0 = r4.createSimpleRegexpField(r6, r0);
        goto L_0x01b2;
    L_0x01a1:
        r2 = "paymentdate";
        r1 = r1.equals(r2);
        if (r1 == 0) goto L_0x01ae;
    L_0x01a9:
        r0 = r4.createDateField(r6, r0);
        goto L_0x01b2;
    L_0x01ae:
        r0 = r4.createSimpleRegexpField(r6, r0);
    L_0x01b2:
        if (r0 != 0) goto L_0x015f;
    L_0x01b4:
        r4.processFatalRegexpError();
        r5 = 0;
        return r5;
    L_0x01b9:
        r4.clearTransitionNames();
        r6 = r4.getLocalEventBus();
        r7 = new ru.rocketbank.r2d2.friends.SharedElementsReadyEvent;
        r0 = r4;
        r0 = (android.support.v4.app.Fragment) r0;
        r1 = r4.imageViewIcon;
        r1 = (android.view.View) r1;
        r2 = r4.textViewProviderName;
        r2 = (android.view.View) r2;
        r7.<init>(r0, r1, r2);
        r6.post(r7);
        return r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.payment.PaymentDetailsFragment.onCreateView(android.view.LayoutInflater, android.view.ViewGroup, android.os.Bundle):android.view.View");
    }

    public final void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        if (this._paymentFields.isEmpty() == null) {
            view.postDelayed(new PaymentDetailsFragment$onViewCreated$1((IPaymentFieldWidget) this._paymentFields.values().iterator().next()), 500);
        }
    }

    public final void onUserModel(UserModel userModel) {
        Intrinsics.checkParameterIsNotNull(userModel, "userModel");
        super.onUserModel(userModel);
        userModel = this.provider;
        if (userModel != null) {
            userModel = userModel.getFields();
            if (userModel != null) {
                Object obj;
                Collection arrayList = new ArrayList();
                for (Object obj2 : (Iterable) userModel) {
                    ProviderField providerField = (ProviderField) obj2;
                    LinkedHashMap linkedHashMap = this._paymentFields;
                    Intrinsics.checkExpressionValueIsNotNull(providerField, "it");
                    if (linkedHashMap.containsKey(providerField.getName())) {
                        arrayList.add(obj2);
                    }
                }
                for (ProviderField providerField2 : (List) arrayList) {
                    Intrinsics.checkExpressionValueIsNotNull(providerField2, "it");
                    obj2 = this._paymentFields.get(providerField2.getName());
                    if (obj2 == null) {
                        Intrinsics.throwNpe();
                    }
                    Intrinsics.checkExpressionValueIsNotNull(obj2, "_paymentFields[it.name]!!");
                    onPaymentFieldChanged(providerField2, (IPaymentFieldWidget) obj2);
                }
            }
        }
    }

    public final void clearTransitionNames() {
        if (VERSION.SDK_INT >= 21) {
            ImageView imageView = this.imageViewIcon;
            if (imageView == null) {
                Intrinsics.throwNpe();
            }
            imageView.setTransitionName(null);
            RocketTextView rocketTextView = this.textViewProviderName;
            if (rocketTextView == null) {
                Intrinsics.throwNpe();
            }
            rocketTextView.setTransitionName(null);
        }
    }

    public final void onSetTransitionNames(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "a");
        Intrinsics.checkParameterIsNotNull(str2, "n");
        if (VERSION.SDK_INT >= 21) {
            ImageView imageView = this.imageViewIcon;
            if (imageView == null) {
                Intrinsics.throwNpe();
            }
            imageView.setTransitionName(str);
            str = this.textViewProviderName;
            if (str == null) {
                Intrinsics.throwNpe();
            }
            str.setTransitionName(str2);
        }
    }

    private final void updateProvider() {
        ImageView imageView = this.imageViewIcon;
        if (imageView == null) {
            Intrinsics.throwNpe();
        }
        Provider provider = this.provider;
        if (provider == null) {
            Intrinsics.throwNpe();
        }
        String icon = provider.getIcon();
        CropCircleTransformation cropCircleTransformation = this.cropCircleTransformation;
        if (cropCircleTransformation == null) {
            Intrinsics.throwNpe();
        }
        ImageHelper.loadRound(imageView, icon, cropCircleTransformation);
        RocketTextView rocketTextView = this.textViewDescription;
        if (rocketTextView == null) {
            Intrinsics.throwNpe();
        }
        rocketTextView.setVisibility(8);
        if (this.template != null) {
            Template template = this.template;
            if (template == null) {
                Intrinsics.throwNpe();
            }
            if (template.title != null) {
                rocketTextView = this.textViewProviderName;
                if (rocketTextView == null) {
                    Intrinsics.throwNpe();
                }
                Template template2 = this.template;
                if (template2 == null) {
                    Intrinsics.throwNpe();
                }
                rocketTextView.setText(template2.title);
                template = this.template;
                if (template == null) {
                    Intrinsics.throwNpe();
                }
                String str = template.title;
                provider = this.provider;
                if (provider == null) {
                    Intrinsics.throwNpe();
                }
                if (!StringsKt.equals(str, provider.getName(), true)) {
                    rocketTextView = this.textViewDescription;
                    if (rocketTextView == null) {
                        Intrinsics.throwNpe();
                    }
                    provider = this.provider;
                    if (provider == null) {
                        Intrinsics.throwNpe();
                    }
                    rocketTextView.setText(provider.getName());
                    rocketTextView = this.textViewDescription;
                    if (rocketTextView == null) {
                        Intrinsics.throwNpe();
                    }
                    rocketTextView.setVisibility(0);
                    return;
                }
            }
        }
        rocketTextView = this.textViewProviderName;
        if (rocketTextView == null) {
            Intrinsics.throwNpe();
        }
        provider = this.provider;
        if (provider == null) {
            Intrinsics.throwNpe();
        }
        rocketTextView.setText(provider.getName());
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void onActivityResult(int r10, int r11, android.content.Intent r12) {
        /*
        r9 = this;
        super.onActivityResult(r10, r11, r12);
        r0 = PICK_CONTACT_REQUEST;
        if (r10 != r0) goto L_0x013f;
    L_0x0007:
        r10 = -1;
        if (r11 != r10) goto L_0x013f;
    L_0x000a:
        r11 = android.os.Build.VERSION.SDK_INT;
        r0 = 23;
        if (r11 < r0) goto L_0x0022;
    L_0x0010:
        r11 = r9.getContext();
        if (r11 != 0) goto L_0x0019;
    L_0x0016:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x0019:
        r0 = "android.permission.READ_CONTACTS";
        r11 = android.support.v4.content.ContextCompat.checkSelfPermission(r11, r0);
        if (r11 != r10) goto L_0x0022;
    L_0x0021:
        return;
    L_0x0022:
        r10 = r9.pickContactField;
        if (r10 != 0) goto L_0x0027;
    L_0x0026:
        return;
    L_0x0027:
        if (r12 != 0) goto L_0x002c;
    L_0x0029:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x002c:
        r1 = r12.getData();
        r10 = r9.getActivity();
        if (r10 != 0) goto L_0x0039;
    L_0x0036:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x0039:
        r11 = "activity!!";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r10, r11);
        r0 = r10.getContentResolver();
        r2 = 0;
        r3 = 0;
        r4 = 0;
        r5 = 0;
        r10 = r0.query(r1, r2, r3, r4, r5);
        r10 = (java.io.Closeable) r10;
        r11 = 0;
        r12 = r10;
        r12 = (android.database.Cursor) r12;	 Catch:{ Throwable -> 0x0139 }
        r0 = r12.moveToFirst();	 Catch:{ Throwable -> 0x0139 }
        if (r0 == 0) goto L_0x0131;
    L_0x0056:
        r0 = "_id";
        r0 = r12.getColumnIndex(r0);	 Catch:{ Throwable -> 0x0139 }
        r12 = r12.getString(r0);	 Catch:{ Throwable -> 0x0139 }
        r0 = r9.getActivity();	 Catch:{ Throwable -> 0x0139 }
        if (r0 != 0) goto L_0x0069;
    L_0x0066:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Throwable -> 0x0139 }
    L_0x0069:
        r1 = "activity!!";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1);	 Catch:{ Throwable -> 0x0139 }
        r2 = r0.getContentResolver();	 Catch:{ Throwable -> 0x0139 }
        r3 = android.provider.ContactsContract.CommonDataKinds.Phone.CONTENT_URI;	 Catch:{ Throwable -> 0x0139 }
        r4 = 0;
        r0 = "contact_id = ";
        r12 = java.lang.String.valueOf(r12);	 Catch:{ Throwable -> 0x0139 }
        r5 = r0.concat(r12);	 Catch:{ Throwable -> 0x0139 }
        r6 = 0;
        r7 = 0;
        r12 = r2.query(r3, r4, r5, r6, r7);	 Catch:{ Throwable -> 0x0139 }
        r12 = (java.io.Closeable) r12;	 Catch:{ Throwable -> 0x0139 }
        r0 = r12;
        r0 = (android.database.Cursor) r0;	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        r1 = "phonesCursor";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1);	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        r0 = r9.getPhones(r0);	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        r1 = r9._paymentFields;	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        r2 = r9.pickContactField;	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        if (r2 != 0) goto L_0x009c;
    L_0x0099:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
    L_0x009c:
        r2 = r2.getName();	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        r1 = r1.get(r2);	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        r1 = (ru.rocketbank.r2d2.payment.IPaymentFieldWidget) r1;	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        r2 = r0.isEmpty();	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        r3 = 1;
        if (r2 == 0) goto L_0x00cd;
    L_0x00ad:
        r0 = r9.getActivity();	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        r0 = (android.content.Context) r0;	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        r2 = "У выбранного контакта не указан номер";
        r2 = (java.lang.CharSequence) r2;	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        r0 = android.widget.Toast.makeText(r0, r2, r3);	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        r0.show();	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        if (r1 == 0) goto L_0x00c5;
    L_0x00c0:
        r0 = "";
        r1.setValue(r0);	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
    L_0x00c5:
        if (r1 == 0) goto L_0x0120;
    L_0x00c7:
        r1.clearError();	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        r0 = kotlin.Unit.INSTANCE;	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        goto L_0x0120;
    L_0x00cd:
        r2 = r0.size();	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        r4 = 0;
        if (r2 != r3) goto L_0x00e2;
    L_0x00d4:
        if (r1 == 0) goto L_0x0120;
    L_0x00d6:
        r0 = r0.get(r4);	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        r0 = (java.lang.String) r0;	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        r1.setValue(r0);	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        r0 = kotlin.Unit.INSTANCE;	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        goto L_0x0120;
    L_0x00e2:
        r2 = new android.app.AlertDialog$Builder;	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        r3 = r9.getActivity();	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        r3 = (android.content.Context) r3;	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        r2.<init>(r3);	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        r3 = r0;
        r3 = (java.util.Collection) r3;	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        if (r3 != 0) goto L_0x00fa;
    L_0x00f2:
        r0 = new kotlin.TypeCastException;	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        r1 = "null cannot be cast to non-null type java.util.Collection<T>";
        r0.<init>(r1);	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        throw r0;	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
    L_0x00fa:
        r4 = new java.lang.String[r4];	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        r3 = r3.toArray(r4);	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        if (r3 != 0) goto L_0x010a;
    L_0x0102:
        r0 = new kotlin.TypeCastException;	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        r1 = "null cannot be cast to non-null type kotlin.Array<T>";
        r0.<init>(r1);	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        throw r0;	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
    L_0x010a:
        r3 = (java.lang.CharSequence[]) r3;	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        r4 = new ru.rocketbank.r2d2.payment.PaymentDetailsFragment$onActivityResult$1$1$1;	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        r4.<init>(r1, r0);	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        r4 = (android.content.DialogInterface.OnClickListener) r4;	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        r0 = r2.setItems(r3, r4);	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        r0 = r0.create();	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        r0.show();	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
        r0 = kotlin.Unit.INSTANCE;	 Catch:{ Throwable -> 0x0127, all -> 0x0124 }
    L_0x0120:
        kotlin.io.CloseableKt.closeFinally(r12, r11);	 Catch:{ Throwable -> 0x0139 }
        goto L_0x0131;
    L_0x0124:
        r0 = move-exception;
        r1 = r11;
        goto L_0x012d;
    L_0x0127:
        r0 = move-exception;
        throw r0;	 Catch:{ all -> 0x0129 }
    L_0x0129:
        r1 = move-exception;
        r8 = r1;
        r1 = r0;
        r0 = r8;
    L_0x012d:
        kotlin.io.CloseableKt.closeFinally(r12, r1);	 Catch:{ Throwable -> 0x0139 }
        throw r0;	 Catch:{ Throwable -> 0x0139 }
    L_0x0131:
        r12 = kotlin.Unit.INSTANCE;	 Catch:{ Throwable -> 0x0139 }
        kotlin.io.CloseableKt.closeFinally(r10, r11);
        return;
    L_0x0137:
        r12 = move-exception;
        goto L_0x013b;
    L_0x0139:
        r11 = move-exception;
        throw r11;	 Catch:{ all -> 0x0137 }
    L_0x013b:
        kotlin.io.CloseableKt.closeFinally(r10, r11);
        throw r12;
    L_0x013f:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.payment.PaymentDetailsFragment.onActivityResult(int, int, android.content.Intent):void");
    }

    private final List<String> getPhones(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        while (cursor.moveToNext()) {
            Object string = cursor.getString(cursor.getColumnIndex("data1"));
            Intrinsics.checkExpressionValueIsNotNull(string, "number");
            if (StringsKt.startsWith$default(string, "8", false, 2, null)) {
                string = string.substring(1);
                Intrinsics.checkExpressionValueIsNotNull(string, "(this as java.lang.String).substring(startIndex)");
            }
            Intrinsics.checkExpressionValueIsNotNull(string, "number");
            arrayList.add(new Regex(" ").replace(new Regex("-").replace(new Regex("\\+7").replace((CharSequence) string, ""), ""), ""));
        }
        return arrayList;
    }

    private final boolean createDateField(LinearLayout linearLayout, ProviderField providerField) {
        RocketDatePaymentWidget rocketDatePaymentWidget = new RocketDatePaymentWidget(getActivity());
        rocketDatePaymentWidget.setProviderField(providerField);
        linearLayout.addView(rocketDatePaymentWidget);
        rocketDatePaymentWidget.setOnPaymentFieldChangedListener(this);
        this._paymentFields.put(providerField.getName(), rocketDatePaymentWidget);
        return true;
    }

    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        Intrinsics.checkParameterIsNotNull(strArr, NativeProtocol.RESULT_ARGS_PERMISSIONS);
        Intrinsics.checkParameterIsNotNull(iArr, "grantResults");
        if (i == PERMISSIONS_READ_CONTACT) {
            onPermission(strArr, iArr);
        }
    }

    private final void onPermission(String[] strArr, int[] iArr) {
        if ((1 ^ (iArr.length == 0 ? 1 : 0)) != 0 && iArr[0] == null) {
            strArr = this.pendingField;
            if (strArr != null) {
                pickContact(strArr);
                this.pendingField = null;
            }
        }
    }

    public final ProviderField getPendingField() {
        return this.pendingField;
    }

    public final void setPendingField(ProviderField providerField) {
        this.pendingField = providerField;
    }

    private final boolean createSimpleRegexpField(LinearLayout linearLayout, ProviderField providerField) {
        RocketPaymentEditText rocketPaymentEditText = new RocketPaymentEditText(getActivity());
        rocketPaymentEditText.setField(providerField);
        if (rocketPaymentEditText.hasFatalRegexpError()) {
            return null;
        }
        rocketPaymentEditText.setPickContactListener(new PaymentDetailsFragment$createSimpleRegexpField$1(this, providerField));
        rocketPaymentEditText.setOnPaymentFieldChangedListener(this);
        linearLayout.addView(rocketPaymentEditText);
        this._paymentFields.put(providerField.getName(), rocketPaymentEditText);
        if (this.template != null) {
            linearLayout = this.template;
            if (linearLayout == null) {
                Intrinsics.throwNpe();
            }
            linearLayout = linearLayout.provider;
            Intrinsics.checkExpressionValueIsNotNull(linearLayout, "template!!.provider");
            for (FieldPayment fieldPayment : linearLayout.getFields()) {
                String name = providerField.getName();
                Intrinsics.checkExpressionValueIsNotNull(fieldPayment, "templateField");
                if (Intrinsics.areEqual(name, fieldPayment.getName())) {
                    rocketPaymentEditText.setValue(fieldPayment.getValue());
                }
            }
        } else {
            linearLayout = getArguments();
            if (linearLayout == null) {
                Intrinsics.throwNpe();
            }
            if (linearLayout.containsKey(providerField.getName()) != null) {
                linearLayout = getArguments();
                if (linearLayout == null) {
                    Intrinsics.throwNpe();
                }
                rocketPaymentEditText.setValue(linearLayout.getString(providerField.getName()));
            }
        }
        return true;
    }

    private final void pickContact(ru.rocketbank.core.model.provider.ProviderField r4) {
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
        r3 = this;
        r3.pickContactField = r4;
        r4 = r3.getActivity();	 Catch:{ Exception -> 0x001a }
        if (r4 != 0) goto L_0x000b;	 Catch:{ Exception -> 0x001a }
    L_0x0008:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Exception -> 0x001a }
    L_0x000b:
        r0 = new android.content.Intent;	 Catch:{ Exception -> 0x001a }
        r1 = "android.intent.action.PICK";	 Catch:{ Exception -> 0x001a }
        r2 = android.provider.ContactsContract.Contacts.CONTENT_URI;	 Catch:{ Exception -> 0x001a }
        r0.<init>(r1, r2);	 Catch:{ Exception -> 0x001a }
        r1 = PICK_CONTACT_REQUEST;	 Catch:{ Exception -> 0x001a }
        r4.startActivityForResult(r0, r1);	 Catch:{ Exception -> 0x001a }
        return;
    L_0x001a:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.payment.PaymentDetailsFragment.pickContact(ru.rocketbank.core.model.provider.ProviderField):void");
    }

    public final void onSaveInstanceState(Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "outState");
        super.onSaveInstanceState(bundle);
        if (this.provider != null) {
            bundle.putParcelable(PaymentProviderBaseFragment.KEY_PAYMENT_PROVIDER, this.provider);
        }
        if (this.pickContactField != null) {
            bundle.putParcelable(PaymentProviderBaseFragment.KEY_PICK_CONTACT_FIELD, this.pickContactField);
        }
    }

    public final void onPause() {
        unsubscribe(this.operatorSubscription);
        super.onPause();
    }

    private final void processFatalRegexpError() {
        FragmentActivity activity = getActivity();
        if (activity == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
        Utils.showAlert(activity.getSupportFragmentManager(), "Произошла ошибка при загрузке данных. Пожалуйста, сообщите в поддержку тип платежа.", new PaymentDetailsFragment$processFatalRegexpError$1(this));
    }

    public final void moveBack() {
        FragmentActivity activity = getActivity();
        if (activity == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
        activity.getSupportFragmentManager().popBackStackImmediate();
        Utils.setActionBarUpIndicatorNavigationDrawer(getActivity());
    }

    public final void onPaymentFieldChanged(ProviderField providerField, IPaymentFieldWidget iPaymentFieldWidget) {
        Intrinsics.checkParameterIsNotNull(providerField, "field");
        Intrinsics.checkParameterIsNotNull(iPaymentFieldWidget, "widget");
        iPaymentFieldWidget.clearError();
        if (this.buttonNextView != null) {
            Provider paymentProvider = getPaymentProvider();
            if (paymentProvider == null) {
                Intrinsics.throwNpe();
            }
            if (paymentProvider.getId() != 0 || Intrinsics.areEqual("number", providerField.getName()) == null || iPaymentFieldWidget.isValid() == null) {
                checkProvider();
                return;
            }
            providerField = RocketApplication.Companion.getInjector().getDataManager();
            unsubscribe(this.operatorSubscription);
            ProvidersApi providersApi = this.providersApi;
            if (providersApi == null) {
                Intrinsics.throwUninitializedPropertyAccessException("providersApi");
            }
            this.operatorSubscription = providersApi.operator(iPaymentFieldWidget.getParameterValue()).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.io()).subscribe((Action1) new PaymentDetailsFragment$onPaymentFieldChanged$1(this, providerField), (Action1) new PaymentDetailsFragment$onPaymentFieldChanged$2(this, iPaymentFieldWidget));
        }
    }

    private final void checkProvider() {
        View view;
        if (isAllFieldsValid() && this.provider != null) {
            Provider provider = this.provider;
            if (provider == null) {
                Intrinsics.throwNpe();
            }
            if (provider.getId() != 0) {
                view = this.buttonNextView;
                if (view == null) {
                    Intrinsics.throwNpe();
                }
                view.setEnabled(true);
                return;
            }
        }
        this.provider = getPaymentProvider();
        updateProvider();
        view = this.buttonNextView;
        if (view == null) {
            Intrinsics.throwNpe();
        }
        view.setEnabled(false);
    }

    private final boolean isAllFieldsValid() {
        for (IPaymentFieldWidget iPaymentFieldWidget : this._paymentFields.values()) {
            Intrinsics.checkExpressionValueIsNotNull(iPaymentFieldWidget, "paymentField");
            if (!iPaymentFieldWidget.isValid()) {
                return false;
            }
        }
        return true;
    }
}
