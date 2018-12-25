package android.support.v4.util;

import android.support.annotation.RestrictTo;
import com.google.firebase.iid.FirebaseInstanceId;

@RestrictTo
@Deprecated
public final class Preconditions {
    private final FirebaseInstanceId zzclk;

    public static Preconditions zzabN$ec61dce() {
        return new Preconditions(FirebaseInstanceId.getInstance());
    }

    private Preconditions(FirebaseInstanceId firebaseInstanceId) {
        this.zzclk = firebaseInstanceId;
    }

    public final String getId() {
        return this.zzclk.getId();
    }
}
