package ru.rocketbank.r2d2.fragments.migration.fragment;

import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.text.Html;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import ru.rocketbank.core.model.migration.Migration;
import ru.rocketbank.core.model.migration.Migration.Status;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.activities.MigrationActivity;

public class PendingMigrationFragment extends MigrationFragment {
    Authorization authorization;
    TextView textViewCardHolderName;
    TextView textViewHintBottom;

    /* renamed from: ru.rocketbank.r2d2.fragments.migration.fragment.PendingMigrationFragment$1 */
    class C15421 implements OnClickListener {
        C15421() {
        }

        public void onClick(View view) {
            PendingMigrationFragment.this.onStartButtonClick();
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.migration.fragment.PendingMigrationFragment$2 */
    class C15432 implements OnClickListener {
        C15432() {
        }

        public void onClick(View view) {
            PendingMigrationFragment.this.onBottomButtonClick();
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(C0859R.layout.fragment_migration_pending, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.textViewCardHolderName = (TextView) view.findViewById(C0859R.id.textViewCardHolderName);
        this.textViewHintBottom = (TextView) view.findViewById(C0859R.id.textViewHintBottom);
        view.findViewById(C0859R.id.button).setOnClickListener(new C15421());
        view.findViewById(C0859R.id.buttonBottom).setOnClickListener(new C15432());
        this.authorization = getInjector().getAuthorization();
        view = this.authorization.getUserImmediate();
        if (!(view == null || view.getCurrentAccount() == null)) {
            this.textViewCardHolderName.setText(view.getCurrentAccount().getNameInLatin());
        }
        if (getMigrationURLs() != null) {
            view = "";
            if (getMigrationURLs().getCompareTariffUrl() != null) {
                view = new StringBuilder("<a href=");
                view.append(getMigrationURLs().getCompareTariffUrl());
                view.append(">Сравнить старый и новый тарифы</a><br/>");
                view = view.toString();
            }
            bundle = "";
            if (getMigrationURLs().getFaqUrl() != null) {
                bundle = new StringBuilder(",<br/>");
                bundle.append(getString(C0859R.string.migration_pending_hint_bottom_text_faq));
                bundle.append(" <a href=");
                bundle.append(getMigrationURLs().getFaqUrl());
                bundle.append(">FAQ</a><br/>");
                bundle = bundle.toString();
            }
            String str = "";
            if (getMigrationURLs().getRulesUrl() != null) {
                StringBuilder stringBuilder = new StringBuilder("<br/><a href=");
                stringBuilder.append(getMigrationURLs().getRulesUrl());
                stringBuilder.append(">Правила оказания услуг</a>");
                str = stringBuilder.toString();
            }
            TextView textView = this.textViewHintBottom;
            StringBuilder stringBuilder2 = new StringBuilder();
            stringBuilder2.append(view);
            stringBuilder2.append(getString(C0859R.string.migration_pending_hint_bottom_text));
            stringBuilder2.append(bundle);
            stringBuilder2.append(str);
            textView.setText(Html.fromHtml(stringBuilder2.toString()));
            this.textViewHintBottom.setMovementMethod(LinkMovementMethod.getInstance());
            this.textViewHintBottom.setLinkTextColor(ContextCompat.getColor(getContext(), C0859R.color.rocketBlue));
        }
    }

    public void onStartButtonClick() {
        if (MigrationActivity.DEMO) {
            finishStep(new Migration(Status.needs_passport, getMigration().getCities()));
        } else {
            execute(getMigrationApi().joining(""));
        }
    }

    public void onBottomButtonClick() {
        getActivity().finish();
    }

    public String getTitle() {
        return RocketApplication.getContext().getString(C0859R.string.migrarion_new_card_title);
    }
}
