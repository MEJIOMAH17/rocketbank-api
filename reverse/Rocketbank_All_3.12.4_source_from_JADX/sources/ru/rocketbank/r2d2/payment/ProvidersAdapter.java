package ru.rocketbank.r2d2.payment;

import android.content.Context;
import android.os.Build.VERSION;
import android.support.v7.widget.RecyclerView.Adapter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import jp.wasabeef.glide.transformations.CropCircleTransformation;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.provider.Provider;
import ru.rocketbank.core.utils.ImageHelper;
import ru.rocketbank.core.widgets.SectionedRecyclerViewAdapter.Section;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.helpers.UIHelper;
import rx.functions.Action2;

/* compiled from: ProvidersAdapter.kt */
public final class ProvidersAdapter extends Adapter<android.support.v7.widget.RecyclerView.ViewHolder> {
    public static final Companion Companion = new Companion();
    private static final String TRANSITION_NAME_AVATAR = "avatar";
    private static final String TRANSITION_NAME_NAME = "name";
    private static final String TRANSITION_NAME_ROOT = "root";
    private final CropCircleTransformation cropCircleTransformation;
    private final HashSet<Integer> firstIndexes = new HashSet();
    private final HashSet<Integer> lastIndexes = new HashSet();
    private final Action2<ViewHolder, Provider> onItemClickListener;
    private List<Provider> providers = ((List) new ArrayList());

    /* compiled from: ProvidersAdapter.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    /* compiled from: ProvidersAdapter.kt */
    public static final class ViewHolder extends android.support.v7.widget.RecyclerView.ViewHolder {
        private ImageView avatar;
        private TextView name;
        private ViewGroup root;

        public ViewHolder(View view) {
            Intrinsics.checkParameterIsNotNull(view, "itemView");
            super(view);
            View findViewById = view.findViewById(C0859R.id.root);
            if (findViewById == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.view.ViewGroup");
            }
            this.root = (ViewGroup) findViewById;
            findViewById = view.findViewById(C0859R.id.textViewName);
            if (findViewById == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
            }
            this.name = (TextView) findViewById;
            view = view.findViewById(C0859R.id.imageViewIcon);
            if (view == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.ImageView");
            }
            this.avatar = (ImageView) view;
        }

        public final ViewGroup getRoot() {
            return this.root;
        }

        public final void setRoot(ViewGroup viewGroup) {
            Intrinsics.checkParameterIsNotNull(viewGroup, "<set-?>");
            this.root = viewGroup;
        }

        public final TextView getName() {
            return this.name;
        }

        public final void setName(TextView textView) {
            Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
            this.name = textView;
        }

        public final ImageView getAvatar() {
            return this.avatar;
        }

        public final void setAvatar(ImageView imageView) {
            Intrinsics.checkParameterIsNotNull(imageView, "<set-?>");
            this.avatar = imageView;
        }
    }

    public ProvidersAdapter(Context context, Action2<ViewHolder, Provider> action2) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.onItemClickListener = action2;
        this.cropCircleTransformation = new CropCircleTransformation(context);
    }

    public final android.support.v7.widget.RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "parent");
        viewGroup = LayoutInflater.from(viewGroup.getContext()).inflate(C0859R.layout.list_item_provider, viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(viewGroup, "LayoutInflater.from(pare…_provider, parent, false)");
        return (android.support.v7.widget.RecyclerView.ViewHolder) new ViewHolder(viewGroup);
    }

    public final Provider getProvider(int i) {
        return (Provider) this.providers.get(i);
    }

    public final void onBindViewHolder(android.support.v7.widget.RecyclerView.ViewHolder viewHolder, int i) {
        Intrinsics.checkParameterIsNotNull(viewHolder, "viewHolder");
        ViewHolder viewHolder2 = (ViewHolder) viewHolder;
        Provider provider = getProvider(i);
        if (provider != null) {
            viewHolder2.getName().setText(provider.getName());
            ImageHelper.loadRound(viewHolder2.getAvatar(), provider.getIcon(), this.cropCircleTransformation);
            if (VERSION.SDK_INT >= 21) {
                viewHolder2.getAvatar().setTransitionName(TRANSITION_NAME_AVATAR.concat(String.valueOf(i)));
                viewHolder2.getName().setTransitionName("name".concat(String.valueOf(i)));
                viewHolder2.getRoot().setTransitionName(TRANSITION_NAME_ROOT.concat(String.valueOf(i)));
            }
            viewHolder2.getRoot().setOnClickListener(new ProvidersAdapter$onBindViewHolder$1(this, viewHolder2, provider));
            UIHelper.addPadding(i, viewHolder2.itemView, new ProvidersAdapter$onBindViewHolder$2(this), new ProvidersAdapter$onBindViewHolder$3(this));
        }
    }

    public final int getItemCount() {
        return this.providers.size();
    }

    private final boolean isLastInSection(int i) {
        return this.lastIndexes.contains(Integer.valueOf(i));
    }

    private final boolean isFirstInSection(int i) {
        return this.firstIndexes.contains(Integer.valueOf(i));
    }

    public final void setProviders(Map<String, ? extends List<? extends Provider>> map) {
        if (map != null) {
            this.providers = new ArrayList();
            map = map.values().iterator();
            while (map.hasNext()) {
                this.providers.addAll((List) map.next());
            }
        }
    }

    public final void setSections(Section[] sectionArr) {
        Intrinsics.checkParameterIsNotNull(sectionArr, "sections");
        this.firstIndexes.clear();
        this.lastIndexes.clear();
        this.firstIndexes.add(Integer.valueOf(0));
        int i = 1;
        this.lastIndexes.add(Integer.valueOf(getItemCount() - 1));
        int length = sectionArr.length;
        while (i < length) {
            int firstPosition = sectionArr[i].getFirstPosition();
            this.lastIndexes.add(Integer.valueOf(firstPosition - 1));
            this.firstIndexes.add(Integer.valueOf(firstPosition));
            i++;
        }
    }
}
