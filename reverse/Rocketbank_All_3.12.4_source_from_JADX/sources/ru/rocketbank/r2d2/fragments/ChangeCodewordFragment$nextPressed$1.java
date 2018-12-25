package ru.rocketbank.r2d2.fragments;

import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import android.view.View;
import android.widget.Toast;
import ru.rocketbank.core.model.dto.ActivationResponse;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.helpers.UIHelper;
import rx.functions.Action1;

/* compiled from: ChangeCodewordFragment.kt */
final class ChangeCodewordFragment$nextPressed$1<T> implements Action1<ActivationResponse> {
    final /* synthetic */ View $view;
    final /* synthetic */ ChangeCodewordFragment this$0;

    ChangeCodewordFragment$nextPressed$1(ChangeCodewordFragment changeCodewordFragment, View view) {
        this.this$0 = changeCodewordFragment;
        this.$view = view;
    }

    public final void call(ActivationResponse activationResponse) {
        this.this$0.hideSpinner();
        activationResponse = activationResponse.getResponse();
        if (activationResponse == null) {
            UIHelper.showSnack(this.$view, (int) C0859R.string.data_not_received);
        } else if (activationResponse.getStatus() == Callback.DEFAULT_DRAG_ANIMATION_DURATION && this.this$0.getActivity() != null) {
            Toast.makeText(this.this$0.getActivity(), activationResponse.getDescription(), 0).show();
            activationResponse = this.this$0.getActivity();
            if (activationResponse != null) {
                activationResponse.finish();
            }
        }
    }
}
