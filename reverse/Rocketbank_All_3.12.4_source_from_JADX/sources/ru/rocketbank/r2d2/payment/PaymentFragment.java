package ru.rocketbank.r2d2.payment;

import android.app.Activity;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.app.ActivityOptionsCompat;
import android.support.v4.app.FragmentActivity;
import android.support.v4.util.Pair;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v4.widget.SwipeRefreshLayout.OnRefreshListener;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.PopupMenu;
import android.support.v7.widget.PopupMenu.OnMenuItemClickListener;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.support.v7.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import jp.wasabeef.glide.transformations.CropCircleTransformation;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.provider.Provider;
import ru.rocketbank.core.model.transfers.Template;
import ru.rocketbank.core.model.transfers.Template.ProviderPayment;
import ru.rocketbank.core.network.api.ProvidersApi;
import ru.rocketbank.core.network.api.TemplateApi;
import ru.rocketbank.core.network.model.ProvidersResponse;
import ru.rocketbank.core.utils.ImageHelper;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.activities.ProvidersActivity;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import ru.rocketbank.r2d2.helpers.UIHelper;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;

/* compiled from: PaymentFragment.kt */
public final class PaymentFragment extends RocketFragment {
    public static final Companion Companion = new Companion();
    private static final String TAG = "PaymentFragment";
    private static final String TRANSITION_NAME_AVATAR = "avatar";
    private static final String TRANSITION_NAME_NAME = "name";
    private static final String TRANSITION_NAME_ROOT = "root";
    private HashMap _$_findViewCache;
    private CropCircleTransformation cropCircleTransformation;
    public FloatingActionButton fab;
    private LinearLayoutManager layoutManager;
    public ProgressBar progressBar;
    public ProvidersApi providersApi;
    private final HashMap<Integer, Provider> providersMap = new HashMap();
    public SwipeRefreshLayout swipeRefreshView;
    private TemplateAdapter templateAdapter;
    public TemplateApi templateApi;
    private Subscription templateSubscription;
    public RecyclerView templatesView;
    public Toolbar toolbar;

    /* compiled from: PaymentFragment.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    /* compiled from: PaymentFragment.kt */
    public final class TemplateAdapter extends Adapter<TemplateViewHolder> {
        private List<Template> templatesList = ((List) new ArrayList());

        public final void remove(Template template) {
            Intrinsics.checkParameterIsNotNull(template, "template");
            List list = this.templatesList;
            if (list == null) {
                Intrinsics.throwNpe();
            }
            list.remove(template);
            notifyDataSetChanged();
        }

        public final void setTemplatesList(List<Template> list) {
            Intrinsics.checkParameterIsNotNull(list, "templatesList");
            this.templatesList = list;
            notifyDataSetChanged();
        }

        public final TemplateViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            Intrinsics.checkParameterIsNotNull(viewGroup, "parent");
            viewGroup = LayoutInflater.from(viewGroup.getContext()).inflate(C0859R.layout.layout_template, viewGroup, false);
            Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
            ImageView imageView = (ImageView) viewGroup.findViewById(C0859R.id.actions);
            Intrinsics.checkExpressionValueIsNotNull(imageView, "view.actions");
            imageView.setVisibility(0);
            return new TemplateViewHolder(PaymentFragment.this, viewGroup);
        }

        public final void onBindViewHolder(TemplateViewHolder templateViewHolder, int i) {
            Intrinsics.checkParameterIsNotNull(templateViewHolder, "holder");
            List list = this.templatesList;
            if (list == null) {
                Intrinsics.throwNpe();
            }
            Template template = (Template) list.get(i);
            PaymentFragment paymentFragment = PaymentFragment.this;
            ProviderPayment providerPayment = template.provider;
            Intrinsics.checkExpressionValueIsNotNull(providerPayment, "template.provider");
            templateViewHolder.bindTemplate(template, paymentFragment.getProvider(providerPayment.getProvider_id()), i);
            UIHelper.addPadding(i, templateViewHolder.itemView, PaymentFragment$TemplateAdapter$onBindViewHolder$1.INSTANCE, new PaymentFragment$TemplateAdapter$onBindViewHolder$2(this));
        }

