package jp.co.cyberagent.android.gpuimage;

import android.opengl.GLES20;
import android.util.Log;
import com.mikepenz.materialize.util.KeyboardUtil;
import javax.inject.Provider;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Retrofit;
import ru.rocketbank.core.network.api.Card2CardApi;

public final class OpenGlUtils implements Provider<Card2CardApi> {
    private final KeyboardUtil module$3d1596a7;
    private final Provider<Retrofit> retrofitProvider;

    public static int loadShader(String str, int i) {
        int[] iArr = new int[1];
        i = GLES20.glCreateShader(i);
        GLES20.glShaderSource(i, str);
        GLES20.glCompileShader(i);
        GLES20.glGetShaderiv(i, 35713, iArr, 0);
        if (iArr[0] != 0) {
            return i;
        }
        StringBuilder stringBuilder = new StringBuilder("Compilation\n");
        stringBuilder.append(GLES20.glGetShaderInfoLog(i));
        Log.d("Load Shader Failed", stringBuilder.toString());
        return 0;
    }

    public OpenGlUtils(KeyboardUtil keyboardUtil, Provider<Retrofit> provider) {
        this.module$3d1596a7 = keyboardUtil;
        this.retrofitProvider = provider;
    }

    public final /* bridge */ /* synthetic */ Object get() {
        Retrofit retrofit = (Retrofit) this.retrofitProvider.get();
        Intrinsics.checkParameterIsNotNull(retrofit, "retrofit");
        Object create = retrofit.create(Card2CardApi.class);
        Intrinsics.checkExpressionValueIsNotNull(create, "retrofit.create(Card2CardApi::class.java)");
        Card2CardApi card2CardApi = (Card2CardApi) create;
        String str = "Cannot return null from a non-@Nullable @Provides method";
        if (card2CardApi != null) {
            return card2CardApi;
        }
        throw new NullPointerException(str);
    }
}
