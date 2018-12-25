package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;

public final class InvitesModel implements Parcelable {
    public static final Creator<InvitesModel> CREATOR = new C07901();
    @SerializedName("friends")
    private int friends;
    @SerializedName("max_friends")
    private int maxFriends;
    @SerializedName("profit")
    private int profit;
    @SerializedName("url")
    private String url;

    /* renamed from: ru.rocketbank.core.model.InvitesModel$1 */
    static class C07901 implements Creator<InvitesModel> {
        C07901() {
        }

        public final InvitesModel createFromParcel(Parcel parcel) {
            return new InvitesModel(parcel);
        }

        public final InvitesModel[] newArray(int i) {
            return new InvitesModel[i];
        }
    }

    public final int describeContents() {
        return 0;
    }

    protected InvitesModel(Parcel parcel) {
        this.friends = parcel.readInt();
        this.maxFriends = parcel.readInt();
        this.profit = parcel.readInt();
        this.url = parcel.readString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.friends);
        parcel.writeInt(this.maxFriends);
        parcel.writeInt(this.profit);
        parcel.writeString(this.url);
    }

    public final int getFriends() {
        return this.friends;
    }

    public final int getMaxFriends() {
        return this.maxFriends;
    }

    public final int getProfit() {
        return this.profit;
    }

    public final String getUrl() {
        return this.url;
    }
}
