package ru.rocketbank.r2d2.charges;

import android.content.Context;
import android.support.v7.widget.RecyclerView.Adapter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.charge.ChargeModel;
import ru.rocketbank.core.model.charge.ChargeModel.Requisites;
import ru.rocketbank.core.model.charge.DocumentType;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.charges.penalty.PenaltyChargeInfoActivity;
import ru.rocketbank.r2d2.charges.tax.TaxChargeInfoActivity;

/* compiled from: ChargesListActivity.kt */
public final class ChargesAdapter extends Adapter<ViewHolder> {
    public static final Companion Companion = new Companion();
    private static final int REQUEST_CODE = 0;
    private List<ChargeModel> charges;

    /* compiled from: ChargesListActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final int getREQUEST_CODE() {
            return ChargesAdapter.REQUEST_CODE;
        }
    }

    /* compiled from: ChargesListActivity.kt */
    public static final class ViewHolder extends android.support.v7.widget.RecyclerView.ViewHolder {
        private TextView date;
        private TextView description;
        private TextView title;

        public ViewHolder(View view) {
            Intrinsics.checkParameterIsNotNull(view, "itemView");
            super(view);
            RocketTextView rocketTextView = (RocketTextView) view.findViewById(C0859R.id.title);
            Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "itemView.title");
            this.title = rocketTextView;
            rocketTextView = (RocketTextView) view.findViewById(C0859R.id.date);
            Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "itemView.date");
            this.date = rocketTextView;
            RocketTextView rocketTextView2 = (RocketTextView) view.findViewById(C0859R.id.description);
            Intrinsics.checkExpressionValueIsNotNull(rocketTextView2, "itemView.description");
            this.description = rocketTextView2;
        }

        public final TextView getTitle$App_prodRelease() {
            return this.title;
        }

        public final void setTitle$App_prodRelease(TextView textView) {
            Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
            this.title = textView;
        }

        public final TextView getDate$App_prodRelease() {
            return this.date;
        }

        public final void setDate$App_prodRelease(TextView textView) {
            Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
            this.date = textView;
        }

        public final TextView getDescription$App_prodRelease() {
            return this.description;
        }

        public final void setDescription$App_prodRelease(TextView textView) {
            Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
            this.description = textView;
        }
    }

    public ChargesAdapter(List<ChargeModel> list) {
        Intrinsics.checkParameterIsNotNull(list, "charges");
        this.charges = list;
    }

    public final List<ChargeModel> getCharges() {
        return this.charges;
    }

    public final void setCharges(List<ChargeModel> list) {
        Intrinsics.checkParameterIsNotNull(list, "<set-?>");
        this.charges = list;
    }

    public final void onBindViewHolder(ViewHolder viewHolder, int i) {
        Intrinsics.checkParameterIsNotNull(viewHolder, "holder");
        ChargeModel chargeModel = (ChargeModel) this.charges.get(i);
        TextView description$App_prodRelease = viewHolder.getDescription$App_prodRelease();
        Requisites requisites = chargeModel.getRequisites();
        String str = null;
        description$App_prodRelease.setText(requisites != null ? requisites.getPurpose() : null);
        description$App_prodRelease = viewHolder.getDate$App_prodRelease();
        requisites = chargeModel.getRequisites();
        if (requisites != null) {
            str = requisites.getBill_date();
        }
        description$App_prodRelease.setText(str);
        TextView title$App_prodRelease = viewHolder.getTitle$App_prodRelease();
        ru.rocketbank.r2d2.charges.ChargesListActivity.Companion companion = ChargesListActivity.Companion;
        View view = viewHolder.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "holder.itemView");
        Context context = view.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "holder.itemView.context");
        title$App_prodRelease.setText(ru.rocketbank.r2d2.charges.ChargesListActivity.Companion.createChargeSumText$default(companion, context, chargeModel, 0, null, 12, null));
        ru.rocketbank.r2d2.charges.ChargeInfoActivity.Companion companion2;
        if (chargeModel.getDocument_type() == DocumentType.inn) {
            viewHolder.getDescription$App_prodRelease().setVisibility(0);
            companion2 = ChargeInfoActivity.Companion;
            view = viewHolder.itemView;
            Intrinsics.checkExpressionValueIsNotNull(view, "holder.itemView");
            context = view.getContext();
            Intrinsics.checkExpressionValueIsNotNull(context, "holder.itemView.context");
            i = companion2.createIntent(context, TaxChargeInfoActivity.class, chargeModel);
        } else {
            viewHolder.getDescription$App_prodRelease().setVisibility(8);
            companion2 = ChargeInfoActivity.Companion;
            view = viewHolder.itemView;
            Intrinsics.checkExpressionValueIsNotNull(view, "holder.itemView");
            context = view.getContext();
            Intrinsics.checkExpressionValueIsNotNull(context, "holder.itemView.context");
            i = companion2.createIntent(context, PenaltyChargeInfoActivity.class, chargeModel);
        }
        viewHolder.itemView.setOnClickListener(new ChargesAdapter$onBindViewHolder$1(viewHolder, i));
    }

    public final ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "parent");
        viewGroup = LayoutInflater.from(viewGroup.getContext()).inflate(C0859R.layout.charges_list_item, viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(viewGroup, "LayoutInflater.from(pare…list_item, parent, false)");
        return new ViewHolder(viewGroup);
    }

    public final int getItemCount() {
        return this.charges.size();
    }
}
