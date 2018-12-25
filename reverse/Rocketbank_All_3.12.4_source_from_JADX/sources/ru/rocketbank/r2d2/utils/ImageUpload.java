package ru.rocketbank.r2d2.utils;

import android.content.ContentResolver;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import com.facebook.share.internal.ShareConstants;
import java.io.File;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.api.RocketAPI;
import ru.rocketbank.core.network.model.UploadImageResponse;
import ru.rocketbank.r2d2.RocketApplication;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action0;
import rx.schedulers.Schedulers;

/* compiled from: ImageUpload.kt */
public final class ImageUpload {
    private static final int FROM_CAMERA = 4096;
    private static final int FROM_GALLERY = 8192;
    public static final ImageUpload INSTANCE = new ImageUpload();
    public static final int REQUEST_AVATAR_FROM_CAMERA = (FROM_CAMERA | 100);
    public static final int REQUEST_AVATAR_FROM_GALLERY = (FROM_CAMERA | 101);
    public static final int REQUEST_COVER_FROM_CAMERA = (FROM_GALLERY | 102);
    public static final int REQUEST_COVER_FROM_GALLERY = (FROM_GALLERY | 103);
    public static final int REQUEST_FROM_CAMERA = (FROM_CAMERA | 104);
    public static final int REQUEST_FROM_GALLERY = (FROM_GALLERY | 105);
    private static final String TAG = "IMAGE_UPLOAD";

    private ImageUpload() {
    }

    public final int getFROM_CAMERA() {
        return FROM_CAMERA;
    }

    public final int getFROM_GALLERY() {
        return FROM_GALLERY;
    }

    public final Observable<Bitmap> loadBitmapForSending(String str) {
        Intrinsics.checkParameterIsNotNull(str, "path");
        str = Observable.just(str).map(new ImageUpload$loadBitmapForSending$1(str)).subscribeOn(Schedulers.io()).subscribeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkExpressionValueIsNotNull(str, "Observable.just(path).ma…dSchedulers.mainThread())");
        return str;
    }

    public final Observable<UploadImageResponse> uploadObservable(Bitmap bitmap, RocketAPI rocketAPI) {
        Intrinsics.checkParameterIsNotNull(bitmap, "bitmap");
        Intrinsics.checkParameterIsNotNull(rocketAPI, "rocketAPI");
        try {
            StringBuilder stringBuilder = new StringBuilder("file_");
            stringBuilder.append(String.valueOf(System.currentTimeMillis()));
            File createTempFile = File.createTempFile(stringBuilder.toString(), ".jpg");
            Intrinsics.checkExpressionValueIsNotNull(createTempFile, "File.createTempFile(\"fil…lis().toString(), \".jpg\")");
            bitmap = Observable.just(bitmap).flatMap(new ImageUpload$uploadObservable$2(createTempFile, rocketAPI)).doOnUnsubscribe((Action0) new ImageUpload$uploadObservable$3(createTempFile)).subscribeOn(Schedulers.io()).subscribeOn(AndroidSchedulers.mainThread());
            Intrinsics.checkExpressionValueIsNotNull(bitmap, "Observable.just(bitmap).…dSchedulers.mainThread())");
            return bitmap;
        } catch (Bitmap bitmap2) {
            bitmap2 = Observable.create((OnSubscribe) new ImageUpload$uploadObservable$1(bitmap2));
            Intrinsics.checkExpressionValueIsNotNull(bitmap2, "Observable.create { subs…> subscriber.onError(e) }");
            return bitmap2;
        }
    }

    public final Observable<Bitmap> observableFromGallery(String str) {
        Intrinsics.checkParameterIsNotNull(str, ShareConstants.MEDIA_URI);
        Uri parse = Uri.parse(str);
        Intrinsics.checkExpressionValueIsNotNull(parse, "Uri.parse(uri)");
        return observableFromGallery(parse);
    }

    public final Observable<Bitmap> observableFromGallery(Uri uri) {
        Intrinsics.checkParameterIsNotNull(uri, ShareConstants.MEDIA_URI);
        uri = Observable.just(uri).map(ImageUpload$observableFromGallery$1.INSTANCE).map(new ImageUpload$observableFromGallery$2(uri)).subscribeOn(Schedulers.io()).subscribeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkExpressionValueIsNotNull(uri, "Observable.just(uri).map…dSchedulers.mainThread())");
        return uri;
    }

    private final String getRealPathFromURI(Uri uri) {
        String[] strArr = new String[]{"_data"};
        ContentResolver contentResolver = RocketApplication.Companion.getContext().getContentResolver();
        if (contentResolver != null) {
            uri = contentResolver.query(uri, strArr, null, null, null);
            if (uri != null) {
                try {
                    int columnIndexOrThrow = uri.getColumnIndexOrThrow("_data");
                    uri.moveToFirst();
                    String string = uri.getString(columnIndexOrThrow);
                    return string;
                } finally {
                    uri.close();
                }
            }
        }
        return null;
    }

    private final int calculateInSampleSize(Options options, int i, int i2) {
        int i3 = options.outHeight;
        options = options.outWidth;
        int i4 = 1;
        if (i3 > i2 || options > i) {
            i3 /= 2;
            options /= 2;
            while (i3 / i4 > i2 && options / i4 > i) {
                i4 <<= 1;
            }
        }
        return i4;
    }

    public final Observable<Bitmap> observableFromCamera(String str, int i) {
        Intrinsics.checkParameterIsNotNull(str, "cameraPhotoPath");
        str = Observable.just(str).map(new ImageUpload$observableFromCamera$1(i)).subscribeOn(Schedulers.computation()).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkExpressionValueIsNotNull(str, "Observable.just(cameraPh…dSchedulers.mainThread())");
        return str;
    }

    public final Bitmap decodeSampledBitmapFromFile(String str, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(str, "fileName");
        Options options = new Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inSampleSize = calculateInSampleSize(options, i, i2);
        options.inJustDecodeBounds = false;
        options.inPreferredConfig = Config.RGB_565;
        str = BitmapFactory.decodeFile(str, options);
        Intrinsics.checkExpressionValueIsNotNull(str, "BitmapFactory.decodeFile(fileName, options)");
        return str;
    }

    public final String getTAG() {
        return TAG;
    }
}
