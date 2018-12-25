package ru.rocketbank.r2d2.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.view.View;
import ru.rocketbank.core.model.migration.Migration;
import ru.rocketbank.core.model.migration.MigrationURLs;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.fragments.migration.fragment.ActivatedMigrationFragment;
import ru.rocketbank.r2d2.fragments.migration.fragment.CardReadyMigrationFragment;
import ru.rocketbank.r2d2.fragments.migration.fragment.CheckingMigrationFragment;
import ru.rocketbank.r2d2.fragments.migration.fragment.CompletedMigrationFragment;
import ru.rocketbank.r2d2.fragments.migration.fragment.DeliveringMigrationFragment;
import ru.rocketbank.r2d2.fragments.migration.fragment.IssuingMigrationFragment;
import ru.rocketbank.r2d2.fragments.migration.fragment.MigrationFragment;
import ru.rocketbank.r2d2.fragments.migration.fragment.NeedsPassportMigrationFragment;
import ru.rocketbank.r2d2.fragments.migration.fragment.NeedsRegistrationMigrationFragment;
import ru.rocketbank.r2d2.fragments.migration.fragment.NeedsSelfieMigrationFragment;
import ru.rocketbank.r2d2.fragments.migration.fragment.PendingMigrationFragment;
import ru.rocketbank.r2d2.fragments.migration.fragment.ReadyMigrationFragment;

public class MigrationActivity extends SecuredActivity {
    public static boolean DEMO = false;
    public static final String KEY_MIGRATION = "KEY_MIGRATION";
    public static final String KEY_MIGRATION_URLS = "KEY_MIGRATION_URLS";
    private MigrationURLs migrationURLs;
    Toolbar toolbar;
    View toolbarShadow;

    public static void startActivity(Migration migration, MigrationURLs migrationURLs, Context context) {
        context.startActivity(new Intent(context, MigrationActivity.class).putExtra(KEY_MIGRATION, migration).putExtra(KEY_MIGRATION_URLS, migrationURLs));
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) C0859R.layout.activity_migration);
        this.toolbar = (Toolbar) findViewById(C0859R.id.toolbar);
        this.toolbarShadow = findViewById(C0859R.id.toolbarShadow);
        this.toolbarShadow.setVisibility(VERSION.SDK_INT >= 21 ? 8 : 0);
        setSupportActionBar(this.toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setDisplayShowHomeEnabled$1385ff();
        }
        Migration migration = (Migration) getIntent().getParcelableExtra(KEY_MIGRATION);
        this.migrationURLs = (MigrationURLs) getIntent().getParcelableExtra(KEY_MIGRATION_URLS);
        if (bundle == null) {
            replaceFragment(chooseFragment(migration));
            return;
        }
        bundle = getSupportFragmentManager().findFragmentById(C0859R.id.content);
        if (bundle != null) {
            bundle = ((MigrationFragment) bundle).getTitle();
            if (bundle != null) {
                setTitle(bundle);
                return;
            }
            setTitle(C0859R.string.title_activity_migration);
        }
    }

    private void replaceFragment(MigrationFragment migrationFragment) {
        CharSequence title = migrationFragment.getTitle();
        if (title != null) {
            setTitle(title);
        } else {
            setTitle(C0859R.string.title_activity_migration);
        }
        getSupportFragmentManager().beginTransaction().setCustomAnimations(C0859R.anim.slide_in_right, C0859R.anim.slide_out_left).replace(C0859R.id.content, migrationFragment).commit();
    }

    public void onEventMainThread(Migration migration) {
        replaceFragment(chooseFragment(migration));
    }

    private MigrationFragment chooseFragment(Migration migration) {
        MigrationFragment needsPassportMigrationFragment;
        Bundle bundle = new Bundle();
        switch (migration.getStatus()) {
            case needs_passport:
                needsPassportMigrationFragment = new NeedsPassportMigrationFragment();
                break;
            case needs_registration:
                needsPassportMigrationFragment = new NeedsRegistrationMigrationFragment();
                break;
            case needs_selfie:
                needsPassportMigrationFragment = new NeedsSelfieMigrationFragment();
                break;
            case issuing:
                needsPassportMigrationFragment = new IssuingMigrationFragment();
                break;
            case card_ready:
                needsPassportMigrationFragment = new CardReadyMigrationFragment();
                break;
            case dhl_delivering:
            case delivering:
                needsPassportMigrationFragment = new DeliveringMigrationFragment();
                break;
            case filled:
            case checking:
                needsPassportMigrationFragment = new CheckingMigrationFragment();
                break;
            case ready:
                needsPassportMigrationFragment = new ReadyMigrationFragment();
                break;
            case activated:
                needsPassportMigrationFragment = new ActivatedMigrationFragment();
                break;
            case completed:
                needsPassportMigrationFragment = new CompletedMigrationFragment();
                break;
            default:
                needsPassportMigrationFragment = new PendingMigrationFragment();
                break;
        }
        bundle.putParcelable(KEY_MIGRATION, migration);
        bundle.putParcelable(KEY_MIGRATION_URLS, this.migrationURLs);
        needsPassportMigrationFragment.setArguments(bundle);
        return needsPassportMigrationFragment;
    }
}
