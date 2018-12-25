package android.support.v4.app;

import android.app.Notification.Builder;
import android.support.annotation.RestrictTo;

@RestrictTo
public interface NotificationBuilderWithBuilderAccessor {
    Builder getBuilder();
}
