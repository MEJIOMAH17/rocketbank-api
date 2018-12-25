package ru.rocketbank.r2d2.fragments.profile;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import android.widget.Toast;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import ru.rocketbank.core.model.SetUsernameResponse;
import ru.rocketbank.core.model.UsernameModel;
import ru.rocketbank.core.network.exception.RocketResponseException;
import ru.rocketbank.core.network.model.PatchProfileBody;
import ru.rocketbank.core.network.model.PatchProfileBody.User;
import ru.rocketbank.core.network.model.PatchProfileBody.UserName;
import rx.Subscriber;
import rx.android.schedulers.AndroidSchedulers;

/* compiled from: ProfileFragment.kt */
final class ProfileFragment$onChangeRefillLinkRequested$1 implements OnClickListener {
    final /* synthetic */ EditText $username;
    final /* synthetic */ ProfileFragment this$0;

    ProfileFragment$onChangeRefillLinkRequested$1(ProfileFragment profileFragment, EditText editText) {
        this.this$0 = profileFragment;
        this.$username = editText;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface = this.$username.getText().toString();
        this.this$0.showProgressDialog();
        i = new PatchProfileBody();
        i.setUser(new User());
        i.getUser().setUsername(new UserName());
        UserName username = i.getUser().getUsername();
        if (username == null) {
            Intrinsics.throwNpe();
        }
        username.setValue(dialogInterface);
        this.this$0.changeNameSubscription = this.this$0.rocketAPI.setUserName(i).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new Subscriber<SetUsernameResponse>() {
            public final void onCompleted() {
            }

            public final void onError(Throwable th) {
                Intrinsics.checkParameterIsNotNull(th, "e");
                this.this$0.hideProgressDialog();
                if ((th instanceof RocketResponseException) && ((RocketResponseException) th).isNetworkError() == null) {
                    Context activity = this.this$0.getActivity();
                    StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                    String format = String.format("Страничка c именем %s уже занята =(", Arrays.copyOf(new Object[]{dialogInterface}, 1));
                    Intrinsics.checkExpressionValueIsNotNull(format, "java.lang.String.format(format, *args)");
                    Toast.makeText(activity, format, 1).show();
                }
            }

            public final void onNext(SetUsernameResponse setUsernameResponse) {
                Intrinsics.checkParameterIsNotNull(setUsernameResponse, "setUsernameResponse");
                this.this$0.hideProgressDialog();
                setUsernameResponse = this.this$0.authorization.getUserImmediate();
                if (setUsernameResponse != null) {
                    UsernameModel username = setUsernameResponse.getUsername();
                    Intrinsics.checkExpressionValueIsNotNull(username, "userModel1.username");
                    username.setValue(dialogInterface);
                    this.this$0.authorization.reloadProfile();
                    Toast.makeText(this.this$0.getActivity(), "Готово!", 1).show();
                    username = setUsernameResponse.getUsername();
                    Intrinsics.checkExpressionValueIsNotNull(username, "userModel1.username");
                    username.setValue(dialogInterface);
                    this.this$0.authorization.setUserModel(setUsernameResponse);
                }
            }
        });
    }
}
