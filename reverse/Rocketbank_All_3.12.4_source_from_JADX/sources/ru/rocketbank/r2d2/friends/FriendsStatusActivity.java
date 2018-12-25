package ru.rocketbank.r2d2.friends;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import ru.rocketbank.core.model.transfers.friend.FriendTransfersRequestData;
import ru.rocketbank.core.model.transfers.friend.FriendTransfersResponseData;
import ru.rocketbank.core.network.api.OperationApi;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.StatusActivity;
import rx.Observable;

public class FriendsStatusActivity extends StatusActivity<FriendTransfersResponseData> {
    private static final String KEY_DATA = "KEY_DATA";
    private static final String KEY_IS_TRANSFER = "KEY_IS_TRANSFER";
    private FriendTransfersRequestData data;
    private boolean isTransfer;
    private OperationApi operationApi;

    public static Intent createIntent(Activity activity, FriendTransfersRequestData friendTransfersRequestData, boolean z) {
        activity = StatusActivity.Companion.createIntent(activity, FriendsStatusActivity.class, z ? C0859R.string.transfer_title : C0859R.string.refill_title);
        activity.putExtra(KEY_DATA, friendTransfersRequestData);
        activity.putExtra(KEY_IS_TRANSFER, z);
        return activity;
    }

    protected void onSuccess(FriendTransfersResponseData friendTransfersResponseData) {
        super.onSuccess(friendTransfersResponseData);
        if (!this.data.isRocket()) {
            finish();
            if (this.isTransfer) {
                TransferRequestActivity.start(friendTransfersResponseData.getUrls(), this.data, this);
                return;
            }
            RefillRequestActivity.start(friendTransfersResponseData.getUrls(), this.data, this);
        }
    }

    protected int getSuccessStatusText() {
        if (this.data.isRocket()) {
            return this.isTransfer ? C0859R.string.money_is_transfered : C0859R.string.money_is_requested;
        } else {
            return C0859R.string.request_is_created;
        }
    }

    public void onCreate(Bundle bundle) {
        this.operationApi = getInjector().getOperationApi();
        this.isTransfer = getIntent().getBooleanExtra(KEY_IS_TRANSFER, false);
        this.data = (FriendTransfersRequestData) getIntent().getParcelableExtra(KEY_DATA);
        super.onCreate(bundle);
    }

    protected Observable<FriendTransfersResponseData> getOperation() {
        return this.isTransfer ? this.operationApi.sendMoney(this.data) : this.operationApi.refillMoney(this.data);
    }
}
