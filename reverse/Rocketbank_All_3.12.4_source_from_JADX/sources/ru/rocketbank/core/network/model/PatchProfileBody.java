package ru.rocketbank.core.network.model;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PatchProfileBody.kt */
public final class PatchProfileBody {
    public User user;

    /* compiled from: PatchProfileBody.kt */
    public static final class User {
        @SerializedName("cover_id")
        private String coverId;
        private String ctc;
        private String driver_licence;
        @SerializedName("facebook_id")
        private Long facebookId;
        @SerializedName("facebook_token")
        private String facebookToken;
        private String inn;
        private Boolean penalty_tax_notifications;
        @SerializedName("short_term_login")
        private Boolean shortTermLogin;
        @SerializedName("sound")
        private String sound;
        private UserName username;
        @SerializedName("userpic_id")
        private String userpicId;

        public final UserName getUsername() {
            return this.username;
        }

        public final void setUsername(UserName userName) {
            this.username = userName;
        }

        public final Boolean getShortTermLogin() {
            return this.shortTermLogin;
        }

        public final void setShortTermLogin(Boolean bool) {
            this.shortTermLogin = bool;
        }

        public final String getCoverId() {
            return this.coverId;
        }

        public final void setCoverId(String str) {
            this.coverId = str;
        }

        public final String getUserpicId() {
            return this.userpicId;
        }

        public final void setUserpicId(String str) {
            this.userpicId = str;
        }

        public final String getSound() {
            return this.sound;
        }

        public final void setSound(String str) {
            this.sound = str;
        }

        public final Long getFacebookId() {
            return this.facebookId;
        }

        public final void setFacebookId(Long l) {
            this.facebookId = l;
        }

        public final String getFacebookToken() {
            return this.facebookToken;
        }

        public final void setFacebookToken(String str) {
            this.facebookToken = str;
        }

        public final Boolean getPenalty_tax_notifications() {
            return this.penalty_tax_notifications;
        }

        public final void setPenalty_tax_notifications(Boolean bool) {
            this.penalty_tax_notifications = bool;
        }

        public final String getInn() {
            return this.inn;
        }

        public final void setInn(String str) {
            this.inn = str;
        }

        public final String getDriver_licence() {
            return this.driver_licence;
        }

        public final void setDriver_licence(String str) {
            this.driver_licence = str;
        }

        public final String getCtc() {
            return this.ctc;
        }

        public final void setCtc(String str) {
            this.ctc = str;
        }
    }

    /* compiled from: PatchProfileBody.kt */
    public static final class UserName {
        private String value;
        private Boolean works;

        public final Boolean getWorks() {
            return this.works;
        }

        public final void setWorks(Boolean bool) {
            this.works = bool;
        }

        public final String getValue() {
            return this.value;
        }

        public final void setValue(String str) {
            this.value = str;
        }
    }

    public final User getUser() {
        User user = this.user;
        if (user == null) {
            Intrinsics.throwUninitializedPropertyAccessException("user");
        }
        return user;
    }

    public final void setUser(User user) {
        Intrinsics.checkParameterIsNotNull(user, "<set-?>");
        this.user = user;
    }

    public PatchProfileBody(String str, String str2, String str3, Boolean bool) {
        this.user = new User();
        User user = this.user;
        if (user == null) {
            Intrinsics.throwUninitializedPropertyAccessException("user");
        }
        user.setDriver_licence(str);
        str = this.user;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("user");
        }
        str.setCtc(str2);
        str = this.user;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("user");
        }
        str.setInn(str3);
        str = this.user;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("user");
        }
        str.setPenalty_tax_notifications(bool);
    }

    public PatchProfileBody(String str) {
        Intrinsics.checkParameterIsNotNull(str, "sound");
        this.user = new User();
        User user = this.user;
        if (user == null) {
            Intrinsics.throwUninitializedPropertyAccessException("user");
        }
        user.setSound(str);
    }

    public PatchProfileBody(long j, String str) {
        Intrinsics.checkParameterIsNotNull(str, "fbToken");
        this.user = new User();
        User user = this.user;
        if (user == null) {
            Intrinsics.throwUninitializedPropertyAccessException("user");
        }
        user.setFacebookId(Long.valueOf(j));
        j = this.user;
        if (j == null) {
            Intrinsics.throwUninitializedPropertyAccessException("user");
        }
        j.setFacebookToken(str);
    }
}
