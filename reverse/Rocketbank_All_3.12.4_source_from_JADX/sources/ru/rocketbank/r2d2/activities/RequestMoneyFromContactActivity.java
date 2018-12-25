package ru.rocketbank.r2d2.activities;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import ru.rocketbank.core.model.contact.Contact;
import ru.rocketbank.r2d2.C0859R;

public class RequestMoneyFromContactActivity extends SecuredActivity {
    private static final String CONTACT_EXTRA = "contact";

    public static void startForResult(Activity activity, Contact contact, int i) {
        Intent intent = new Intent(activity, RequestMoneyFromContactActivity.class);
        intent.putExtra(CONTACT_EXTRA, contact);
        activity.startActivityForResult(intent, i);
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) C0859R.layout.activity_request_money_from_contact);
    }
}
