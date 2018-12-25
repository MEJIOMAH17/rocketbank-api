package ru.rocketbank.r2d2.registration.new_passport;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Build.VERSION;
import android.support.v4.app.FragmentActivity;
import android.support.v4.content.ContextCompat;
import android.view.View;
import com.facebook.internal.NativeProtocol;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.utils.fs.ExternalFile;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.helpers.UIHelper;
import ru.rocketbank.r2d2.utils.ImageUpload;

/* compiled from: NewPassportStepFragment.kt */
public abstract class NewPassportStepFragment extends NewPassportFragment {
    private static final int CAMERA_PERMISSION_CODE = 2172;
    public static final Companion Companion = new Companion();
    private static final int GALLERY_PERMISSION_CODE = 2173;
    private HashMap _$_findViewCache;
    private String photoPath = "";

    /* compiled from: NewPassportStepFragment.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view == null) {
            view = getView();
            if (view == null) {
                return null;
            }
            view = view.findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view);
        }
        return view;
    }

    protected String getPhotoTitle() {
        return null;
    }

    protected abstract int getStep();

    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    protected String getMainButtonText() {
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        String string = context.getString(C0859R.string.make_photo);
        Intrinsics.checkExpressionValueIsNotNull(string, "context!!.getString(R.string.make_photo)");
        return string;
    }

    protected String getBottomButtonText() {
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        return context.getString(C0859R.string.select_photo);
    }

    public void onMainButtonClicked() {
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        if (ContextCompat.checkSelfPermission(context, "android.permission.CAMERA") == 0) {
            context = getContext();
            if (context == null) {
                Intrinsics.throwNpe();
            }
            if (ContextCompat.checkSelfPermission(context, "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
                openCamera();
                return;
            }
        }
        requestPermissions(new String[]{"android.permission.CAMERA", "android.permission.WRITE_EXTERNAL_STORAGE"}, CAMERA_PERMISSION_CODE);
    }

    public void onBottomButtonClicked() {
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        if (ContextCompat.checkSelfPermission(context, "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
            openGallery();
            return;
        }
        requestPermissions(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, GALLERY_PERMISSION_CODE);
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        if (i2 == -1) {
            i2 = getPhotoTitle();
            if (i == ImageUpload.REQUEST_AVATAR_FROM_GALLERY) {
                if (intent != null) {
                    i = intent.getData();
                    if (i != 0) {
                        i = getRealPathFromURI(i);
                        if (i != 0) {
                            showResult(i, i2);
                        }
                    }
                }
            } else if (i == ImageUpload.REQUEST_COVER_FROM_CAMERA) {
                showResult(this.photoPath, i2);
            }
        }
    }

    private final void openCamera() {
        ExternalFile createFile = createFile();
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        intent.putExtra("output", createFile.getUri());
        if (VERSION.SDK_INT < 21) {
            Context context = getContext();
            if (context == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
            List queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 65536);
            Intrinsics.checkExpressionValueIsNotNull(queryIntentActivities, "resInfoList");
            Iterable<ResolveInfo> iterable = queryIntentActivities;
            Collection arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault$251b5948(iterable));
            for (ResolveInfo resolveInfo : iterable) {
                arrayList.add(resolveInfo.activityInfo.packageName);
            }
            for (String str : (List) arrayList) {
                Context context2 = getContext();
                if (context2 == null) {
                    Intrinsics.throwNpe();
                }
                context2.grantUriPermission(str, createFile.getUri(), 3);
            }
        }
        try {
            startActivityForResult(intent, ImageUpload.REQUEST_COVER_FROM_CAMERA);
        } catch (Exception e) {
            AnalyticsManager.logException(e);
        }
    }

    private final void openGallery() {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
*/
        /*
        r3 = this;
        r0 = new android.content.Intent;
        r1 = "android.intent.action.PICK";
        r2 = android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
        r0.<init>(r1, r2);
        r1 = ru.rocketbank.r2d2.utils.ImageUpload.REQUEST_AVATAR_FROM_GALLERY;	 Catch:{ Exception -> 0x000f }
        r3.startActivityForResult(r0, r1);	 Catch:{ Exception -> 0x000f }
        return;
    L_0x000f:
        r0 = r3.getContext();
        r1 = "Упс, что-то пошло не так =(";
        r1 = (java.lang.CharSequence) r1;
        r2 = 0;
        r0 = android.widget.Toast.makeText(r0, r1, r2);
        r0.show();
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.registration.new_passport.NewPassportStepFragment.openGallery():void");
    }

    private final ExternalFile createFile() {
        ExternalFile createPublicImageFile = RocketApplication.Companion.getInjector().getFileManager().createPublicImageFile(String.valueOf(System.currentTimeMillis()), "jpg");
        this.photoPath = createPublicImageFile.getAbsolutePath();
        return createPublicImageFile;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final java.lang.String getRealPathFromURI(android.net.Uri r8) {
        /*
        r7 = this;
        r0 = 1;
        r3 = new java.lang.String[r0];
        r0 = "_data";
        r1 = 0;
        r3[r1] = r0;
        r0 = r7.getContext();
        if (r0 != 0) goto L_0x0011;
    L_0x000e:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x0011:
        r1 = "context!!";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1);
        r1 = r0.getContentResolver();
        r0 = 0;
        if (r1 == 0) goto L_0x0046;
    L_0x001d:
        r4 = 0;
        r5 = 0;
        r6 = 0;
        r2 = r8;
        r8 = r1.query(r2, r3, r4, r5, r6);
        if (r8 != 0) goto L_0x0028;
    L_0x0027:
        goto L_0x0046;
    L_0x0028:
        r8 = (java.io.Closeable) r8;
        r1 = r8;
        r1 = (android.database.Cursor) r1;	 Catch:{ Throwable -> 0x0040 }
        r2 = "_data";
        r2 = r1.getColumnIndexOrThrow(r2);	 Catch:{ Throwable -> 0x0040 }
        r1.moveToFirst();	 Catch:{ Throwable -> 0x0040 }
        r1 = r1.getString(r2);	 Catch:{ Throwable -> 0x0040 }
        kotlin.io.CloseableKt.closeFinally(r8, r0);
        return r1;
    L_0x003e:
        r1 = move-exception;
        goto L_0x0042;
    L_0x0040:
        r0 = move-exception;
        throw r0;	 Catch:{ all -> 0x003e }
    L_0x0042:
        kotlin.io.CloseableKt.closeFinally(r8, r0);
        throw r1;
    L_0x0046:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.registration.new_passport.NewPassportStepFragment.getRealPathFromURI(android.net.Uri):java.lang.String");
    }

    private final void showResult(String str, String str2) {
        FragmentActivity activity = getActivity();
        if (activity instanceof NewPassportActivity) {
            ((NewPassportActivity) activity).showResult$App_prodRelease(str, str2);
        }
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        Intrinsics.checkParameterIsNotNull(strArr, NativeProtocol.RESULT_ARGS_PERMISSIONS);
        Intrinsics.checkParameterIsNotNull(iArr, "grantResults");
        strArr = null;
        switch (i) {
            case CAMERA_PERMISSION_CODE /*2172*/:
                i = iArr.length;
                while (strArr < i) {
                    if (iArr[strArr] != 0) {
                        UIHelper.showSnack(getView(), "Не удалось получить разрешение на доступ к камере или хранилищу");
                        return;
                    } else {
                        openCamera();
                        strArr++;
                    }
                }
                return;
            case GALLERY_PERMISSION_CODE /*2173*/:
                i = iArr.length;
                while (strArr < i) {
                    if (iArr[strArr] != 0) {
                        UIHelper.showSnack(getView(), "Не удалось получить разрешение на доступ к хранилищу");
                        return;
                    } else {
                        openGallery();
                        strArr++;
                    }
                }
                break;
            default:
                break;
        }
    }
}
