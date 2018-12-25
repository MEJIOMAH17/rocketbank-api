package jp.wasabeef.glide.transformations.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.renderscript.Allocation;
import android.renderscript.Allocation.MipmapControl;
import android.renderscript.Element;
import android.renderscript.RSRuntimeException;
import android.renderscript.RenderScript;
import android.renderscript.RenderScript.RSMessageHandler;
import android.renderscript.ScriptIntrinsicBlur;
import com.mikepenz.materialize.util.KeyboardUtil;
import javax.inject.Provider;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Retrofit;
import ru.rocketbank.core.network.api.SexyLeadsApi;

public final class RSBlur implements Provider<SexyLeadsApi> {
    private final KeyboardUtil module$3d1596a7;
    private final Provider<Retrofit> retrofitProvider;

    @TargetApi(18)
    public static Bitmap blur(Context context, Bitmap bitmap, int i) throws RSRuntimeException {
        try {
            context = RenderScript.create(context);
            try {
                context.setMessageHandler(new RSMessageHandler());
                Allocation createFromBitmap = Allocation.createFromBitmap(context, bitmap, MipmapControl.MIPMAP_NONE, 1);
                Allocation createTyped = Allocation.createTyped(context, createFromBitmap.getType());
                ScriptIntrinsicBlur create = ScriptIntrinsicBlur.create(context, Element.U8_4(context));
                create.setInput(createFromBitmap);
                create.setRadius((float) i);
                create.forEach(createTyped);
                createTyped.copyTo(bitmap);
                if (context != null) {
                    context.destroy();
                }
                return bitmap;
            } catch (Throwable th) {
                bitmap = th;
                if (context != null) {
                    context.destroy();
                }
                throw bitmap;
            }
        } catch (Throwable th2) {
            bitmap = th2;
            context = null;
            if (context != null) {
                context.destroy();
            }
            throw bitmap;
        }
    }

    public RSBlur(KeyboardUtil keyboardUtil, Provider<Retrofit> provider) {
        this.module$3d1596a7 = keyboardUtil;
        this.retrofitProvider = provider;
    }

    public final /* bridge */ /* synthetic */ Object get() {
        Retrofit retrofit = (Retrofit) this.retrofitProvider.get();
        Intrinsics.checkParameterIsNotNull(retrofit, "retrofit");
        Object create = retrofit.create(SexyLeadsApi.class);
        Intrinsics.checkExpressionValueIsNotNull(create, "retrofit.create(SexyLeadsApi::class.java)");
        SexyLeadsApi sexyLeadsApi = (SexyLeadsApi) create;
        String str = "Cannot return null from a non-@Nullable @Provides method";
        if (sexyLeadsApi != null) {
            return sexyLeadsApi;
        }
        throw new NullPointerException(str);
    }
}
