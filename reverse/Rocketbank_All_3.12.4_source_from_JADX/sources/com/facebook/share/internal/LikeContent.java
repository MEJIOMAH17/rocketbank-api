package com.facebook.share.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.facebook.share.model.ShareModel;
import com.facebook.share.model.ShareModelBuilder;

public class LikeContent implements ShareModel {
    public static final Creator<LikeContent> CREATOR = new C04401();
    private final String objectId;
    private final String objectType;

    /* renamed from: com.facebook.share.internal.LikeContent$1 */
    static class C04401 implements Creator<LikeContent> {
        C04401() {
        }

        public final LikeContent createFromParcel(Parcel parcel) {
            return new LikeContent(parcel);
        }

        public final LikeContent[] newArray(int i) {
            return new LikeContent[i];
        }
    }

    public static class Builder implements ShareModelBuilder<LikeContent, Builder> {
        private String objectId;
        private String objectType;

        public Builder setObjectId(String str) {
            this.objectId = str;
            return this;
        }

        public Builder setObjectType(String str) {
            this.objectType = str;
            return this;
        }

        public LikeContent build() {
            return new LikeContent();
        }

        public Builder readFrom(LikeContent likeContent) {
            return likeContent == null ? this : setObjectId(likeContent.getObjectId()).setObjectType(likeContent.getObjectType());
        }
    }

    public int describeContents() {
        return 0;
    }

    private LikeContent(Builder builder) {
        this.objectId = builder.objectId;
        this.objectType = builder.objectType;
    }

    LikeContent(Parcel parcel) {
        this.objectId = parcel.readString();
        this.objectType = parcel.readString();
    }

    public String getObjectId() {
        return this.objectId;
    }

    public String getObjectType() {
        return this.objectType;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.objectId);
        parcel.writeString(this.objectType);
    }
}
