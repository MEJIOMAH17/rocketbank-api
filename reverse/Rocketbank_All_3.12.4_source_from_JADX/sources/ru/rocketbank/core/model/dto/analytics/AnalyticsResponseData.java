package ru.rocketbank.core.model.dto.analytics;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.google.gson.annotations.SerializedName;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import ru.rocketbank.core.manager.AnalyticsManager;

public class AnalyticsResponseData implements Parcelable {
    public static final Creator<AnalyticsResponseData> CREATOR = new C08093();
    public static final SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd");
    private static final Map<String, Integer> TRANSLATOR;
    private List<AnalyticsCategory> categories;
    @SerializedName("first_operation_date")
    private String firstOperationDate;
    private List<AnalyticsGroup> groups;
    private List<AnalyticsMerchant> merchants;
    private double total;

    /* renamed from: ru.rocketbank.core.model.dto.analytics.AnalyticsResponseData$1 */
    class C08071 implements Comparator<AnalyticsGroup> {
        C08071() {
        }

        public int compare(AnalyticsGroup analyticsGroup, AnalyticsGroup analyticsGroup2) {
            return (AnalyticsResponseData.TRANSLATOR.containsKey(analyticsGroup.getId()) && AnalyticsResponseData.TRANSLATOR.containsKey(analyticsGroup2.getId())) ? ((Integer) AnalyticsResponseData.TRANSLATOR.get(analyticsGroup.getId())).compareTo((Integer) AnalyticsResponseData.TRANSLATOR.get(analyticsGroup2.getId())) : null;
        }
    }

    /* renamed from: ru.rocketbank.core.model.dto.analytics.AnalyticsResponseData$2 */
    class C08082 implements Comparator<AnalyticsCategory> {
        C08082() {
        }

        public int compare(AnalyticsCategory analyticsCategory, AnalyticsCategory analyticsCategory2) {
            return Double.compare(analyticsCategory2.getAmount(), analyticsCategory.getAmount());
        }
    }

    /* renamed from: ru.rocketbank.core.model.dto.analytics.AnalyticsResponseData$3 */
    static class C08093 implements Creator<AnalyticsResponseData> {
        C08093() {
        }

        public final AnalyticsResponseData createFromParcel(Parcel parcel) {
            return new AnalyticsResponseData(parcel);
        }

        public final AnalyticsResponseData[] newArray(int i) {
            return new AnalyticsResponseData[i];
        }
    }

    public int describeContents() {
        return 0;
    }

    static {
        Map hashMap = new HashMap();
        TRANSLATOR = hashMap;
        hashMap.put(FacebookRequestErrorClassification.KEY_OTHER, Integer.valueOf(0));
        TRANSLATOR.put("transfer", Integer.valueOf(1));
        TRANSLATOR.put("atm", Integer.valueOf(2));
    }

    public double getTotal() {
        return this.total;
    }

    public Calendar getFirstOperationDate() {
        if (this.firstOperationDate == null) {
            return null;
        }
        try {
            Calendar instance = Calendar.getInstance();
            instance.setTime(DATE_FORMAT.parse(this.firstOperationDate));
            return instance;
        } catch (Throwable e) {
            AnalyticsManager.logException(e);
            return null;
        }
    }

    public List<AnalyticsGroup> getGroups() {
        return this.groups;
    }

    public void setGroups(List<AnalyticsGroup> list) {
        this.groups = new ArrayList(list);
        Collections.sort(this.groups, new C08071());
    }

    public List<AnalyticsCategory> getCategories() {
        return this.categories;
    }

    public void setCategories(List<AnalyticsCategory> list) {
        this.categories = new ArrayList(list);
        Collections.sort(this.categories, new C08082());
    }

    public List<AnalyticsMerchant> getMerchants() {
        return this.merchants;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeDouble(this.total);
        parcel.writeString(this.firstOperationDate);
        parcel.writeList(this.groups);
        parcel.writeList(this.categories);
        parcel.writeList(this.merchants);
    }

    protected AnalyticsResponseData(Parcel parcel) {
        this.total = parcel.readDouble();
        this.firstOperationDate = parcel.readString();
        this.groups = new ArrayList();
        parcel.readList(this.groups, AnalyticsGroup.class.getClassLoader());
        this.categories = new ArrayList();
        parcel.readList(this.categories, AnalyticsCategory.class.getClassLoader());
        this.merchants = new ArrayList();
        parcel.readList(this.merchants, AnalyticsMerchant.class.getClassLoader());
    }
}
