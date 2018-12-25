package ru.rocketbank.r2d2.shop.order;

import android.content.Context;
import android.databinding.Bindable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Filter;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt;
import ru.rocketbank.core.network.model.AddressData;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.charges.tax.TaxChargeViewModel;
import ru.rocketbank.r2d2.utils.ViewModelObservable;
import ru.rocketbank.r2d2.utils.ViewModelObservable.ViewField;

/* compiled from: ShopOrderActivity.kt */
public final class StoreCheckoutViewModel extends ViewModelObservable implements Parcelable {
    public static final Creator<TaxChargeViewModel> CREATOR = new StoreCheckoutViewModel$Companion$CREATOR$1();
    public static final Companion Companion = new Companion();
    private final ViewField address;
    private boolean addressIsValid;
    private final ViewField comment;
    private final ViewField price;

    /* compiled from: ShopOrderActivity.kt */
    public static final class AddressAdapter extends ArrayAdapter<Object> {
        private final int TYPE_ADDRESS = 1;
        private final int TYPE_HOMEADDRESS = 2;
        private final int TYPE_NOT_FOUND;
        private AddressData[] items = new AddressData[0];
        private final Filter valueFilter = ((Filter) new StoreCheckoutViewModel$AddressAdapter$valueFilter$1(this));

        public final int getViewTypeCount() {
            return 3;
        }

        public final int getTYPE_NOT_FOUND() {
            return this.TYPE_NOT_FOUND;
        }

        public final int getTYPE_ADDRESS() {
            return this.TYPE_ADDRESS;
        }

        public final int getTYPE_HOMEADDRESS() {
            return this.TYPE_HOMEADDRESS;
        }

        public final Filter getFilter() {
            return this.valueFilter;
        }

        public final AddressData[] getItems() {
            return this.items;
        }

        public final void setItems(AddressData[] addressDataArr) {
            Intrinsics.checkParameterIsNotNull(addressDataArr, "<set-?>");
            this.items = addressDataArr;
        }

        public final Object getItem(int i) {
            return (this.items.length == 0 ? 1 : null) != null ? "" : this.items[i];
        }

        public final boolean isEnabled(int i) {
            return (this.items.length == 0 ? 1 : 0) == 0;
        }

        public final int getCount() {
            return (this.items.length == 0 ? 1 : 0) != 0 ? 1 : this.items.length;
        }

        public final View getView(int i, View view, ViewGroup viewGroup) {
            int itemViewType = getItemViewType(i);
            if (itemViewType == this.TYPE_NOT_FOUND) {
                if (view == null) {
                    view = LayoutInflater.from(getContext()).inflate(C0859R.layout.shop_address_item_not_found, viewGroup, false);
                    Intrinsics.checkExpressionValueIsNotNull(view, "LayoutInflater.from(cont…not_found, parent, false)");
                }
                return view;
            }
            if (itemViewType != this.TYPE_ADDRESS) {
                if (itemViewType != this.TYPE_HOMEADDRESS) {
                    if (view == null) {
                        Intrinsics.throwNpe();
                    }
                    return view;
                }
            }
            if (view == null) {
                view = LayoutInflater.from(getContext()).inflate(C0859R.layout.shop_address_item, viewGroup, false);
                Intrinsics.checkExpressionValueIsNotNull(view, "LayoutInflater.from(cont…ress_item, parent, false)");
            }
            i = this.items[i];
            RocketTextView rocketTextView = (RocketTextView) view.findViewById(C0859R.id.textAddress);
            Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "view.textAddress");
            rocketTextView.setText(i.getValue());
            rocketTextView = (RocketTextView) view.findViewById(C0859R.id.textCity);
            Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "view.textCity");
            rocketTextView.setText(i.getCity());
            return view;
        }

        public final int getItemViewType(int i) {
            return (this.items.length == 0 ? 1 : 0) != 0 ? this.TYPE_NOT_FOUND : this.TYPE_ADDRESS;
        }

        public final AddressData find(String str) {
            Intrinsics.checkParameterIsNotNull(str, "value");
            AddressData[] addressDataArr = this.items;
            int i = 0;
            int length = addressDataArr.length;
            while (i < length) {
                AddressData addressData = addressDataArr[i];
                String addressData2 = addressData.toString();
                if (addressData2 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
                } else if (Intrinsics.areEqual(StringsKt.trim(addressData2).toString(), StringsKt.trim(str).toString())) {
                    return addressData;
                } else {
                    i++;
                }
            }
            return null;
        }

        public AddressAdapter(Context context) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            super(context, C0859R.layout.shop_address_item, new Object[0]);
        }
    }

    /* compiled from: ShopOrderActivity.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    /* compiled from: ShopOrderActivity.kt */
    /* renamed from: ru.rocketbank.r2d2.shop.order.StoreCheckoutViewModel$2 */
    static final class C18342 extends Lambda implements Function1<String, Boolean> {
        public static final C18342 INSTANCE = new C18342();

        C18342() {
            super(1);
        }

        public final boolean invoke(String str) {
            Intrinsics.checkParameterIsNotNull(str, "it");
            return true;
        }
    }

    public final int describeContents() {
        return 0;
    }

    public StoreCheckoutViewModel() {
        ViewModelObservable.putField$default(this, "address", 3, null, new Function1<String, Boolean>() {
            public final boolean invoke(String str) {
                Intrinsics.checkParameterIsNotNull(str, "it");
                return this.getAddressIsValid();
            }
        }, 4, null);
        ViewModelObservable.putField$default(this, "comment", 18, null, C18342.INSTANCE, 4, null);
        ViewModelObservable.putField$default(this, Param.PRICE, 64, null, null, 12, null);
        this.address = getField("address");
        this.comment = getField("comment");
        this.price = getField(Param.PRICE);
    }

    public final boolean getAddressIsValid() {
        return this.addressIsValid;
    }

    public final void setAddressIsValid(boolean z) {
        this.addressIsValid = z;
        notifyPropertyChanged(true);
    }

    @Bindable
    public final ViewField getAddress() {
        return this.address;
    }

    @Bindable
    public final ViewField getComment() {
        return this.comment;
    }

    @Bindable
    public final ViewField getPrice() {
        return this.price;
    }

    public StoreCheckoutViewModel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        this();
        ViewField viewField = this.address;
        if (viewField != null) {
            viewField.setValue(parcel.readString());
        }
        viewField = this.comment;
        if (viewField != null) {
            viewField.setValue(parcel.readString());
        }
        viewField = this.price;
        if (viewField != null) {
            viewField.setValue(parcel.readString());
        }
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = 0;
        if (parcel != null) {
            ViewField viewField = this.address;
            parcel.writeString(viewField != null ? viewField.getValue() : null);
        }
        if (parcel != null) {
            viewField = this.comment;
            parcel.writeString(viewField != null ? viewField.getValue() : null);
        }
        if (parcel != null) {
            viewField = this.price;
            if (viewField != null) {
                i = viewField.getValue();
            }
            parcel.writeString(i);
        }
    }
}
