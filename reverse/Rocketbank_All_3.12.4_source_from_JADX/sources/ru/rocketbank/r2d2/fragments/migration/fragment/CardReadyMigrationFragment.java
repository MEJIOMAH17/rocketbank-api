package ru.rocketbank.r2d2.fragments.migration.fragment;

import android.os.Bundle;
import android.support.design.widget.Snackbar;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.Spinner;
import ru.rocketbank.core.model.migration.Migration;
import ru.rocketbank.core.model.migration.Migration.City;
import ru.rocketbank.core.model.migration.Migration.Status;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.MigrationActivity;

public class CardReadyMigrationFragment extends MigrationFragment {
    EditText editTextAddress;
    Spinner spinnerCity;

    /* renamed from: ru.rocketbank.r2d2.fragments.migration.fragment.CardReadyMigrationFragment$1 */
    class C15391 implements OnClickListener {
        C15391() {
        }

        public void onClick(View view) {
            CardReadyMigrationFragment.this.onButtonClicked();
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(C0859R.layout.fragment_migration_card_ready, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        view.findViewById(C0859R.id.button).setOnClickListener(new C15391());
        this.spinnerCity = (Spinner) view.findViewById(C0859R.id.spinnerCity);
        this.editTextAddress = (EditText) view.findViewById(C0859R.id.editTextAddress);
        this.spinnerCity.setAdapter(new ArrayAdapter(getContext(), C0859R.layout.simple_rocket_spinner_item, getMigration().getCities()));
    }

    protected void onButtonClicked() {
        City city = (City) this.spinnerCity.getSelectedItem();
        if (city == null) {
            if (getView() != null) {
                Snackbar.make(getView(), C0859R.string.migration_card_ready_city_not_selected, -1).show();
            }
            return;
        }
        String obj = this.editTextAddress.getText().toString();
        if (obj.isEmpty()) {
            if (getView() != null) {
                Snackbar.make(getView(), C0859R.string.migration_card_ready_address_not_typed, -1).show();
            }
            return;
        }
        if (getContext() != null) {
            ((InputMethodManager) getContext().getSystemService("input_method")).hideSoftInputFromWindow(this.editTextAddress.getWindowToken(), 0);
        }
        if (MigrationActivity.DEMO) {
            finishStep(new Migration(Status.delivering, getMigration().getCities()));
        } else {
            execute(getMigrationApi().scheduleDelivery(city.getId(), obj));
        }
    }
}
