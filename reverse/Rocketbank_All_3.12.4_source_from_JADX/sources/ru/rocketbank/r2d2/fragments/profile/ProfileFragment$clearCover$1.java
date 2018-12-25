package ru.rocketbank.r2d2.fragments.profile;

import okhttp3.OkHttpClient;
import okhttp3.OkHttpClient.Builder;
import okhttp3.Request;
import okhttp3.RequestBody;
import rx.functions.Func1;

/* compiled from: ProfileFragment.kt */
final class ProfileFragment$clearCover$1<T, R> implements Func1<T, R> {
    public static final ProfileFragment$clearCover$1 INSTANCE = new ProfileFragment$clearCover$1();

    ProfileFragment$clearCover$1() {
    }

    public final Void call(String str) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append("/profile");
        str = stringBuilder.toString();
        Builder newBuilder = new OkHttpClient().newBuilder();
        newBuilder.addInterceptor(ProfileFragment.Companion.getAuthInterceptor$App_prodRelease());
        try {
            str = newBuilder.build().newCall(new Request.Builder().url(str).patch(RequestBody.create(ProfileFragment.JSON, "{\"user\": {\"cover_id\": null}}")).build()).execute();
            if (str == null) {
                throw ((Throwable) new IllegalStateException("Empty result"));
            }
            str = str.body();
            if (str == null) {
                throw ((Throwable) new IllegalStateException("Empty response"));
            }
            str.close();
            return null;
        } catch (String str2) {
            throw new IllegalStateException((Throwable) str2);
        }
    }
}
