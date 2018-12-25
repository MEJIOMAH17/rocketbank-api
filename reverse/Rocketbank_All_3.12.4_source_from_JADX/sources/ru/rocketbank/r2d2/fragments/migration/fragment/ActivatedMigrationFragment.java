package ru.rocketbank.r2d2.fragments.migration.fragment;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import ru.rocketbank.core.model.migration.Migration;
import ru.rocketbank.core.model.migration.Migration.Status;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.activities.MigrationActivity;

public class ActivatedMigrationFragment extends GenericMigrationFragment {
    protected MigrationContent getMigrationContent() {
        return new MigrationContent().setTopHintTextRes(C0859R.string.migration_activated_hint_top_text).setImageRes(C0859R.drawable.printcard).setBottomHintTextRes(C0859R.string.migration_activated_hint_bottom_text_immediately).setButtonTextRes(C0859R.string.migration_activated_button_text);
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        view = getMigration().getTransfer();
        if (view != null) {
            if (Float.compare(view.getSlowMoney(), BitmapDescriptorFactory.HUE_RED) > null) {
                this.textViewHintBottom.setText(getString(C0859R.string.migration_activated_hint_bottom_text, new Object[]{Float.valueOf(view.getQuick()), Float.valueOf(view.getSlowMoney())}));
                return;
            }
            this.button.setText(getString(C0859R.string.migration_activated_button_text_with_money, new Object[]{Float.valueOf(view.getQuick())}));
        }
    }

    protected void onButtonClicked() {
        if (MigrationActivity.DEMO) {
            finishStep(new Migration(Status.completed, getMigration().getCities()));
        } else {
            execute(getMigrationApi().transferMoney(""));
        }
    }

    public String getTitle() {
        return RocketApplication.getContext().getString(C0859R.string.migration_activated);
    }
}
