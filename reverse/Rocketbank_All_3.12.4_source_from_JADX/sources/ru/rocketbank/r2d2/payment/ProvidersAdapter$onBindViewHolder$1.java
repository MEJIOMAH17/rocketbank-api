package ru.rocketbank.r2d2.payment;

import android.view.View;
import android.view.View.OnClickListener;
import ru.rocketbank.core.model.provider.Provider;
import ru.rocketbank.r2d2.payment.ProvidersAdapter.ViewHolder;

/* compiled from: ProvidersAdapter.kt */
final class ProvidersAdapter$onBindViewHolder$1 implements OnClickListener {
    final /* synthetic */ ViewHolder $holder;
    final /* synthetic */ Provider $provider;
    final /* synthetic */ ProvidersAdapter this$0;

    ProvidersAdapter$onBindViewHolder$1(ProvidersAdapter providersAdapter, ViewHolder viewHolder, Provider provider) {
        this.this$0 = providersAdapter;
        this.$holder = viewHolder;
        this.$provider = provider;
    }

    public final void onClick(View view) {
        view = this.this$0.onItemClickListener;
        if (view != null) {
            view.call(this.$holder, this.$provider);
        }
    }
}
