package ru.rocketbank.r2d2.root.analytics;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.share.internal.ShareConstants;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.MoneyData;
import ru.rocketbank.core.model.dto.analytics.AnalyticsMerchant;
import ru.rocketbank.core.model.dto.analytics.AnalyticsOperations;
import ru.rocketbank.core.model.dto.analytics.AnalyticsOperationsResponseData;
import ru.rocketbank.core.model.dto.operations.Friend;
import ru.rocketbank.core.model.dto.operations.Merchant;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.core.network.api.AnalyticsApi;
import ru.rocketbank.r2d2.databinding.FragmentAnalyticsBaseBinding;
import rx.Observable;

/* compiled from: AnalyticsMerchantFragment.kt */
public final class AnalyticsMerchantFragment extends AnalyticsBaseFragment<AnalyticsOperationsResponseData> {
    public static final Companion Companion = new Companion();
    private static final SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("HH:mm, dd MMMM yyyy", new Locale("ru"));
    public static final String KEY_ANALYTICS_MERCHANT = "KEY_ANALYTICS_MERCHANT";
    private HashMap _$_findViewCache;
    private AnalyticsMerchant analyticsMerchant;

    /* compiled from: AnalyticsMerchantFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public final SimpleDateFormat getDATE_FORMAT() {
            return AnalyticsMerchantFragment.DATE_FORMAT;
        }

        public final Bundle createArguments(AnalyticsMerchant analyticsMerchant, Calendar calendar) {
            Intrinsics.checkParameterIsNotNull(analyticsMerchant, "merchant");
            Intrinsics.checkParameterIsNotNull(calendar, "currentDateTime");
            Bundle bundle = new Bundle();
            bundle.putSerializable(AnalyticsMerchantFragment.KEY_ANALYTICS_MERCHANT, analyticsMerchant);
            bundle.putSerializable(AnalyticsBaseFragment.KEY_CURRENT_DATE, calendar);
            return bundle;
        }
    }

    public static final Bundle createArguments(AnalyticsMerchant analyticsMerchant, Calendar calendar) {
        return Companion.createArguments(analyticsMerchant, calendar);
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

    public final void onCreate(Bundle bundle) {
        Bundle arguments = getArguments();
        if (arguments == null) {
            Intrinsics.throwNpe();
        }
        Serializable serializable = arguments.getSerializable(KEY_ANALYTICS_MERCHANT);
        if (serializable == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.model.dto.analytics.AnalyticsMerchant");
        }
        this.analyticsMerchant = (AnalyticsMerchant) serializable;
        super.onCreate(bundle);
    }

    protected final View createView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        layoutInflater = FragmentAnalyticsBaseBinding.inflate(layoutInflater);
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "FragmentAnalyticsBaseBinding.inflate(inflater)");
        layoutInflater = layoutInflater.getRoot();
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "FragmentAnalyticsBaseBin…ng.inflate(inflater).root");
        return layoutInflater;
    }

    public final Observable<AnalyticsOperationsResponseData> request(String str, String str2, int[] iArr) {
        Intrinsics.checkParameterIsNotNull(str, "dateFrom");
        Intrinsics.checkParameterIsNotNull(str2, "dateTo");
        AnalyticsApi analyticsApi = getAnalyticsApi();
        AnalyticsMerchant analyticsMerchant = this.analyticsMerchant;
        if (analyticsMerchant == null) {
            Intrinsics.throwUninitializedPropertyAccessException("analyticsMerchant");
        }
        str = analyticsApi.analyticsOperations(str, str2, String.valueOf(analyticsMerchant.getId()), iArr);
        Intrinsics.checkExpressionValueIsNotNull(str, "analyticsApi.analyticsOp….id.toString(), jointIds)");
        return str;
    }

    protected final void showData(AnalyticsOperationsResponseData analyticsOperationsResponseData) {
        Intrinsics.checkParameterIsNotNull(analyticsOperationsResponseData, ShareConstants.WEB_DIALOG_PARAM_DATA);
        addOperations(getList(), analyticsOperationsResponseData.getMine(), true);
        addOperations(getList(), analyticsOperationsResponseData.getJoint(), false);
    }

    protected final void updateHeader(AnalyticsOperationsResponseData analyticsOperationsResponseData) {
        Intrinsics.checkParameterIsNotNull(analyticsOperationsResponseData, ShareConstants.WEB_DIALOG_PARAM_DATA);
        AnalyticsItemHeader header = getHeader();
        Double total = analyticsOperationsResponseData.getTotal();
        header.setAmount(total != null ? (int) total.doubleValue() : 0);
        super.updateHeader(analyticsOperationsResponseData);
    }

    protected final boolean hasData(AnalyticsOperationsResponseData analyticsOperationsResponseData) {
        Intrinsics.checkParameterIsNotNull(analyticsOperationsResponseData, ShareConstants.WEB_DIALOG_PARAM_DATA);
        analyticsOperationsResponseData = analyticsOperationsResponseData.getTotal();
        return (analyticsOperationsResponseData != null ? analyticsOperationsResponseData.doubleValue() : 0.0d) != 0.0d ? true : null;
    }

    private final void addOperations(List<AnalyticsItem> list, AnalyticsOperations analyticsOperations, boolean z) {
        if (analyticsOperations != null) {
            Bitmap[] avatars = AnalyticsBaseFragment.Companion.getAvatars();
            Bitmap bitmap = avatars != null ? avatars[z ^ 1] : null;
            AnalyticsMerchant analyticsMerchant = this.analyticsMerchant;
            if (analyticsMerchant == null) {
                Intrinsics.throwUninitializedPropertyAccessException("analyticsMerchant");
            }
            String name = analyticsMerchant.getName();
            Intrinsics.checkExpressionValueIsNotNull(name, "analyticsMerchant.name");
            list.add(new AnalyticsItemPerson(name, bitmap));
            AnalyticsOperations<Operation> operations = analyticsOperations.getOperations();
            if (operations == null) {
                Intrinsics.throwNpe();
            }
            for (Operation operation : operations) {
                String userpicUrl;
                String str;
                String format;
                String str2;
                MoneyData displayMoney;
                Double valueOf;
                MoneyData displayMoney2;
                if (operation.getFriend() != null) {
                    Friend friend = operation.getFriend();
                    if (friend == null) {
                        Intrinsics.throwNpe();
                    }
                    userpicUrl = friend.getUserpicUrl();
                } else {
                    Merchant merchant = operation.getMerchant();
                    userpicUrl = merchant != null ? merchant.getIcon() : null;
                }
                Merchant merchant2 = operation.getMerchant();
                if (merchant2 != null) {
                    name = merchant2.getName();
                    if (name == null) {
                    }
                    str = name;
                    format = DATE_FORMAT.format(new Date(operation.getHappenedAt() * 1000));
                    if (userpicUrl == null) {
                        userpicUrl = "";
                    }
                    str2 = userpicUrl;
                    displayMoney = operation.getDisplayMoney();
                    valueOf = displayMoney == null ? Double.valueOf(displayMoney.getAmount()) : null;
                    displayMoney2 = operation.getDisplayMoney();
                    list.add(new AnalyticsItemMerchantOperation(str, format, str2, format(valueOf, displayMoney2 == null ? displayMoney2.getCurrencyCode() : null), z, z ? new AnalyticsMerchantFragment$addOperations$1(this, operation) : AnalyticsMerchantFragment$addOperations$2.INSTANCE));
                }
                name = "";
                str = name;
                format = DATE_FORMAT.format(new Date(operation.getHappenedAt() * 1000));
                if (userpicUrl == null) {
                    userpicUrl = "";
                }
                str2 = userpicUrl;
                displayMoney = operation.getDisplayMoney();
                if (displayMoney == null) {
                }
                displayMoney2 = operation.getDisplayMoney();
                if (displayMoney2 == null) {
                }
                if (z) {
                }
                list.add(new AnalyticsItemMerchantOperation(str, format, str2, format(valueOf, displayMoney2 == null ? displayMoney2.getCurrencyCode() : null), z, z ? new AnalyticsMerchantFragment$addOperations$1(this, operation) : AnalyticsMerchantFragment$addOperations$2.INSTANCE));
            }
        }
    }
}
