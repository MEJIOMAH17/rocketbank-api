package ru.rocketbank.core.model.migration;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonParseException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import ru.rocketbank.core.events.EventHelper.IEvent;
import ru.rocketbank.core.model.dto.CheckCardData;

public class Migration implements Parcelable, IEvent {
    public static final Creator<Migration> CREATOR = new C08171();
    private CheckCardData check_card;
    private CityList cities;
    private Status status = Status.pending;
    private Transfer transfer;

    /* renamed from: ru.rocketbank.core.model.migration.Migration$1 */
    static class C08171 implements Creator<Migration> {
        C08171() {
        }

        public final Migration createFromParcel(Parcel parcel) {
            return new Migration(parcel);
        }

        public final Migration[] newArray(int i) {
            return new Migration[i];
        }
    }

    public static class City implements Parcelable {
        public static final Creator<City> CREATOR = new C08181();
        private String id;
        private String name;

        /* renamed from: ru.rocketbank.core.model.migration.Migration$City$1 */
        static class C08181 implements Creator<City> {
            C08181() {
            }

            public final City createFromParcel(Parcel parcel) {
                return new City(parcel);
            }

            public final City[] newArray(int i) {
                return new City[i];
            }
        }

        public int describeContents() {
            return 0;
        }

        public City(String str, String str2) {
            this.id = str2;
            this.name = str;
        }

        public String getId() {
            return this.id;
        }

        public String getName() {
            return this.name;
        }

        public String toString() {
            return getName();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.id);
            parcel.writeString(this.name);
        }

        protected City(Parcel parcel) {
            this.id = parcel.readString();
            this.name = parcel.readString();
        }
    }

    public static class CityList implements Parcelable {
        public static final Creator<CityList> CREATOR = new C08191();
        private List<City> cityList;

        /* renamed from: ru.rocketbank.core.model.migration.Migration$CityList$1 */
        static class C08191 implements Creator<CityList> {
            C08191() {
            }

            public final CityList createFromParcel(Parcel parcel) {
                return new CityList(parcel);
            }

            public final CityList[] newArray(int i) {
                return new CityList[i];
            }
        }

        public static class Deserializer implements JsonDeserializer<CityList> {
            public CityList deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
                if (jsonElement != null) {
                    if ((jsonElement instanceof JsonNull) == null) {
                        if ((jsonElement instanceof JsonArray) != null) {
                            JsonArray jsonArray = (JsonArray) jsonElement;
                            List arrayList = new ArrayList(jsonArray.size());
                            int i = 0;
                            while (i < jsonArray.size()) {
                                JsonElement jsonElement2 = jsonArray.get(i);
                                if (jsonElement2 instanceof JsonArray) {
                                    JsonArray jsonArray2 = (JsonArray) jsonElement2;
                                    arrayList.add(new City(jsonArray2.get(0).getAsString(), jsonArray2.get(1).getAsString()));
                                    i++;
                                } else {
                                    throw new IllegalStateException("Not a JSON Array: ".concat(String.valueOf(jsonElement2)));
                                }
                            }
                            return new CityList(arrayList);
                        }
                        throw new IllegalStateException("Not a JSON Array: ".concat(String.valueOf(jsonElement)));
                    }
                }
                return null;
            }
        }

        public int describeContents() {
            return 0;
        }

        public CityList(List<City> list) {
            this.cityList = list;
        }

        public List<City> toList() {
            return this.cityList;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeTypedList(this.cityList);
        }

        protected CityList(Parcel parcel) {
            this.cityList = parcel.createTypedArrayList(City.CREATOR);
        }
    }

    public enum Status {
        pending,
        needs_passport,
        needs_registration,
        needs_selfie,
        filled,
        issuing,
        card_ready,
        dhl_delivering,
        delivering,
        checking,
        ready,
        activated,
        completed
    }

    public static class Transfer implements Parcelable {
        public static final Creator<Transfer> CREATOR = new C08201();
        private float quick;
        private float slow;

        /* renamed from: ru.rocketbank.core.model.migration.Migration$Transfer$1 */
        static class C08201 implements Creator<Transfer> {
            C08201() {
            }

            public final Transfer createFromParcel(Parcel parcel) {
                return new Transfer(parcel);
            }

            public final Transfer[] newArray(int i) {
                return new Transfer[i];
            }
        }

        public int describeContents() {
            return 0;
        }

        public float getQuick() {
            return this.quick;
        }

        public float getSlowMoney() {
            return this.slow;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeFloat(this.quick);
            parcel.writeFloat(this.slow);
        }

        protected Transfer(Parcel parcel) {
            this.quick = parcel.readFloat();
            this.slow = parcel.readFloat();
        }
    }

    public int describeContents() {
        return 0;
    }

    public Migration(List<City> list) {
        this.cities = new CityList((List) list);
    }

    public Status getStatus() {
        return this.status;
    }

    public List<City> getCities() {
        return this.cities.toList();
    }

    public CheckCardData getCheckCard() {
        return this.check_card;
    }

    public Transfer getTransfer() {
        return this.transfer;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    @Deprecated
    public Migration(Status status, List<City> list) {
        this.status = status;
        this.cities = new CityList((List) list);
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.status == 0 ? -1 : this.status.ordinal());
        parcel.writeParcelable(this.check_card, 0);
        parcel.writeParcelable(this.cities, 0);
        parcel.writeParcelable(this.transfer, 0);
    }

    protected Migration(Parcel parcel) {
        Status status;
        int readInt = parcel.readInt();
        if (readInt == -1) {
            status = null;
        } else {
            status = Status.values()[readInt];
        }
        this.status = status;
        this.check_card = (CheckCardData) parcel.readParcelable(CheckCardData.class.getClassLoader());
        this.cities = (CityList) parcel.readParcelable(CityList.class.getClassLoader());
        this.transfer = (Transfer) parcel.readParcelable(Transfer.class.getClassLoader());
    }
}
