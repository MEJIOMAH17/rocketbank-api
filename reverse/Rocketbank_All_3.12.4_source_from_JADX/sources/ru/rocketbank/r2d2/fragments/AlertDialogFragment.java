package ru.rocketbank.r2d2.fragments;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import com.facebook.share.internal.ShareConstants;
import ru.rocketbank.r2d2.RocketHandler;

public class AlertDialogFragment extends DialogFragment {
    private OnPositiveListener _listenerPositive;

    /* renamed from: ru.rocketbank.r2d2.fragments.AlertDialogFragment$1 */
    class C15181 implements OnClickListener {

        /* renamed from: ru.rocketbank.r2d2.fragments.AlertDialogFragment$1$1 */
        class C15171 implements Runnable {
            C15171() {
            }

            public void run() {
                AlertDialogFragment.this._listenerPositive.OnPositive();
            }
        }

        C15181() {
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            if (AlertDialogFragment.this._listenerPositive != null) {
                RocketHandler.getInstance().post(new C15171());
            }
        }
    }

    public interface OnPositiveListener {
        void OnPositive();
    }

    public static AlertDialogFragment create(String str) {
        AlertDialogFragment alertDialogFragment = new AlertDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putString(ShareConstants.WEB_DIALOG_PARAM_MESSAGE, str);
        bundle.putString("titleBalance", "Рокетбанк");
        alertDialogFragment.setArguments(bundle);
        return alertDialogFragment;
    }

    public static AlertDialogFragment create(String str, String str2) {
        AlertDialogFragment alertDialogFragment = new AlertDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putString(ShareConstants.WEB_DIALOG_PARAM_MESSAGE, str);
        bundle.putString("titleBalance", str2);
        alertDialogFragment.setArguments(bundle);
        return alertDialogFragment;
    }

    public Dialog onCreateDialog(Bundle bundle) {
        setCancelable(null);
        return new Builder(getActivity()).setTitle(getArguments().getString("titleBalance")).setMessage(getArguments().getString(ShareConstants.WEB_DIALOG_PARAM_MESSAGE)).setPositiveButton("OK", new C15181()).create();
    }

    public AlertDialogFragment setOnPositiveListener(OnPositiveListener onPositiveListener) {
        this._listenerPositive = onPositiveListener;
        return this;
    }
}