        public final int getItemCount() {
            List list = this.templatesList;
            if (list == null) {
                Intrinsics.throwNpe();
            }
            return list.size();
        }
    }

    /* compiled from: PaymentFragment.kt */
    public final class TemplateViewHolder extends ViewHolder implements OnClickListener {
        private ImageView actions;
        private Provider provider;
        private Template template;
        private RocketTextView templateDescriptionView;
        private ImageView templateIcon;
        private RocketTextView templateNameView;
        final /* synthetic */ PaymentFragment this$0;

        public TemplateViewHolder(PaymentFragment paymentFragment, View view) {
            Intrinsics.checkParameterIsNotNull(view, "itemView");
            this.this$0 = paymentFragment;
            super(view);
            paymentFragment = view.findViewById(C0859R.id.imageViewIcon);
            if (paymentFragment == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.ImageView");
            }
            this.templateIcon = (ImageView) paymentFragment;
            paymentFragment = view.findViewById(C0859R.id.textViewName);
            if (paymentFragment == null) {
                throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
            }
            this.templateNameView = (RocketTextView) paymentFragment;
            paymentFragment = view.findViewById(C0859R.id.textViewDescription);
            if (paymentFragment == null) {
                throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
            }
            this.templateDescriptionView = (RocketTextView) paymentFragment;
            paymentFragment = view.findViewById(C0859R.id.actions);
            if (paymentFragment == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.ImageView");
            }
            this.actions = (ImageView) paymentFragment;
        }

        public final ImageView getTemplateIcon() {
            return this.templateIcon;
        }

        public final void setTemplateIcon(ImageView imageView) {
            Intrinsics.checkParameterIsNotNull(imageView, "<set-?>");
            this.templateIcon = imageView;
        }

        public final RocketTextView getTemplateNameView() {
            return this.templateNameView;
        }

        public final void setTemplateNameView(RocketTextView rocketTextView) {
            Intrinsics.checkParameterIsNotNull(rocketTextView, "<set-?>");
            this.templateNameView = rocketTextView;
        }

        public final RocketTextView getTemplateDescriptionView() {
            return this.templateDescriptionView;
        }

        public final void setTemplateDescriptionView(RocketTextView rocketTextView) {
            Intrinsics.checkParameterIsNotNull(rocketTextView, "<set-?>");
            this.templateDescriptionView = rocketTextView;
        }

        public final ImageView getActions() {
            return this.actions;
        }

        public final void setActions(ImageView imageView) {
            Intrinsics.checkParameterIsNotNull(imageView, "<set-?>");
            this.actions = imageView;
        }

        public final void bindTemplate(Template template, Provider provider, int i) {
            Intrinsics.checkParameterIsNotNull(template, "template");
            this.template = template;
            this.provider = provider;
            this.templateNameView.setText(template.title);
            this.actions.setOnClickListener(new PaymentFragment$TemplateViewHolder$bindTemplate$1(this, template));
            String str = null;
            this.templateIcon.setImageDrawable(null);
            if (provider != null) {
                str = provider.getIcon();
            }
            if (str != null && str.length() > null) {
                provider = this.templateIcon;
                CropCircleTransformation access$getCropCircleTransformation$p = this.this$0.cropCircleTransformation;
                if (access$getCropCircleTransformation$p == null) {
                    Intrinsics.throwNpe();
                }
                ImageHelper.loadRound(provider, str, access$getCropCircleTransformation$p);
            }
            this.itemView.setOnClickListener(this);
            template = template.provider.toStringFields();
            Intrinsics.checkExpressionValueIsNotNull(template, "description");
            CharSequence charSequence = (CharSequence) template;
            if ((charSequence.length() == null ? true : null) == null) {
                this.templateDescriptionView.setVisibility(0);
            }
            this.templateDescriptionView.setText(charSequence);
            if (VERSION.SDK_INT >= 21) {
                template = this.templateIcon;
                provider = new StringBuilder();
                provider.append(PaymentFragment.TRANSITION_NAME_AVATAR);
                provider.append(i);
                template.setTransitionName(provider.toString());
                template = this.templateNameView;
                provider = new StringBuilder();
                provider.append(PaymentFragment.TRANSITION_NAME_NAME);
                provider.append(i);
                template.setTransitionName(provider.toString());
                template = this.itemView;
                Intrinsics.checkExpressionValueIsNotNull(template, "itemView");
                provider = new StringBuilder();
                provider.append(PaymentFragment.TRANSITION_NAME_ROOT);
                provider.append(i);
                template.setTransitionName(provider.toString());
            }
        }

        public final void onClick(View view) {
            Intrinsics.checkParameterIsNotNull(view, "v");
            if (this.provider != null) {
                FragmentActivity activity;
                if (VERSION.SDK_INT >= 21) {
                    Bundle bundle = new Bundle();
                    bundle.putString("a", r0.templateIcon.getTransitionName());
                    bundle.putString("n", r0.templateNameView.getTransitionName());
                    activity = r0.this$0.getActivity();
                    if (activity == null) {
                        Intrinsics.throwNpe();
                    }
                    Activity activity2 = activity;
                    Pair[] pairArr = new Pair[3];
                    pairArr[0] = new Pair(r0.templateIcon, r0.templateIcon.getTransitionName());
                    pairArr[1] = new Pair(r0.templateNameView, r0.templateNameView.getTransitionName());
                    View view2 = r0.itemView;
                    View view3 = r0.itemView;
                    Intrinsics.checkExpressionValueIsNotNull(view3, "itemView");
                    pairArr[2] = new Pair(view2, view3.getTransitionName());
                    ActivityOptionsCompat makeSceneTransitionAnimation = ActivityOptionsCompat.makeSceneTransitionAnimation(activity2, pairArr);
                    ru.rocketbank.r2d2.payment.PaymentDetailsActivity.Companion companion = PaymentDetailsActivity.Companion;
                    Context context = r0.this$0.getContext();
                    if (context == null) {
                        Intrinsics.throwNpe();
                    }
                    Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
                    Provider provider = r0.provider;
                    if (provider == null) {
                        Intrinsics.throwNpe();
                    }
                    companion.start(context, provider, bundle, r0.template, makeSceneTransitionAnimation.toBundle());
                    return;
                }
                ru.rocketbank.r2d2.payment.PaymentDetailsActivity.Companion companion2 = PaymentDetailsActivity.Companion;
                activity = r0.this$0.getActivity();
                if (activity == null) {
                    Intrinsics.throwNpe();
                }
                Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
                Context context2 = activity;
                Provider provider2 = r0.provider;
                if (provider2 == null) {
                    Intrinsics.throwNpe();
                }
                ru.rocketbank.r2d2.payment.PaymentDetailsActivity.Companion.start$default(companion2, context2, provider2, null, r0.template, null, 20, null);
            }
        }
    }

    public final void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public final View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view == null) {
            view = getView();
            if (view == null) {
                return null;
            }
            view = view.findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view);
        }
        return view;
    }

    public final /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public final TemplateApi getTemplateApi() {
        TemplateApi templateApi = this.templateApi;
        if (templateApi == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateApi");
        }
        return templateApi;
    }

    public final void setTemplateApi(TemplateApi templateApi) {
        Intrinsics.checkParameterIsNotNull(templateApi, "<set-?>");
        this.templateApi = templateApi;
    }

    public final ProvidersApi getProvidersApi() {
        ProvidersApi providersApi = this.providersApi;
        if (providersApi == null) {
            Intrinsics.throwUninitializedPropertyAccessException("providersApi");
        }
        return providersApi;
    }

    public final void setProvidersApi(ProvidersApi providersApi) {
        Intrinsics.checkParameterIsNotNull(providersApi, "<set-?>");
        this.providersApi = providersApi;
    }

    public final SwipeRefreshLayout getSwipeRefreshView() {
        SwipeRefreshLayout swipeRefreshLayout = this.swipeRefreshView;
        if (swipeRefreshLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("swipeRefreshView");
        }
        return swipeRefreshLayout;
    }

    public final void setSwipeRefreshView(SwipeRefreshLayout swipeRefreshLayout) {
        Intrinsics.checkParameterIsNotNull(swipeRefreshLayout, "<set-?>");
        this.swipeRefreshView = swipeRefreshLayout;
    }

    public final RecyclerView getTemplatesView() {
        RecyclerView recyclerView = this.templatesView;
        if (recyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templatesView");
        }
        return recyclerView;
    }

    public final void setTemplatesView(RecyclerView recyclerView) {
        Intrinsics.checkParameterIsNotNull(recyclerView, "<set-?>");
        this.templatesView = recyclerView;
    }

    public final Toolbar getToolbar() {
        Toolbar toolbar = this.toolbar;
        if (toolbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolbar");
        }
        return toolbar;
    }

    public final void setToolbar(Toolbar toolbar) {
        Intrinsics.checkParameterIsNotNull(toolbar, "<set-?>");
        this.toolbar = toolbar;
    }

    public final FloatingActionButton getFab() {
        FloatingActionButton floatingActionButton = this.fab;
        if (floatingActionButton == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fab");
        }
        return floatingActionButton;
    }

    public final void setFab(FloatingActionButton floatingActionButton) {
        Intrinsics.checkParameterIsNotNull(floatingActionButton, "<set-?>");
        this.fab = floatingActionButton;
    }

    public final ProgressBar getProgressBar() {
        ProgressBar progressBar = this.progressBar;
        if (progressBar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progressBar");
        }
        return progressBar;
    }

    public final void setProgressBar(ProgressBar progressBar) {
        Intrinsics.checkParameterIsNotNull(progressBar, "<set-?>");
        this.progressBar = progressBar;
    }

    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.cropCircleTransformation = new CropCircleTransformation(getContext());
    }

    public final void onEventMainThread(ProvidersResponse providersResponse) {
        if (providersResponse != null) {
            if (providersResponse.getProviders() != null) {
                this.providersMap.clear();
                for (Provider provider : providersResponse.getProviders()) {
                    HashMap hashMap = this.providersMap;
                    Intrinsics.checkExpressionValueIsNotNull(provider, "p");
                    hashMap.put(Integer.valueOf(provider.getId()), provider);
                }
                loadTemplates();
                return;
            }
        }
        UIHelper.showSnack(getView(), (int) C0859R.string.empty_provider_list);
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        layoutInflater = layoutInflater.inflate(C0859R.layout.fragment_payment, viewGroup, false);
        View findViewById = layoutInflater.findViewById(C0859R.id.swipeRefresh);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.v4.widget.SwipeRefreshLayout");
        }
        this.swipeRefreshView = (SwipeRefreshLayout) findViewById;
        View findViewById2 = layoutInflater.findViewById(C0859R.id.templates);
        if (findViewById2 == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.v7.widget.RecyclerView");
        }
        this.templatesView = (RecyclerView) findViewById2;
        View findViewById3 = layoutInflater.findViewById(C0859R.id.toolbar);
        if (findViewById3 == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.v7.widget.Toolbar");
        }
        this.toolbar = (Toolbar) findViewById3;
        View findViewById4 = layoutInflater.findViewById(C0859R.id.fab);
        if (findViewById4 == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.design.widget.FloatingActionButton");
        }
        this.fab = (FloatingActionButton) findViewById4;
        View findViewById5 = layoutInflater.findViewById(C0859R.id.progressBar);
        if (findViewById5 == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.ProgressBar");
        }
        this.progressBar = (ProgressBar) findViewById5;
        viewGroup = layoutInflater.findViewById(C0859R.id.swipeRefresh);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.v4.widget.SwipeRefreshLayout");
        }
        this.swipeRefreshView = (SwipeRefreshLayout) viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.templates);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.v7.widget.RecyclerView");
        }
        this.templatesView = (RecyclerView) viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.toolbar);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.v7.widget.Toolbar");
        }
        this.toolbar = (Toolbar) viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.fab);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.design.widget.FloatingActionButton");
        }
        this.fab = (FloatingActionButton) viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.progressBar);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.ProgressBar");
        }
        this.progressBar = (ProgressBar) viewGroup;
        viewGroup = this.fab;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fab");
        }
        viewGroup.setOnClickListener(new PaymentFragment$onCreateView$1(this));
        viewGroup = this.progressBar;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progressBar");
        }
        viewGroup.setVisibility(0);
        viewGroup = this.templatesView;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templatesView");
        }
        viewGroup.setVisibility(8);
        RocketApplication.Companion.getInjector().getDataManager().loadProviders();
        return layoutInflater;
    }

    public final void showPayments() {
        FloatingActionButton floatingActionButton = this.fab;
        if (floatingActionButton == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fab");
        }
        int left = floatingActionButton.getLeft();
        FloatingActionButton floatingActionButton2 = this.fab;
        if (floatingActionButton2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fab");
        }
        left = (left + floatingActionButton2.getRight()) / 2;
        floatingActionButton2 = this.fab;
        if (floatingActionButton2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fab");
        }
        int top = floatingActionButton2.getTop();
        FloatingActionButton floatingActionButton3 = this.fab;
        if (floatingActionButton3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fab");
        }
        top = (top + floatingActionButton3.getBottom()) / 2;
        ru.rocketbank.r2d2.activities.ProvidersActivity.Companion companion = ProvidersActivity.Companion;
        FragmentActivity activity = getActivity();
        if (activity == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
        companion.startActivity(activity, true, left, top);
    }

    public final void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        this.templateApi = getInjector().getTemplateApi();
        this.providersApi = getInjector().getProvidersApi();
        setupDefaultToolbar(view, C0859R.id.toolbar);
        this.templateAdapter = new TemplateAdapter();
        this.layoutManager = new LinearLayoutManager(getActivity());
        view = this.templatesView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templatesView");
        }
        view.setLayoutManager((LayoutManager) this.layoutManager);
        view = this.templatesView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templatesView");
        }
        view.setAdapter((Adapter) this.templateAdapter);
        view = this.swipeRefreshView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("swipeRefreshView");
        }
        view.setOnRefreshListener((OnRefreshListener) new PaymentFragment$onViewCreated$1(this));
    }

    public final void onResume() {
        super.onResume();
        Toolbar toolbar = this.toolbar;
        if (toolbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolbar");
        }
        toolbar.setTitle(C0859R.string.fragment_payments_title);
        loadTemplates();
    }

    private final void loadTemplates() {
        if (!this.providersMap.isEmpty()) {
            if (this.templateSubscription != null) {
                Subscription subscription = this.templateSubscription;
                if (subscription == null) {
                    Intrinsics.throwNpe();
                }
                if (!subscription.isUnsubscribed()) {
                    SwipeRefreshLayout swipeRefreshLayout = this.swipeRefreshView;
                    if (swipeRefreshLayout == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("swipeRefreshView");
                    }
                    swipeRefreshLayout.setRefreshing(false);
                    return;
                }
            }
            TemplateApi templateApi = this.templateApi;
            if (templateApi == null) {
                Intrinsics.throwUninitializedPropertyAccessException("templateApi");
            }
            this.templateSubscription = templateApi.getTemplatesPayments().observeOn(AndroidSchedulers.mainThread()).map(PaymentFragment$loadTemplates$1.INSTANCE).subscribe((Subscriber) new PaymentFragment$loadTemplates$2(this));
        }
    }

    public final void onPause() {
        unsubscribe(this.templateSubscription);
        super.onPause();
    }

    private final Provider getProvider(int i) {
        if (this.providersMap.isEmpty()) {
            return 0;
        }
        return (Provider) this.providersMap.get(Integer.valueOf(i));
    }

    private final void showPopup(View view, Template template) {
        FragmentActivity activity = getActivity();
        if (activity == null) {
            Intrinsics.throwNpe();
        }
        PopupMenu popupMenu = new PopupMenu(activity, view);
        view = popupMenu.getMenu();
        view.add(0, 0, 0, "Редактировать");
        view.add(0, 1, 0, "Удалить");
        popupMenu.setOnMenuItemClickListener((OnMenuItemClickListener) new PaymentFragment$showPopup$1(this, template));
        popupMenu.show();
    }

    private final void deleteTemplate(Template template) {
        RocketFragment.showSpinner$default(this, 0, 1, null);
        TemplateApi templateApi = this.templateApi;
        if (templateApi == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateApi");
        }
        this.templateSubscription = templateApi.delete(template.id).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new PaymentFragment$deleteTemplate$1(this, template));
    }
}
