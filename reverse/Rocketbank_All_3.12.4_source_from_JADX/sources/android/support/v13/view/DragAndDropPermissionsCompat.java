package android.support.v13.view;

import android.app.Activity;
import android.os.Build.VERSION;
import android.support.annotation.RestrictTo;
import android.view.DragEvent;

public final class DragAndDropPermissionsCompat {
    private Object mDragAndDropPermissions;

    private DragAndDropPermissionsCompat(Object obj) {
        this.mDragAndDropPermissions = obj;
    }

    @RestrictTo
    public static DragAndDropPermissionsCompat request(Activity activity, DragEvent dragEvent) {
        if (VERSION.SDK_INT >= 24) {
            activity = activity.requestDragAndDropPermissions(dragEvent);
            if (activity != null) {
                return new DragAndDropPermissionsCompat(activity);
            }
        }
        return null;
    }
}
