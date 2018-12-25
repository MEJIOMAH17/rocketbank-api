package ru.rocketbank.r2d2.fragments.migration.fragment;

import android.content.Intent;
import android.graphics.PorterDuff.Mode;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.support.v4.content.ContextCompat;
import android.view.View;
import android.view.View.OnClickListener;
import com.bumptech.glide.Glide;
import de.greenrobot.event.EventBus;
import java.io.File;
import okhttp3.MediaType;
import okhttp3.MultipartBody.Part;
import okhttp3.RequestBody;
import ru.rocketbank.core.events.ResultPermissionEvent;
import ru.rocketbank.core.model.RequestPermissionEvent;
import ru.rocketbank.core.model.migration.MigrationResponse;
import ru.rocketbank.r2d2.C0859R;
import rx.Observable;

public abstract class PhotoMigrationFragment extends GenericMigrationFragment {
    public static final String ANDROID_INTENT_EXTRAS_CAMERA_FACING = "android.intent.extras.CAMERA_FACING";
    private static final String KEY_PHOTO_PATH = "KEY_PHOTO_PATH";
    private static final int REQUEST_TAKE_PHOTO = 555;
    private OnClickListener onClickListener = new C15441();
    private String photoPath = null;

    /* renamed from: ru.rocketbank.r2d2.fragments.migration.fragment.PhotoMigrationFragment$1 */
    class C15441 implements OnClickListener {
        C15441() {
        }

        public void onClick(View view) {
            PhotoMigrationFragment.this.onTakePhotoClick(view);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.migration.fragment.PhotoMigrationFragment$2 */
    class C15452 implements OnClickListener {
        C15452() {
        }

        public void onClick(View view) {
            PhotoMigrationFragment.this.onTakePhotoClick(view);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.migration.fragment.PhotoMigrationFragment$3 */
    class C15463 implements OnClickListener {
        C15463() {
        }

        public void onClick(View view) {
            PhotoMigrationFragment.this.onNextButtonClick(view);
        }
    }

    protected abstract int getHintTopReadyTextRes();

    protected abstract Observable<MigrationResponse> sendPhoto(Part part);

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (bundle != null) {
            this.photoPath = bundle.getString(KEY_PHOTO_PATH, null);
        }
        showPhoto();
        this.buttonBottom.setText(C0859R.string.migration_button_retake_caption);
        checkPermissions();
        view.findViewById(C0859R.id.buttonBottom).setOnClickListener(this.onClickListener);
        view.findViewById(C0859R.id.image).setOnClickListener(this.onClickListener);
    }

    private boolean checkPermissions() {
        if (ContextCompat.checkSelfPermission(getContext(), "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
            return true;
        }
        EventBus.getDefault().post(new RequestPermissionEvent(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}));
        return false;
    }

    public void onEventMainThread(ResultPermissionEvent resultPermissionEvent) {
        if (resultPermissionEvent.getPermissions()[0].equals("android.permission.WRITE_EXTERNAL_STORAGE") && resultPermissionEvent.getGrantResults()[0] == null) {
            showPhoto();
        }
    }

    private void showPhoto() {
        if (this.photoPath == null) {
            setPhotoIsNeeded();
        } else {
            setPhotoIsReady();
        }
    }

    public void onTakePhotoClick(android.view.View r2) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
*/
        /*
        r1 = this;
        r1.checkPermissions();
        r2 = r1.getCameraIntent();	 Catch:{ Exception -> 0x0018 }
        r0 = 555; // 0x22b float:7.78E-43 double:2.74E-321;	 Catch:{ Exception -> 0x0018 }
        r1.startActivityForResult(r2, r0);	 Catch:{ Exception -> 0x0018 }
        r2 = r1.buttonBottom;
        r0 = 0;
        r2.setEnabled(r0);
        r2 = r1.button;
        r2.setEnabled(r0);
        return;
    L_0x0018:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.fragments.migration.fragment.PhotoMigrationFragment.onTakePhotoClick(android.view.View):void");
    }

    protected Intent getCameraIntent() {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        intent.putExtra("output", Uri.fromFile(createFile()));
        intent.putExtra("android.intent.extras.CAMERA_FACING", 0);
        return intent;
    }

    public void onNextButtonClick(View view) {
        if (checkPermissions() == null) {
            this.button.setEnabled(false);
            this.buttonBottom.setEnabled(false);
            view = new File(this.photoPath);
            execute(sendPhoto(Part.createFormData("image", view.getAbsolutePath(), RequestBody.create(MediaType.parse("image/*"), view))));
        }
    }

    protected void onError(Throwable th) {
        super.onError(th);
        this.button.setEnabled(true);
        this.buttonBottom.setEnabled(true);
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 555) {
            if (i2 == -1) {
                checkPermissions();
                setPhotoIsReady();
                return;
            }
            this.photoPath = 0;
            initView();
            setPhotoIsNeeded();
        }
    }

    private void setPhotoIsNeeded() {
        this.image.setColorFilter(ContextCompat.getColor(getContext(), C0859R.color.rocketBlue));
        this.buttonBottom.setVisibility(4);
        this.buttonBottom.setEnabled(false);
        this.button.setEnabled(true);
        this.button.setOnClickListener(new C15452());
        this.textViewHintBottom.setVisibility(0);
    }

    private void setPhotoIsReady() {
        this.image.setColorFilter(-1, Mode.MULTIPLY);
        Glide.with(this).load(new File(this.photoPath)).into(this.image);
        this.buttonBottom.setVisibility(0);
        this.buttonBottom.setEnabled(true);
        this.button.setEnabled(true);
        this.button.setText(getString(C0859R.string.migration_next));
        this.button.setOnClickListener(new C15463());
        this.textViewHintTop.setText(getHintTopReadyTextRes());
        this.textViewHintBottom.setVisibility(4);
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(KEY_PHOTO_PATH, this.photoPath);
    }

    private File createFile() {
        File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES);
        externalStoragePublicDirectory.mkdirs();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(System.currentTimeMillis());
        stringBuilder.append(".jpg");
        File file = new File(externalStoragePublicDirectory, stringBuilder.toString());
        this.photoPath = file.getAbsolutePath();
        return file;
    }
}
