package ru.rocketbank.r2d2.root.chat.sync;

import android.util.Log;
import ru.rocketbank.core.model.UserModel;
import rx.functions.Action1;

/* compiled from: MessageNotifier.kt */
final class MessageNotifier$onStart$1<T> implements Action1<UserModel> {
    final /* synthetic */ MessageNotifier this$0;

    MessageNotifier$onStart$1(MessageNotifier messageNotifier) {
        this.this$0 = messageNotifier;
    }

    public final void call(UserModel userModel) {
        userModel = MessageNotifier.Companion.getTAG();
        StringBuilder stringBuilder = new StringBuilder("new user model ");
        stringBuilder.append(this.this$0.getChannelName());
        stringBuilder.append(' ');
        stringBuilder.append(this.this$0.getAuthorization().getPusherToken());
        Log.v(userModel, stringBuilder.toString());
        if (this.this$0.getAuthorization().isAuthorized() != null) {
            Log.v(MessageNotifier.Companion.getTAG(), "Ok, refresh me");
            this.this$0.disconnect();
            this.this$0.connect();
        }
    }
}
