package android.arch.lifecycle;

import android.support.annotation.RestrictTo;
import com.mikepenz.materialdrawer.model.interfaces.Identifyable;
import io.realm.RealmModel;
import java.io.IOException;
import okhttp3.Response;
import okio.Sink;

@RestrictTo
public interface GeneratedAdapter<T extends RealmModel> extends Identifyable {
    Sink body() throws IOException;

    Response get$75562139() throws IOException;

    GeneratedAdapter put$cd4e278$4d5a729a() throws IOException;

    boolean shouldSkipClass$1b2d8b94();

    boolean shouldSkipField$6e8224bb();
}
