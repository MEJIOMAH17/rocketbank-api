package ru.rocketbank.r2d2.root.feed;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import com.facebook.share.internal.ShareConstants;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.activities.AccountDetailsActivity;
import ru.rocketbank.r2d2.activities.AnalyticsActivity;
import ru.rocketbank.r2d2.activities.CardBlockActivity;
import ru.rocketbank.r2d2.activities.DiscountsActivity;
import ru.rocketbank.r2d2.activities.MainActivity;
import ru.rocketbank.r2d2.activities.ProfileActivity;
import ru.rocketbank.r2d2.activities.ProvidersActivity;
import ru.rocketbank.r2d2.activities.SupportChatActivity;
import ru.rocketbank.r2d2.friends.InviteFriendsActivity;

/* compiled from: Actions.kt */
public final class Actions {
    public static final Actions INSTANCE = new Actions();

    private Actions() {
    }

    public final void performAction(Activity activity, String str) {
        Intrinsics.checkParameterIsNotNull(activity, "activity");
        Intrinsics.checkParameterIsNotNull(str, "ref");
        Uri parse = Uri.parse(str);
        Intrinsics.checkExpressionValueIsNotNull(parse, ShareConstants.MEDIA_URI);
        if (Intrinsics.areEqual(parse.getScheme(), "rocketbank") && Intrinsics.areEqual(parse.getAuthority(), "app") && parse.getPathSegments().size() > 0) {
            CharSequence charSequence = str;
            if (!StringsKt.contains$default(charSequence, "/app/deposits", false, 2, null)) {
                if (StringsKt.contains$default(charSequence, "/app/analytics", false, 2, null)) {
                    activity.startActivity(new Intent(activity, AnalyticsActivity.class));
                    return;
                } else if (StringsKt.contains$default(charSequence, "/app/inviting", false, 2, null)) {
                    activity.startActivity(new Intent(activity, InviteFriendsActivity.class));
                    return;
                } else if (StringsKt.contains$default(charSequence, "/app/support", false, 2, null)) {
                    SupportChatActivity.Companion.start(activity);
                    return;
                } else if (StringsKt.contains$default(charSequence, "/app/refill/bank", false, 2, null)) {
                    activity.startActivity(new Intent(activity, AccountDetailsActivity.class));
                    return;
                } else if (!StringsKt.contains$default(charSequence, "/app/refill", false, 2, null)) {
                    if (StringsKt.contains$default(charSequence, "/app/transfer", false, 2, null)) {
                        ((MainActivity) activity).showTransfers();
                        return;
                    } else if (StringsKt.contains$default(charSequence, "/app/profile", false, 2, null)) {
                        activity.startActivity(new Intent(activity, ProfileActivity.class));
                        return;
                    } else if (StringsKt.contains$default(charSequence, "/app/blocking", false, 2, null)) {
                        activity.startActivity(new Intent(activity, CardBlockActivity.class));
                        return;
                    } else if (StringsKt.contains$default(charSequence, "/app/discounts", false, 2, null)) {
                        activity.startActivity(new Intent(activity, DiscountsActivity.class));
                        return;
                    } else if (StringsKt.contains$default(charSequence, "/app/payments", false, 2, null) != null) {
                        activity.startActivity(new Intent(activity, ProvidersActivity.class));
                        return;
                    }
                } else {
                    return;
                }
            }
            return;
        }
        Utils.openUrl(activity, str);
    }
}
