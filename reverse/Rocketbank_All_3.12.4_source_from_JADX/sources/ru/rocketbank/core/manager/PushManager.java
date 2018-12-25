package ru.rocketbank.core.manager;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.media.RingtoneManager;
import android.net.Uri;
import android.support.v4.app.NotificationCompat.BigTextStyle;
import android.support.v4.app.NotificationCompat.Builder;
import android.support.v4.content.ContextCompat;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.common.ConnectionResult;
import java.util.Random;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.BaseRocketApplication;
import ru.rocketbank.core.utils.RocketAction;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: PushManager.kt */
public final class PushManager {
    public static final Companion Companion = new Companion();
    public static final PushManager instance = new PushManager();
    private final BaseRocketApplication context = BaseRocketApplication.getContext();
    private boolean isMessage = true;
    private boolean isOperation = true;
    private final NotificationManager notificationManager;
    private final Random random = new Random();

    /* compiled from: PushManager.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    private PushManager() {
        Object systemService = this.context.getSystemService("notification");
        if (systemService == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.app.NotificationManager");
        }
        this.notificationManager = (NotificationManager) systemService;
    }

    public final void allowMessages(boolean z) {
        this.isMessage = z;
    }

    public final void allowOperations(boolean z) {
        this.isOperation = z;
    }

    public final void cancelMessages() {
        this.notificationManager.cancel(1);
    }

    public final void cancelOperations() {
        this.notificationManager.cancel(2);
    }

    public final void showMessage(boolean z, String str, Class<?> cls, int i) {
        Intrinsics.checkParameterIsNotNull(str, ShareConstants.WEB_DIALOG_PARAM_MESSAGE);
        Intrinsics.checkParameterIsNotNull(cls, "cls");
        if (this.isMessage) {
            show(z, 1, str, "Служба поддержки", cls, i, null);
        }
    }

    public final void showOperation(boolean z, String str, Class<?> cls, int i, Bitmap bitmap) {
        Intrinsics.checkParameterIsNotNull(str, ShareConstants.WEB_DIALOG_PARAM_MESSAGE);
        Intrinsics.checkParameterIsNotNull(cls, "cls");
        if (this.isOperation) {
            show(z, 2, str, "Операция", cls, i, bitmap);
        }
    }

    private final void show(boolean z, int i, String str, String str2, Class<?> cls, int i2, Bitmap bitmap) {
        Intent intent = new Intent(this.context, cls);
        switch (i) {
            case 1:
                intent.setAction(RocketAction.ACTION_SUPPORT);
                break;
            case 2:
                intent.setAction(RocketAction.ACTION_FEED);
                break;
            default:
                break;
        }
        cls = PendingIntent.getActivity((Context) this.context, i, intent, 268435456);
        this.notificationManager.cancel(i);
        int color = ContextCompat.getColor(this.context, C0859R.color.orange);
        if (bitmap == null) {
            bitmap = ContextCompat.getDrawable((Context) this.context, C0859R.drawable.rocketbank_notification_icon);
            bitmap = bitmap instanceof BitmapDrawable ? ((BitmapDrawable) bitmap).getBitmap() : null;
        }
        Builder builder = new Builder(this.context);
        CharSequence charSequence = str;
        builder.setAutoCancel(true).setColor(color).setContentIntent(cls).setContentText(charSequence).setContentTitle(str2).setLights(color, 1000, ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED).setLargeIcon(bitmap).setSmallIcon(C0859R.drawable.rocketbank_notification_icon_small).setStyle(new BigTextStyle().bigText(charSequence));
        if (i2 > 0) {
            builder.setSound(getRawPath(i2));
        } else {
            builder.setDefaults(z | 2);
        }
        z = builder.build();
        str = this.notificationManager;
        if (i != 1) {
            i = this.random.nextInt();
        }
        str.notify(i, z);
    }

    public final void showPlain(boolean z, int i, String str, String str2, Class<?> cls, int i2) {
        Intrinsics.checkParameterIsNotNull(str2, ShareConstants.WEB_DIALOG_PARAM_TITLE);
        Intrinsics.checkParameterIsNotNull(cls, "cls");
        if (str != null) {
            CharSequence charSequence = str;
            if (!(charSequence.length() == 0)) {
                cls = PendingIntent.getActivity(this.context, i, new Intent(this.context, cls), 268435456);
                this.notificationManager.cancel(i);
                int color = ContextCompat.getColor(this.context, C0859R.color.orange);
                Drawable drawable = ContextCompat.getDrawable(this.context, C0859R.drawable.rocketbank_notification_icon);
                Bitmap bitmap = null;
                if (!(drawable instanceof BitmapDrawable)) {
                    drawable = null;
                }
                BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                if (bitmapDrawable != null) {
                    bitmap = bitmapDrawable.getBitmap();
                }
                Builder builder = new Builder(this.context);
                builder.setAutoCancel(true).setColor(color).setContentIntent(cls).setContentText(charSequence).setContentTitle(str2).setLights(color, 1000, ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED).setLargeIcon(bitmap).setSmallIcon(C0859R.drawable.rocketbank_notification_icon_small).setStyle(new BigTextStyle().bigText(charSequence));
                if (i2 >= 0) {
                    builder.setSound(getRawPath(i2));
                } else {
                    builder.setDefaults(z | 2);
                }
                this.notificationManager.notify(i, builder.build());
            }
        }
    }

    public final void showSound(int i, String str, String str2, Class<?> cls, int i2) {
        boolean z;
        Intrinsics.checkParameterIsNotNull(str2, ShareConstants.WEB_DIALOG_PARAM_TITLE);
        Intrinsics.checkParameterIsNotNull(cls, "cls");
        CharSequence charSequence = str;
        if (charSequence != null) {
            if (charSequence.length() != 0) {
                z = false;
                if (z) {
                    cls = PendingIntent.getActivity(this.context, i, new Intent(this.context, cls), 268435456);
                    Drawable drawable = ContextCompat.getDrawable(this.context, C0859R.drawable.rocketbank_notification_icon);
                    Bitmap bitmap = drawable instanceof BitmapDrawable ? ((BitmapDrawable) drawable).getBitmap() : null;
                    this.notificationManager.cancel(i);
                    int color = ContextCompat.getColor(this.context, C0859R.color.orange);
                    this.notificationManager.notify(i, new Builder(this.context).setAutoCancel(true).setColor(color).setContentIntent(cls).setContentText(charSequence).setSound(getRawPath(i2)).setContentTitle(str2).setLights(color, 1000, ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED).setLargeIcon(bitmap).setSmallIcon(C0859R.drawable.rocketbank_notification_icon_small).setStyle(new BigTextStyle().bigText(charSequence)).build());
                }
            }
        }
        z = true;
        if (z) {
            cls = PendingIntent.getActivity(this.context, i, new Intent(this.context, cls), 268435456);
            Drawable drawable2 = ContextCompat.getDrawable(this.context, C0859R.drawable.rocketbank_notification_icon);
            if (drawable2 instanceof BitmapDrawable) {
            }
            this.notificationManager.cancel(i);
            int color2 = ContextCompat.getColor(this.context, C0859R.color.orange);
            this.notificationManager.notify(i, new Builder(this.context).setAutoCancel(true).setColor(color2).setContentIntent(cls).setContentText(charSequence).setSound(getRawPath(i2)).setContentTitle(str2).setLights(color2, 1000, ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED).setLargeIcon(bitmap).setSmallIcon(C0859R.drawable.rocketbank_notification_icon_small).setStyle(new BigTextStyle().bigText(charSequence)).build());
        }
    }

    public final void showWebAuth(int i, String str, String str2, PendingIntent pendingIntent, Bitmap bitmap) {
        Intrinsics.checkParameterIsNotNull(str2, ShareConstants.WEB_DIALOG_PARAM_TITLE);
        Intrinsics.checkParameterIsNotNull(pendingIntent, "contentIntent");
        int color = ContextCompat.getColor(this.context, C0859R.color.orange);
        CharSequence charSequence = str;
        this.notificationManager.notify(i, new Builder(this.context).setAutoCancel(true).setColor(color).setLargeIcon(bitmap).setContentText(charSequence).setContentTitle(str2).setLights(color, 1000, ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED).setSmallIcon(C0859R.drawable.rocketbank_notification_icon_small).setStyle(new BigTextStyle().bigText(charSequence)).setPriority(2).setSound(RingtoneManager.getDefaultUri(2), 5).setContentIntent(pendingIntent).build());
    }

    private final Uri getRawPath(int i) {
        BaseRocketApplication baseRocketApplication = this.context;
        Intrinsics.checkExpressionValueIsNotNull(baseRocketApplication, "context");
        String packageName = baseRocketApplication.getPackageName();
        StringBuilder stringBuilder = new StringBuilder("android.resource://");
        stringBuilder.append(packageName);
        stringBuilder.append('/');
        stringBuilder.append(i);
        i = Uri.parse(stringBuilder.toString());
        Intrinsics.checkExpressionValueIsNotNull(i, "Uri.parse(\"android.resource://$packageName/$raw\")");
        return i;
    }

    public final void showUpdate$6bd33ff8(int i, String str, String str2) {
        boolean z;
        Intent intent;
        BaseRocketApplication baseRocketApplication;
        Intrinsics.checkParameterIsNotNull(str2, ShareConstants.WEB_DIALOG_PARAM_TITLE);
        CharSequence charSequence = str;
        if (charSequence != null) {
            if (charSequence.length() != 0) {
                z = false;
                if (z) {
                    intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.google.android.gms"));
                    baseRocketApplication = this.context;
                    Intrinsics.checkExpressionValueIsNotNull(baseRocketApplication, "context");
                    if (intent.resolveActivity(baseRocketApplication.getPackageManager()) == null) {
                        intent.addFlags(1208483840);
                        PendingIntent activity = PendingIntent.getActivity(this.context, i, intent, 268435456);
                        this.notificationManager.cancel(i);
                        Drawable drawable = ContextCompat.getDrawable(this.context, C0859R.drawable.rocketbank_notification_icon);
                        Bitmap bitmap = drawable instanceof BitmapDrawable ? ((BitmapDrawable) drawable).getBitmap() : null;
                        int color = ContextCompat.getColor(this.context, C0859R.color.orange);
                        this.notificationManager.notify(i, new Builder(this.context).setAutoCancel(true).setColor(color).setContentIntent(activity).setContentText(charSequence).setContentTitle(str2).setDefaults(3).setLights(color, 1000, ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED).setLargeIcon(bitmap).setSmallIcon(C0859R.drawable.rocketbank_notification_icon_small).setStyle(new BigTextStyle().bigText(charSequence)).build());
                    }
                }
            }
        }
        z = true;
        if (z) {
            intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.google.android.gms"));
            baseRocketApplication = this.context;
            Intrinsics.checkExpressionValueIsNotNull(baseRocketApplication, "context");
            if (intent.resolveActivity(baseRocketApplication.getPackageManager()) == null) {
                intent.addFlags(1208483840);
                PendingIntent activity2 = PendingIntent.getActivity(this.context, i, intent, 268435456);
                this.notificationManager.cancel(i);
                Drawable drawable2 = ContextCompat.getDrawable(this.context, C0859R.drawable.rocketbank_notification_icon);
                if (drawable2 instanceof BitmapDrawable) {
                }
                int color2 = ContextCompat.getColor(this.context, C0859R.color.orange);
                this.notificationManager.notify(i, new Builder(this.context).setAutoCancel(true).setColor(color2).setContentIntent(activity2).setContentText(charSequence).setContentTitle(str2).setDefaults(3).setLights(color2, 1000, ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED).setLargeIcon(bitmap).setSmallIcon(C0859R.drawable.rocketbank_notification_icon_small).setStyle(new BigTextStyle().bigText(charSequence)).build());
            }
        }
    }
}
