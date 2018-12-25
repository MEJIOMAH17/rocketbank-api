package ru.rocketbank.r2d2.registration.fragment;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import de.greenrobot.event.EventBus;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.MultipartBody.Part;
import okhttp3.RequestBody;
import ru.rocketbank.core.events.ResultPermissionEvent;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.model.RequestPermissionEvent;
import ru.rocketbank.core.utils.fs.ExternalFile;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.registration.RegistrationStep;
import rx.Observable;

/* compiled from: PhotoRegistrationFragment.kt */
public abstract class PhotoRegistrationFragment extends GenericRegistrationFragment {
    public static final String ANDROID_INTENT_EXTRAS_CAMERA_FACING = "android.intent.extras.CAMERA_FACING";
    public static final Companion Companion = new Companion();
    private static final String KEY_PHOTO_PATH = "KEY_PHOTO_PATH";
    private static final int REQUEST_TAKE_IMAGE = 556;
    private static final int REQUEST_TAKE_PHOTO = 555;
    private static final String TAG = "PHOTO";
    private HashMap _$_findViewCache;
    private ExternalFile externalFile;
    private boolean isPhotoReady;
    private final OnClickListener onGalleryClickListener = new PhotoRegistrationFragment$onGalleryClickListener$1(this);
    private final OnClickListener onNextClicked = new PhotoRegistrationFragment$onNextClicked$1(this);
    private final OnClickListener onPhotoClickListener = new PhotoRegistrationFragment$onPhotoClickListener$1(this);
    private final ArrayList<String> permissions = CollectionsKt.arrayListOf(new String[]{"android.permission.CAMERA", "android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"});
    private String photoPath;

    /* compiled from: PhotoRegistrationFragment.kt */
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

    protected abstract int getHintTopReadyTextRes();

    protected abstract int getImageRes();

    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    protected abstract Observable<RegistrationStep> sendPhoto(Part part);

