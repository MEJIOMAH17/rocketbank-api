package ru.rocketbank.r2d2.friends;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.widget.Toolbar;
import com.facebook.share.internal.ShareConstants;
import ru.rocketbank.core.model.transfers.friend.FriendTransfersRequestData;
import ru.rocketbank.core.model.transfers.friend.FriendTransfersResponseUrls;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.SecuredActivity;

public class TransferRequestActivity extends SecuredActivity {
    public static void start(FriendTransfersResponseUrls friendTransfersResponseUrls, FriendTransfersRequestData friendTransfersRequestData, Context context) {
        Intent intent = new Intent(context, TransferRequestActivity.class);
        intent.putExtra(ShareConstants.WEB_DIALOG_PARAM_DATA, friendTransfersResponseUrls);
        intent.putExtra("amount", friendTransfersRequestData.getAmount());
        context.startActivity(intent);
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C0859R.layout.activity_transfer_request);
        Toolbar toolbar = (Toolbar) findViewById(C0859R.id.toolbar);
        if (toolbar != null) {
            toolbar.setTitle(C0859R.string.transfer_title);
            setSupportActionBar(toolbar);
        }
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setDisplayShowHomeEnabled$1385ff();
        }
        bundle = new Bundle();
        bundle.putSerializable(ShareConstants.WEB_DIALOG_PARAM_DATA, getIntent().getSerializableExtra(ShareConstants.WEB_DIALOG_PARAM_DATA));
        bundle.putDouble("amount", getIntent().getDoubleExtra("amount", 0.0d));
        Fragment transferFriendUrlsFragment = new TransferFriendUrlsFragment();
        transferFriendUrlsFragment.setArguments(bundle);
        getSupportFragmentManager().beginTransaction().replace(C0859R.id.content, transferFriendUrlsFragment, "TransferFriendUrlsFragment").commit();
    }
}
