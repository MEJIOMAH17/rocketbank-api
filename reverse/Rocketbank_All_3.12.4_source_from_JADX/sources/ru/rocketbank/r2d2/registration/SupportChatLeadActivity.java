package ru.rocketbank.r2d2.registration;

import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import java.util.List;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.AbstractActivity;
import ru.rocketbank.r2d2.root.chat.ChatFragment;

public class SupportChatLeadActivity extends AbstractActivity {
    public static void start(Context context) {
        context.startActivity(new Intent(context, SupportChatLeadActivity.class).addFlags(131072));
    }

    protected void onCreate(Bundle bundle) {
        if (VERSION.SDK_INT >= 21) {
            getWindow().requestFeature(12);
        }
        if (VERSION.SDK_INT >= 16) {
            getWindow().getDecorView().setSystemUiVisibility(1280);
        }
        super.onCreate(bundle);
        setContentView(C0859R.layout.activity_support_chat);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }
        if (bundle == null) {
            getSupportFragmentManager().beginTransaction().add(C0859R.id.container, new ChatFragment()).commit();
        }
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        List<Fragment> fragments = getSupportFragmentManager().getFragments();
        if (fragments != null) {
            for (Fragment fragment : fragments) {
                if (fragment != null) {
                    fragment.onActivityResult(i, i2, intent);
                }
            }
        }
    }
}