    private final Intent getCameraIntent() {
        ExternalFile createFile = createFile();
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        intent.putExtra("output", createFile.getUri());
        intent.putExtra("android.intent.extras.CAMERA_FACING", 0);
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
        return intent;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.photoPath = bundle.getString(KEY_PHOTO_PATH, null);
            if (this.photoPath != null) {
                bundle = RocketApplication.Companion.getInjector().getFileManager();
                String str = this.photoPath;
                if (str == null) {
                    Intrinsics.throwNpe();
                }
                this.externalFile = bundle.createFromPath(str);
            }
        }
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
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.registration.fragment.PhotoRegistrationFragment.getRealPathFromURI(android.net.Uri):java.lang.String");
    }

    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        showPhoto();
        checkPermissions();
    }

    private final void onGalleryClick(View view) {
        view.setEnabled(false);
        openGallery();
        view.setEnabled(true);
    }

    private final void openGallery() {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r3 = this;
        r0 = new android.content.Intent;
        r1 = "android.intent.action.PICK";
        r2 = android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
        r0.<init>(r1, r2);
        r1 = 556; // 0x22c float:7.79E-43 double:2.747E-321;
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
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.registration.fragment.PhotoRegistrationFragment.openGallery():void");
    }

    private final void showPhoto() {
        if (this.photoPath == null) {
            setPhotoIsNeeded();
        } else {
            setPhotoIsReady(null);
        }
    }

    private final boolean checkPermissions() {
        Collection arrayList = new ArrayList();
        Iterator it = this.permissions.iterator();
        while (true) {
            boolean z = false;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            String str = (String) next;
            Context context = getContext();
            if (context == null) {
                Intrinsics.throwNpe();
            }
            if (ContextCompat.checkSelfPermission(context, str) != 0) {
                z = true;
            }
            if (z) {
                arrayList.add(next);
            }
        }
        arrayList = (List) arrayList;
        if ((arrayList.isEmpty() ^ 1) == 0) {
            return true;
        }
        EventBus eventBus = EventBus.getDefault();
        Object[] toArray = arrayList.toArray(new String[0]);
        if (toArray == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
        }
        eventBus.post(new RequestPermissionEvent((String[]) toArray));
        return false;
    }

    public final void onEventMainThread(ResultPermissionEvent resultPermissionEvent) {
        Intrinsics.checkParameterIsNotNull(resultPermissionEvent, "resultPermissionEvent");
        if (resultPermissionEvent.getPermissions() != null) {
            String[] permissions = resultPermissionEvent.getPermissions();
            if (permissions == null) {
                Intrinsics.throwNpe();
            }
            List asList = Arrays.asList((String[]) Arrays.copyOf(permissions, permissions.length));
            if (asList.contains("android.permission.WRITE_EXTERNAL_STORAGE")) {
                if (asList.contains("android.permission.CAMERA")) {
                    resultPermissionEvent = resultPermissionEvent.getGrantResults();
                    if (resultPermissionEvent == null) {
                        Intrinsics.throwNpe();
                    }
                    int i = 1;
                    for (Object obj : resultPermissionEvent) {
                        i &= obj == null ? 1 : 0;
                    }
                    if (i == 0) {
                        showSnack((int) C0859R.string.make_photo_permission_denied);
                    }
                    return;
                }
            }
            showSnack((int) C0859R.string.make_photo_permission_denied);
        }
    }

    private final void onTakePhotoClick(View view) {
        if (checkPermissions() == null) {
            showSnack((int) C0859R.string.make_photo_permission_denied);
            return;
        }
        try {
            startActivityForResult(getCameraIntent(), 555);
            view = this.buttonBottom;
            Intrinsics.checkExpressionValueIsNotNull(view, "buttonBottom");
            view.setEnabled(false);
            view = this.button;
            Intrinsics.checkExpressionValueIsNotNull(view, "button");
            view.setEnabled(false);
        } catch (View view2) {
            AnalyticsManager.logException((Throwable) view2);
        }
    }

    public final void onNextButtonClick(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        if (checkPermissions() == null) {
            showSnack((int) C0859R.string.make_photo_permission_denied);
            return;
        }
        view = this.button;
        Intrinsics.checkExpressionValueIsNotNull(view, "button");
        view.setEnabled(false);
        view = this.buttonBottom;
        Intrinsics.checkExpressionValueIsNotNull(view, "buttonBottom");
        view.setEnabled(false);
        String str = this.photoPath;
        if (str == null) {
            Intrinsics.throwNpe();
        }
        view = new File(str);
        view = Part.createFormData("image", view.getAbsolutePath(), RequestBody.create(MediaType.parse("image/*"), view));
        Intrinsics.checkExpressionValueIsNotNull(view, "body");
        execute(sendPhoto(view));
    }

    public void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        super.onError(th);
        th = this.button;
        Intrinsics.checkExpressionValueIsNotNull(th, "button");
        th.setEnabled(true);
        th = this.buttonBottom;
        Intrinsics.checkExpressionValueIsNotNull(th, "buttonBottom");
        th.setEnabled(true);
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        switch (i) {
            case 555:
                if (i2 != -1 || this.photoPath == 0) {
                    this.photoPath = null;
                    initView();
                    setPhotoIsNeeded();
                    break;
                }
                checkPermissions();
                setPhotoIsReady(Boolean.FALSE);
                return;
            case 556:
                if (i2 == -1) {
                    checkPermissions();
                    if (intent == null) {
                        Intrinsics.throwNpe();
                    }
                    i = intent.getData();
                    Intrinsics.checkExpressionValueIsNotNull(i, "data!!.data");
                    i = getRealPathFromURI(i);
                    if (i != 0) {
                        this.photoPath = i;
                        setPhotoIsReady(Boolean.TRUE);
                        return;
                    }
                    return;
                }
                this.photoPath = null;
                initView();
                setPhotoIsNeeded();
                return;
            default:
                break;
        }
    }

    public boolean onBackPressed() {
        if (!this.isPhotoReady) {
            return super.onBackPressed();
        }
        showPhoto();
        return true;
    }

    private final void setPhotoIsNeeded() {
        this.isPhotoReady = false;
        ImageView imageView = this.image;
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        imageView.setColorFilter(ContextCompat.getColor(context, C0859R.color.orange));
        this.image.setImageResource(getImageRes());
        Button button = this.button;
        Intrinsics.checkExpressionValueIsNotNull(button, "button");
        button.setEnabled(true);
        this.button.setOnClickListener(this.onPhotoClickListener);
        this.button.setText(C0859R.string.make_photo);
        this.buttonBottom.setText(C0859R.string.gallery);
        this.buttonBottom.setOnClickListener(this.onGalleryClickListener);
        button = this.buttonBottom;
        Intrinsics.checkExpressionValueIsNotNull(button, "buttonBottom");
        button.setEnabled(true);
        button = this.buttonBottom;
        Intrinsics.checkExpressionValueIsNotNull(button, "buttonBottom");
        button.setVisibility(0);
        TextView textView = this.textViewHintBottom;
        Intrinsics.checkExpressionValueIsNotNull(textView, "textViewHintBottom");
        textView.setVisibility(0);
    }

    private final void setPhotoIsReady(Boolean bool) {
        this.isPhotoReady = true;
        this.image.clearColorFilter();
        if (bool != null) {
            bool = bool.booleanValue();
            RequestManager with = Glide.with(this);
            if (bool == null) {
                bool = this.externalFile;
                if (bool == null) {
                    Intrinsics.throwNpe();
                }
                bool = bool.getFile();
            } else {
                bool = this.photoPath;
            }
            with.load(bool).into(this.image);
        }
        bool = this.buttonBottom;
        Intrinsics.checkExpressionValueIsNotNull(bool, "buttonBottom");
        bool.setVisibility(0);
        bool = this.buttonBottom;
        Intrinsics.checkExpressionValueIsNotNull(bool, "buttonBottom");
        bool.setEnabled(true);
        this.buttonBottom.setText(C0859R.string.back);
        this.buttonBottom.setOnClickListener(new PhotoRegistrationFragment$setPhotoIsReady$2(this));
        bool = this.button;
        Intrinsics.checkExpressionValueIsNotNull(bool, "button");
        bool.setEnabled(true);
        bool = this.button;
        Intrinsics.checkExpressionValueIsNotNull(bool, "button");
        bool.setText(getString(C0859R.string.migration_next));
        this.button.setOnClickListener(this.onNextClicked);
        this.textViewHintTop.setText(getHintTopReadyTextRes());
        bool = this.textViewHintBottom;
        Intrinsics.checkExpressionValueIsNotNull(bool, "textViewHintBottom");
        bool.setVisibility(4);
    }

    public void onSaveInstanceState(Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "outState");
        super.onSaveInstanceState(bundle);
        bundle.putString(KEY_PHOTO_PATH, this.photoPath);
    }

    private final ExternalFile createFile() {
        ExternalFile createPublicImageFile = RocketApplication.Companion.getInjector().getFileManager().createPublicImageFile(String.valueOf(System.currentTimeMillis()), "jpg");
        this.externalFile = createPublicImageFile;
        this.photoPath = createPublicImageFile.getAbsolutePath();
        return createPublicImageFile;
    }
}
