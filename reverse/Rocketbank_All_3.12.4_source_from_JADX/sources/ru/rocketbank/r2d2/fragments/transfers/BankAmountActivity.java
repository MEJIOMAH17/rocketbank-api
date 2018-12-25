package ru.rocketbank.r2d2.fragments.transfers;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import ru.rocketbank.core.events.NextButtonEvent;
import ru.rocketbank.core.model.transfers.bank.RemittanceOutgoing;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.activities.SecuredActivity;
import ru.rocketbank.r2d2.fragments.NextButtonListener;

public class BankAmountActivity extends SecuredActivity {
    private static final String DATA_EXTRA = "data";
    private static final String TAG_CHECK_FRAGMENT = "check_info_fragment";
    private static final String TAG_EDIT_FRAGMENT = "edit_info_fragment";
    private static final String TAG_LOADER_FRAGMENT = "loader_fragment";
    private static final String TAG_SECURE_FRAGMENT = "secure_fragment";
    private static final String TAG_TRANSFER_FRAGMENT = "transfer_fragment";
    private Button btnNext;
    private Fragment currentFragment;
    public RemittanceOutgoing data;
    private Toolbar toolbar;

    /* renamed from: ru.rocketbank.r2d2.fragments.transfers.BankAmountActivity$1 */
    class C15601 implements OnClickListener {
        C15601() {
        }

        public void onClick(View view) {
            if (BankAmountActivity.this.currentFragment != null) {
                view.setEnabled(false);
                ((NextButtonListener) BankAmountActivity.this.currentFragment).onNextButtonClick();
                view.setEnabled(true);
            }
        }
    }

    public static void startActivity(RemittanceOutgoing remittanceOutgoing, Context context) {
        Intent intent = new Intent(context, BankAmountActivity.class);
        intent.putExtra("data", remittanceOutgoing);
        context.startActivity(intent);
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C0859R.layout.activity_bank_amount);
        this.toolbar = (Toolbar) findViewById(C0859R.id.toolbar);
        setSupportActionBar(this.toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }
        if (bundle != null) {
            this.data = (RemittanceOutgoing) bundle.getParcelable("data");
        } else {
            this.data = (RemittanceOutgoing) getIntent().getParcelableExtra("data");
        }
        if (bundle == null) {
            callAmountFragment();
        } else {
            this.currentFragment = getSupportFragmentManager().findFragmentById(C0859R.id.content);
        }
        this.btnNext = (Button) findViewById(C0859R.id.btnNext);
        this.btnNext.setOnClickListener(new C15601());
    }

    private void callAmountFragment() {
        this.currentFragment = RemittanceTransferAmountFragment.newInstance(this.data);
        getSupportFragmentManager().beginTransaction().replace(C0859R.id.content, this.currentFragment, TAG_TRANSFER_FRAGMENT).addToBackStack(null).commit();
    }

    public void onEventMainThread(NextButtonEvent nextButtonEvent) {
        if (nextButtonEvent.getFragment() == this.currentFragment) {
            this.btnNext.setEnabled(nextButtonEvent.isEnable());
            if (nextButtonEvent.getVisibility() != null) {
                this.btnNext.setVisibility(nextButtonEvent.getVisibility().intValue());
            }
            if (nextButtonEvent.getTitle() != null) {
                this.btnNext.setText(nextButtonEvent.getTitle());
            }
        }
    }

    protected void onResume() {
        super.onResume();
        this.toolbar.setTitle(C0859R.string.amount_title);
    }

    protected void onPause() {
        Utils.closeKeyboardIfExists(this);
        super.onPause();
    }

    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.data = (RemittanceOutgoing) intent.getParcelableExtra("data");
        callAmountFragment();
    }

    public void callConfirmFragment(RemittanceOutgoing remittanceOutgoing) {
        if (getSupportActionBar() != null) {
            getSupportActionBar().setTitle("Проверка реквизитов");
        }
        Fragment findFragmentByTag = getSupportFragmentManager().findFragmentByTag(TAG_CHECK_FRAGMENT);
        if (findFragmentByTag == null) {
            findFragmentByTag = RemittanceCheckInfoFragment.Companion.newInstance(remittanceOutgoing);
        }
        this.currentFragment = findFragmentByTag;
        getSupportFragmentManager().beginTransaction().replace(C0859R.id.content, this.currentFragment).commit();
    }

    public void callEditInfoFragment() {
        if (getSupportActionBar() != null) {
            getSupportActionBar().setTitle("Редактирование");
        }
        Fragment findFragmentByTag = getSupportFragmentManager().findFragmentByTag(TAG_EDIT_FRAGMENT);
        if (findFragmentByTag == null) {
            findFragmentByTag = RemittanceCheckInfoFragment.Companion.newInstance(this.data, true);
        }
        this.currentFragment = findFragmentByTag;
        getSupportFragmentManager().beginTransaction().replace(C0859R.id.content, this.currentFragment).addToBackStack(null).commit();
    }

    public void callRemittanceTransferLoader(RemittanceOutgoing remittanceOutgoing) {
        if (getSupportActionBar() != null) {
            getSupportActionBar().setTitle("Перевод");
        }
        Fragment findFragmentByTag = getSupportFragmentManager().findFragmentByTag(TAG_LOADER_FRAGMENT);
        if (findFragmentByTag == null) {
            findFragmentByTag = RemittanceLoaderTransferFragment.Companion.newInstance(remittanceOutgoing);
        }
        this.currentFragment = findFragmentByTag;
        getSupportFragmentManager().beginTransaction().replace(C0859R.id.content, this.currentFragment, TAG_LOADER_FRAGMENT).commit();
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("data", this.data);
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        onBackPressed();
        return true;
    }

    public void onBackPressed() {
        if (this.currentFragment instanceof RemittanceTransferAmountFragment) {
            finish();
            return;
        }
        if (getSupportActionBar() != null) {
            getSupportActionBar().setTitle("Сумма");
        }
        Fragment findFragmentByTag = getSupportFragmentManager().findFragmentByTag(TAG_TRANSFER_FRAGMENT);
        this.currentFragment = findFragmentByTag;
        getSupportFragmentManager().beginTransaction().replace(C0859R.id.content, findFragmentByTag).commit();
        removeFragment(getSupportFragmentManager().findFragmentByTag(TAG_SECURE_FRAGMENT));
        removeFragment(getSupportFragmentManager().findFragmentByTag(TAG_LOADER_FRAGMENT));
        removeFragment(getSupportFragmentManager().findFragmentByTag(TAG_EDIT_FRAGMENT));
        removeFragment(getSupportFragmentManager().findFragmentByTag(TAG_CHECK_FRAGMENT));
    }

    private void removeFragment(Fragment fragment) {
        if (fragment != null) {
            getSupportFragmentManager().beginTransaction().remove(fragment).commit();
        }
    }
}
