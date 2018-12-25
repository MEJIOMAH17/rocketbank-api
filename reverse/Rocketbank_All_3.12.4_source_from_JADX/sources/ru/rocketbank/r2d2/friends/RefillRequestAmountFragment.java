package ru.rocketbank.r2d2.friends;

import android.os.Bundle;
import android.view.View;
import ru.rocketbank.core.model.contact.Contact;
import ru.rocketbank.core.network.api.OperationApi;
import ru.rocketbank.r2d2.C0859R;

public class RefillRequestAmountFragment extends FriendAmountBaseFragment {
    private OperationApi operationApi;

    public boolean accountsVisible() {
        return false;
    }

    public int getNextButtonText() {
        return C0859R.string.frient_request_caption;
    }

    protected boolean isTransfer() {
        return false;
    }

    public static FriendAmountBaseFragment newInstance(Contact contact) {
        FriendAmountBaseFragment refillRequestAmountFragment = new RefillRequestAmountFragment();
        Bundle bundle = new Bundle();
        bundle.putSerializable("contact", contact);
        refillRequestAmountFragment.setArguments(bundle);
        return refillRequestAmountFragment;
    }

    public void onTextChanged() {
        if (getAmountString().length() == 0) {
            disableNextButton();
        } else if (isZero(getAmount())) {
            disableNextButton();
        } else {
            enableNextButton();
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.operationApi = getInjector().getOperationApi();
    }
}
