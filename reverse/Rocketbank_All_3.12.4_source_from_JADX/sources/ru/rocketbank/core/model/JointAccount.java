package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.operations.Miles;

/* compiled from: JointAccount.kt */
public final class JointAccount implements Parcelable {
    public static final Creator<JointAccount> CREATOR = new JointAccount$Companion$CREATOR$1();
    public static final Companion Companion = new Companion();
    private Integer id;
    private String joint_user_avatar;
    private Integer joint_user_id;
    private String joint_user_name;
    private String joint_user_name_instrumental;
    private String status;
    private String user_avatar;
    private Integer user_id;
    private String user_name;
    private String user_name_instrumental;

    /* compiled from: JointAccount.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int describeContents() {
        return 0;
    }

    public JointAccount(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        this(Integer.valueOf(parcel.readInt()), parcel.readString(), Integer.valueOf(parcel.readInt()), Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
    }

    public final Integer getId() {
        return this.id;
    }

    public final void setId(Integer num) {
        this.id = num;
    }

    public final String getStatus() {
        return this.status;
    }

    public final void setStatus(String str) {
        this.status = str;
    }

    public final Integer getJoint_user_id() {
        return this.joint_user_id;
    }

    public final void setJoint_user_id(Integer num) {
        this.joint_user_id = num;
    }

    public final Integer getUser_id() {
        return this.user_id;
    }

    public final void setUser_id(Integer num) {
        this.user_id = num;
    }

    public final String getUser_name() {
        return this.user_name;
    }

    public final void setUser_name(String str) {
        this.user_name = str;
    }

    public final String getJoint_user_name() {
        return this.joint_user_name;
    }

    public final void setJoint_user_name(String str) {
        this.joint_user_name = str;
    }

    public final String getUser_name_instrumental() {
        return this.user_name_instrumental;
    }

    public final void setUser_name_instrumental(String str) {
        this.user_name_instrumental = str;
    }

    public final String getJoint_user_name_instrumental() {
        return this.joint_user_name_instrumental;
    }

    public final void setJoint_user_name_instrumental(String str) {
        this.joint_user_name_instrumental = str;
    }

    public final String getUser_avatar() {
        return this.user_avatar;
    }

    public final void setUser_avatar(String str) {
        this.user_avatar = str;
    }

    public final String getJoint_user_avatar() {
        return this.joint_user_avatar;
    }

    public final void setJoint_user_avatar(String str) {
        this.joint_user_avatar = str;
    }

    public JointAccount(Integer num, String str, Integer num2, Integer num3, String str2, String str3, String str4, String str5, String str6, String str7) {
        this();
        this.id = num;
        this.status = str;
        this.joint_user_id = num2;
        this.user_id = num3;
        this.user_name = str2;
        this.joint_user_name = str3;
        this.user_name_instrumental = str4;
        this.joint_user_name_instrumental = str5;
        this.user_avatar = str6;
        this.joint_user_avatar = str7;
    }

    public final boolean isConfirmed() {
        return Intrinsics.areEqual(this.status, Miles.STATUS_CONFIRMED);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = -1;
        if (parcel != null) {
            Integer num = this.id;
            parcel.writeInt(num != null ? num.intValue() : -1);
        }
        if (parcel != null) {
            parcel.writeString(this.status);
        }
        if (parcel != null) {
            num = this.joint_user_id;
            parcel.writeInt(num != null ? num.intValue() : -1);
        }
        if (parcel != null) {
            num = this.user_id;
            if (num != null) {
                i = num.intValue();
            }
            parcel.writeInt(i);
        }
        if (parcel != null) {
            parcel.writeString(this.user_name);
        }
        if (parcel != null) {
            parcel.writeString(this.joint_user_name);
        }
        if (parcel != null) {
            parcel.writeString(this.user_name_instrumental);
        }
        if (parcel != null) {
            parcel.writeString(this.joint_user_name_instrumental);
        }
        if (parcel != null) {
            parcel.writeString(this.user_avatar);
        }
        if (parcel != null) {
            parcel.writeString(this.joint_user_avatar);
        }
    }
}
